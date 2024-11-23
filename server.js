const express = require("express")
const app = express()
const mysql = require("mysql")
const path = require("path")
const fs = require("fs")
const http = require("http")
const cookieParser= require("cookie-parser")
const session= require("express-session")
const jwt= require("jsonwebtoken");
const mysqlStore= require("express-mysql-session")(session)
const flash= require("connect-flash")
const bodyParser = require("body-parser")
const { render } = require("ejs")
const {randomBytes, createHmac}= require("crypto")
const ejs = require('ejs')
const multer= require("multer")
const nodemailer= require("nodemailer")
const dotenv= require("dotenv").config()
const cors= require("cors")
const Timer = require('setinterval');
const axios= require('axios')
const ZKLib = require('zklib-32ble')


app.use(express.json())
app.use(express.urlencoded({extended: true}));
app.set('trust proxy', 1) // trust first proxy
app.enable("trust proxy", true)
app.set("view engine", "ejs")
app.set("views", path.join(__dirname, "views"))

app.use(express.static("./public/"))
app.use(flash());
app.use(cors({
  origin: true,
  allowedHeaders: ['Authorization', 'Content-Type'],
  credentials: true,
  optionsSuccessStatus: 200
}));

const sqlmap= mysql.createPool({

    host: process.env.host_name,
    user: process.env.user_name,
    password: process.env.user_password,
    database: process.env.database_name,
    queueLimit: 0,
    connectionLimit: 10
})
 
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
    key: 'eduxoom',
    secret: 'pipilikiapipra',
    store: sessionStore,
    resave: false,
    saveUninitialized: false,
    name: cookiename,
    cookie: {
     path: '/', secure: false, httpOnly: true, maxAge:  86400000*30, 
    }
}))





// sqlmap.connect((err, res) => {

//   if (err) console.log("Server not running")
//   else console.log("Eduxoom code by 3alifn...")
// })


// const io = require('socket.io')(app.listen(process.env.listen_port || 30));

app.listen(process.env.listen_port || 30, ()=>{
  console.log('code by alifn => server runnig on http://localhost:30');
  
})
var mysession=new Date().getUTCFullYear();


module.exports= {
app, express, mysession, mysql, session, jwt, cookieParser, flash, bodyParser,
 sqlmap, multer, nodemailer, dotenv, cors, randomBytes,
  createHmac, fs, path, ejs, sessionStore, Timer, axios, ZKLib,
}



