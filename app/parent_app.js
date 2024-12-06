const {app, express, sqlmap, nodemailer, multer, createHmac, fs, path, session} = require("../server")
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
 
    sqlmap.query(`SELECT student_id FROM students WHERE domain='${req.cookies["hostname"]}' AND  student_id='${student_id}'`, (errStudent, infoStudent)=>{
      if(errStudent) console.log(errStudent.sqlMessage);
      if(infoStudent.length>0){

        sqlmap.query(`SELECT email FROM parents WHERE domain='${req.cookies["hostname"]}' AND  email="${email}"`, (errMain, infoMain)=>{
 
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
   cb(null, "./public/image/parent/")
  } ,

  filename: (req, file, cb)=>{

    cb(null, new Date().getTime()+"_"+file.originalname)
  },
  
})

exports.multer_upload_parent= multer({
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
  z
   if(userAuthentication==true) {
  
    const hashPassword= createHmac('md5', 'pipilikapipra').update(password).digest('hex');
  
    sqlmap.query(`INSERT INTO parents (domain, session, class, section, name, telephone, student_id, email, password, gender) 
    VALUES (${req.cookies["hostname"]}', ${session}', "${className}", "${sectionName}", "${name}","${telephone}", "${student_id}", "${email}", "${hashPassword}", "${gender}")`, (err)=>{
  
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




exports.self_dashboard= (req, res)=>{

    let parent_uuid= req.session.parent_uuid;
    let sql= `SELECT * FROM parents WHERE domain='${req.cookies["hostname"]}' AND  parent_uuid="${parent_uuid}"`

    sqlmap.query(sql, (err, info)=>{

      res.render("parent/dashboard_page", {info})


    })

  } 



exports.self_account= (req, res)=>{

    let parent_uuid= req.session.parent_uuid;
    let sql= `SELECT * FROM parents WHERE domain='${req.cookies["hostname"]}' AND  parent_uuid="${parent_uuid}"`

    sqlmap.query(sql, (err, info)=>{

      res.render("parent/account_page", {info,  msg: req.flash("msg"), alert: req.flash("alert")})


    })

  } 



    
  exports.self_penbox_push=(req, res)=>{
    console.log(req.body);
      const {name, phone, gender, }= req.body;
      const domain= req.cookies["hostname"];
      const userid= req.session.userid;
      sqlmap.query(`UPDATE parents SET name='${name}', phone='${phone}',
      gender='${gender}' WHERE domain='${req.cookies["hostname"]}' AND ID=${userid}`,
      (err, update)=>{
          if(err) console.log(err.sqlMessage);
          else res.send({alert: 'alert-success', msg: 'Update successfully!'})
      })
      
    }
    
  
  
  exports.self_img_post= async(req, res)=>{
    const userid= req.session.userid;
  
      const {dataid}= req.body;
    
       if(req.file){
          if(req.file.size<1048576){
              const { filename: image } = req.file;
        
            await sharp(req.file.path)
            .jpeg({ quality: 50 })
            .toFile(
                path.resolve(path.resolve(req.file.destination, 'resized',image))
            )
            fs.unlinkSync(req.file.path)
        
            }
        
            else {
        
              
              await sharp(req.file.path)
              .jpeg({ quality: 50 })
              .toFile(
                  path.resolve(path.resolve(req.file.destination, 'resized', image))
              )
        
          fs.unlinkSync(req.file.path)
            
              }
       }
    
       sqlmap.query(`UPDATE parents SET avatar='${req.file.filename}' WHERE domain='${req.cookies["hostname"]}' AND ID=${userid}`, (err, next)=>{
           if(err) console.log(err.sqlMessage);
           else   res.send({msg: 'Update successfully!', alert: 'alert-success'})
       })
    
    
    
    
    }
  
  
          
  exports.self_password_update_push= (req, res)=>{
    const {cpassword, npassword}= req.body;
    const email= req.session.usermmail
    const currentPassword= createHmac('md5', 'pipilikapipra').update(cpassword).digest('hex');
    const newPassword= createHmac('md5', 'pipilikapipra').update(npassword).digest('hex');
    const userid= req.session.userid;
  
          const sql= `UPDATE parents SET password="${newPassword}" WHERE domain='${req.cookies["hostname"]}' AND  ID="${userid}"`
      
      
         sqlmap.query(`SELECT password FROM parents WHERE domain='${req.cookies["hostname"]}' AND  ID="${userid}"`, (errPass, infoPass)=>{
      
          if(errPass) console.log(errPass.sqlMessage);
          else{
      
            if( currentPassword==infoPass[0].password){
      
        sqlmap.query(sql, (err, info) =>{
      
          if(err) console.log(err.sqlMessage);
      
          else res.send({alert: 'alert-success', msg: 'Changed! Successfully...'})
          
        })
      
      }
      
      else res.send({alert: 'alert-info', msg: 'Current Password Not Matched!'})
  
      
          }
      
         })
    
        } 
      
  
  
  
  exports.self_email_update_pull= (req, res)=>{
    const {username}= req.body;
  var randHashCode= Math.ceil(Math.random()*900000);
req.session.username=username; 
req.session.temp_code=randHashCode;
  sqlmap.query(`SELECT email FROM parents WHERE domain='${req.cookies["hostname"]}' AND  email="${username}"`, (errMain, infoMain)=>{
   if(errMain) console.log(errMain.sqlMessage);
   if(infoMain.length>0) res.send({feedback: true, alert: 'alert-info', msg: 'Username already exists!'})
  
    else {
  
    const transporter= nodemailer.createTransport({
     
        host: process.env.email_host,
        port: process.env.email_port,
        auth: {
          user: process.env.email_address,
          pass: process.env.email_password
        }
    
      })
  
  
  
    
    
      const mailOutput= `<html> <h2>Welcome to Our School</h2><h4 style="background-color: slateblue; color: white;">your verification code is <span style="color: white" href="#">${randHashCode} & expaire after 5 minutes</span></h4></html>`
    
      const mailOptions = {
        from: process.env.email_address,
        to: username,
        subject: "Username Update",
        text: "Verify account",
        html: mailOutput
      }
  
      
      transporter.sendMail(mailOptions, (err, info)=>{
        
        if(err) res.send({alert: 'alert-info', msg: 'Something Wrong! please try again!', feedback: true})
        
    else {
  
      
  
      var htmldata= `
      <form id="formemailpush" action="#" method="post">
                 
                 
      <div class="card p-2">
        <div class="card-body">
          <h5 class="card-title fw-semibold p-2 font-monospace">Verification code sent!</h5>
          <p class="card-text p-2"><input required class="form-self w-100 p-2" type="text" placeholder="enter verification code" name="verifyCode" id=""></p>
        </div>
  
        <div class="d-flex justify-content-between p-2">
         <button type="button" class="btn btn-link p-2 mycard-pop" data-bs-dismiss="modal">Close</button>
  
         <button type="submit" class="btn btn-link p-2">Submit </button>
  
        </div>
      </div>
    </form>`
  

    setTimeout(()=>{
      req.session.temp_code=false;
      }, 5*60000)
  
      req.session.save((err) => {
        if (err) {
            console.log('Error saving session: ', err);
        } else {
          res.send({htmldata})
        }
    });
  
    }
        
      
      })
  
   
  
    }
  
  })
  
    
  }
  
  
  
  
      
  exports.self_email_update_push= (req, res)=>{
  const userid= req.session.userid;
   const {verifyCode}= req.body;
   const username=req.session.username; 
   const temp_code=req.session.temp_code;
   
  
if(verifyCode==temp_code){
  sqlmap.query(`SELECT email FROM parents WHERE domain='${req.cookies["hostname"]}' AND  email="${username}"`, (errMain, infoMain)=>{
    if(errMain) console.log(errMain.sqlMessage);
     if(infoMain.length>0) res.send({feedback: true, alert: 'alert-info', msg: 'Username already exists!'})
     else {
  
      sqlmap.query(`UPDATE parents SET email="${username}" WHERE domain='${req.cookies["hostname"]}' AND  ID=${userid}`, (err, info) =>{
      
        if(err) res.send({alert: 'alert-info', msg: 'Something Wrong! please try again!'})
      
        else res.send({alert: 'alert-success', msg: 'Email updated succesfully!'})
      })
  
  
    }
  })
  }
   else res.send({alert: 'alert-info', msg: 'Invalid verified code!'})
  }
  
  



exports.admin_parent_get= (req, res)=>{
  let {className, sectionName}= req.body;

  sqlmap.query(`SELECT * FROM parents WHERE domain='${req.cookies["hostname"]}' AND  permission='allow' AND class='${className}' AND section='${sectionName}'`, (err, info)=>{
    if(err) console.log(err.sqlMessage);
    
    let listData= '';

    for (const i in info) {

      listData+=` <tr>
      <td><span class='badge text-dark bg-light'>${info[i].name}</span></td>
      <td><span class='badge text-dark bg-light'>${info[i].student_id}</span></td>

      <td><span class='badge text-dark bg-light'> 
      <img data-id="${info[i].ID}" title='Info' class="modal-person-trigger" style='cursor: pointer'  src="/image/parent/resized/${info[i].avatar}" alt="404" width="30px" >
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
  let parent_uuid= req.session.parent_uuid;
  
  sqlmap.query(`SELECT * FROM parents WHERE domain='${req.cookies["hostname"]}' AND  permission='allow' AND parent_uuid='${parent_uuid}'`, (err, info)=>{
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
  const {dataid}= req.body; 

if(dataid==undefined){
    res.send({msg: "Data not found!", alert: "alert-info"})

}
else {
  sqlmap.query(`SELECT * FROM parents WHERE domain='${req.cookies["hostname"]}' AND  ID IN (${dataid})`, (errInfo, findInfo)=>{
      if(errInfo) console.log("data not found!")
      
      else {
  
          
  sqlmap.query(`DELETE FROM parents WHERE domain='${req.cookies["hostname"]}' AND  ID IN (${dataid})`, (err, next)=>{
      if(err) console.log(err.sqlMessage);
      else
      {
        for (const index in findInfo) {
          if(findInfo[index].image=='male_avatar.png' || findInfo[index].image=='female_avatar.png'){
             console.log('no delete default png');
          } else{

            fs.unlink(`./public/image/parent/resized/${findInfo[index].avatar}`, function (errDelete) {
              if (errDelete) console.log(errDelete+"_"+"Data Deleted! Not found file!");
         
            
            });
          }

    
         }
  
         res.send({msg: "Data Deleted! Successfully!", alert: "alert-success"})
          
      }
  })
  
      }
  
  })
}

}

