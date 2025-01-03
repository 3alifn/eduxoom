const express = require("express")
const app = express()
const path = require("path")
const fs = require("fs")
const http = require("http")
const cookieParser= require("cookie-parser")
const flash= require("connect-flash")
const bodyParser = require("body-parser")
const { render } = require("ejs")
const {randomBytes, createHmac}= require("crypto")
const ejs = require('ejs')
const multer= require("multer")
const nodemailer= require("nodemailer")
const dotenv= require("dotenv").config({path: '../configs/.env'})
const Timer = require('setinterval');
const axios= require('axios')
const ZKLib = require('zklib-32ble')
const sjcl= require("sjcl");
const jwt= require("jsonwebtoken");
const sharp= require("sharp");
app.use(express.json())
app.use(express.urlencoded({extended: true}));
app.set('trust proxy', 1) // trust first proxy
app.enable("trust proxy", true)
app.set("view engine", "ejs")
app.set("view", path.join(__dirname, "../views"))
app.use(express.static(path.join(__dirname, '../public')))
app.use(flash());
app.use(cookieParser('pipilikiapipra'));

const {globalSessionWithMysql } = require("./session")
const sqlmap= require('./mysql')
const globalCorsSetter = require("./cors")
app.use(globalSessionWithMysql)
app.use(globalCorsSetter);

const port= process.env.listen_port || 3000;
app.listen(port, ()=>{
  console.log(`code by alifn => server is runnig on port ${port}`);
})

var mysession=new Date().getUTCFullYear();
module.exports= {
app, express, mysession, cookieParser, flash, bodyParser,
 sqlmap, multer, nodemailer, dotenv, randomBytes,
  createHmac, fs, path, ejs, Timer, axios, ZKLib, sjcl, jwt, sharp
}



