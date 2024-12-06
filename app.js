
const { app, express, mysql , sessionStore,  session, cookieParser, flash, 
Timer, axios, ZKLib, bodyParser, sqlmap, multer, randomBytes, createHmac, fs } = require("./server")
app.locals.data = require('./app/admission_app');
const myini= require('./app/myini');
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

app.all('*', (req, res, next) => {
const host= req.hostname.startsWith("www.")
  
if(host) var hostnameSet= req.hostname=req.hostname.split("www.")[1];
else var hostnameSet= req.hostname;

const hostname= req.cookies['hostname'];

if(hostname!=undefined&&hostname==hostnameSet){
  next()
}

else if(hostname==undefined || hostnameSet!=hostname){
  sqlmap.query(
    `SELECT domain, lics FROM ___ini WHERE domain=? AND at_status=? AND checkout=?`,
    [hostnameSet, true, true],
    (errllc, infollc) => {
        if (errllc) {
            console.log(errllc.sqlMessage);
            return;
        }
        if (infollc.length > 0) {
          res.cookie('hostname', hostnameSet, {path: "/"})
            next();
        } else {
            res.render('ini/lics');
        }
    }
);
}

});


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
    res.send({msg: err.message, alert: "alert-warning text-warning"})
    
   }

 
  else {  
    console.log("There was a problem!");
    next("There was a problem!")
}

})


app.use((req, res, next)=>{

  res.redirect('/pages/404.html')

// throw new Error("This url was not found!")

})

