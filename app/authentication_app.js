const express = require("express")
const app = express()
const dotenv= require("dotenv").config()
const nodemailer= require("nodemailer")
const mysql = require("mysql")
const { session, createHmac} = require("../server")


const sqlmap= mysql.createConnection({
    host: process.env.host_name,
    user: process.env.user_name,
    password: process.env.user_password,
    database: process.env.database_name
  
  
  })




exports.authentication_check = (req, res)=>{

    const {userRole, username, password}= req.query;
     const hashPassword= createHmac('md5', 'pipilikapipra').update(username+password).digest('hex');

   if(userRole=='parents')  var findBashQuery= `SELECT * FROM ${userRole} WHERE permission='allow' AND  email="${username}" AND password="${hashPassword}"`

   else if(userRole=='students') var findBashQuery= `SELECT * FROM ${userRole} WHERE  email="${username}" AND (password="${hashPassword}" OR password="${password}")`

   else if(userRole=='teachers') var findBashQuery= `SELECT * FROM ${userRole} WHERE email="${username}" AND password="${hashPassword}"`


 sqlmap.query(findBashQuery, (err, info)=>{

        if(err) console.log(err.sqlMessage);

        else {
          

            if(info.length> 0 && userRole=="students" )

            {
                req.session.userid= info[0].ID;
      
               
                req.session.user= "student"
                req.session.userAccess= "privet"
                req.session.className= info[0].class;
                req.session.sectionName= info[0].section;
                req.session.userName= info[0].name;
                req.session.userEmail= info[0].email;
                req.session.student_id= info[0].student_id;

                res.redirect("/student/dashboard")
            } 

            else if(info.length> 0 && userRole=="teachers" )
            {

                req.session.userid= info[0].ID;
                req.session.user= "teacher"
                req.session.userAccess= "privet"
                req.session.userName= info[0].name;
                req.session.userEmail= info[0].email;
                req.session.className= info[0].class;
                req.session.pdsId= info[0].pds_id;
                req.session.index= info[0].index_number;
               res.redirect("/teacher/dashboard")

            } 

            

            else if(info.length> 0 && userRole=="parents" )
            {

                req.session.userid= info[0].ID;
                req.session.user= "parent"
                req.session.userAccess= "privet"
                req.session.userName= info[0].name;
                req.session.userEmail= info[0].email;             
                req.session.student_id= info[0].student_id;             


               res.redirect("/parent/dashboard")

            } 

            else 
            {
                req.flash("alert", "danger")
                req.flash("msg", "Authontication Failed!")
                res.redirect("/au/404")
            }
        }

    })

}



exports.authentication_404=  (req, res)=>{
    res.render("authentication/singin_page", {msg: req.flash("msg"), alert: req.flash("alert")})
    }

exports.singout =  (req, res)=>{
    req.session.destroy()
    res.render("authentication/singin_page")
    }





exports.forgot_password= (req, res)=>{

   let userRole= req.body.userRole;
   let username= req.body.username;
   let sql= `SELECT email FROM ${userRole} WHERE email="${username}"`
   sqlmap.query(sql, (err, info)=>{
    if(err) console.log(err.sqlMessage);

    else 
    {
        if(info.length>0)
        {
          
          const transporter= nodemailer.createTransport({

            host: process.env.email_host,
            port: process.env.email_port,
            auth: {
              user: process.env.email_address,
              pass: process.env.email_password
            }
        
          })
        
          const randHashCode=Math.floor(Math.random()*900000)
          
          let mailOutput= `<html> <h2>Reset Password</h2><h4 style="background-color: slateblue; color: white;">your verification code is <span style="color: white" href="#">${randHashCode} & expaire after 5 minutes</span></h4></html>`
        
          let mailOptions = {
            from: process.env.email_address,
            to: username,
            subject: "Forgot Password",
            text: "Verify account",
            html: mailOutput
          }
        
          req.session.userVerifyCode= randHashCode;
          setTimeout(()=>{
          req.session.destroy()
          }, 5*60000)
        
          
          
          transporter.sendMail(mailOptions, (err, info)=>{
            
            if(err) {
              console.log(err);
              req.flash("msg", "Something Wrong! please try again...")
              req.flash("alert", "info")
              res.redirect("/au/forgot/password")
             }
            
        else {
          req.session.username= username
          req.session.user= userRole
          req.flash("msg", "Verification Code Sent!")
          req.flash("alert", "success")
          res.render("authentication/forgot_password_page", {step: "step2", msg: req.flash("msg"), alert: req.flash("alert")})
        }
            
          
          })
        }

        else 
        {
            req.flash("msg", "Authontication Failed!")
            req.flash("alert", "danger")
            res.redirect("/au/forgot/password")
        }
    }
   })

}


  
exports.forgot_verify_code= (req, res)=>{
  let {verifyCode}= req.body;
  
    if(verifyCode==req.session.userVerifyCode)
    {
  
      res.render("authentication/forgot_password_page", {step: "step3"})
      
    
    }
     else 
     {
      req.flash("msg", "Invalid Verification code!")
      req.flash("alert", "danger")
      res.render("authentication/forgot_password_page", {step: "step2", msg: req.flash("msg"), alert: req.flash("alert")}) 
     }
    
  
  }
  



