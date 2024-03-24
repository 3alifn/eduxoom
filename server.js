const express = require("express")
const app = express()
const mysql = require("mysql")
const path = require("path")
const fs = require("fs")
const cookieParser= require("cookie-parser")
const session= require("express-session")
const mysqlStore= require("express-mysql-session") (session)
const flash= require("connect-flash")
const bodyParser = require("body-parser")
const { render } = require("ejs")
const {randomBytes, createHmac}= require("crypto")
const ejs = require('ejs')
const multer= require("multer")
const nodemailer= require("nodemailer")
const dotenv= require("dotenv").config()
const cors= require("cors")

app.use(bodyParser.json())
app.use(bodyParser.urlencoded({extended: true}));
app.set('trust proxy', 1) // trust first proxy
app.enable("trust proxy", true)
app.set("view engine", "ejs")
app.set("views", path.join(__dirname, "views"))

app.use(express.static("./public/"))
app.use(bodyParser.json())
app.use(bodyParser.urlencoded({ extended: true }))
app.use(flash());
app.use(cors({
  origin: true,
  credentials: true,
  optionsSuccessStatus: 200
}))


  const sqlmap = mysql.createConnection({
    host: process.env.host_name,
    user: process.env.user_name,
    password: process.env.user_password,
    database: process.env.database_name
  
  });

  // 


const cookiename= createHmac('md5', 'pipilikapira').update('saanviabc').digest('hex')
const sessionStore= new mysqlStore({
  expiration: 86400000*30,
  createDatabaseTable: true,
  schema: {
    tableName: "authentication_session",
    columnNames: {
      session_id: "session_id",
      expires: "session_expires",
      data: "session_data"
    }
  }
 }, sqlmap)

  app.use(cookieParser('pipilikiapipra'));
  app.use( session({
    key: 'saanviabc',
    secret: 'pipilikiapipra',
    store: sessionStore,
    resave: true,
    saveUninitialized: false,
    name: cookiename,
    cookie: {
     path: '/', secure: false, httpOnly: true, maxAge:  86400000*30, 
    }
}))





sqlmap.connect((err, res) => {

  if (err) console.log("Server not running")
  else console.log("SAANVI S1 code by 3alifn...")
})




app.listen(process.env.listen_port || 30)
var mysession=new Date().getUTCFullYear();


module.exports= {
app, express, mysession, mysql, session, cookieParser, flash, bodyParser,
 sqlmap, multer, nodemailer, dotenv, cors, randomBytes,
  createHmac, fs, path, ejs, sessionStore,
}



//  test code:



const ZKLib = require('zklib-32ble')
const zkteco = async() => {
let zkInstance = new ZKLib('192.168.1.201', 4370, 5200, 5000);
try {
    // Create socket to machine
    await zkInstance.createSocket()

    // console.log(await zkInstance.getInfo())

    const logs = await zkInstance.getAttendances()
   const getLast= logs.data.length;
   var domain= 'localhost';
   var deviceUserId= logs.data[getLast-1].deviceUserId;
   var recordDate= logs.data[getLast-1].recordTime.slice(0, 15);
   var recordTime= logs.data[getLast-1].recordTime.slice(0, 24);
    
    await zkInstance.getRealTimeLogs((data)=>{
      // do something when some checkin
      console.log(data)
  })

  console.log(await zkInstance.getAttendances());
    
  } catch (e) {
    console.log(e)
    if (e.code === 'EADDRINUSE') {
    }
}

// console.log(deviceUserId, recordDate, recordTime);
todoatn(domain, deviceUserId, recordDate, recordTime)
}

// setInterval(() => {
  // zkteco()
// }, 5000);

function todoatn(domain, user_id, record_date, record_time){
 console.log(arguments);
 sqlmap.query(`SELECT * FROM record_attn WHERE domain='${domain}' AND user_id='${user_id}' AND record_date='${record_date}'`, 
 (errc, infoc)=>{
  if(errc) console.log(errc.sqlMessage);
  else {
    if(infoc.length>=2){
      null
    } else {

      sqlmap.query(`INSERT INTO record_attn (domain, user_id, record_date, record_time)VALUES('${domain}', '${user_id}', '${record_date}', '${record_time}')`, 
      (err, insert)=>{
      if(err) console.log(err.sqlMessage);
      else console.log('inserted');
      })

    }
  }
 })


}

const Timer = require('setinterval');
const axios= require('axios')
urlSender=()=>{
  axios.post('http://localhost:30/pu/test/req/res/', {
user:{
  name: 'alifn',
  age: 23,
  gender: 'male'
}
})
  .then((response) => {
    console.log(response.data);
  })
  .catch((error) => {
    console.error(error);
  });

}

// setInterval(() => {
//   urlSender()
// }, 3000);