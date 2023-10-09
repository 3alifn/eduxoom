
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
 session.domain=req.hostname;
sqlmap.query(`SELECT domain, lics FROM ___ini WHERE domain='${req.hostname}' AND at_status=${true} AND checkout=${true}`, (errllc, infollc)=>{
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


function ___ini(domain, lics){
  const join_date= new Date().toLocaleDateString();
  const expire_date= parseInt(new Date().getMonth()+1)+'/'+parseInt(new Date().getDay()+1)+'/'+parseInt(new Date().getFullYear()+1);
  sqlmap.query(`INSERT INTO ___ini (domain, lics, join_date, expire_date, at_status)
  VALUES('${domain}', '${lics}','${join_date}', '${expire_date}', ${true})`, (err1, info1)=>{
    if(err1) console.log(err1.sqlMessage);
    else {
      sqlmap.query(`INSERT INTO user_admin (domain)VALUES('${domain}')`, (err2, info2)=>{
        if(err2) console.log(err2.sqlMessage);
        else {
          
          console.log('Created => '+domain, lics, expire_date);

        }
    })
  
    }
  })
}

// ___ini('sahasrailpphs.saanviabc.com', 'ABC123XYS')
// ___ini('norailmnmhs.saanviabc.com', 'ABC123XYN')
// ___ini('goailbarimb.saanviabc.com', 'ABC123XYG')

// var uuid= createHmac('md5', 'pipilikapipra').update(new Date().toLocaleString()).digest('hex').toUpperCase()
// console.log(uuid);