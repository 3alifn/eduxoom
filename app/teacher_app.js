const {app, express, sqlmap, session, nodemailer, multer, createHmac, path, fs}= require("../server")
const sharp= require("sharp")

const multer_location = multer.diskStorage({
  destination: (req, file, cb) => {
      cb(null, "./public/image/teacher/")
  },

  filename: (req, file, cb) => {

      cb(null, new Date().getTime() + "_" + file.originalname)
  },

})

exports.multer_upload_teacher= multer({
  storage: multer_location,

  limits: { fileSize: 1024 * 1024 * 2 },
  fileFilter: (req, file, cb) => {
      if (file.mimetype == "image/png" || file.mimetype == "image/jpeg") {
          cb(null, true)
      }
      else {
          cb(new Error("file extension allow only png or jpeg"))
      }

  }

})



exports.admin_teacher_post= async(req, res)=>{
  var uuid= new Date().getTime()+Math.floor(Math.random()*900000000);
  const {name, position, index_number, gender, birth_date, pds_id, blood_group, religion, email, phone, address, joining_date}= req.body;
  const hashPassword= createHmac('md5', 'pipilikapipra').update('password@abc').digest('hex');
  const domain= req.hostname;
  if(req.file){
    var avatar_png= req.file.filename;

   }

   else {
    if(gender=="Female") var avatar_png= "female_avatar.png"
    else var avatar_png= "male_avatar.png"
   }



   sqlmap.query(`SELECT ID FROM teachers WHERE domain='${domain}' AND (index_number='${index_number}' OR email='${email}' OR phone='${phone}')`, 
   (err_check, info_check)=>{
    if(info_check.length>0){
     
      res.send({status: 503, msg: 'Invalid information! index_number or phone or email already exists', alert: 'alert-danger'})

    } else {
      join_teacher_def()
    }
   })


  async function join_teacher_def(){
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

    sqlmap.query(`INSERT INTO teachers (domain, teacher_uuid, name, position, gender, index_number, pds_id, birth_date, blood_group, religion, email, phone, address, joining_date, password, avatar )
    VALUES('${req.hostname}', '${uuid}', '${name}','${position}', '${gender}', '${index_number}', '${pds_id}', '${birth_date}', '${blood_group}',
    '${religion}', '${email}', '${phone}', '${address}', '${joining_date}', '${hashPassword}', '${avatar_png}')`, (err, next)=>{
        if(err) console.log(err.sqlMessage);
        else   res.send({status: 200, msg: 'Teacher join successfully!', alert: 'alert-success'})
    })
   }




}


exports.admin_teacher_get=(req, res)=>{
  sqlmap.query(`SELECT * FROM teachers WHERE domain='${req.hostname}' ORDER BY ID DESC`, (err, info)=>{
      if(err) console.log(err.sqlMessage);
      else {
          var tabledata= '';
          for (let index = 0; index < info.length; index++) {
            
              tabledata+=`

              <tr>
                      <td class="p-3"> 
                      <input class="shadowx checkout form-check-input" type="checkbox" value="${info[index].ID}" name="dataid[]" id=""></td>
                      <td class="">
                      <span class="badge text-dark bg-light">
                        <img class="shadowx avatar-circle bg-card-color-light rounded-pill" style="width: 40px; height: 40px;" src="/image/teacher/resized/${info[index].avatar}" alt="">
                        </span>
                        <span class="badge text-dark bg-light">${info[index].name}</span>
                      </td>
      
                      <td class="">
                      <span class="badge text-dark bg-light">${info[index].position}</span>
                      </td>
      
                      <td class="fw-semibold text-muted">
                        <div class="dropdown">
                          <button data-bs-toggle="dropdown" class="btn btn-link dropdown-toggle shadowx"> <i
                              class="bi bi-three-dots-vertical"></i></button>
                          <div class="dropdown-menu">
                            <button type='button' onclick='_penbox_pull(${info[index].ID})' class="btn  dropdown-item btn-link p-2"><i class="bi bi-pen p-1"></i>view and edit</button>
                            <button type='button' onclick='_delbox_push(${info[index].ID})' class="btn dropdown-item btn-link p-2"><i class="bi bi-trash p-1"></i>delete forever</button>
                          </div>
                        </div>
                      </td>
      
                    </tr>
               
                 
              `     

          }
             res.send({tabledata})

      }
  })
}


