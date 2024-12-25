const express = require("express")
const app = express()
const mysql = require("mysql")
const path = require("path")
const fs = require("fs")
const http = require("http")
const cookieParser= require("cookie-parser")
const session= require("express-session")
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
const sjcl= require("sjcl");
const jwt= require("jsonwebtoken");

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
    // queueLimit: 0,
    connectionLimit: 50
})

 
const cookiename= createHmac('md5', 'pipilikapira').update('saanviabc').digest('hex')

const sessionStore= new mysqlStore({expiration: 86400000*30}, sqlmap)

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


const port= process.env.listen_port || 3000;
app.listen(port, ()=>{
  console.log(`code by alifn => server is runnig on port ${port}`);
  
})
var mysession=new Date().getUTCFullYear();


module.exports= {
app, express, mysession, mysql, session, cookieParser, flash, bodyParser,
 sqlmap, multer, nodemailer, dotenv, cors, randomBytes,
  createHmac, fs, path, ejs, sessionStore, Timer, axios, ZKLib, sjcl, jwt
}



