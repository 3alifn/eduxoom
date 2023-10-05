const { query } = require("express")
const express = require("express")
const { sqlmap, nodemailer, multer, createHmac, fs, path} = require("../server")
const app = express();
const sharp= require('sharp');

var regexTelephone= /^01[0-9]*$/
var regexNumber= /^[0-9]*$/
var regexString= /[A-Za-z .-_]*$/
var regexPassword= /^[a-zA-Z0-9!@#$%&*]*$/
var regexEmail= /^([a-zA-Z0-9_\-\.]+)@((\[[0-9]{1,3}\.[0-9]{1,3}\.[0-9]{1,3}\.)|(([a-zA-Z0-9\-]+\.)+))([a-zA-Z]{2,4}|[0-9]{1,3})(\]?)$/ 


exports.join= (req, res)=>{

    
  let {name, email, student_id, telephone,  password, gender}=  req.body;
  let userPassword= regexPassword.test(password) && password.length>5 && password.length<21;
  let userName= regexString.test(name) && name.length>1
  let userEmail= regexEmail.test(email)
  let userTelephone= regexTelephone.test(telephone) && telephone.length==11;

  let userInputData = [userName, userTelephone, userEmail, userPassword]

  let userAuthentication= userInputData.every((input)=>{
     return input==true
  })
 
  if(userAuthentication==true) todoJoinParent()

  else {
    req.flash("msg", "Something Wrong! please try again...")
    req.flash("alert", "warning")
    res.redirect("/pu/join/parent")

  }

  function todoJoinParent(){
 
    sqlmap.query(`SELECT student_id FROM students WHERE domain='${req.hostname}' AND  student_id='${student_id}'`, (errStudent, infoStudent)=>{
      if(errStudent) console.log(errStudent.sqlMessage);
      if(infoStudent.length>0){

        sqlmap.query(`SELECT email FROM parents WHERE domain='${req.hostname}' AND  email="${email}"`, (errMain, infoMain)=>{
 
          if(errMain) console.log(errMain.sqlMessage);
      
          else 
          {
            if(infoMain.length>0)
            {
              req.flash("msg", "Email Already Exists!")
              req.flash("alert", "danger")
              res.render("parent/join_parent", {step: "step1", msg: req.flash("msg"), alert: req.flash("alert")}) 
            }
      
            else if(infoMain==0)
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
              
              let mailOutput= `<html> <h2>Welcome to Our School</h2><h4 style="background-color: slateblue; color: white;">your verification code is <span style="color: white" href="#">${randHashCode} & expaire after 5 minutes</span></h4></html>`
            
              let mailOptions = {
                from: process.env.email_address,
                to: email,
                subject: "Join Parent",
                text: "Verify account",
                html: mailOutput
              }
            
              req.session.userVerifyCode= randHashCode;
              setTimeout(()=>{
              req.session.destroy()
              }, 5*60000)
            
              
              transporter.sendMail(mailOptions, (err, info)=>{
                
                if(err) {
                  req.flash("msg", "Something Wrong! please try again...")
                  req.flash("alert", "warning")
                  res.render("parent/join_parent", {step: "step1", msg: req.flash("msg"), alert: req.flash("alert")})
                 }
                
            else {
              req.session.email= email
              req.session.password= password
              req.session.student_id= student_id
              req.session.name= name
              req.session.telephone= telephone
              req.session.gender= gender
              req.session.className= infoStudent[0].class
              req.session.sectionName= infoStudent[0].section
              req.flash("msg", "Verification Code Sent!")
              req.flash("alert", "success")
              res.render("parent/join_parent", {step: "step2", msg: req.flash("msg"), alert: req.flash("alert")})
            }
                
              
              })
            }
          }
      
      
        })

      }

      else {

        req.flash("msg", "Student Id not actived!")
        req.flash("alert", "danger")
        res.render("parent/join_parent", {step: "step1", msg: req.flash("msg"), alert: req.flash("alert")})


      }
    })
 
  }

}




const multer_location= multer.diskStorage({
  destination: (req, file, cb)=>{
   cb(null, "./public/image/")
  } ,

  filename: (req, file, cb)=>{

    cb(null, new Date().getTime()+"_"+file.originalname)
  },
  
})

