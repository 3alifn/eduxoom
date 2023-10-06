
const { app, express, mysql , sessionStore,  session, cookieParser, flash, bodyParser, sqlmap, multer, randomBytes, createHmac, fs } = require("./server")
app.locals.data = require('./app/admission_app');

const { MulterError } = require("multer")
const public = require("./route/public_route")
const privet = require("./route/privet_route")
const teacher = require("./route/teacher_route")
const student = require("./route/student_route")
const parent = require("./route/parent_route")
const  authentication= require("./route/auhentication_route");
const { home_page } = require("./app/home_app");
const admin = require("./route/admin_route");
const ini = require("./route/ini_route");

app.get('*', (req, res, next)=>{
  app.set('domain', req.hostname)
 session.domain={hostname: req.hostname, lics: createHmac('md5', 'pipilikapipra').update(req.hostname).digest('hex') };
sqlmap.query(`SELECT lics FROM client_area WHERE domain='${req.hostname}' AND at_status='actived' ORDER BY ID DESC LIMIT 1`, (errllc, infollc)=>{
  if(errllc) console.log(errllc.sqlMessage);
  if(infollc.length>0){

    next()
  } else {
    res.render('ini/lics')
  }
})

})
app.get("/", home_page)
app.use('/ini', ini)
app.use("/pu", public)
app.use("/privet", privet)
app.use("/admin", admin)
app.use("/student", student)
app.use("/teacher", teacher)
app.use("/parent", parent)
app.use("/au", authentication)



app.use((err, req, res, next)=>{

    
  if(err instanceof MulterError ) {
    console.log(err.message + "_multer_");
  
    res.send({msg: err.message, alert: "alert-danger text-danger"})
   }


 else if(err.message) {
  console.log(err.message);
  res.send(err.message)
 }

 
  else {  
    console.log("There was a problem!");

    res.send("There was a problem!")
}
    
 


})


app.use((req, res, next)=>{

  res.redirect('/pages/404.html')

// throw new Error("This url was not found!")

})


// const log= createHmac('md5', 'pipilikapipra').update('user@admin.com').digest('hex');
// console.log(log);

