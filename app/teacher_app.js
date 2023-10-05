const express = require("express");
const {sqlmap, nodemailer, multer, createHmac, path, fs}= require("../server")
const sharp= require("sharp")

const app = express()


const multer_location= multer.diskStorage({
  destination: (req, file, cb)=>{
   cb(null, "./public/image/")
  } ,

  filename: (req, file, cb)=>{

    cb(null, new Date().getTime()+"_"+file.originalname)
  },
  
})

exports.multer_upload_teacher= multer({
  storage: multer_location,

  limits: {fileSize: 1024*1024},
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




exports.admin_teacher_join= async (req, res)=>{

  let {religion, name, email,  gender, pdsId, index_number, position, groupSpecial,  telephone, password,  joiningDate, bloodGroup}= req.body;
   if(pdsId==undefined || pdsId=='') var pdsId_= Math.floor(Math.random()*900000); else var pdsId_=  pdsId
   if(index_number==undefined || index_number=='') var index_number_= 'N'+Math.floor(Math.random()*900000); else var index_number_=  index_number;
   const hashPassword= createHmac('md5', 'pipilikapipra').update(email+password).digest('hex');

  if(req.file){
    var avatar_png= req.file.filename;

   }

   else {
    if(gender=="Female") var avatar_png= "female_avatar.png"
    else var avatar_png= "male_avatar.png"
   }



  sqlmap.query(`SELECT * FROM teachers WHERE domain='${req.hostname}' AND  email="${email}" OR index_number="${index_number}" OR index_number="${index_number_}"`, (err_, info_)=>{
 
   if(err_) console.log(err_.sqlMessage);

   else 
   {
    if(info_.length>0) res.send({msg: "Email or PDSID or index_number. Already Joined!", alert: "alert-danger text-danger"})
   else  
  {

  let sql= `INSERT INTO teachers (domain, religion, name, gender, pds_id, index_number, position, group_special,  telephone, email, password, joining_date, avatar) 
  VALUES 
  ('${req.hostname}', "${religion}", "${name}", "${gender}", "${pdsId_}", "${index_number_}", "${position}", "${groupSpecial}", "${telephone}", "${email}", "${hashPassword}", "${joiningDate}",  "${avatar_png}")`

  sqlmap.query(sql, (err_sub, info_sub)=>{

    if(err_sub) console.log(err_sub.sqlMessage+ "Insert");

 
     else res.send({msg: "Teacher Join Successfully!", alert: "alert-success text-success"})
     
    
  })

    }
   }

   
  })


  if(req.file){
    
   if(req.file.size<524288){

    await sharp(req.file.path)
     .jpeg({ quality: 50 })
     .toFile(
         path.resolve(path.resolve(req.file.destination, 'teacher', avatar_png))
     )

fs.unlinkSync(req.file.path)

  
    }

  
  else {
    await sharp(req.file.path)
    .jpeg({ quality: 20 })
    .toFile(
      path.resolve(path.resolve(req.file.destination, 'teacher', avatar_png))
      )
  
    fs.unlinkSync(req.file.path)
  
    
      }
  }

}







exports.admin_teacher_config= (req, res)=>{


  let {className, ID}= req.body;

  let classNameData= className.toString().replaceAll(",", " $%& ");

   sqlmap.query(`UPDATE teachers SET class="${classNameData}" WHERE domain='${req.hostname}' AND  ID=${ID}`, (err, next)=>{
 
     if(err) console.log(err.sqlMessage);

      else res.send({msg: "Teacher Config Successfully!", alert: "alert-success text-success"})
      
       })

  
    }
    





exports.admin_config_subject= (req, res)=>{

  sqlmap.query(`SELECT subject, section FROM subject WHERE domain='${req.hostname}' AND  class="Ten" ORDER BY section`, (err10, info10)=>{

    sqlmap.query(`SELECT subject, section FROM subject WHERE domain='${req.hostname}' AND  class="Nine" ORDER BY section`, (err9, info9)=>{

      sqlmap.query(`SELECT subject, section FROM subject WHERE domain='${req.hostname}' AND  class="Eight" ORDER BY section`, (err8, info8)=>{

        sqlmap.query(`SELECT subject, section FROM subject WHERE domain='${req.hostname}' AND  class="Seven" ORDER BY section`, (err7, info7)=>{

          sqlmap.query(`SELECT subject, section FROM subject WHERE domain='${req.hostname}' AND  class="Six" ORDER BY section`, (err6, info6)=>{

            let list10= "";

          

            for (i  in info10) {

              list10+= `
 <option value="${info10[i].subject}">${info10[i].subject}-${info10[i].section}</option>
          
         
            `
             
            }

            res.send({list10})
    

          })
    

        })
    

      })
    

    })


  })
}






exports.admin_teacher_get= (req, res)=>{

          sqlmap.query(`SELECT * FROM teachers ORDER BY ID DESC`, (err, info)=>{
     
            if(info.length>0){

              let list= "";
              for (let i in info) {
              list+= `    <div class="col-11 border col-md-4 mt-3 m-auto m-md-0 mt-md-3 ">
              <span class=" alert-dark ms-3">
              <span data-id="${info[i].ID}" onclick='_delbox_pull(${info[i].ID})' title="Delete" class="btn del_def "> <i class=" fa fa-trash"></i></span>
              <span data-id="${info[i].ID}" title="Edit" class="btn edit_def "> <i class=" fa fa-edit"></i></span>
     
              </span>

              <ul class="list-group list-unstyled">
                                  
                  
                  <li class="list-group-item-secondary">
                  <img class='rounded' width="100px" src="/image/teacher/${info[i].avatar}" alt="">
                      <span class=" badge bg-light border text-dark">${info[i].name}</span>  <p></p>
                      <span class=" badge bg-light border text-dark">${info[i].position}</span>  <p></p>
                      <span class=" badge bg-light border text-dark">${info[i].email}</span>
                  
                  </li>
          
                       
                  <li class="list-group-item-secondary">
                      <span class=" badge bg-light border text-dark">Contact: ${info[i].telephone}</span>  <p></p>
                      <span class=" badge bg-light border text-dark">PDSID: ${info[i].pds_id}</span>  <p></p>
                      <span class=" badge bg-light border text-dark">index_number: ${info[i].index_number}</span>

                     
                  </li> 
                

                  
                  <li class="list-group-item-secondary">
                      <span class=" badge bg-light border text-dark">Birth Date: ${info[i].birth_date}</span>  <p></p>
                     
                      <span class=" badge bg-light border text-primary">Joining Date: ${info[i].joining_date}</span>
                      <p></p>
                  </li> 
                  
                  <li class="list-group-item-secondary">
                  <span class=" badge bg-light border text-dark">Gender: ${info[i].gender}</span>  <p></p>
                  <span class=" badge bg-light border text-dark">Religion: ${info[i].religion}</span> 
                      <p></p>
                  </li>
          

                  
                  <li class="list-group-item-secondary">
                  <span class=" badge bg-light border text-dark">Address: ${info[i].address}</span> <p></p>
                      <p></p>
                  </li>
           
              </ul>
          
              </div>
           
              
          `


              }

               res.send({list})

                
            }

      else res.send({list: "No Teacher Found!"})
    })
  }






exports.admin_teacher_delete= (req, res)=>{
  let ID= req.body.ID

  sqlmap.query(`DELETE FROM teachers WHERE domain='${req.hostname}' AND  ID=${ID}`, (err, next)=>{
    if(err) console.log(err.sqlMessage);
    else res.send({msg: "Delete From Teacher List!"})
  })


  

}









exports.admin_teacher_update_page= (req, res)=>{
  let ID= req.body.ID


  sqlmap.query(`SELECT * FROM teachers WHERE domain='${req.hostname}' AND  ID=${ID}`, (err, info)=>{
    if(err) console.log(err.sqlMessage);
    else 
    {


     let list=`   <form id="editTeacherList" method="post" class="">
     <input  type="hidden"  name="ID" value="${info[0].ID}" class="form-control" required>

     <center>
       <img src="/photos/${info[0].avatar}" height="70px" alt=""> <br>
       <strong>Teacher Information</strong>
     </center>     
   
     <div class=" input-group"> 
     <span class=" input-group-text"><i class=" fa fa-id-card"></i></span>
     <input  type="number" placeholder="enter pds id" name="pdsId" value="${info[0].pds_id}" class="form-control" required>
 </div>



 <div class=" input-group"> 
     <span class=" input-group-text"><i class=" fa fa-id-card"></i></span>
     <input type="text" placeholder="enter index no." name="index_number" value="${info[0].index_number}" class="form-control" required> 
 </div>

 
 <div class=" input-group"> 
     <span class=" input-group-text"><i class=" fa fa-user-circle"></i></span>
     <input type="text" placeholder="enter name" name="name" value="${info[0].name}" class="form-control" required>
 </div>
 <p></p>


 
 <div class=" input-group"> 
     <span class=" input-group-text">Position</span>
     <input type="text" placeholder="enter index no." name="position" value="${info[0].position}" class="form-control" required> 
 </div>


 <div class=" input-group"> 
 <span class=" input-group-text">Joining</span>
 <input type="text" placeholder="09-09-2002" name="joiningDate" value="${info[0].joining_date}" class="form-control" required>
</div>
<p></p>




 <center>
   <button id="submitbtn" class="text-light btn-self w-50 rounded">Update</button>
 </center>
 <p></p>
 </form>

 `

      res.send({list})
      }

  })
}







exports.admin_teacher_update= (req, res)=>{

  let {name, pdsId, index_number, ID, position, joiningDate}= req.body;

  sqlmap.query(`SELECT * FROM teachers WHERE domain='${req.hostname}' AND  pds_id=${pdsId} OR index_number="${index_number}"`, (errF, infoF)=>{
    if(errF) console.log(errF.sqlMessage);
  else {

        sqlmap.query(`UPDATE teachers SET name="${name}", pds_id="${pdsId}", index_number="${index_number}", position='${position}', joining_date='${joiningDate}' WHERE domain='${req.hostname}' AND  ID="${ID}"`, (err, next)=>{
          if(err) res.send({msg: "PDSID or index_number. Already Joined!", alert: "alert-danger text-danger"})

          else res.send({msg: "Save Changes Successfully!", alert: "alert-success text-success"})
        })
      
    }
  })

}








exports.self_dashboard= (req, res)=>{
    let sql= `SELECT name, class, section, student_id, ID, avatar FROM students  WHERE domain='${req.hostname}' AND  class="Ten"  ORDER BY ID DESC`

    sqlmap.query(sql, (err, info)=>{

      res.render("teacher/dashboard_page", {info})


    })


  }




exports.self_account = (req, res)=>{
    let ID= req.session.userid;
    let sql= `SELECT * FROM teachers WHERE domain='${req.hostname}' AND  ID="${ID}"`

    sqlmap.query(sql, (err, info)=>{

      res.render("teacher/account_page", {info,  msg: req.flash("msg"), alert: req.flash("alert")})


    })



    


  }





  exports.self_avatar_upload =  async (req, res, next)=>{

    sqlmap.query(`UPDATE teachers SET avatar="${req.file.filename}" WHERE domain='${req.hostname}' AND  ID="${req.session.userid}"`, (err, next)=>{
  
      if(err) console.log(err.message);
   
      else {
        res.send({msg: "Changed Successfully!"})
      } 
    })

    if(req.file.size<524288){

      await sharp(req.file.path)
       .jpeg({ quality: 50 })
       .toFile(
           path.resolve(path.resolve(req.file.destination, 'teacher', req.file.filename))
       )

  fs.unlinkSync(req.file.path)
  
    
      }
  
    
    else {
      await sharp(req.file.path)
      .jpeg({ quality: 20 })
      .toFile(
        path.resolve(path.resolve(req.file.destination, 'teacher', req.file.filename))
        )
    
      fs.unlinkSync(req.file.path)
    
      
        }
    
   
  }





exports.public_teacher_list= (req, res)=>{

            sqlmap.query(`SELECT * FROM teachers WHERE domain='${req.hostname}' ORDER BY ID DESC`, (err, info)=>{
             if(err) console.log(err.sqlMessage);
  
              else res.render("public/all_teachers_public", {info})
      })
    }
  


exports.public_teacher_profile_get= (req, res)=>{
const {dataid}= req.body; 
sqlmap.query(`SELECT * FROM teachers WHERE domain='${req.hostname}' AND  ID="${dataid}"`, (err, info)=>{
         
if(info.length>0){
let htmldata= `
   <center>
  <div class="bg-card-color-light pt-3  pb-3 rounded-top-5 rounded-start-5">
      <div class="card-image">
          <img class="avatar-circle" src="/image/teacher/${info[0].avatar}" alt="">
      </div>
  </div>
</center>

<center>
  
  <div class=" pt-3 pb-3 rounded-bottom-5 rounded-end-5">
      <div class="card-body text-start p-2">
    
          <div class="d-flex text-muted ">
             <div class="p-1 w-25">Name</div>
             <code class="p-1">:</code><div class="p-1 w-75">${info[0].name}</div>
            </div>
      
            <div class="d-flex text-muted ">
              <div class="p-1 w-25">Position</div>
              <code class="p-1">:</code> <div class="p-1 w-75">${info[0].position}</div>
             </div>
      
            <div class="d-flex text-muted ">
              <div class="p-1 w-25">Gender</div>
              <code class="p-1">:</code> <div class="p-1 w-75">${info[0].gender}</div>
             </div>
      
             <div class="d-flex text-muted ">
              <div class="p-1 w-25">Index no</div>
              <code class="p-1">:</code> <div class="p-1 w-75">${info[0].index_number}</div>
             </div>
      
             <div class="d-flex text-muted ">
              <div class="p-1 w-25">Email</div>
              <code class="p-1">:</code> <div class="p-1 w-75">${info[0].email}</div>
             </div>
      
      
             <div class="d-flex text-muted ">
              <div class="p-1 w-25">Phone</div>
              <code class="p-1">:</code><div class="p-1 w-75">${info[0].telephone}</div>
             </div>
      
             <div class="d-flex text-muted ">
              <div class="p-1 w-25">Birth date</div>
              <code class="p-1">:</code><div class="p-1 w-75">${info[0].birth_date}</div>
             </div>      
             
             <div class="d-flex text-muted ">
              <div class="p-1 w-25">Religion</div>
              <code class="p-1">:</code><div class="p-1 w-75">${info[0].religion}</div>
             </div>
      
             <div class="d-flex text-muted ">
              <div class="p-1 w-25">Joining date</div>
               <code class="p-1">:</code><div class="p-1 w-75">${info[0].joining_date}</div>
             </div>
    
      
      </div>
  </div>
</center>
<button data-dismiss="modal" class="btn float-end fw-semibold btn-link link-primary p-2 ms-auto mt-2 mb-b">Close</button>
      
 `
res.send({htmldata})
  
                }
    
                  
      })
      }
    






exports.self_info_update= (req, res) =>{
  if(req.session.user=='teacher'){
        let {name, telephone, gender, birthDate, religion, address, bloodGroup, educationQualification}= req.body;
      let sql=   `UPDATE teachers SET education_qualification="${educationQualification}",  name="${name}", telephone="${telephone}", gender="${gender}", birth_date="${birthDate}", gender="${gender}",  religion="${religion}", address="${address}" WHERE domain='${req.hostname}' AND  ID="${req.session.userid}"`
      sqlmap.query(sql, (err, info)=>{
      
      if(err) console.log(err.sqlMessage);
      
      else {
        req.flash("msg", "Profile Updated Successfully!")
        req.flash("alert", "success")
        res.redirect("/teacher/account")
      }
      
      
      })
      
      }
      }
      
      
      
      
      
      
      
      
exports.self_password_update= (req, res)=>{
    const {password, pastPassword}= req.body;
    const email= req.session.userEmail
    const hashPassword= createHmac('md5', 'pipilikapipra').update(email+password).digest('hex');
    const oldPassword= createHmac('md5', 'pipilikapipra').update(email+pastPassword).digest('hex');
 
            let sql= `UPDATE teachers SET password="${hashPassword}" WHERE domain='${req.hostname}' AND  ID="${req.session.userid}"`
      
      
         sqlmap.query(`SELECT password FROM teachers WHERE domain='${req.hostname}' AND  ID="${req.session.userid}"`, (errPass, infoPass)=>{
      
          if(errPass) console.log(errPass.sqlMessage);
          else{
      
            if( oldPassword==infoPass[0].password)
      {
      
        sqlmap.query(sql, (err, info) =>{
      
          if(err) 
          {
            req.flash("msg", "Change Failed!")
            req.flash("alert", "danger")
            res.redirect("/teacher/account")
      
          }
      
          else
          {
          
            req.flash("msg", "Changed! Successfully...")
            req.flash("alert", "success")
            res.redirect("/teacher/account")
          }
        })
      
      }
      
      else 
      {
        req.flash("msg", "Current Password Not Matched!")
        req.flash("alert", "danger")
        res.redirect("/teacher/account")
      }
      
          }
      
         })
      
      
      
        } 
      
      
      
    





exports.self_email_update_page= (req, res)=>{
  if(req.session.user=='teacher'){
  let {username}= req.body;
         
  sqlmap.query(`SELECT email FROM teachers WHERE domain='${req.hostname}' AND  email="${username}"`, (errMain, infoMain)=>{
  
    if(infoMain.length>0)
    {

      req.flash("msg", "username already exists!")
      req.flash("alert", "danger")
      res.redirect("/teacher/account")

    }

    else
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
          res.redirect("/teacher/account", {msg: req.flash("msg"), alert: req.flash("alert")})
         }
        
    else {

      req.session.username= username

      req.flash("msg", "Verification Code Sent!")
      req.flash("alert", "success")

      res.render("authentication/username_update_page", {user: "teacher", msg: req.flash("msg"), alert: req.flash("alert")})

    }
        
      
      })

   

    }

  })
}
}
  






      
      