exports.multer_upload= multer({
  storage: multer_location,

  limits: {fileSize: 1024*1024*2},
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








exports.self_verify_code= (req, res)=>{
    let {verifyCode}= req.body;
    
      if(verifyCode==req.session.userVerifyCode)
      {
        let session= new Date().getUTCFullYear();

   let className=  req.session.className;
   let sectionName=  req.session.sectionName;
   let email=  req.session.email;
   let password=  req.session.password;
   let name=  req.session.name;
   let student_id=  req.session.student_id;
   let telephone=  req.session.telephone;
   let gender=  req.session.gender;

   let userEmail= regexNumber.test(student_id)
   let userStudent_id= regexEmail.test(email)

   let userInputData = [userEmail, userStudent_id]

   let userAuthentication= userInputData.every((input)=>{
      return input==true
   })
  
   if(userAuthentication==true) {
  
    const hashPassword= createHmac('md5', 'pipilikapipra').update(email+password).digest('hex');
  
    sqlmap.query(`INSERT INTO parents (domain, session, class, section, name, telephone, student_id, email, password, gender) 
    VALUES (${req.hostname}', ${session}', "${className}", "${sectionName}", "${name}","${telephone}", "${student_id}", "${email}", "${hashPassword}", "${gender}")`, (err)=>{
  
      if(err) console.log(err.sqlMessage);
  
      else 
      {
   
            req.flash("alert", "success")
            req.flash("msg", "Request sent!, please wait for response......")
            res.redirect("/pu/join/parent/")
       
      }
    })
  
   }

   else {

    req.flash("msg", "Something Wrong! timeout! please try again...")
    req.flash("alert", "warning")
    res.render("parent/join_parent", {step: "step1", msg: req.flash("msg"), alert: req.flash("alert")})


   }

        
      
      }
       else 
       {
        req.flash("msg", "Invalid Code!")
        req.flash("alert", "danger")
        res.render("parent/join_parent", {step: "step2", msg: req.flash("msg"), alert: req.flash("alert")}) 
       }
      
    
    }
    





exports.self_close_account= (req, res)=>{

      sqlmap.query(`DELETE  FROM parents WHERE domain='${req.hostname}' AND  ID="${req.body.dataID}"`, (err, info)=>{
    
        if(err) res.end("you are restricted! can't close your account")
         
        else 
        {
          sqlmap.query(`DELETE FROM attendance WHERE domain='${req.hostname}' AND  ID="${req.body.dataID}"`, (err_sub, info_sub)=>{
     
            if(err_sub) console.log(err_sub.sqlMessage);
            else res.send({msg: 'closed!'})
          })
       
          
        }
      })
    
    }
    
    
    
    





exports.self_dashboard= (req, res)=>{

    let ID= req.session.userid;
    let sql= `SELECT * FROM parents WHERE domain='${req.hostname}' AND  ID="${ID}"`

    sqlmap.query(sql, (err, info)=>{

      res.render("parent/dashboard_page", {info})


    })

  } 










exports.self_account= (req, res)=>{

    let ID= req.session.userid;
    let sql= `SELECT * FROM parents WHERE domain='${req.hostname}' AND  ID="${ID}"`

    sqlmap.query(sql, (err, info)=>{

      res.render("parent/account_page", {info,  msg: req.flash("msg"), alert: req.flash("alert")})


    })

  } 







exports.self_info_update= (req, res) =>{

let {name, telephone, gender, relation}= req.body;
let sql=   `UPDATE parents SET name="${name}", gender='${gender}', telephone="${telephone}", relation="${relation}" WHERE domain='${req.hostname}' AND  ID="${req.session.userid}"`
sqlmap.query(sql, (err, info)=>{

if(err) console.log(err.sqlMessage);

res.redirect("/parent/account")

})



}









exports.self_password_update= (req, res)=>{

  const {password, pastPassword}= req.body;
  const email= req.session.userEmail
  const hashPassword= createHmac('md5', 'pipilikapipra').update(email+password).digest('hex');
  const oldPassword= createHmac('md5', 'pipilikapipra').update(email+pastPassword).digest('hex');


      const sql= `UPDATE parents SET password="${hashPassword}" WHERE domain='${req.hostname}' AND  ID="${req.session.userid}"`


   sqlmap.query(`SELECT password FROM parents WHERE domain='${req.hostname}' AND  ID="${req.session.userid}"`, (errPass, infoPass)=>{

    if(errPass) console.log(errPass.sqlMessage);
    else{

      if( oldPassword==infoPass[0].password)
{

  sqlmap.query(sql, (err, info) =>{

    if(err) 
    {
      req.flash("msg", "Change Failed!")
      req.flash("alert", "danger")
      res.redirect("/parent/account")

    }

    else
    {
    
      req.flash("msg", "Changed! Successfully...")
      req.flash("alert", "success")
      res.redirect("/parent/account")
    }
  })

}

else 
{
  req.flash("msg", "Current Password Not Matched!")
  req.flash("alert", "danger")
  res.redirect("/parent/account")
}

    }

   })

    



  } 






exports.self_avatar_upload= async(req, res, next)=>{


sqlmap.query(`UPDATE parents SET avatar="${req.file.filename}" WHERE domain='${req.hostname}' AND  ID="${req.session.userid}"`, (err, next)=>{


  if(err) console.log(err.message);

  else res.send({msg: "Changed Successfully!"})
})

    
  if(req.file.size<524288){

    await sharp(req.file.path)
     .jpeg({ quality: 50 })
     .toFile(
         path.resolve(path.resolve(req.file.destination, 'parent', req.file.filename))
     )

fs.unlinkSync(req.file.path)

  
    }

  
  else {
    await sharp(req.file.path)
    .jpeg({ quality: 20 })
    .toFile(
      path.resolve(path.resolve(req.file.destination, 'parent', req.file.filename))
      )
  
    fs.unlinkSync(req.file.path)
  
    
      }


}





exports.self_email_update= (req, res)=>{

if(req.body.verifyCode==req.session.userVerifyCode)
{

let sql= `UPDATE parents SET email="${req.session.username}" WHERE domain='${req.hostname}' AND  ID="${req.session.userid}"`

sqlmap.query(sql, (err, info) =>{

if(err) 
{
  req.flash("msg", "Something Wrong!")
  res.redirect("/parent/account")

}

else
{

  req.flash("msg", "Changed! Successfully...")
  req.flash("alert", "success")
  res.redirect("/parent/account")
}
})

}

else 
{
  req.flash("msg", "Authontication Falied!")
  req.flash("alert", "danger")
  res.render("authentication/username_update_page", {user: "parent", msg: req.flash("msg"), alert: req.flash("alert")})
}

}







exports.self_email_update_page= (req, res)=>{

let {username}= req.body;
       
sqlmap.query(`SELECT email FROM parents WHERE domain='${req.hostname}' AND  email="${username}"`, (errMain, infoMain)=>{

  if(infoMain.length>0)
  {

    req.flash("msg", "username already exists!")
    req.flash("alert", "danger")
    res.redirect("/parent/account")

  }

  else {

    const transporter= nodemailer.createTransport({
 
      host: process.env.email_host,
      port: process.env.email_port,
      auth: {
        user: process.env.email_address,
        pass: process.env.email_password
      }
  
    })
  
    const randHashCode=Math.floor(Math.random()*900000)
    
    let mailOutput= `<html> <h2>Welcome to Our Schools</h2><h4 style="background-color: slateblue; color: white;">your verification code is <span style="color: white" href="#">${randHashCode} & expaire after 5 minutes</span></h4></html>`
  
    let mailOptions = {
      from: process.env.email_address,
      to: username,
      subject: "Username Update",
      text: "Verify account",
      html: mailOutput
    }
  
    req.session.userVerifyCode= randHashCode;
    setTimeout(()=>{
    req.session.destroy()
    }, 5*60000)
  
    
    transporter.sendMail(mailOptions, (err, info)=>{
      
      if(err) {
        req.flash("msg", "Something Wrong! please try again...")
        req.flash("alert", "warning")
        res.redirect("/parent/account", {msg: req.flash("msg"), alert: req.flash("alert")})
       }
      
  else {

    req.session.username= username

    req.flash("msg", "Verification Code Sent!")
    req.flash("alert", "success")

    res.render("authentication/username_update_page", {user: "parent", msg: req.flash("msg"), alert: req.flash("alert")})

  }
      
    
    })

 

  }

})
}





exports.admin_parent_get= (req, res)=>{
  let {className, sectionName}= req.body;

  sqlmap.query(`SELECT * FROM parents WHERE domain='${req.hostname}' AND  permission='allow' AND class='${className}' AND section='${sectionName}'`, (err, info)=>{
    if(err) console.log(err.sqlMessage);
    
    let listData= '';

    for (const i in info) {

      listData+=` <tr>
      <td><span class='badge text-dark bg-light'>${info[i].name}</span></td>
      <td><span class='badge text-dark bg-light'>${info[i].student_id}</span></td>

      <td><span class='badge text-dark bg-light'> 
      <img data-id="${info[i].ID}" title='Info' class="modal-person-trigger" style='cursor: pointer'  src="/image/parent/${info[i].avatar}" alt="404" width="30px" >
      </span>

      </td>
      <td>      
      <span data-id='${info[i].ID}' title='Delete' class=' btn defDelete btn-close'></span>
      </td>
     
     </tr>`
     
    }

    res.send({listData})

  })
}




exports.admin_parent_profile= (req, res)=>{
  let {ID}= req.body;
  
  sqlmap.query(`SELECT * FROM parents WHERE domain='${req.hostname}' AND  permission='allow' AND ID='${ID}'`, (err, info)=>{
    if(err) console.log(err.sqlMessage);
    if(info.length>0){
  
      let avatar= `${info[0].avatar}`

 
       
       let html=`
       
       <h5 class="card-title">${info[0].name} </h5>
       <p class="card-text badge bg-light text-dark">Class: ${info[0].class}</p> 
       <p class="card-text badge bg-light text-dark">Section: ${info[0].section}</p> 
       <p class="card-text badge bg-light text-dark">student Id: ${info[0].student_id}</p> 
       <p class="card-text badge bg-light text-dark">Email: ${info[0].email}</p> 
       <p class="card-text badge bg-light text-dark">Contact: ${info[0].telephone}</p> 
       <p class="card-text badge bg-light text-dark">Gender: ${info[0].gender}</p>    
       

       `
      
      res.send({html, avatar})

    }

  })
}



exports.admin_parent_delete= (req, res)=>{
  let {ID}= req.body;
    
  console.log(ID);
  sqlmap.query(`DELETE FROM parents permission='allow' AND WHERE domain='${req.hostname}' AND  ID=${ID}`, (err, next)=>{
    if(err) console.log(err.sqlMessage);
    else res.send({msg: 'Deleted! successfully!', alert: 'success'})
  })
}