exports.admin_teacher_penbox_pull=(req, res)=>{
  const {dataid}= req.body; 
  sqlmap.query(`SELECT * FROM teachers WHERE domain='${req.hostname}' AND  ID=${dataid}`, (err, info)=>{
      if(err) console.log(err.sqlMessage);
      else {

var penboxdata=
`
<div id="penboxform" data-bs-backdrop="static" class="row modal  p-2 mt-5">

<div class="  modal-dialog modal-content shadowx  mt-3 bg-gradient- bg-light text- mb-5 col-12 m-auto">

<form id="penboxdata" class="penboxdata" method="post" action="#" onsubmit="return false">
<div class=" card shadowx">
 
  
   <div class='p-2 bg-card-color-light d-flex justify-content-center'>
   <img style="width: 100px; height: 100px" class="avatar-circle bg-card-color shadowx" src="/image/teacher/resized/${info[0].avatar}" alt="">

   </div>

  <div class="card-body fw-semibold">
  
  <div class="d-flex text-muted m-2">
  <input required type="hidden" name="dataid" value='${info[0].ID}'>
     <div class="p-1 w-25">Position</div>
     <code class='pe-1'>*</code>
       <input class="form-dev w-75 p-1" required type="text" value="${info[0].position}" placeholder="Gateman" name="position" id="">
    </div>

    <div class="d-flex text-muted m-2">
       <div class="p-1 w-25">Name </div>
       <code class='pe-1'>*</code>
        <input class="form-dev w-75 p-1" required type="text" value="${info[0].name}" placeholder="enter name" name="name" id="">
      </div>


      <div class="d-flex p-2 justify-content-between align-items-center">
      <p class="w-25 fw-semibold m-auto">Gender </p>
      <code class='pe-1'>*</code> <span class="w-75">
        Male <input value="Male" class="form-check-input shadowx ms-2 me-2" ${info[0].gender=='Male'?'checked':null} type="radio" name="gender" id="">
        Female <input value="Female" class="form-check-input shadowx ms-2" ${info[0].gender=='Female'?'checked':null} type="radio" name="gender" id="">
    
      </span>
    
    </div>

      
    <div class="d-flex text-muted m-2">
      <div class="p-1 w-25">Index No </div>
      <code class='pe-1'>*</code>
        <input required class="form-dev w-75 p-1" type="text" value="${info[0].index_number}" placeholder="enter index no" name="index_number" id="">
     </div>
      
    <div class="d-flex text-muted m-2">
      <div class="p-1 w-25">PDSID No</div>
      <code class='pe-1'>-</code>
          <input class="form-dev w-75 p-1" type="number" value="${info[0].pds_id}" placeholder="enter pdsid no" name="pds_id" id="">
     </div>


     
    <div class="d-flex text-muted m-2">
      <div class="p-1 w-25">Email</div>
      <code class='pe-1'>*</code>
       <input required class="form-dev w-75 p-1"  type="email" value="${info[0].email}" placeholder="example@mail.com" name="email" id="">
     </div>



     
    <div class="d-flex text-muted m-2">
      <div class="p-1 w-25">Phone</div>
      <code class='pe-1'>*</code>
        <input required required class="form-dev w-75 p-1"  type="phone" value="${info[0].phone}" placeholder="enter phone no" name="phone" id="">
     </div>


     
    <div class="d-flex text-muted m-2">
      <div class="p-1 w-25">Birth date</div>
      <code class='pe-1'>-</code>
       <input class="form-dev w-75 p-1" type="date" value="${info[0].birth_date}" placeholder="enter date of birth" name="birth_date" id="">
     </div>  

     
     
    <div class="d-flex text-muted m-2">
    <div class="p-1 w-25">Blood group</div>
    <code class='pe-1'>-</code>
     <input class="form-dev w-75 p-1" type="text" value="${info[0].blood_group}" placeholder="enter blood group" name="blood_group" id="">
   </div>  
   
     
     
    <div class="d-flex text-muted m-2">
      <div class="p-1 w-25">Religion</div>
      <code class='pe-1'>-</code>
       <input class="form-dev w-75 p-1" type="text" value="${info[0].religion}" placeholder="enter religion" name="religion" id="">
     </div>


     
    <div class="d-flex text-muted m-2">
      <div class="p-1 w-25">Address</div>
      <code class='pe-1'>*</code>
        <input class="form-dev w-75 p-1" type="text" value="${info[0].address}" placeholder="enter address" name="address" id="">
     </div>


     
    <div class="d-flex text-muted m-2">
      <div class="p-1 w-25">Joining date</div>
      <code class='pe-1'>-</code>
        <input class="form-dev w-75 p-1"  type="date" value="${info[0].joining_date}"  name="joining_date" id="">
     </div>

           
    <div class="d-flex justify-content-between text-muted m-2">
    <button type="button" data-bs-dismiss="modal" class="btn btn-link ">Close</button>

     <input  class="btn  text-primary submitbtn nav-fill btn-hover shadowx"  type="submit" value="Save and changes" id="">

   </div>


</div>
</div>
</form>
</div>
</div>
`
res.send({penboxdata})

      }
  })
}