exports.self_email_update= (req, res)=>{
  if(req.session.user=='teacher'){
        if(req.body.verifyCode==req.session.userVerifyCode)
        {
      
      let sql= `UPDATE teachers SET email="${req.session.username}" WHERE domain='${req.hostname}' AND  ID="${req.session.userid}"`
      
      sqlmap.query(sql, (err, info) =>{
      
        if(err) 
        {
          req.flash("msg", "Something Wrong!")
          res.redirect("/teacher/account")
      
        }
      
        else
        {
        
          req.flash("msg", "Changed! Successfully...")
          req.flash("alert", "success")
          res.redirect("/teacher/account")
        }
      })
      
        }
      
        else 
        {
          req.flash("msg", "Authontication Falied!")
          req.flash("alert", "danger")
          res.render("authentication/username_update_page", {user: "teacher", msg: req.flash("msg"), alert: req.flash("alert")})
        }
      
      }
      }



      




exports.self_close_account= (req, res)=>{
  if(req.session.user=='teacher'){
        // sqlmap.query(`DELETE  FROM teachers WHERE domain='${req.hostname}' AND  ID="${req.body.dataID}"`, (err, info)=>{
      
        //   if(err) res.end("you are restricted! can't close your account")
           
        //   else 
        //   {
        //     res.send({msg: 'closed!'})
        //   }
        // })
      
      }
      }
      
      




exports.self_social_update= (req, res)=>{
  if(req.session.user=='teacher'){
        let {facebookLink}=req.body;
        console.log(req.body);
          sqlmap.query(`UPDATE teachers SET facebook_link="${facebookLink}"  WHERE domain='${req.hostname}' AND  ID="${req.session.userid}"`, (err, info)=>{
        
            if(err) console.log(err.sqlMessage);
             
            else 
            {
              req.flash("alert", "success")
              req.flash("msg", "Social Link Updated...")
              res.redirect("/teacher/account")
            }
          })
        
        }
        }