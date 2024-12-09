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




exports.self_dashboard = (req, res) => {
  const teacher_uuid = req.session.teacher_uuid;

  sqlmap.query(
      `SELECT * FROM teachers WHERE domain=? AND teacher_uuid=?`,
      [req.cookies["hostname"], teacher_uuid],
      (err, info) => {
          if (err) {
              console.log(err.sqlMessage);
              return;
          }
          if (info.length > 0) {
              res.render("teacher/dashboard_page", { info });
          } else {
              res.redirect('/pages/empty.html');
          }
      }
  );
};





exports.self_account = (req, res) => {
  const teacher_uuid = req.session.teacher_uuid;
  
  sqlmap.query(
      `SELECT * FROM teachers WHERE domain=? AND teacher_uuid=?`,
      [req.cookies["hostname"], teacher_uuid],
      (err, info) => {
          if (err) {
              console.log(err.sqlMessage);
              return;
          }

          if (info.length > 0) {
              res.render("teacher/account_page", { info, msg: req.flash("msg"), alert: req.flash("alert") });
          } else {
              res.redirect('/pages/empty.html');
          }
      }
  );
};


exports.self_penbox_push = (req, res) => {
  const { dataid, name, position, phone, fb_link, index_number, gender, birth_date, pds_id, blood_group, religion, address, joining_date } = req.body;
  const domain = req.cookies["hostname"];
  const userid = req.session.userid;

  sqlmap.query(
      `UPDATE teachers SET name=?, position=?, gender=?, birth_date=?, blood_group=?, religion=?, phone=?, address=?, joining_date=?, fb_link=? WHERE domain=? AND ID=?`,
      [name, position, gender, birth_date, blood_group, religion, phone, address, joining_date, fb_link, domain, userid],
      (err, update) => {
          if (err) {
              console.log(err.sqlMessage);
              return;
          }
          res.send({ alert: 'alert-success', msg: 'Update successfully!' });
      }
  );
};



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
  
     sqlmap.query(
      `UPDATE teachers SET avatar=? WHERE domain=? AND ID=?`,
      [req.file.filename, req.cookies["hostname"], userid],
      (err, next) => {
          if (err) {
              console.log(err.sqlMessage);
              return;
          }
          res.send({ msg: 'Update successfully!', alert: 'alert-success' });
      }
  );
  
  
  
  
  }


        
exports.self_password_update_push = (req, res) => {
    const { cpassword, npassword } = req.body;
    const email = req.session.usermmail;
    const currentPassword = createHmac('md5', 'pipilikapipra').update(cpassword).digest('hex');
    const newPassword = createHmac('md5', 'pipilikapipra').update(npassword).digest('hex');
    const userid = req.session.userid;

    sqlmap.query(
        `SELECT password FROM teachers WHERE domain=? AND ID=?`,
        [req.cookies["hostname"], userid],
        (errPass, infoPass) => {
            if (errPass) {
                console.log(errPass.sqlMessage);
                return;
            }

            if (currentPassword === infoPass[0].password) {
                sqlmap.query(
                    `UPDATE teachers SET password=? WHERE domain=? AND ID=?`,
                    [newPassword, req.cookies["hostname"], userid],
                    (err, info) => {
                        if (err) {
                            console.log(err.sqlMessage);
                            return;
                        }
                        res.send({ alert: 'alert-success', msg: 'Changed! Successfully...' });
                    }
                );
            } else {
                res.send({ alert: 'alert-info', msg: 'Current Password Not Matched!' });
            }
        }
    );
};