exports.admin_teacher_penbox_push=(req, res)=>{
  const {dataid, name, position, index_number, gender, birth_date, pds_id, blood_group, religion, email, phone, address, joining_date}= req.body;
  const domain= req.hostname;

  sqlmap.query(`SELECT ID FROM teachers WHERE domain='${domain}' AND (index_number='${index_number}' OR email='${email}' OR phone='${phone}')`, 
  (err_check, info_check)=>{
    if(info_check.length==0){

      update_teacher_def()

    }
  else if(info_check.length==1 && info_check[0].ID==dataid){
      update_teacher_def()
   }
    else {

     res.send({msg: 'Invalid information! index_number or phone or email already exists', alert: 'alert-danger'})
   }
  })

function update_teacher_def(){
  sqlmap.query(`UPDATE teachers SET name='${name}', position='${position}', index_number='${index_number}',
  gender='${gender}', birth_date='${birth_date}', pds_id='${pds_id}', blood_group='${blood_group}', religion='${religion}', email='${email}', phone='${phone}', address='${address}', joining_date='${joining_date}'
  WHERE domain='${req.hostname}' AND ID='${dataid}'`,
  (err, update)=>{
      if(err) console.log(err.sqlMessage);
      else res.send({alert: 'alert-success', msg: 'Update successfully!'})
  })
 }
  
}




