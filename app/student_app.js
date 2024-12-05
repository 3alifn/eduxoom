const {app, express, sqlmap, session, nodemailer, multer, createHmac, fs, path}= require("../server")
const sharp= require("sharp")

var regexTelephone= /^01[0-9]*$/
var regexNumber= /^[0-9]*$/
var regexString= /^[A-Za-z .-_]*$/
var regexPassword= /^[a-zA-Z0-9!@#$%&*]*$/
var regexEmail= /^([a-zA-Z0-9_\-\.]+)@((\[[0-9]{1,3}\.[0-9]{1,3}\.[0-9]{1,3}\.)|(([a-zA-Z0-9\-]+\.)+))([a-zA-Z]{2,4}|[0-9]{1,3})(\]?)$/ 


const multer_location = multer.diskStorage({
  destination: (req, file, cb) => {
      cb(null, "./public/image/student/")
  },

  filename: (req, file, cb) => {

      cb(null, new Date().getTime() + "_" + file.originalname)
  },

})

exports.multer_upload_student= multer({
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


exports.teacher_student_info= (req, res)=>{
  const {student_uuid}= req.body;
  sqlmap.query(`SELECT * FROM students WHERE domain='${req.hostname}' AND  student_uuid='${student_uuid}'`, (err, info)=>{
    if(err) console.log(err.sqlMessage);
    const avatar= info[0].avatar
    const data= `
    <center class='p-2'>
    <b>${info[0].name}</b> <br>
    <b>( ${info[0].roll} )</b>
    </center>
    `
    res.send({avatar, data})
  })
}


exports.admin_student_join_quick= (req, res)=>{
  const {classNameX, roll, name, gender}= req.body;
  const tempData= classNameX.split(' $%& ');
  const className= tempData[0];
  const sectionName= tempData[1];
  const session= new Date().getUTCFullYear();
  const hashPassword= createHmac('md5', 'pipilikapipra').update('password@abc').digest('hex');

 var message= [];
for (let index = 0; index < name.length; index++) {
 
  if(gender[index]=="Male") var avatarName= "male_avatar.png"
  else avatarName= "female_avatar.png";

  sqlmap.query(`SELECT  * FROM students WHERE domain='${req.hostname}' AND  class='${className}' AND section='${sectionName}' AND roll='${roll[index]}'`, (err_, info_)=>{
 
    if(err_) console.log(err_.sqlMessage);
 
    else 
    {
   if(info_.length>0) { console.log('Roll Already Joined!'); message.unshift('Roll Already Joined!');
    req.flash('msg', 'invalid roll=>'+roll[index])
    req.flash('alert', 'danger')
   }
    else  {
      var uuid= new Date().getTime()+''+Math.floor(Math.random()*900000000);
      var student_id= Math.floor(Math.random()*900000);

   sqlmap.query(`INSERT INTO students (domain, student_uuid, session, name, email, student_id, roll, class, section, gender, password, avatar)
   VALUES ('${req.hostname}', '${uuid}', ${session}, "${name[index]}","${student_id+'@abc.com'}", "${student_id}", '${roll[index]}', "${className}", "${sectionName}","${gender[index]}", 
  '${hashPassword}', "${avatarName}")`, (err_sub, info_sub)=>{
 
     if(err_sub) {console.log(err_sub.sqlMessage); res.send({msg: "Student ID or Roll Already Joined!", alert: "alert-danger text-danger"});}
 
 
      else {
      message.unshift('Students Joined!');
    req.flash('msg', 'adding=>'+roll[index])
     req.flash('alert', 'success')
  }
   })
 
     }
    }
 
    
   })

}

setTimeout(() => {
res.redirect('/admin/student/page')
}, 3000);

}



exports.admin_student_post= async(req, res)=>{
  var uuid= new Date().getTime()+''+Math.floor(Math.random()*900000000);
  var {classNameX, name, roll, gender, fname, mname, emailx,  birth_date, blood_group, religion, phone, address, admission_date}= req.body;
  const hashPassword= createHmac('md5', 'pipilikapipra').update('password@abc').digest('hex');
  const domain= req.hostname;
  var student_id= Math.floor(Math.random()*900000);
  let tempData= classNameX.split(' $%& ');
  var className= tempData[0];
  var sectionName= tempData[1];
  if(emailx==undefined || emailx=='') var email= student_id+'@abc.com'; else var email= emailx;
  var session= new Date().getUTCFullYear();
  if(req.file){
    var avatar_png= req.file.filename;

   }

   else {
    if(gender=="Female") var avatar_png= "female_avatar.png"
    else var avatar_png= "male_avatar.png"
   }



   sqlmap.query(`SELECT ID FROM students WHERE domain='${domain}' AND (student_id='${student_id}' OR email='${email}')`, 
   (err_check, info_check)=>{
    if(info_check.length>0){
     
      res.send({status: 503, msg: 'Invalid information! email or student_id already exists', alert: 'alert-danger'})

    } else {
      join_student_def()
    }
   })


  async function join_student_def(){
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

    sqlmap.query(`INSERT INTO students (domain, student_uuid, session, class, section, name, student_id, roll, gender, father_name, mother_name, birth_date, blood_group,
     religion, email, phone, address, admission_date, password, avatar )
    VALUES('${req.hostname}', '${uuid}', '${session}', '${className}', '${sectionName}', '${name}','${student_id}', '${roll}', '${gender}', '${fname}', '${mname}', '${birth_date}', '${blood_group}',
     '${religion}', '${email}', '${phone}', '${address}', '${admission_date}', '${hashPassword}', '${avatar_png}')`, (err, next)=>{
        if(err) console.log(err.sqlMessage+'__join_bug');
        else {
          console.log('joined');
          res.send({status: 200, msg: 'Student join successfully!', alert: 'alert-success'})
        }
    })
   }




}


exports.admin_student_get=(req, res)=>{
  const {class_name, section_name, limit}=req.body;
  if(limit=='All') var sql= `SELECT * FROM students WHERE domain='${req.hostname}' AND class='${class_name}' AND section='${section_name}'  ORDER BY roll`;
  else var sql= `SELECT * FROM students WHERE domain='${req.hostname}' AND class='${class_name}' AND section='${section_name}'  ORDER BY roll LIMIT ${limit}`;
  sqlmap.query(sql, (err, info)=>{
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
                        <img class="shadowx avatar-circle bg-card-color-light rounded-pill" style="width: 40px; height: 40px;" src="/image/student/resized/${info[index].avatar}" alt="">
                        </span>
                        <span class="badge text-dark bg-light">${info[index].name}</span>
                      </td>
      
                      <td class="">
                      <span class="badge text-dark bg-light">${info[index].roll}</span>
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


exports.admin_student_img_post= async(req, res)=>{

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

   sqlmap.query(`UPDATE students SET avatar='${req.file.filename}' WHERE domain='${req.hostname}' AND ID=${dataid}`, (err, next)=>{
       if(err) console.log(err.sqlMessage);
       else   res.send({msg: 'Update successfully!', alert: 'alert-success'})
   })




}


exports.admin_student_penbox_pull=(req, res)=>{
  const {dataid}= req.body; 
  sqlmap.query(`SELECT * FROM students WHERE domain='${req.hostname}' AND  ID=${dataid}`, (err, info)=>{
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
    <img style="width: 100px; height: 100px" class="avatar-circle bg-card-color shadowx" src="/image/student/resized/${info[0].avatar}" alt="">

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
 
  <input name='dataid' value='${info[0].ID}' type='hidden'>

  <div class="card-body fw-semibold">
  
  <div class="d-flex fw-semiboldm-2">
  <div class="p-1 w-25">Class & Section 
  </div>
  <code class='pe-1'>*</code>
  
  <select required name="classNameX" class="form-dev w-75 p-1 ">
           
  <option value=""  disabled>শ্রেণী নির্বাচন করুন</option>

  <optgroup class="status_Six" label="ষষ্ঠ শ্রেণী">
    <option selected value="${info[0].class} $%& ${info[0].section}">${info[0].class} - ${info[0].section}</option>
    <option class="status_Six_A" value="Six $%& A">ষষ্ঠ - ক</option>
    <option class="status_Six_B" value="Six $%& B">ষষ্ঠ - খ</option>
    <option class="status_Six_C" value="Six $%& C">ষষ্ঠ - গ</option>
   </optgroup>


                
   <optgroup class="status_Seven" label="সপ্তম শ্রেণী">
    <option class="status_Seven_A" value="Seven $%& A">সপ্তম - ক</option>
    <option class="status_Seven_B" value="Seven $%& B">সপ্তম - খ</option>
    <option class="status_Seven_C" value="Seven $%& C">সপ্তম - গ</option>
   </optgroup>
   


   <optgroup class="status_Eight" label="অষ্টম শ্রেণী">
    <option class="status_Eight_A" value="Eight $%& A">অষ্টম - ক</option>
    <option class="status_Eight_B" value="Eight $%& B">অষ্টম - খ</option>
    <option class="status_Eight_C" value="Eight $%& C">অষ্টম - গ</option>
   </optgroup>

    

            
     <optgroup class="status_Nine" label="নবম শ্রেণী">
      <option class="status_Nine_A" value="Nine $%& A">নবম - ক</option>
      <option class="status_Nine_B" value="Nine $%& B">নবম - খ</option>
      <option class="status_Nine_c" value="Nine $%& C">নবম - গ</option>
     </optgroup>

      <optgroup class="status_Ten" label="দশম শ্রেণী">
         <option class="status_Ten_A" value="Ten $%& A">দশম - ক</option>
         
         <option class="status_Ten_B" value="Ten $%& B">দশম - খ</option>
         <option class="status_Ten_C" value="Ten $%& C">দশম - গ</option>
        </optgroup>


    
 
 </select>
 </div>


    <div class="d-flex fw-semiboldm-2">
       <div class="p-1 w-25">Name </div>
       <code class='pe-1'>*</code>  <input class="form-dev w-75 p-1" required type="text" value="${info[0].name}" placeholder="enter name" name="name" id="">
      </div>

      <div class="d-flex fw-semiboldm-2">
      <div class="p-1 w-25">Student roll</div>
      <code class='pe-1'>*</code>
        <input class="form-dev w-75 p-1"  type="number" value="${info[0].roll}" placeholder="enter roll no" name="roll" id="">
     </div>


      <div class="d-flex p-2 justify-content-between align-items-center">
      <p class="w-25 fw-semibold m-auto">Gender </p>
      <code class='pe-1'>*</code> <span class="w-75">
        Male <input value="Male" class="form-check-input shadowx ms-2 me-2" ${info[0].gender=='Male'?'checked':null} type="radio" name="gender" id="">
        Female <input value="Female" class="form-check-input shadowx ms-2" ${info[0].gender=='Female'?'checked':null} type="radio" name="gender" id="">
    
      </span>
    
    </div>

      
    <div class="d-flex fw-semiboldm-2">
      <div class="p-1 w-25">Father name</div>
      <code class='pe-1'>-</code>
       <input class="form-dev w-75 p-1" type="text" value="${info[0].father_name}" placeholder="enter father name" name="fname" id="">
     </div>
      
       
     <div class="d-flex fw-semiboldm-2">
     <div class="p-1 w-25">Mother name</div>
     <code class='pe-1'>-</code>
      <input  class="form-dev w-75 p-1" type="text" value="${info[0].mother_name}" placeholder="enter mother name" name="mname" id="">
    </div>

     
    <div class="d-flex fw-semiboldm-2">
      <div class="p-1 w-25">Email</div>
      <code class='pe-1'>*</code>
        <input required class="form-dev w-75 p-1"  type="email" value="${info[0].email}" placeholder="example@mail.com" name="email" id="">
     </div>




     
    <div class="d-flex fw-semiboldm-2">
      <div class="p-1 w-25">Phone</div>
      <code class='pe-1'>-</code>
        <input class="form-dev w-75 p-1"  type="phone" value="${info[0].phone}" placeholder="enter phone no" name="phone" id="">
     </div>


     
    <div class="d-flex fw-semiboldm-2">
      <div class="p-1 w-25">Birth date</div>
      <code class='pe-1'>-</code>
        <input class="form-dev w-75 p-1" type="date" value="${info[0].birth_date}" placeholder="enter date of birth" name="birth_date" id="">
     </div>  

     
     
    <div class="d-flex fw-semiboldm-2">
    <div class="p-1 w-25">Blood group</div>
    <code class='pe-1'>-</code>
     <input class="form-dev w-75 p-1" type="text" value="${info[0].blood_group}" placeholder="enter blood group" name="blood_group" id="">
   </div>  
   
     
     
    <div class="d-flex fw-semiboldm-2">
      <div class="p-1 w-25">Religion</div>
      <code class='pe-1'>-</code>
       <input class="form-dev w-75 p-1" type="text" value="${info[0].religion}" placeholder="enter religion" name="religion" id="">
     </div>


     
    <div class="d-flex fw-semiboldm-2">
      <div class="p-1 w-25">Address</div>
      <code class='pe-1'>-</code>
      <input class="form-dev w-75 p-1" type="text" value="${info[0].address}" placeholder="enter address" name="address" id="">
     </div>


     
    <div class="d-flex fw-semiboldm-2">
      <div class="p-1 w-25">Admission date</div>
      <code class='pe-1'>-</code>
         <input class="form-dev w-75 p-1"  type="date" value="${info[0].admission_date}"  name="admission_date" id="">
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
      url: "/admin/student/img/post",
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



exports.admin_student_penbox_push=(req, res)=>{
  const {dataid, classNameX, name, roll, gender, fname, mname,  birth_date, blood_group, religion, phone, email, address, admission_date}= req.body;
  const domain= req.hostname;
  var tempData= classNameX.split(' $%& ');
  var className= tempData[0];
  var sectionName= tempData[1];  
  sqlmap.query(`SELECT ID FROM students WHERE domain='${domain}' AND email='${email}'`, 
  (err_check, info_check)=>{
    if(info_check.length==0){
  console.log(0);
      update_student_def()

    }
  else if(info_check.length==1 && info_check[0].ID==dataid){
    console.log(1);
      update_student_def()
   }
    else {

     res.send({msg: 'Invalid information! email already exists', alert: 'alert-danger'})
   }
  })

function update_student_def(){

  sqlmap.query(`UPDATE students SET class='${className}', section='${sectionName}', name='${name}', roll='${roll}', gender='${gender}',
  father_name='${fname}', mother_name='${mname}', birth_date='${birth_date}', blood_group='${blood_group}', religion='${religion}',
   email='${email}', phone='${phone}', address='${address}', admission_date='${admission_date}'
  WHERE domain='${req.hostname}' AND ID='${dataid}'`,
  (err, update)=>{
      if(err) console.log(err.sqlMessage);
      else res.send({alert: 'alert-success', msg: 'Update successfully!'})
  })
 }


}




exports.admin_student_rm= (req, res)=>{

  const {dataid}= req.body; 

if(dataid==undefined){
    res.send({msg: "Data not found!", alert: "alert-info"})

}
else {
  sqlmap.query(`SELECT * FROM students WHERE domain='${req.hostname}' AND  ID IN (${dataid})`, (errInfo, findInfo)=>{
      if(errInfo) console.log("data not found!")
      
      else {
  
          
  sqlmap.query(`DELETE FROM students WHERE domain='${req.hostname}' AND  ID IN (${dataid})`, (err, next)=>{
      if(err) console.log(err.sqlMessage);
      else
      {

  
         for (const index in findInfo) {
          if(findInfo[index].avatar=='male_avatar.png' || findInfo[index].avatar=='female_avatar.png'){
             console.log('no delete default png');
          } else{
        
            fs.unlink(`./public/image/student/resized/${findInfo[index].avatar}`, function (errDelete) {
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





exports.self_dashboard= (req, res)=>{

  const student_uuid= req.session.student_uuid;
      let sql= `SELECT * FROM students WHERE domain='${req.hostname}' AND  student_uuid="${student_uuid}"`

      sqlmap.query(sql, (err, info)=>{

        if(info.length>0){
          res.render("student/dashboard_page", {info})
        } else res.redirect('/pages/empty.html')


      })

    } 




exports.self_account= (req, res)=>{

  const student_uuid= req.session.student_uuid;
      let sql= `SELECT * FROM students WHERE domain='${req.hostname}' AND  student_uuid="${student_uuid}"`

      sqlmap.query(sql, (err, info)=>{

        if(info.length>0){
          res.render("student/account_page", {info,  msg: req.flash("msg"), alert: req.flash("alert")})
        } else res.redirect('/pages/empty.html')


      })

    } 

    
    
    exports.self_penbox_push=(req, res)=>{
      console.log(req.body);
        const {name, phone, fb_link, fname, mname, gender, birth_date, blood_group, religion, address}= req.body;
        const domain= req.hostname;
        const userid= req.session.userid;
        sqlmap.query(`UPDATE students SET name='${name}', phone='${phone}',
        gender='${gender}', birth_date='${birth_date}', blood_group='${blood_group}', religion='${religion}', 
         address='${address}', father_name='${fname}', mother_name='${mname}', fb_link='${fb_link}'
        WHERE domain='${req.hostname}' AND ID=${userid}`,
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
      
         sqlmap.query(`UPDATE students SET avatar='${req.file.filename}' WHERE domain='${req.hostname}' AND ID=${userid}`, (err, next)=>{
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
    
              const sql= `UPDATE students SET password="${newPassword}" WHERE domain='${req.hostname}' AND  ID="${userid}"`
        
        
           sqlmap.query(`SELECT password FROM students WHERE domain='${req.hostname}' AND  ID="${userid}"`, (errPass, infoPass)=>{
        
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
    
    sqlmap.query(`SELECT email FROM students WHERE domain='${req.hostname}' AND  email="${username}"`, (errMain, infoMain)=>{
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
      sqlmap.query(`SELECT email FROM students WHERE domain='${req.hostname}' AND  email="${username}"`, (errMain, infoMain)=>{
        if(errMain) console.log(errMain.sqlMessage);
         if(infoMain.length>0) res.send({feedback: true, alert: 'alert-info', msg: 'Username already exists!'})
         else {
      
          sqlmap.query(`UPDATE students SET email="${username}" WHERE domain='${req.hostname}' AND  ID=${userid}`, (err, info) =>{
          
            if(err) res.send({alert: 'alert-info', msg: 'Something Wrong! please try again!'})
          
            else res.send({alert: 'alert-success', msg: 'Email updated succesfully!'})
          })
      
      
        }
      })
      }
       else res.send({alert: 'alert-info', msg: 'Invalid verified code!'})
      }
      
      






exports.public_student_page= (req, res)=>{



  var sqlClass= `SELECT COUNT(ID) FROM students`
  var sqlClass6= `SELECT COUNT(ID) FROM students WHERE domain='${req.hostname}' AND  class="Six"`
  var sqlClass7= `SELECT COUNT(ID) FROM students WHERE domain='${req.hostname}' AND  class="Seven"`
  var sqlClass8= `SELECT COUNT(ID) FROM students WHERE domain='${req.hostname}' AND  class="Eight"`
  var sqlClass9= `SELECT COUNT(ID) FROM students WHERE domain='${req.hostname}' AND  class="Nine"`
  var sqlClass10= `SELECT COUNT(ID) FROM students WHERE domain='${req.hostname}' AND  class="Ten"`

  var sqlSection6A= `SELECT COUNT(ID) FROM students WHERE domain='${req.hostname}' AND  class="Six" AND section="A"`
  var sqlSection6B= `SELECT COUNT(ID) FROM students WHERE domain='${req.hostname}' AND  class="Six" AND section="B"`
  var sqlSection6C= `SELECT COUNT(ID) FROM students WHERE domain='${req.hostname}' AND  class="Six" AND section="C"`

  var sqlSection7A= `SELECT COUNT(ID) FROM students WHERE domain='${req.hostname}' AND  class="Seven" AND section="A"`
  var sqlSection7B= `SELECT COUNT(ID) FROM students WHERE domain='${req.hostname}' AND  class="Seven" AND section="B"`
  var sqlSection7C= `SELECT COUNT(ID) FROM students WHERE domain='${req.hostname}' AND  class="Seven" AND section="C"`

  var sqlSection8A= `SELECT COUNT(ID) FROM students WHERE domain='${req.hostname}' AND  class="Eight" AND section="A"`
  var sqlSection8B= `SELECT COUNT(ID) FROM students WHERE domain='${req.hostname}' AND  class="Eight" AND section="B"`
  var sqlSection8C= `SELECT COUNT(ID) FROM students WHERE domain='${req.hostname}' AND  class="Eight" AND section="C"`

  var sqlSection9A= `SELECT COUNT(ID) FROM students WHERE domain='${req.hostname}' AND  class="Nine" AND section="A"`
  var sqlSection9B= `SELECT COUNT(ID) FROM students WHERE domain='${req.hostname}' AND  class="Nine" AND section="B"`
  var sqlSection9C= `SELECT COUNT(ID) FROM students WHERE domain='${req.hostname}' AND  class="Nine" AND section="C"`

  var sqlSection10A= `SELECT COUNT(ID) FROM students WHERE domain='${req.hostname}' AND  class="Ten" AND section="A"`
  var sqlSection10B= `SELECT COUNT(ID) FROM students WHERE domain='${req.hostname}' AND  class="Ten" AND section="B"`
  var sqlSection10C= `SELECT COUNT(ID) FROM students WHERE domain='${req.hostname}' AND  class="Ten" AND section="C"`


          sqlmap.query(sqlClass, (err, infoClass)=>{
     
            if(infoClass.length>0){
  
    
           sqlmap.query(sqlClass6, (err6, info6)=>{
           
            
           sqlmap.query(sqlClass7, (err7, info7)=>{

            sqlmap.query(sqlClass8, (err8, info8)=>{

              sqlmap.query(sqlClass9, (err9, info9)=>{

                sqlmap.query(sqlClass10, (err10, info10)=>{

                  
                sqlmap.query(sqlSection6A, (err6a, info6a)=>{

                  sqlmap.query(sqlSection6B, (err6b, info6b)=>{

                    sqlmap.query(sqlSection6C, (err6c, info6c)=>{

                      sqlmap.query(sqlSection7A, (err7a, info7a)=>{

                        sqlmap.query(sqlSection7B, (err7b, info7b)=>{

                          sqlmap.query(sqlSection7C, (err7c, info7c)=>{

                            sqlmap.query(sqlSection8A, (err8a, info8a)=>{

                              sqlmap.query(sqlSection8B, (err8b, info8b)=>{

                                sqlmap.query(sqlSection8C, (err8c, info8c)=>{

                                  sqlmap.query(sqlSection9A, (err9a, info9a)=>{

                                    sqlmap.query(sqlSection9B, (err9b, info9b)=>{

                                      sqlmap.query(sqlSection9C, (err9c, info9c)=>{

                                        sqlmap.query(sqlSection10A, (err10a, info10a)=>{

                                          sqlmap.query(sqlSection10B, (err10b, info10b)=>{

                                            sqlmap.query(sqlSection10C, (err10c, info10c)=>{

res.render("public/student_page_public", {info6, info6a, info6b, info6c, info7, info7a, info7b, info7c, info8, info8a, info8b, info8c, info9, info9a, info9b, info9c, info10, info10a, info10b, info10c})
            
                                            })
                 
            
                                          })
                   
                 
            
                                        })
                   
                 
            
                                      })
                 
            
                                    })
                 
            
                                  })
                 
            
                                })
                 
            
                              })
                 
            
                            })
                 
            
                          })
                 
            
                        })
                 
            
                      })
                 
            
                    })
            
                  })
            
                })
                 
            
                })
            
              })
             
            })
             
          })
         
         
           })


  
       

            }

              else res.redirect("/pu/404")
  })
  }






exports.public_student_list= (req, res)=>{

  let {className, sectionName}= req.query; const limit= 12;
  let sql= `SELECT * FROM students WHERE domain='${req.hostname}' AND  class="${className}" AND section="${sectionName}" ORDER BY roll LIMIT ${limit} OFFSET 0`

          sqlmap.query(sql, (err, info)=>{
     
            if(info.length>0){
              res.render("public/all_students_public", {info, className, sectionName})
            }

              else res.redirect('/pu/student/page')
  })
  }


exports.public_student_pagination= (req, res)=>{

    const {className, sectionName, requestPageOffset}= req.body; const limit = 12; 

   sqlmap.query(`SELECT COUNT(ID) AS count_row FROM students WHERE domain='${req.hostname}' AND  class="${className}" AND section="${sectionName}"`, (err_count, info_count)=>{
    if(err_count) console.log(err_count.sqlMessage);
    var permit_count=  info_count[0].count_row / limit;
    if(requestPageOffset >= permit_count) var offset= permit_count; else var offset= requestPageOffset;
    sqlmap.query(`SELECT * FROM students WHERE domain='${req.hostname}' AND  class="${className}" AND section="${sectionName}" ORDER BY roll LIMIT 12 OFFSET ${offset * limit}`,
             (err, info)=>{
       
              if(info.length>0){
  

                let orderData= '';

                for (let index = 0; index < info.length; index++) {
                 
                  orderData+=` <div  class="flex-fill m-auto p-2 shadowx ">

                  <div class="bg-card-color pt-3 pb-3 rounded-4">
                      <div class="card-image m-auto">
                          <img  class="avatar-circle" src="/image/teacher/resized/${info[index].avatar}" alt="">
                      </div>
                  </div>
                
                    
                  <div class="pb-3">
                      <div class="card-body text-center p-2">
                       <span class="fs-6 fw-semibold">${info[index].name}</span> <br>
                       <span class="text-muted fw-semibold">${info[index].roll}</span> <br>
                       <button onclick="get_profile_def('${info[index].ID}')" class="p-2 fw-semibold btn-link btn tap-to-open">Tap to open</button>
                      </div>
                  </div>
                
                  </div>`
                  
                }

                res.send({orderData})
              }
              else res.send({nomore:'No more student here'})

        
  
    })

  })
    }
  


    exports.public_student_profile_get= (req, res)=>{
      const {dataid}= req.body; 
      sqlmap.query(`SELECT * FROM students WHERE domain='${req.hostname}' AND  ID="${dataid}"`, (err, info)=>{
               
      if(info.length>0){
      let htmldata= `
         <center>
        <div class="bg-card-color pt-3  pb-3 rounded-top-5 rounded-start-5">
            <div class="card-image">
                <img class="avatar-circle" src="/image/student/resized/${info[0].avatar}" alt="">
            </div>
        </div>
      </center>
      
      <center>
        
        <div class="ps-2 pt-3 pb-3 rounded-bottom-5 rounded-end-5">
            <div class="card-body text-start p-2">
                   
            <div class="d-flex fw-semibold">
            <div class="p-1 w-25">Student of</div>
            <code class="p-1">:</code> <div class="p-1 w-75">${info[0].class} - ${info[0].section}</div>
           </div>    
           

                <div class="d-flex fw-semibold">
                   <div class="p-1 w-25">Name</div>
                   <code class="p-1">:</code><div class="p-1 w-75">${info[0].name}</div>
                  </div>

                              
                  <div class="d-flex fw-semibold">
                    <div class="p-1 w-25">Gender</div>
                    <code class="p-1">:</code> <div class="p-1 w-75">${info[0].gender}</div>
                   </div>

                   
                   <div class="d-flex fw-semibold">
                    <div class="p-1 w-25">Roll</div>
                    <code class="p-1">:</code> <div class="p-1 w-75">${info[0].roll}</div>
                   </div>     
                   
                   
                   <div class="d-flex fw-semibold">
                    <div class="p-1 w-25">SID</div>
                    <code class="p-1">:</code> <div class="p-1 w-75">${info[0].student_id}</div>
                   </div>
            
                  <div class="d-flex fw-semibold">
                    <div class="p-1 w-25">Religion</div>
                    <code class="p-1">:</code> <div class="p-1 w-75">${info[0].religion}</div>
                   </div>
            
                   <div class="d-flex fw-semibold">
                    <div class="p-1 w-25">Blood Group</div>
                    <code class="p-1">:</code> <div class="p-1 w-75">${info[0].blood_group}</div>
                   </div>
            
                   <div class="d-flex fw-semibold">
                    <div class="p-1 w-25">Admision date</div>
                    <code class="p-1">:</code> <div class="p-1 w-75">${info[0].admission_date}</div>
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




exports.self_close_account= (req, res)=>{
  if(req.session.user=='student'){

  // sqlmap.query(`DELETE  FROM students WHERE domain='${req.hostname}' AND  ID="${req.body.dataID}"`, (err, info)=>{

  //   if(err) res.end("you are restricted! can't close your account")
     
  //   else 
  //   {
  //     sqlmap.query(`DELETE FROM attendance WHERE domain='${req.hostname}' AND  ID="${req.body.dataID}"`, (err_sub, info_sub)=>{
 
  //       if(err_sub) console.log(err_sub.sqlMessage);
  //      else res.send({msg: 'closed!'})
  //     })
   
      
  //   }
  // })

}
}







exports.self_social= (req, res)=>{
      let {facebookLink}=req.body;
      const student_uuid= req.session.student_id;
        sqlmap.query(`UPDATE students SET facebook_link="${facebookLink}"  WHERE domain='${req.hostname}' AND  student_uuid="${student_uuid}"`, (err, info)=>{
      
          if(err) console.log(err.sqlMessage);
           
          else 
          {
            req.flash("alert", "success")
            req.flash("msg", "Social Link Updated...")
            res.redirect("/student/account")
          }
        })
      
      }







exports.student_rank_get_class_base= (req, res)=>{


  let className= req.session.className;
  let sectionName= req.session.sectionName;

        let sql= `SELECT * FROM rank WHERE domain='${req.hostname}' AND  class="${className}" GROUP BY student_id ORDER BY poient DESC`
        sqlmap.query(sql, (err, info)=>{
    
    
          if(err) console.log(err.sqlMessage);
    
          else
          {
    
           sqlmap.query(`SELECT SUM(behavior) as behavior, SUM(uniform) as uniform, SUM(present) as present, SUM(study) as study FROM rank WHERE domain='${req.hostname}' AND  class="${className}" GROUP BY student_id ORDER BY poient DESC`, (errS, infoS)=>{
               if(errS) console.log(errS.sqlMessage);
    
    
               else 
               {
    
                   let html= "";
    
                   for (const i in info) {
           
                       html+= 
                       /*html*/
                       `
                          
                       <ul class="list-group  mt-2 list" id="list">
                           
                           <li class="list-group-item list-group-item-primary ">
                      
                             <span class="badge bg-primary">Rank: ${parseInt(i)+parseInt(1)}</span>  
                             <img src="/image/student/resized/${info[i].avatar}" height="30px" class=" rounded" width="40px" alt="">
                        
                               <span class=" badge bg-light text-dark">${info[i].name}</span>
                               <span class=" badge bg-light text-muted">${info[i].class} - ${info[i].section} </span>
                               <span class=" badge bg-light text-muted">${info[i].student_id} </span>
                       <hr>
           
                       <span class=" badge bg-light text-danger">Behavior (${infoS[i].behavior})</span>
                       <span class=" badge bg-light text-secondary"> Uniform (${infoS[i].uniform}) </span>
                       <span class=" badge bg-light text-success">Study (${infoS[i].study}) </span>
                       <span class=" badge bg-light text-info">Present (${infoS[i].present}) </span>
                       <span class=" badge bg-light text-primary">Ratting (${info[i].poient}) </span>
           
           
                               <div class=" btn-group btn-group-sm">
                               
                               </div>
                       
                            </li>
                          
                        
                       </ul>
           
                       `
                    
                   }
           
                   res.send({html: html})
                   
               }
    
           })
    
         
    
          }
    
    
    
        }) 
     
    
      
      }
    


exports.student_parent_list= (req, res)=>{
  sqlmap.query(`SELECT ID, email, name FROM parents WHERE domain='${req.hostname}' AND  student_id='${req.session.student_id}'`, (err, info)=>{
    if(err) console.log(err.sqlMessage);

    else {

      let listData= '';
      for (const i in info) {
        listData+=`
        <option value="${info[i].email}"> ${info[i].email} - ${info[i].name}</option>
        `
     
      }

      res.send({listData})


    }

  })

}



exports.student_parent_set= (req, res)=>{

  let {parentEmail}= req.body;
  sqlmap.query(`UPDATE parents SET permission='allow' WHERE domain='${req.hostname}' AND  student_id='${req.session.student_id}' AND email='${parentEmail}'`, (err, update)=>{
    if(err) console.log(err.sqlMessage);

    else {

      res.send({msg: 'Parent set updated!', alert: 'success'})
    }
  })

  
}


exports.student_parent_get= (req, res)=>{

  sqlmap.query(`SELECT * FROM parents WHERE domain='${req.hostname}' AND  permission='allow' AND student_id='${req.session.student_id}'`, (err, info)=>{
    if(err) console.log(err.sqlMessage);

    else {

      if(info.length>0){
        let listData= '<code>Parent Access List</code>';

        for (const i in info) {
        listData+= 
         `
         <div class="input-group ">


             
         <span class=" input-group-text "><img width="50px" src="/image/parent/resized/${info[i].avatar}" alt="404"></span>
         <input disabled readonly type="text" class= "form-control form-self" value="${info[i].email} -  ${info[i].name}">

            </div>
           `
        }
     

      res.send({listData})
      }

    }

  })
  
}