exports.self_email_update_pull= (req, res)=>{
const {username}= req.body;
var randHashCode= Math.ceil(Math.random()*900000);
req.session.username=username; 
req.session.temp_code=randHashCode;

// console.log(req.session.temp_code);

sqlmap.query(`SELECT email FROM teachers WHERE domain=? AND  email=?`, [req.cookies["hostname"], username], (errMain, infoMain)=>{
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




    
exports.self_email_update_push = (req, res) => {
  const { verifyCode } = req.body;
  const userid = req.session.userid;
  const username = req.session.username; 
  const temp_code = req.session.temp_code;

  if (verifyCode === temp_code) {
      sqlmap.query(
          `SELECT email FROM teachers WHERE domain=? AND email=?`,
          [req.cookies["hostname"], username],
          (errMain, infoMain) => {
              if (errMain) {
                  console.log(errMain.sqlMessage);
                  return;
              }

              if (infoMain.length > 0) {
                  res.send({ feedback: true, alert: 'alert-info', msg: 'Username already exists!' });
              } else {
                  sqlmap.query(
                      `UPDATE teachers SET email=? WHERE domain=? AND ID=?`,
                      [username, req.cookies["hostname"], userid],
                      (err, info) => {
                          if (err) {
                              res.send({ alert: 'alert-info', msg: 'Something Wrong! please try again!' });
                              return;
                          }
                          res.send({ alert: 'alert-success', msg: 'Email updated successfully!' });
                      }
                  );
              }
          }
      );
  } else {
      res.send({ alert: 'alert-info', msg: 'Invalid verified code!' });
  }
};




exports.admin_teacher_img_post= async(req, res)=>{

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

   sqlmap.query(
    `UPDATE teachers SET avatar=? WHERE domain=? AND ID=?`,
    [req.file.filename, req.cookies["hostname"], dataid],
    (err, next) => {
        if (err) {
            console.log(err.sqlMessage);
            return;
        }
        res.send({ msg: 'Update successfully!', alert: 'alert-success' });
    }
);





}



exports.admin_teacher_post= async(req, res)=>{
  var uuid= new Date().getTime()+''+Math.floor(Math.random()*900000000);
  const {name, position, index_number, gender, birth_date, pds_id, blood_group, religion, email, phone, address, joining_date}= req.body;
  const hashPassword= createHmac('md5', 'pipilikapipra').update('password@abc').digest('hex');
  const domain= req.cookies["hostname"];
  const teacher_id= index_number.slice(1);

  var get_position= position.toLowerCase().trim();
  if(get_position.indexOf('headmaster')==0) var order_value= 'A';
  else if(get_position.indexOf('assistant headmaster')==0) var order_value= 'B';
  else if(get_position.indexOf('assistant teacher')==0) var order_value= 'C';
  else var order_value= 'D';
  // console.log(get_position ,order_value);

  if(req.file){
    var avatar_png= req.file.filename;

   }

   else {
    if(gender=="Female") var avatar_png= "female_avatar.png"
    else var avatar_png= "male_avatar.png"
   }



   sqlmap.query(
    `SELECT ID FROM teachers WHERE domain=? AND (index_number=? OR email=? OR phone=?)`,
    [domain, index_number, email, phone],
    (err_check, info_check) => {
        if (err_check) {
            console.log(err_check.sqlMessage);
            return;
        }
        if (info_check.length > 0) {
            res.send({ status: 503, msg: 'Invalid information! index_number or phone or email already exists', alert: 'alert-danger' });
        } else {
            join_teacher_def();
        }
    }
);



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

   sqlmap.query(
    `INSERT INTO teachers (domain, teacher_uuid, teacher_id, name, position, order_value, gender, index_number, pds_id, birth_date, blood_group, religion, email, phone, address, joining_date, password, avatar) VALUES (?, ?, ?, ?, ?, ?, ?, ?, ?, ?, ?, ?, ?, ?, ?, ?, ?, ?)`,
    [req.cookies["hostname"], uuid, teacher_id, name, position, order_value, gender, index_number, pds_id, birth_date, blood_group, religion, email, phone, address, joining_date, hashPassword, avatar_png],
    (err, next) => {
        if (err) {
            console.log(err.sqlMessage);
            res.send({ status: 200, msg: err.sqlMessage, alert: 'alert-danger' });
            return;
        }
        res.send({ status: 200, msg: 'Teacher join successfully!', alert: 'alert-success' });
    }
);

   }

}


exports.admin_teacher_get = (req, res) => {
  sqlmap.query(
      `SELECT * FROM teachers WHERE domain=? ORDER BY order_value`,
      [req.cookies["hostname"]],
      (err, info) => {
          if (err) {
              console.log(err.sqlMessage);
              return;
          }

          let tabledata = '';
          for (let index = 0; index < info.length; index++) {
              tabledata += `
              <tr>
                  <td class="p-3"> 
                      <input class="shadowx checkout form-check-input" type="checkbox" value="${info[index].ID}" name="dataid[]" id="">
                  </td>
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
                          <button data-bs-toggle="dropdown" class="btn btn-link dropdown-toggle shadowx"> 
                              <i class="bi bi-three-dots-vertical"></i>
                          </button>
                          <div class="dropdown-menu">
                              <button type='button' onclick='_penbox_pull(${info[index].ID})' class="btn dropdown-item btn-link p-2">
                                  <i class="bi bi-pen p-1"></i>view and edit
                              </button>
                              <button type='button' onclick='_delbox_push(${info[index].ID})' class="btn dropdown-item btn-link p-2">
                                  <i class="bi bi-trash p-1"></i>delete forever
                              </button>
                          </div>
                      </div>
                  </td>
              </tr>`;
          }

          res.send({ tabledata });
      }
  );
};



exports.admin_teacher_penbox_pull=(req, res)=>{
  const {dataid}= req.body; 
  sqlmap.query(`SELECT * FROM teachers WHERE domain=? AND  ID=?`, [req.cookies["hostname"], dataid], (err, info)=>{
      if(err) console.log(err.sqlMessage);
      else {

var penboxdata=
`
<div id="penboxform" data-bs-backdrop="static" class="row modal  p-2 mt-5">

<div class="  modal-dialog modal-content shadowx  mt-3 bg-gradient- bg-light text- mb-5 col-12 m-auto">


<form id="avatarform" action="#" method="post">
  <div class='pt-2 pb-2 bg-card-color-light d-flex justify-content-center'>
    <div>
    <span  class="avatar-append">
    <img style="width: 100px; height: 100px" class="avatar-circle bg-card-color shadowx" src="/image/teacher/resized/${info[0].avatar}" alt="">

    </span>
      <label  title="Change profile" class="btn btn-link"> <i class="bi bi-pen fs-5"></i>
        <input required type="file" name='image' class="avatar-file" style="display: none;">     
        <input type="hidden" name='dataid' value="${info[0].ID}">     
      </label>
    </div>
  
     </div>
  
     <div class=" d-flex align-items-center justify-content-center">
      <button class="btn btn-link me-5">Update photo</button>
    </div>
</form>

<form id="penboxdata" class="penboxdata" method="post" action="#" onsubmit="return false">
<div class=" card shadowx">

  <div class="card-body fw-semibold">
  
  <div class="d-flex text-muted m-2">
  <input required type="hidden" name="dataid" value='${info[0].ID}'>
     <div class="p-1 w-25">Position</div>
     <code class='pe-1'>*</code>
       <input class="form-dev w-75 p-1" required type="text" value="${info[0].position}" placeholder="Assistent Teacher" name="position" id="">
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


<script>
  noview.port({
    input_class: 'avatar-file',
    append_class: 'avatar-append',
    file_type: 'image',
    max_kb_size: 1024,
    multiple: false,


  })

  $('.avatar-file').on('change', ()=>{
    $('.avatar-append img').addClass('rounded-circle')
  })


  $('#avatarform').on('submit', (event)=>{
    const formdata = new FormData($("#avatarform")[0])
    event.preventDefault();
    $.ajax({
      method: "post",
      url: "/admin/teacher/img/post",
      data: formdata,
      dataType: "JSON",
      mimeType: 'multipart/form-data',
      cache: false,
      processData: false,
      contentType: false,
      beforeSend: function(){
         _spin_pull()
      },
      success: function (res) {
        _msg_pull(res.alert, res.msg)
        _spin_pop()

      }
    });
  })

</script>
`
res.send({penboxdata})

      }
  })
}



exports.admin_teacher_penbox_push = (req, res) => {
    const { dataid, name, position, index_number, gender, birth_date, pds_id, blood_group, religion, email, phone, address, joining_date } = req.body;
    const domain = req.cookies["hostname"];

    sqlmap.query(
        `SELECT ID FROM teachers WHERE domain=? AND (index_number=? OR email=? OR phone=?)`,
        [domain, index_number, email, phone],
        (err_check, info_check) => {
            if (err_check) {
                console.log(err_check.sqlMessage);
                return;
            }

            if (info_check.length == 0 || (info_check.length == 1 && info_check[0].ID == dataid)) {
                update_teacher_def();
            } else {
                res.send({ msg: 'Invalid information! index_number or phone or email already exists', alert: 'alert-danger' });
            }
        }
    );

    function update_teacher_def() {
        sqlmap.query(
            `UPDATE teachers SET name=?, position=?, index_number=?, gender=?, birth_date=?, pds_id=?, blood_group=?, religion=?, email=?, phone=?, address=?, joining_date=? WHERE domain=? AND ID=?`,
            [name, position, index_number, gender, birth_date, pds_id, blood_group, religion, email, phone, address, joining_date, req.cookies["hostname"], dataid],
            (err, update) => {
                if (err) {
                    console.log(err.sqlMessage);
                    return;
                }
                res.send({ alert: 'alert-success', msg: 'Update successfully!' });
            }
        );
    }
};



exports.admin_teacher_rm = (req, res) => {
  const { dataid } = req.body;

  if (dataid === undefined) {
      res.send({ msg: "Data not found!", alert: "alert-info" });
      return;
  }

  sqlmap.query(
      `SELECT * FROM teachers WHERE domain=? AND ID IN (?)`,
      [req.cookies["hostname"], dataid],
      (errInfo, findInfo) => {
          if (errInfo) {
              console.log("data not found!");
              return;
          }

          sqlmap.query(
              `DELETE FROM teachers WHERE domain=? AND ID IN (?)`,
              [req.cookies["hostname"], dataid],
              (err, next) => {
                  if (err) {
                      console.log(err.sqlMessage);
                      return;
                  }

                  for (const index in findInfo) {
                      if (findInfo[index].avatar !== 'male_avatar.png' && findInfo[index].avatar !== 'female_avatar.png') {
                          fs.unlink(`./public/image/teacher/resized/${findInfo[index].avatar}`, function (errDelete) {
                              if (errDelete) {
                                  console.log(errDelete + "_" + "Data Deleted! Not found file!");
                              }
                          });
                      }
                  }

                  res.send({ msg: "Data Deleted! Successfully!", alert: "alert-success" });
              }
          );
      }
  );
};




exports.admin_config_subject = (req, res) => {
  sqlmap.query(
      `SELECT subject, section FROM ini_subject WHERE class=? ORDER BY section`,
      ["Ten"],
      (err10, info10) => {
          if (err10) {
              console.log(err10.sqlMessage);
              return;
          }

          sqlmap.query(
              `SELECT subject, section FROM ini_subject WHERE class=? ORDER BY section`,
              ["Nine"],
              (err9, info9) => {
                  if (err9) {
                      console.log(err9.sqlMessage);
                      return;
                  }

                  sqlmap.query(
                      `SELECT subject, section FROM ini_subject WHERE class=? ORDER BY section`,
                      ["Eight"],
                      (err8, info8) => {
                          if (err8) {
                              console.log(err8.sqlMessage);
                              return;
                          }

                          sqlmap.query(
                              `SELECT subject, section FROM ini_subject WHERE class=? ORDER BY section`,
                              ["Seven"],
                              (err7, info7) => {
                                  if (err7) {
                                      console.log(err7.sqlMessage);
                                      return;
                                  }

                                  sqlmap.query(
                                      `SELECT subject, section FROM ini_subject WHERE class=? ORDER BY section`,
                                      ["Six"],
                                      (err6, info6) => {
                                          if (err6) {
                                              console.log(err6.sqlMessage);
                                              return;
                                          }

                                          let list10 = "";

                                          for (i in info10) {
                                              list10 += `
                                                  <option value="${info10[i].subject}">${info10[i].subject}-${info10[i].section}</option>
                                              `;
                                          }

                                          res.send({ list10 });
                                      }
                                  );
                              }
                          );
                      }
                  );
              }
          );
      }
  );
};





exports.public_teacher_list = (req, res) => {
  sqlmap.query(
      `SELECT * FROM teachers WHERE domain=? ORDER BY ORDER_VALUE`,
      [req.cookies["hostname"]],
      (err, info) => {
          if (err) {
              console.log(err.sqlMessage);
              return;
          }

          if (info.length > 0) {
              res.render("public/all_teachers_public", { info });
          } else {
              res.redirect('/pages/empty.html');
          }
      }
  );
};



exports.public_teacher_profile_get = (req, res) => {
    const { dataid } = req.body;
    const sql = `SELECT * FROM teachers WHERE domain=? AND ID=?`;

    sqlmap.query(sql, [req.cookies["hostname"], dataid], (err, info) => {
        if (err) {
            console.log(err.sqlMessage);
            return;
        }

        if (info.length > 0) {
            const htmldata = `
            <center>
                <div class="bg-card-color-light pt-3 pb-3 rounded-top-5 rounded-start-5">
                    <div class="card-image">
                        <img class="avatar-circle" src="/image/teacher/resized/${info[0].avatar}" alt="">
                    </div>
                </div>
            </center>

            <center>
                <div class="ps-2 pt-3 pb-3 rounded-bottom-5 rounded-end-5">
                    <div class="card-body text-start p-2">
                        <div class="d-flex fw-semibold">
                            <div class="p-1 w-25">Name</div>
                            <code class="p-1">:</code>
                            <div class="p-1 w-75">${info[0].name}</div>
                        </div>

                        <div class="d-flex fw-semibold">
                            <div class="p-1 w-25">Position</div>
                            <code class="p-1">:</code>
                            <div class="p-1 w-75">${info[0].position}</div>
                        </div>

                        <div class="d-flex fw-semibold">
                            <div class="p-1 w-25">Gender</div>
                            <code class="p-1">:</code>
                            <div class="p-1 w-75">${info[0].gender}</div>
                        </div>

                        <div class="d-flex fw-semibold">
                            <div class="p-1 w-25">Index no</div>
                            <code class="p-1">:</code>
                            <div class="p-1 w-75">${info[0].index_number}</div>
                        </div>

                        <div class="d-flex fw-semibold">
                            <div class="p-1 w-25">Email</div>
                            <code class="p-1">:</code>
                            <div class="p-1 w-75">${info[0].email}</div>
                        </div>

                        <div class="d-flex fw-semibold">
                            <div class="p-1 w-25">Phone</div>
                            <code class="p-1">:</code>
                            <div class="p-1 w-75">${info[0].telephone}</div>
                        </div>

                        <div class="d-flex fw-semibold">
                            <div class="p-1 w-25">Birth date</div>
                            <code class="p-1">:</code>
                            <div class="p-1 w-75">${info[0].birth_date}</div>
                        </div>

                        <div class="d-flex fw-semibold">
                            <div class="p-1 w-25">Religion</div>
                            <code class="p-1">:</code>
                            <div class="p-1 w-75">${info[0].religion}</div>
                        </div>

                        <div class="d-flex fw-semibold">
                            <div class="p-1 w-25">Joining date</div>
                            <code class="p-1">:</code>
                            <div class="p-1 w-75">${info[0].joining_date}</div>
                        </div>
                    </div>
                </div>
            </center>
            <button data-dismiss="modal" class="btn float-end fw-semibold btn-link link-primary p-2 ms-auto mt-2 mb-2">Close</button>`;

            res.send({ htmldata });
        }
    });
};