exports.admin_teacher_rm= (req, res)=>{

  const {dataid}= req.body; 

if(dataid==undefined){
    res.send({msg: "Data not found!", alert: "alert-info"})

}
else {
  sqlmap.query(`SELECT * FROM teachers WHERE domain='${req.hostname}' AND  ID IN (${dataid})`, (errInfo, findInfo)=>{
      if(errInfo) console.log("data not found!")
      
      else {
  
          
  sqlmap.query(`DELETE FROM teachers WHERE domain='${req.hostname}' AND  ID IN (${dataid})`, (err, next)=>{
      if(err) console.log(err.sqlMessage);
      else
      {
  
         for (const index in findInfo) {
          fs.unlink(`./public/image/teacher/resized/${findInfo[index].avatar}`, function (errDelete) {
              if (errDelete) console.log(errDelete+"_"+"Data Deleted! Not found file!");
  
              
            
            });
         }
  
         res.send({msg: "Data Deleted! Successfully!", alert: "alert-success"})
          
      }
  })
  
      }
  
  })
}




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







exports.self_dashboard= (req, res)=>{
    let sql= `SELECT name, class, section, student_id, ID, avatar FROM students  WHERE domain='${req.hostname}' AND  class="Ten"  ORDER BY ID DESC`

    sqlmap.query(sql, (err, info)=>{

      res.render("teacher/dashboard_page", {info})


    })


  }




exports.self_account = (req, res)=>{
  const teacher_uuid= req.session.teacher_uuid;

    let sql= `SELECT * FROM teachers WHERE domain='${req.hostname}' AND  teacher_uuid="${teacher_uuid}"`

    sqlmap.query(sql, (err, info)=>{

      res.render("teacher/account_page", {info,  msg: req.flash("msg"), alert: req.flash("alert")})


    })



    


  }





  exports.self_avatar_upload =  async (req, res, next)=>{
    const teacher_uuid= req.session.teacher_uuid;

    sqlmap.query(`UPDATE teachers SET avatar="${req.file.filename}" WHERE domain='${req.hostname}' AND  teacher_uuid="${teacher_uuid}"`, (err, next)=>{
  
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
          <img class="avatar-circle" src="/image/teacher/resized/${info[0].avatar}" alt="">
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
  const teacher_uuid= req.session.teacher_uuid;
        let {name, telephone, gender, birthDate, religion, address, bloodGroup, educationQualification}= req.body;
      let sql=   `UPDATE teachers SET education_qualification="${educationQualification}",  name="${name}", telephone="${telephone}", gender="${gender}", birth_date="${birthDate}", gender="${gender}",  religion="${religion}", address="${address}" WHERE domain='${req.hostname}' AND  teacher_uuid="${teacher_uuid}"`
      sqlmap.query(sql, (err, info)=>{
      
      if(err) console.log(err.sqlMessage);
      
      else {
        req.flash("msg", "Profile Updated Successfully!")
        req.flash("alert", "alert-success")
        res.redirect("/teacher/account")
      }
      
      
      })
      
      }
      
      
      
      
      
      
      
      
exports.self_password_update= (req, res)=>{
    const {password, pastPassword}= req.body;
    const email= req.session.userEmail
    const hashPassword= createHmac('md5', 'pipilikapipra').update(password).digest('hex');
    const oldPassword= createHmac('md5', 'pipilikapipra').update(pastPassword).digest('hex');
    const teacher_uuid= req.session.teacher_uuid;

            let sql= `UPDATE teachers SET password="${hashPassword}" WHERE domain='${req.hostname}' AND  teacher_uuid="${teacher_uuid}"`
      
      
         sqlmap.query(`SELECT password FROM teachers WHERE domain='${req.hostname}' AND  teacher_uuid="${teacher_uuid}"`, (errPass, infoPass)=>{
      
          if(errPass) console.log(errPass.sqlMessage);
          else{
      
            if( oldPassword==infoPass[0].password)
      {
      
        sqlmap.query(sql, (err, info) =>{
      
          if(err) 
          {
            req.flash("msg", "Change Failed!")
            req.flash("alert", "alert-danger")
            res.redirect("/teacher/account")
      
          }
      
          else
          {
          
            req.flash("msg", "Changed! Successfully...")
            req.flash("alert", "alert-success")
            res.redirect("/teacher/account")
          }
        })
      
      }
      
      else 
      {
        req.flash("msg", "Current Password Not Matched!")
        req.flash("alert", "alert-danger")
        res.redirect("/teacher/account")
      }
      
          }
      
         })
      
      
      
        } 
      
      
      
    





exports.self_email_update_page= (req, res)=>{
  let {username}= req.body;
         
  sqlmap.query(`SELECT email FROM teachers WHERE domain='${req.hostname}' AND  email="${username}"`, (errMain, infoMain)=>{
  
    if(infoMain.length>0)
    {

      req.flash("msg", "username already exists!")
      req.flash("alert", "alert-danger")
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
      req.flash("alert", "alert-success")

      res.render("authentication/username_update_page", {user: "teacher", msg: req.flash("msg"), alert: req.flash("alert")})

    }
        
      
      })

   

    }

  })
}
  






      
      
exports.self_email_update= (req, res)=>{
  const teacher_uuid= req.session.teacher_uuid;

        if(req.body.verifyCode==req.session.userVerifyCode)
        {
      
      let sql= `UPDATE teachers SET email="${req.session.username}" WHERE domain='${req.hostname}' AND  teacher_uuid="${teacher_uuid}"`
      
      sqlmap.query(sql, (err, info) =>{
      
        if(err) 
        {
          req.flash("msg", "Something Wrong!")
          res.redirect("/teacher/account")
      
        }
      
        else
        {
        
          req.flash("msg", "Changed! Successfully...")
          req.flash("alert", "alert-success")
          res.redirect("/teacher/account")
        }
      })
      
        }
      
        else 
        {
          req.flash("msg", "Authontication Falied!")
          req.flash("alert", "alert-danger")
          res.render("authentication/username_update_page", {user: "teacher", msg: req.flash("msg"), alert: req.flash("alert")})
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
        let {facebookLink}=req.body;
        const teacher_uuid= req.session.teacher_uuid;

          sqlmap.query(`UPDATE teachers SET facebook_link="${facebookLink}"  WHERE domain='${req.hostname}' AND  teacher_uuid="${teacher_uuid}"`, (err, info)=>{
        
            if(err) console.log(err.sqlMessage);
             
            else 
            {
              req.flash("alert", "alert-success")
              req.flash("msg", "Social Link Updated...")
              res.redirect("/teacher/account")
            }
          })
        
        }