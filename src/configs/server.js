const express = require("express")
const app = express()
const path = require("path")
const fs = require("fs")
const cookieParser = require("cookie-parser")
const flash = require("connect-flash")
const bodyParser = require("body-parser")
const ejs = require('ejs')
const multer = require("multer")
const nodemailer = require("nodemailer")
const dotenv = require("dotenv").config()
const axios = require('axios')
const ZKLib = require('zklib-32ble')
const sjcl = require("sjcl")
const jwt = require("jsonwebtoken")
const sharp = require("sharp")

// Middleware setup
app.use(express.json())
app.use(express.urlencoded({ extended: true }))
app.set('trust proxy', 1)
app.set("view engine", "ejs")
app.set("views", path.join(__dirname, "../views"))
app.use(express.static(path.join(__dirname, '../public')))
app.use(flash())

// Get secret from environment variables with fallback for development
const cookieSecret = process.env.COOKIE_SECRET || 'pipilikiapipra'
app.use(cookieParser(cookieSecret))

// Session and CORS middleware
const { globalSessionWithMysql } = require("./session")
const globalCorsSetter = require("./cors")
app.use(globalSessionWithMysql)
app.use(globalCorsSetter)

// Error handling middleware for CORS
app.use((err, req, res, next) => {
  if (err.message === 'Not allowed by CORS') {
    res.status(403).json({ error: 'CORS policy violation' })
  } else {
    next(err)
  }
})

// Start server
const port = process.env.listen_port || 3000
app.listen(port, () => {
  console.log(`code by alifn => server is running on port ${port}`)
})

var mysession = new Date().getUTCFullYear()

module.exports = {
  app,
  express,
  mysession,
  cookieParser,
  flash,
  bodyParser,
  multer,
  nodemailer,
  dotenv,
  fs,
  path,
  ejs,
  axios,
  ZKLib,
  sjcl,
  jwt,
  sharp
}
