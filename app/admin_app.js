const express = require("express")
const app = express()
const dotenv= require("dotenv").config()
const nodemailer= require("nodemailer")
const mysql = require("mysql")
const { sqlmap, multer, createHmac } = require("../server")







module.exports = {

    multer_upload: multer({
        storage: multer.diskStorage({
            destination: (req, file, cb)=>{
             cb(null, "./public/image/admin")
            } ,
          
            filename: (req, file, cb)=>{
          
              cb(null, new Date().getTime()+"_"+file.originalname)
            },
            
          }),
      
        limits: {fileSize: 3000000 * 2},
        fileFilter: (req, file, cb)=>{
      
          if(file.mimetype=="image/png" || file.mimetype=="image/jpeg")
          {
            cb(null, true)
          } 
          else 
          {
              cb(new Error("file extension allow only png or jpeg"))
          }
          
        }
      
      })
,


    
admin_login: (req, res)=>{

    const {hashUsername, hashPassword}= req.body;
    const hashPassword__= createHmac('md5', 'pipilikapipra').update(hashUsername+hashPassword).digest('hex');

    sqlmap.query(`SELECT * FROM user_admin WHERE hash_username='${hashUsername}' AND hash_password='${hashPassword__}'`, (err, info)=>{

        if(info.length>0){
          
            if(info[0].hash_username===hashUsername && info[0].hash_password===hashPassword__){

                req.session.hashUser= 'hashAdmin'
                req.session.hashUsername= hashUsername;
                req.session.hashPassword= hashPassword__;
                req.session.userAccess= "privet";

                res.redirect("/admin/dashboard")

            }

            else {
              req.flash("alert", "danger")
              req.flash("msg", "Authontication Falied!")
  
              res.redirect("/admin")

            }
        } 

        else {

            req.flash("alert", "danger")
            req.flash("msg", "Authontication Falied!")

            res.redirect("/admin/")
        }

    })
},


dashboard: (req, res)=>{

    const {hashUsername, hashPassword}= req.body;
    sqlmap.query(`SELECT * FROM user_admin WHERE hash_username='${hashUsername}' AND hash_password='${hashPassword}'`, (err, info)=>{
        if( req.session.hashUser=='hashAdmin'){

            res.render("admin/dashboard")
           
        } 

        else {

            req.flash("alert", "danger")
            req.flash("msg", "Authontication Falied!")

            res.redirect("/cpanel/admin/login")
        }

    })
}

,

self_account: (req, res)=>{

    if(req.session.hashUser=='hashAdmin'){
      
      let sql= `SELECT * FROM user_admin`
  
      sqlmap.query(sql, (err, info)=>{
  
        res.render("admin/account_page", {info,  msg: req.flash("msg"), alert: req.flash("alert")})
  
  
      })
  
    } 


}
,




self_info_update: (req, res) =>{
  
  let {hash_name}= req.body;
  let sql=   `UPDATE user_admin SET hash_name="${hash_name}"`
  sqlmap.query(sql, (err, info)=>{
  
  if(err) console.log(err.sqlMessage);
  
  else {
  req.flash("msg", "Profile Updated Successfully!")
  req.flash("alert", "success")
  res.redirect("/admin/account")
  }
  
  
  })
  
  },
  
  
  
  
  

  
  
self_password_update: (req, res)=>{
  
    let {hash_password, pastPassword, hash_username}= req.body;
  
    const hashPassword= createHmac('md5', 'pipilikapipra').update(hash_username+hash_password).digest('hex');  
    const pastHashPassword= createHmac('md5', 'pipilikapipra').update(hash_username+pastPassword).digest('hex');  
  
     sqlmap.query(`SELECT hash_password FROM user_admin`, (errPass, infoPass)=>{
  
      if(errPass) console.log(errPass.sqlMessage);
      else{
  
        if( pastHashPassword==infoPass[0].hash_password)
  {
  
    sqlmap.query( `UPDATE user_admin SET hash_password="${hashPassword}"`, (err, info) =>{
  
      if(err) 
      {
        req.flash("msg", "Change Failed!")
        req.flash("alert", "danger")
        res.redirect("/admin/account")
  
      }
  
      else
      {
      
        req.flash("msg", "Changed! Successfully...")
        req.flash("alert", "success")
        res.redirect("/admin/account")
      }
    })
  
  }
  
  else 
  {
    req.flash("msg", "Current Password Not Matched!")
    req.flash("alert", "danger")
    res.redirect("/admin/account")
  }
  
      }
  
     })
  
      
  
  
    } ,
  
  
  
  
  
  
//   self_avatar_upload:(req, res, next)=>{
  
//   sqlmap.query(`UPDATE user_admin SET hash_avatar="${req.file.filename}"`, (err, next)=>{
  
  
//     if(err) console.log(err.message);
  
//     else res.send({msg: "Changed Successfully!"})
//   })
  
//        console.log();(req.file)
  
//   },
  
  
  
  
  
self_email_update: (req, res)=>{

  let sql= `UPDATE user_admin SET hash_username="${req.body.hash_username}"`
  
  sqlmap.query(sql, (err, info) =>{
  
  if(err) 
  {
    req.flash("msg", "Something Wrong!")
    res.redirect("/admin/account")
  
  }
  
  else
  {
  
    req.flash("msg", "Changed! Successfully...")
    req.flash("alert", "success")
    res.redirect("/admin/account")
  }
  })
  

  
  }
  



}