exports.reset_password= (req, res)=>{

    let username= req.session.username;
    let userRole= req.session.user;
    let password= req.body.password;
    const hashPassword= createHmac('md5', 'pipilikapipra').update(username+password).digest('hex');

    let sql= `UPDATE ${userRole} SET password= "${hashPassword}" WHERE email="${username}"`
    sqlmap.query(sql, (err, next)=>{
  
      if(err) console.log(err.sqlMessage);
  
      else 
      { 
        req.flash("alert", "success")
        req.flash("msg", "Password Changed Successfully!")
         res.redirect("/au/singin/page")
      }
    })
  }





exports.public_user_nav_item_menu= (req, res)=>{
  
    if(req.session.userAccess==='privet'){
  
  
      if(req.session.hashUser=='hashAdmin'){
        let listData= ` 
        <li ><a class=" page-link" href="/admin/dashboard">Dashboard</a></li>
        <li ><a class=" page-link" href="/admin/account">Account</a></li>
        <li ><a class=" page-link" href="/au/singout">Singout</a></li>

        `
    
        res.send({listData})
      }
  
      else if(req.session.user=='teacher') {
        let listData= ` 
        <li ><a class=" page-link" href="/teacher/dashboard">Dashboard</a></li>
        <li ><a class=" page-link" href="/teacher/account">Account</a></li>
        <li ><a class=" page-link" href="/au/singout">Singout</a></li>
        `
    
        res.send({listData})
      }
  
      else if(req.session.user=='student'){
  
          let listData= ` 
          <li ><a class=" page-link" href="/student/dashboard">Dashboard</a></li>
          <li ><a class=" page-link" href="/student/account">Account</a></li>
          <li ><a class=" page-link" href="/au/singout">Singout</a></li>
            <a href="/au/singout" class="fw-bold dropdown-item ">Singout</a> 
          `
      
          res.send({listData})
        
      }
  
      else if(req.session.user=='parent'){
        let listData= ` 
        <li ><a class=" page-link" href="/parent/dashboard">Dashboard</a></li>
        <li ><a class=" page-link" href="/parent/account">Account</a></li>
        <li ><a class=" page-link" href="/au/singout">Singout</a></li>
        `
    
        res.send({listData})
      }
     
    }

  }




exports.public_user_nav_item_header= (req, res)=>{
  
    if(req.session.userAccess==='privet'){
  
    
      if(req.session.hashUser=='hashAdmin'){
        let listData= ` 
        <a href='/'>   <img src="/image/default/resized/logo.png" width="71px" height="auto" class=" p-1">
        </a></li>
      <li><a class="p-2 d-none d-md-block text-dark nav-link" href="/admin/dashboard">Dashboard</a></li>
      <li><a class=" p-2 d-none d-md-block text-dark nav-link" href="/admin/account">Account</a></li>
      <li><a class="p-2 d-none d-md-block text-dark nav-link" href="/au/singout">Singout</a></li>

<li style="left: 25%; position: relative" class=" d-md-none "><button type="button" data-bs-toggle="offcanvas" data-bs-target="#offcanvasRight" class="nav-link shadow-0  btn text-dark"><i class=" bi bi-three-dots fs-1"></i></button></li>

        `
    
        res.send({listData})
      }
  
      else if(req.session.user=='teacher') {
        let listData= ` 
       <a href='/'> <img src="/image/default/resized/logo.png" width="71px" height="auto" class=" p-1">
        </a></li>

        <li><a class="p-2 d-none d-md-block text-dark nav-link" href="/teacher/dashboard">Dashboard</a></li>
        <li><a class=" p-2 d-none d-md-block text-dark nav-link" href="/teacher/account">Account</a></li>
        <li><a class="p-2 d-none d-md-block text-dark nav-link" href="/au/singout">Singout</a></li>
        <li style="left: 25%; position: relative" class=" d-md-none "><button type="button" data-bs-toggle="offcanvas" data-bs-target="#offcanvasRight" class="nav-link shadow-0  btn text-dark"><i class=" bi bi-three-dots fs-1"></i></button></li>

          `
        res.send({listData})
      }
  
      else if(req.session.user=='student'){
  
          let listData= ` 
          <a href='/'> <img src="/image/default/resized/logo.png" width="71px" height="auto" class=" p-1">
          </a></li>
  
          <li><a class="p-2 d-none d-md-block text-dark nav-link" href="/student/dashboard">Dashboard</a></li>
          <li><a class=" p-2 d-none d-md-block text-dark nav-link" href="/student/account">Account</a></li>
          <li><a class="p-2 d-none d-md-block text-dark nav-link" href="/au/singout">Singout</a></li>
          <li style="left: 25%; position: relative" class=" d-md-none "><button type="button" data-bs-toggle="offcanvas" data-bs-target="#offcanvasRight" class="nav-link shadow-0  btn text-dark"><i class=" bi bi-three-dots fs-1"></i></button></li>

              `
      
          res.send({listData})
        
      }
  
      else if(req.session.user=='parent'){
        let listData= ` 
        <a href='/'>  <img src="/image/default/resized/logo.png" width="71px" height="auto" class=" p-1">
        </a></li>

        <li><a class="p-2 d-none d-md-block text-dark nav-link" href="/parent/dashboard">Dashboard</a></li>
        <li><a class=" p-2 d-none d-md-block text-dark nav-link" href="/parent/account">Account</a></li>
        <li><a class="p-2 d-none d-md-block text-dark nav-link" href="/au/singout">Singout</a></li>
        <li style="left: 25%; position: relative" class=" d-md-none "><button type="button" data-bs-toggle="offcanvas" data-bs-target="#offcanvasRight" class="nav-link shadow-0  btn text-dark"><i class=" bi bi-three-dots fs-1"></i></button></li>

          `
    
        res.send({listData})
      }
     
    }

  }


  