const {app, express, dotenv, nodemailer, mysql, sqlmap, session, createHmac} = require("../server")


// const sqlmap= mysql.createPool({
//     host: process.env.host_name,
//     user: process.env.user_name,
//     password: process.env.user_password,
//     database: process.env.database_name,
//     queueLimit: 0, 
//     connectionLimit: 10
  
//   })




exports.authentication_check = (req, res)=>{
    const {userRole, username, password}= req.body;
     const hashPassword= createHmac('md5', 'pipilikapipra').update(password).digest('hex');
   if(userRole=='parents')  var findBashQuery= `SELECT * FROM ${userRole} WHERE domain='${req.hostname}' AND  permission='allow' AND  email="${username}" AND password="${hashPassword}"`

   else if(userRole=='students') var findBashQuery= `SELECT * FROM ${userRole} WHERE domain='${req.hostname}' AND   email="${username}" AND password="${hashPassword}"`

   else if(userRole=='teachers') var findBashQuery= `SELECT * FROM ${userRole} WHERE domain='${req.hostname}' AND  email="${username}" AND password="${hashPassword}"`

 sqlmap.query(findBashQuery, (err, info)=>{

        if(err) console.log(err.sqlMessage);

        else {

            if(info.length> 0 && userRole=="students" )

            {
                req.session.userid= info[0].ID;
                req.session.user= "student";
                req.session.student_uuid= info[0].student_uuid;
                req.session.userAccess= "privet"
                req.session.className= info[0].class;
                req.session.sectionName= info[0].section;
                req.session.userName= info[0].name;
                req.session.userEmail= info[0].email;
                req.session.usermail= info[0].email;
                req.session.student_id= info[0].student_id;

                res.send({status: 200, route: '/student/dashboard/', alert: 'alert-success', msg: 'Sign in successfully!'})
                
            } 

            else if(info.length> 0 && userRole=="teachers" )
            { 

                req.session.userid= info[0].ID;
                req.session.teacher_uuid= info[0].teacher_uuid;
                req.session.user= "teacher"
                req.session.userAccess= "privet"
                req.session.userName= info[0].name;
                req.session.userEmail= info[0].email;
                req.session.usermail= info[0].email;
                req.session.index= info[0].index_number;

                res.send({status: 200, route: '/teacher/dashboard/', alert: 'alert-success', msg: 'Sign in successfully!'})

            } 

            

            else if(info.length> 0 && userRole=="parents" )
            {
              req.session.userid= info[0].ID;
              req.session.parent_uuid= info[0].parent_uuid;
                req.session.user= "parent"

                req.session.userAccess= "privet"
                req.session.userName= info[0].name;
                req.session.userEmail= info[0].email;             
                req.session.student_id= info[0].student_id;             


                res.send({status: 200,route: '/parent/dashboard/', alert: 'alert-success', msg: 'Sign in successfully!'})

            } 

            else 
            {

              res.send({status: 404,route: '/au/404/', alert: 'alert-danger', msg: 'Authentication failed!'})

                
            }
        }

    })

}



exports.authentication_404=  (req, res)=>{
    res.render("authentication/signin_page", {msg: req.flash("msg"), alert: req.flash("alert")})
    }

exports.signout =  (req, res)=>{
    req.session.destroy((err)=>{
      req.session= null;
      // res.clearCookie('nocookie', {path: '/'})
      if(err) console.log(err);
      else res.render("authentication/signin_page")
    })
    
    }





exports.forgot_password= (req, res)=>{

   let userRole= req.body.userRole;
   let username= req.body.username;
   let sql= `SELECT email FROM ${userRole} WHERE domain='${req.hostname}' AND  email="${username}"`
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
    const hashPassword= createHmac('md5', 'pipilikapipra').update(password).digest('hex');

    let sql= `UPDATE ${userRole} SET password= "${hashPassword}" WHERE domain='${req.hostname}' AND  email="${username}"`
    sqlmap.query(sql, (err, next)=>{
  
      if(err) console.log(err.sqlMessage);
  
      else 
      { 
        req.flash("alert", "success")
        req.flash("msg", "Password Changed Successfully!")
         res.redirect("/au/signin/page")
      }
    })
  }






exports.au_user_header_nav= (req, res)=>{
 var userType= req.session.user+'s';
  sqlmap.query(`SELECT avatar FROM ${userType} WHERE ID=${req.session.userid}`, (err, info)=>{
    if(err) console.log(err.sqlMessage);
    else {
      const avatar= info[0].avatar;

      if(req.session.userAccess==='privet'){
  
        if(req.session.hashUser=='hashAdmin'){
          res.send({profile: '/admin/account/', dashboard: '/admin/dashboard/', avatar:'/image/admin/'+avatar})
  
        }
    
        else if(req.session.user=='teacher') {
      
          res.send({profile: '/teacher/account/', dashboard: '/teacher/dashboard/', avatar:'/image/teacher/resized/'+avatar})
  
        }
    
        else if(req.session.user=='student'){
    
          res.send({profile: '/student/account/', dashboard: '/student/dashboard/', avatar:'/image/student/resized/'+avatar})
  
          
        }
    
        else if(req.session.user=='parent'){
          res.send({profile: '/parent/account/', dashboard: '/parent/dashboard/', avatar:'/image/parent/resized/'+avatar})
  
        }
       
      }
  
    }
  })
   
  }



