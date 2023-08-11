const express = require("express")
const app = express()
const dotenv= require("dotenv").config()
const nodemailer= require("nodemailer")
const mysql = require("mysql")
const { sqlmap, multer, session} = require("../server")


exports.public_team_saanvi_sent_message= (req, res)=>{
    const {fullname, email, message}= req.body;
      

    const transporter= nodemailer.createTransport({
    
      host: process.env.email_host,
      port: process.env.email_port,
      auth: {
        user: process.env.email_address,
        pass: process.env.email_password
      }
  
    })
  
    
    const mailOutput=
    `<html> 
      <ul>
      <li><h1>Name: ${fullname}</h1></li>
      <li><h3>Email: ${email}</h3></li>
      <li><p>Message: ${message}</p></li>
      </u>
    </html>`
  
    const mailOptions = {
      from: process.env.email_address,
      to: process.env.email_team_saanvi,
      subject: "Contact us",
      text: fullname,
      html: mailOutput
    }
  
  
    
    transporter.sendMail(mailOptions, (err, info)=>{
      
      if(err) {
      console.log(err.message);
        req.flash("msg", "Something Wrong! please try again...")
         
        res.send({msg: 'Something was wrong! check your internet connection. pls try again!', alert: 'warning'})
       }
      
       else res.send({msg: 'Thanks! your message has been sent.', alert: 'success'})
  
    
  
  
  })
}