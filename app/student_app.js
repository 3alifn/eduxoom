const express = require("express")
const app = express()
const {sqlmap, nodemailer, multer}= require("../server")

var regexTelephone= /^01[0-9]*$/
var regexNumber= /^[0-9]*$/
var regexString= /^[A-Za-z .-_]*$/
var regexPassword= /^[a-zA-Z0-9!@#$%&*]*$/
var regexEmail= /^([a-zA-Z0-9_\-\.]+)@((\[[0-9]{1,3}\.[0-9]{1,3}\.[0-9]{1,3}\.)|(([a-zA-Z0-9\-]+\.)+))([a-zA-Z]{2,4}|[0-9]{1,3})(\]?)$/ 



const multer_location= multer.diskStorage({
  destination: (req, file, cb)=>{
   cb(null, "./public/image/student")
  } ,

  filename: (req, file, cb)=>{

    cb(null, new Date().getTime()+"_"+file.originalname)
  },
  
})




exports.multer_upload_student= multer({
  storage: multer_location,

  limits: {fileSize: 1024*1024 * 2},
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




exports.admin_student_join= (req, res)=>{

  let {religion,  telephone, className,  student_id, roll, name, fname, mname, gender, address, bloodGroup, password, birthDate}= req.body;
  student_id==undefined? student_id= Math.floor(Math.random()*900000) : student_id=student_id;
  roll==undefined?roll=000: roll=roll;
  let tempData= className.split('-');
  className= tempData[0];
  let sectionName= tempData[1];
  let email = student_id+'@gmail.com';

  if(req.files.length>0) var avatarName= req.files[0].filename;
   else if(gender=="Male") var avatarName= "male_avatar.png"
    else avatarName= "female_avatar.png";

  sqlmap.query(`SELECT  student_id, roll FROM students WHERE class='${className}' AND section='${sectionName}' AND (student_id="${student_id}" OR roll=${roll})`, (err_, info_)=>{
 
   if(err_) console.log(err_.sqlMessage);

   else 
   {
  if(info_.length>0) res.send({msg: "Student ID or Roll Already Joined!", alert: "alert-danger text-danger"})
   else  
  {

  sqlmap.query(`INSERT INTO students (religion, name, email, telephone, student_id, roll, class, section, father_name, mother_name, gender, address, blood_group, birth_date, password, avatar)
  VALUES ( "${religion}", "${name}","${email}", "${telephone}", "${student_id}", ${roll}, "${className}", "${sectionName}", "${fname}", "${mname}", "${gender}", "${address}", "${bloodGroup}", 
  "${birthDate}", "${password}", "${avatarName}")`, (err_sub, info_sub)=>{

    if(err_sub) console.log(err_sub.sqlMessage);


        else res.send({msg: "Student Join Successfully!", alert: "alert-success text-success"})

  })

    }
   }

   
  })


}




exports.admin_student_update_form = (req, res) => {

  let ID= req.body.ID;

  sqlmap.query(`SELECT * FROM students WHERE ID=${ID}`, (err, info)=>{
    if(err) console.log(err.sqlMessage);

  let listData= ` 


  <div class="row">
    <div class="col-10 m-auto">
            <center>
              
                <label>
                    <img id="getImg" src="/image/student/${info[0].avatar}" width="200px" height="100px" alt="Tap & Select IMG" style="cursor: pointer;"> 
                    <input  style="display: none" type="file" name="avatar" value='${info[0].avatar}' id="fileItem">
                </label>
                <br> <br>
              <strong>Student Information</strong>
            </center>     
  
            <input type="hidden" name="ID" value="${info[0].ID}">

  <p></p>
           
  
            <div class=" input-group"> 
                <span class=" input-group-text"><i class=" fa-solid fa-people-line"></i></span>
  
                
                <select name="classBase" id="" class=" form-control">
  
                <option selected value="${info[0].class}-${info[0].section}">${info[0].class} - ${info[0].section}</option>

  
                    <optgroup label="Class Ten">
                       <option value="Ten-A">Ten - A</option>
                       
                       <option value="Ten-B">Ten - B</option>
                       <option value="Ten-C">Ten - C</option>
                      </optgroup>
                     
                      <optgroup label="Class Nine">
                       <option value="Nine-A">Nine - A</option>
                       <option value="Nine-B">Nine - B</option>
                       <option value="Nine-C">Nine - C</option>
                      </optgroup>
                     
                     
                      
                      <optgroup label="Class Eight">
                       <option value="Eight-A">Eight - A</option>
                       <option value="Eight-B">Eight - B</option>
                       <option value="Eight-C">Eight - C</option>
                      </optgroup>
                     
                     
                     
                      
                      <optgroup label="Class Seven">
                       <option value="Seven-A">Seven - A</option>
                       <option value="Seven-B">Seven - B</option>
                       <option value="Seven-C">Seven - C</option>
                      </optgroup>
                      
                     
                     
                     
                      
                      <optgroup label="Class Six">
                       <option  value="Six-A">Six - A</option>
                       <option value="Six-B">Six - B</option>
                       <option value="Six-C">Six - C</option>
                      </optgroup>
                      
                   
                   </select>
                 </div>
  
  <p></p>
          
            <div class=" input-group"> 
                <span class=" input-group-text"><i class=" fa fa-id-card"></i></span>
                <input disabled patternoff="^[0-9]*$" type="tel" placeholder="Student ID" name="student_id" value="${info[0].student_id}" class="form-control" required>
  
                <div  class="valid-feedback"></div>
                <div id="" class="invalid-feedback">Enter a valid student id</div>
          
            </div>
        
  
            <p></p>
  
  
        <div class=" input-group"> 
            <span class=" input-group-text"><i class=" fa fa-id-card"></i></span>
            <input disabled patternoff="^[0-9]*$" type="tel" placeholder="Student Roll" name="roll" value="${info[0].roll}" class="form-control" required> 
  
                
      <div  class="valid-feedback"></div>
      <div id="" class="invalid-feedback">Enter a valid roll</div>
  
        </div>
  
        <p></p>
  
        <div class=" input-group"> 
            <span class=" input-group-text"><i class=" fa fa-user"></i></span>
            <input patternoff="^[A-Za-z .-_]*$" type="text" placeholder="Student Name" name="name" value="${info[0].name}" class="form-control" required>
  
            <div  class="valid-feedback"></div>
            <div id="" class="invalid-feedback">Enter a valid name</div>
           
        </div>
  
        <p></p>
  
        
        <div>
          <label for="male"> <span class="btn btn-light shadow"><input ${info[0].gender=='Male'? 'checked': null} class="form-check-input " type="radio" id="male" value="Male" checked name="gender" > Male </span> </label> 
          <label for="female">  <span class="btn btn-light shadow"><input ${info[0].gender=='Female'? 'checked': null} class="form-check-input " type="radio" value="Female" id="female"  name="gender" > Female </span> </label>
        </div>


  
        <p></p>
  
  
        <div class=" input-group"> 
            <span class=" input-group-text"><i class=" fa fa-male"></i></span>
            <input patternoff="^[A-Za-z .-_]*$" type="text" placeholder="Father Name" name="fname" value="${info[0].father_name}" class="form-control" required>
  
            <div  class="valid-feedback"></div>
            <div id="" class="invalid-feedback">Enter a valid name</div>
  
        </div>
  
        <p></p>
  
  
        <div class=" input-group"> 
            <span class=" input-group-text"><i class=" fa fa-female"></i></span>
            <input patternoff="^[A-Za-z .-_]*$" type="text" placeholder="Mother Name" name="mname" value="${info[0].mother_name}" class="form-control" required>
  
            <div  class="valid-feedback"></div>
            <div id="" class="invalid-feedback">Enter a valid name</div>
  
        </div>
  
        <p></p>
  
  
  
        <div class=" input-group"> 
            <span class=" input-group-text"><i class="fa-sharp fa-solid fa-at"></i></span>
            <input disabled type="email" placeholder="enter email" name="email" value="${info[0].email}" class="form-control" required> 
        </div>
        
        
        <p></p>
  
  
          
    <div class=" input-group">
  
      <span class=" input-group-text"><img width="30px" src="/icon/user/icons8-contact-48.png" alt=""></span>
    
    
      <input patternoff="^01[0-9]*$" maxlength="11" type="tel" placeholder="01XXXXXXXX" value="${info[0].telephone}" name="telephone"  class="form-self form-control" required>  
      <div  class="valid-feedback"></div>
      <div id="" class="invalid-feedback">Enter contact number</div>
    
    </div>
  
      <p></p>
  
  
        
        <div class=" input-group"> 
            <span class=" input-group-text"><i class="fa-sharp fa-solid fa-location-dot"></i></span>
            <input type="text" placeholder="Gunbaha, Boalmari-Faridpur" name="address" value="${info[0].address}" class="form-control" required> 
  
            <div  class="valid-feedback"></div>
            <div id="" class="invalid-feedback">Required address</div>
      
        </div>
  
        <p></p>
  
  
  
        <div class="input-group">
            <span class=" input-group-text "><img width="30px" src="/icon/user/icons8-praying-man-48.png" alt=""></span>
          <select class="form-self form-select" name="religion" id="" required>
          
            <option disabled  value="">Select Religion</option>
            <option value="Islam">Islam</option>
            <option value="Hinduism">Hinduism</option>
            <option value="Christianity">Christianity</option>
            <option value="Buddhism">Buddhism</option>
        <option value="Others">Others</option>

        <option selected value="${info[0].religion}">${info[0].religion}</option>

      </select>
          
          
          </div>
  
          <p></p>
  
        
     <div class="input-group">
  
        <span class=" input-group-text"><img width="30px" src="/icon/user/icons8-blood-48.png" alt=""></span>
  
      <select name="bloodGroup" class="form-select" id="" >
        <option  disabled value="">Select Blood Group</option>
  
        <optgroup label="Positive"> 
      
          <option  value="A+ve">A+ve</option>
          <option value="B+ve">B+ve</option>
          <option value="O+ve">O+ve</option>
          <option value="AB+ve">AB+ve</option>
      
          </optgroup> 
          
          <optgroup label="Negative"> 
          <option  value="A-ve">A-ve</option>
          <option value="B-ve">B-ve</option>
          <option value="O-ve">O-ve</option>
          <option value="AB-ve">AB-ve</option>
      
          </optgroup>
      
          <option selected value="${info[0].blood_group}">${info[0].blood_group}</option>

      
      </select>
     </div>
          
  
     <p></p>
  
  
          <div class=" input-group">
            <span class=" input-group-text"><i class="fa-sharp fa-solid fa-lock"></i></span>
            <input id="password" type="password" placeholder="temp password" name="password" value="password" class="form-control" required>
            <span id="eye-hide" class="btn input-group-text"><i class="fa-sharp fa-solid fa-eye-slash"></i></span>
            <span style="display: none;" id="eye-show" class="btn input-group-text"><i class="fa-sharp fa-solid fa-eye"></i></span>
  
  
        </div>
  
        <p></p>
  
          
        <div class=" input-group"> 
            <span class=" input-group-text"><i class="fa-sharp fa-solid fa-birthday-cake"></i></span>
            <input type="date"  name="birthDate"  value="${info[0].birth_date}" class=" form-control" required>
        </div>
  
        
        <p></p>
  
        
        <center>
          <button id="submitupdatebtn" class=" btn bg-secondary text-light fw-bold w-50 btn-dev rounded">Save & Changes</button>
        </center>
  
        
  
        <p></p>
    </div>
  </div>
  
  `

    res.send({listData})

  })


}






exports.admin_student_update_post= (req, res)=>{

  let {ID, religion, avatar, telephone, classBase,  student_id, roll, name, fname, mname, gender, address, bloodGroup, password, birthDate}= req.body;
 
  let tempClass= classBase.split("-");
  let className= tempClass[0]
  let sectionName= tempClass[1]

  if(req.files.length>0) var avatarName= req.files[0].filename;
   else if(gender=="Male") var avatarName= "male_avatar.png"
    else avatarName= "female_avatar.png";


 
   sqlmap.query(`
    UPDATE students SET religion= "${religion}", name="${name}",  telephone="${telephone}", 
    class="${className}", section="${sectionName}", father_name="${fname}", 
   mother_name="${mname}", gender="${gender}", address="${address}", blood_group="${bloodGroup}", 
   birth_date="${birthDate}",  avatar="${avatarName}" WHERE ID=${ID}`, (err_sub, info_sub)=>{
 
     if(err_sub) console.log(err_sub.sqlMessage);
 
 
         else res.send({msg: "Student Update Successfully!", alert: "alert-success text-success"})
 
   })
 





}

















exports.admin_student_copy_get= (req, res)=>{

  
  let {className, sectionName}= req.body;

  sqlmap.query(`SELECT * FROM students_copy WHERE class='${className}' AND section='${sectionName}' ORDER BY ID DESC`, (err, info)=>{
    if(err) console.log(err.sqlMessage);

    else 
    {
      let list= '';

      for (let i = 0; i < info.length; i++) {
      
        list += `
        
        <li class="list-group-item d-flex justify-content-between align-items-center active">
        ${info[i].name} ${info[i].class} - ${info[i].section}
        <span data-id="${info[i].ID}" class="badge btn badge-secondary defInfo badge-pill">Info</span>
        <input type="checkbox" name="ID[]" value="${info[i].ID}" id="">

           <span data-id="${info[i].ID}" title="Accept" class="badge btn badge-secondary accept badge-pill">Up</span>
       </li>
<p></p>

        `

    }


    res.send({list})

  }


})

}




exports.admin_student_copy_post= (req, res)=>{

  let {ID}= req.body;
  sqlmap.query(
    `INSERT INTO students (class, section, name, email, student_id, religion, father_name, mother_name, address, year, password, blood_group, gender, birth_date, telephone, avatar )
           SELECT class, section, name, email, student_id, religion, father_name, mother_name, address, year, password, blood_group, gender, birth_date, telephone, avatar FROM students_copy 
           WHERE ID=${ID} LIMIT 1;
           `
  , (err, next)=>{
    if(err) console.log(err.sqlMessage);

   sqlmap.query(`DELETE FROM students_copy WHERE ID=${ID}`, (errDel, nextDel)=>{

    if(errDel) console.log(errDel.sqlMessage);

    else  res.send({msg: 'Student Accepted! Successfully!'})

   })

  })
  
}




exports.admin_student_copy_delete= (req, res)=>{

  
  let ID=  req.body.ID;

 if(ID==undefined) res.send({msg: "Pls select before delete!", alert: "alert-danger text-danger"})
 else 
 {
   let sql= `DELETE FROM students_copy WHERE ID IN (${ID.toString()})`
  sqlmap.query(sql, (err, next)=>{
 
   if(err) console.log(err.sqlMessage);
   else res.send({msg: "Deleted! Successfully", alert: "alert-danger text-danger"})
  })
  
 }

  
}







exports.admin_student_copy_profile= (req, res)=>{

  let ID= req.body.ID;
  let sql= `SELECT * FROM students_copy WHERE ID="${ID}"`

          sqlmap.query(sql, (err, info)=>{
     
            if(info.length>0){

              let avatar= `${info[0].avatar}`

              let html= "";
              for (const i in info) {
                 /* html */
               html+= `
               
               <h5 class="card-title">${info[i].name} </h5>
               <p class="card-text badge bg-light text-dark">Class: ${info[i].class}</p> 
               <p class="card-text badge bg-light text-dark">Section: ${info[i].section}</p> 
               <p class="card-text badge bg-light text-dark">student Id: ${info[i].student_id}</p> 
               <p class="card-text badge bg-light text-dark">Email: ${info[i].email}</p> 
               <p class="card-text badge bg-light text-dark">Contact: ${info[i].telephone}</p> 
               <p class="card-text badge bg-light text-dark">Gender: ${info[i].gender}</p> 
               <p class="card-text badge bg-light text-dark">Birth Date: ${info[i].birth_date}</p> 
               <p class="card-text badge bg-light text-dark">Blood Group: ${info[i].blood_group}</p> 
               <hr>
               <strong>Extra Information</strong> <br>
               <p class="card-text badge bg-light text-dark">Father Name: ${info[i].father_name}</p> 
               <p class="card-text badge bg-light text-dark">Mother Name: ${info[i].mother_name}</p> 
               <p class="card-text badge bg-light text-dark">Reliigion: ${info[i].religion}</p> 
               <p class="card-text badge bg-light text-dark">Address: ${info[i].address}</p> 
               <p class="card-text badge bg-light text-dark">Date: ${info[i].at_date}</p> 
           
               

               `
              }
              res.send({html, avatar})

            }

              
  })
  }








exports.admin_student_get= (req, res)=>{

  let {className, sectionName}= req.body;

  sqlmap.query(`SELECT * FROM students WHERE class='${className}' AND section='${sectionName}' ORDER BY roll ASC`, (err, info)=>{
    if(err) console.log(err.sqlMessage);

    else 
    {
      let list= '';

      for (let i = 0; i < info.length; i++) {
      
        list += `
        
       <tr>
       <td><span class='badge text-dark bg-light'>${info[i].roll}</span></td>
       <td><span class='badge text-dark bg-light'>${info[i].name}</span></td>
       <td><span class='badge text-dark bg-light'> 
       <img data-id="${info[i].ID}" title='See more...' class="defInfo" style='cursor: pointer'  src="/image/student/${info[i].avatar}" alt="404" width="30px" >
       </span></td>
      
      
       <td><input type="checkbox" name="ID[]" id="" value="${info[i].ID}"></td>
       <td><span data-id="${info[i].ID}"  class="btn editDef"> <i class="fa-solid fa-pen"></i> </span> </td>
  
      </tr>

        `

    }


    res.send({list})

  }


})


}












exports.admin_student_get_class_base= (req, res)=>{

 

  let {className, sectionName}=  req.body;

  sqlmap.query(`SELECT * FROM students WHERE class='${className}' AND section='${sectionName}' ORDER BY roll ASC`, (err, info)=>{
    if(err) console.log(err.sqlMessage);

    else 
    {
      let list= '';

      for (let i = 0; i < info.length; i++) {
      
        list += `
        
       <tr>
       <td><span class='badge text-dark bg-light'>${info[i].roll}</span></td>
       <td><span class='badge text-dark bg-light'>${info[i].name}</span></td>
       <td><span class='badge text-dark bg-light'> 
       <img data-id="${info[i].ID}" class="defInfo" style='cursor: pointer'  src="/image/student/${info[i].avatar}" alt="404" width="30px" >
       </span></td>
      
      
       <td><input type="checkbox" name="ID[]" id="" value="${info[i].ID}"></td>
       <td><span data-id="${info[i].ID}"  class="btn editDef"> <i class="fa-solid fa-pen"></i> </span> </td>
      </tr>

        `

    }


    res.send({list})

  }


})

  


 
}









exports.admin_student_import= (req, res)=>{

  let {className, sectionName, name, classRoll}= req.body;

  for (let i = 0; i < classRoll.length; i++) {
  

  //  sqlmap.query(`SELECT roll students_temp WHERE class=${className} AND section=${sectionName} AND roll=${classRoll[i]}`, (errHave, infoHave)=>{

      
    sqlmap.query(`SELECT student_id FROM students_temp ORDER BY student_id DESC LIMIT 1`, (errCheck, infoCheck)=>{

      if(errCheck) console.log(errCheck.sqlMessage);
  
  
      else {
               var studentuuid= infoCheck[0]==undefined? 140000+parseInt([i]) : infoCheck[0].student_id+1+parseInt([i]);
              //  console.log(studentuuid);
     
      
            setTimeout(() => {

              sqlmap.query(`INSERT INTO students_temp  (class, section, student_id, name, roll) VALUES('${className.toString()}', '${sectionName.toString()}', ${studentuuid}, '${name[i]}', ${classRoll[i]})`, (errInsert, infoInsert)=>{
         
                if(errInsert) console.log(errInsert.sqlMessage);
          
              
            });
            
        
            }, 1000)
  
      
  
      }
  
      })

  //  })
    


    
  }



  res.send({msg: "Import Student List!", alert: "bg-success text-light"})


}







exports.self_student_send_mail= (req, res)=>{

  let {email, student_id}=  req.body;
 let sql= `SELECT email, student_id FROM students WHERE email="${email}" OR student_id="${student_id}"`
  sqlmap.query(sql, (errMain, infoMain)=>{

    if(errMain) console.log(errMain.sqlMessage);

    else 
    {
      if(infoMain.length>0)
      {
        req.flash("msg", "Email or Student_id Already Exists!")
        req.flash("alert", "danger")
        res.render("student/join_student", {step: "step1", msg: req.flash("msg"), alert: req.flash("alert")}) 
      }

      else if(infoMain==0)
      {

        sqlmap.query(`SELECT email FROM students_copy WHERE email='${email}' OR student_id="${student_id}"`, (errFind, nextFind)=>{
          if(errFind) console.log(errFind.sqlMessage);
          if(nextFind.length==0){

        
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
          subject: "Join Student",
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
            req.flash("alert", "secondary")
            res.render("student/join_student", {step: "step1", msg: req.flash("msg"), alert: req.flash("alert")})
           }
          
      else {
        req.session.email= email
        req.session.student_id= student_id
        req.flash("msg", "Verification Code Sent!")
        req.flash("alert", "success")
        res.render("student/join_student", {step: "step2", msg: req.flash("msg"), alert: req.flash("alert")})
      }
          
        
        })


      }

      else {
  
        req.flash("alert", "danger")
        req.flash("msg", "Username already or student_id exists!")
        res.redirect("/pu/join/student/")
  
      }
    })


      }
    }


  })

}



exports.self_student_verify_code= (req, res)=>{
let {verifyCode}= req.body;
  console.log(req.session.userVerifyCode);
  if(verifyCode==req.session.userVerifyCode)
  {

    res.render("student/join_student", {step: "step3"})
    
  
  }
   else 
   {
    req.flash("alert", "danger")
    req.flash("msg", "Invalid Verification code!")
    res.render("student/join_student", {step: "step2", msg: req.flash("msg"), alert: req.flash("alert")}) 
   }
  

}








exports.self_join_student= (req, res)=>{

  let { classBase ,name, password, religion, fatherName, motherName, address, bloodGroup, gender, telephone, birthDate}= req.body;
  let classTempData= classBase.split('-');
  let className= classTempData[0]
  let sectionName= classTempData[1]

  let email= req.session.email
  let student_id= req.session.student_id
  let yearName= new Date().getUTCFullYear()
  if(gender=="Female") var avatar_png= "female_avatar.png"
  else var avatar_png= "male_avatar.png"

      
  let userPassword= regexPassword.test(password) && password.length>5 && password.length<21;
  let userName= regexString.test(name) && name.length>1
  let userFName= regexString.test(fatherName) && fatherName.length>1
  let userMName= regexString.test(motherName) && motherName.length>1
  let userTelephone= regexTelephone.test(telephone) && telephone.length==11;
  let userEmail= regexNumber.test(student_id)
  let userStudent_id= regexEmail.test(email)

  let userInputData = [userEmail, userStudent_id, userName, userTelephone, userPassword, userFName, userMName]

  let userAuthentication= userInputData.every((input)=>{
     return input==true
  })
 
  if(userAuthentication==true) todoJoinStudent()

  else {
    req.flash("msg", "Something Wrong! or timeout! please try again...")
    req.flash("alert", "warning")
    res.redirect("/pu/join/student")

  }

 

  function todoJoinStudent(){

    sqlmap.query(`INSERT INTO students_copy (class, section, religion, father_name, mother_name, address, year, name, student_id, email, password,  blood_group, gender, telephone, birth_date, avatar)
    VALUES("${className}", "${sectionName}", "${religion}", "${fatherName}", "${motherName}", "${address}", "${yearName}",  "${name}", "${student_id}", "${email}", "${password}", "${bloodGroup}", "${gender}", "${telephone}", "${birthDate}", "${avatar_png}")`
    , (err)=>{
  
      if(err) console.log(err.sqlMessage);
  
      else 
      {
       
                  req.flash("alert", "success")
                  req.flash("msg", "Request sent!, please wait for response......")
                  res.redirect("/pu/join/student/")
      }
    })
  }
  

}











exports.admin_student_delete= (req, res)=>{


  let ID=  req.body.ID;


 if(ID==undefined) res.send({msg: "Pls select before delete!", alert: "alert-danger text-danger"})
 else 
 {
   let sql= `DELETE FROM students WHERE ID IN (${ID.toString()})`
  sqlmap.query(sql, (err, next)=>{
 
   if(err) console.log(err.sqlMessage);
   else res.send({msg: "Deleted! Successfully", alert: "alert-danger text-danger"})
  })
  
 }

 
}











exports.self_dashboard= (req, res)=>{

      let ID= req.session.userid;
      let sql= `SELECT * FROM students WHERE ID="${ID}"`

      sqlmap.query(sql, (err, info)=>{

        res.render("student/dashboard_page", {info})


      })

    } 











exports.self_account= (req, res)=>{

      let ID= req.session.userid;
      let sql= `SELECT * FROM students WHERE ID="${ID}"`

      sqlmap.query(sql, (err, info)=>{

        res.render("student/account_page", {info,  msg: req.flash("msg"), alert: req.flash("alert")})


      })

    } 






  




exports.self_info_update= (req, res) =>{

  let {name, telephone, birthDate, gender, bloodGroup, father_name, mother_name, address, religion, hobbies}= req.body;
let sql=   `UPDATE students SET name="${name}", telephone="${telephone}",  birth_date="${birthDate}", gender="${gender}", blood_group="${bloodGroup}", father_name="${father_name}", mother_name="${mother_name}", address="${address}", religion="${religion}", hobbies="${hobbies}" WHERE ID="${req.session.userid}"`
sqlmap.query(sql, (err, info)=>{

if(err) console.log(err.sqlMessage);

else {
  req.flash("msg", "Profile Updated Successfully!")
  req.flash("alert", "success")
  res.redirect("/student/account")
}


})

}








exports.self_password_update= (req, res)=>{

  let { password, pastPassword}= req.body;


      let sql= `UPDATE students SET password="${password}" WHERE ID="${req.session.userid}"`


   sqlmap.query(`SELECT password FROM students WHERE ID="${req.session.userid}"`, (errPass, infoPass)=>{

    if(errPass) console.log(errPass.sqlMessage);
    else{

      if( pastPassword==infoPass[0].password)
{

  sqlmap.query(sql, (err, info) =>{

    if(err) 
    {
      req.flash("msg", "Change Failed!")
      req.flash("alert", "danger")
      res.redirect("/student/account")

    }

    else
    {
    
      req.flash("msg", "Changed! Successfully...")
      req.flash("alert", "success")
      res.redirect("/student/account")
    }
  })

}

else 
{
  req.flash("msg", "Current Password Not Matched!")
  req.flash("alert", "danger")
  res.redirect("/student/account")
}

    }

   })

    


  } 






exports.self_avatar_upload= (req, res, next)=>{

  sqlmap.query(`UPDATE students SET avatar="${req.file.filename}"  WHERE ID=${req.session.userid}`, (err, next)=>{

    if(err) console.log(err.message);
 
    else res.send({msg: "Changed Successfully!"})
  })
  
 
}







exports.self_email_update_page= (req, res)=>{
  let {username}= req.body;
         
  sqlmap.query(`SELECT email FROM students WHERE email="${username}"`, (errMain, infoMain)=>{
  
    if(infoMain.length>0)
    {

      req.flash("msg", "username already exists!")
      req.flash("alert", "danger")
      res.redirect("/student/account")

    }

    else {

  
      const transporter= nodemailer.createTransport({
        service: process.env.email_service,
       
    
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
          res.redirect("/student/account", {msg: req.flash("msg"), alert: req.flash("alert")})
         }
        
    else {

      req.session.username= username

      req.flash("msg", "Verification Code Sent!")
      req.flash("alert", "success")

      res.render("authentication/username_update_page", {user: "student", msg: req.flash("msg"), alert: req.flash("alert")})

    }
        
      
      })

   

    }

  })
}
  









exports.self_email_update= (req, res)=>{

  if(req.body.verifyCode==req.session.userVerifyCode)
  {

let sql= `UPDATE students SET email="${req.session.username}" WHERE ID="${req.session.userid}"`

sqlmap.query(sql, (err, info) =>{

  if(err) 
  {
    req.flash("msg", "Something Wrong!")
    res.redirect("/student/account")

  }

  else
  {
  
    req.flash("msg", "Changed! Successfully...")
    req.flash("alert", "success")
    res.redirect("/student/account")
  }
})

  }

  else 
  {
    req.flash("msg", "Authontication Falied!")
    req.flash("alert", "danger")
    res.render("authentication/username_update_page", {user: "student", msg: req.flash("msg"), alert: req.flash("alert")})
  }

}





exports.public_student_page= (req, res)=>{



  var sqlClass= `SELECT COUNT(ID) FROM students`
  var sqlClass6= `SELECT COUNT(ID) FROM students WHERE class="Six"`
  var sqlClass7= `SELECT COUNT(ID) FROM students WHERE class="Seven"`
  var sqlClass8= `SELECT COUNT(ID) FROM students WHERE class="Eight"`
  var sqlClass9= `SELECT COUNT(ID) FROM students WHERE class="Nine"`
  var sqlClass10= `SELECT COUNT(ID) FROM students WHERE class="Ten"`

  var sqlSection6A= `SELECT COUNT(ID) FROM students WHERE class="Six" AND section="A"`
  var sqlSection6B= `SELECT COUNT(ID) FROM students WHERE class="Six" AND section="B"`
  var sqlSection6C= `SELECT COUNT(ID) FROM students WHERE class="Six" AND section="C"`

  var sqlSection7A= `SELECT COUNT(ID) FROM students WHERE class="Seven" AND section="A"`
  var sqlSection7B= `SELECT COUNT(ID) FROM students WHERE class="Seven" AND section="B"`
  var sqlSection7C= `SELECT COUNT(ID) FROM students WHERE class="Seven" AND section="C"`

  var sqlSection8A= `SELECT COUNT(ID) FROM students WHERE class="Eight" AND section="A"`
  var sqlSection8B= `SELECT COUNT(ID) FROM students WHERE class="Eight" AND section="B"`
  var sqlSection8C= `SELECT COUNT(ID) FROM students WHERE class="Eight" AND section="C"`

  var sqlSection9A= `SELECT COUNT(ID) FROM students WHERE class="Nine" AND section="A"`
  var sqlSection9B= `SELECT COUNT(ID) FROM students WHERE class="Nine" AND section="B"`
  var sqlSection9C= `SELECT COUNT(ID) FROM students WHERE class="Nine" AND section="C"`

  var sqlSection10A= `SELECT COUNT(ID) FROM students WHERE class="Ten" AND section="A"`
  var sqlSection10B= `SELECT COUNT(ID) FROM students WHERE class="Ten" AND section="B"`
  var sqlSection10C= `SELECT COUNT(ID) FROM students WHERE class="Ten" AND section="C"`


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

res.render("student/student_page_public", {info6, info6a, info6b, info6c, info7, info7a, info7b, info7c, info8, info8a, info8b, info8c, info9, info9a, info9b, info9c, info10, info10a, info10b, info10c})
            
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

              else res.redirect("/pu/503")
  })
  }






exports.public_student_list= (req, res)=>{

  let {className, sectionName}= req.query;
  let sql= `SELECT * FROM students WHERE class="${className}" AND section="${sectionName}" ORDER BY roll ASC`

          sqlmap.query(sql, (err, info)=>{
     
            if(info.length>0){

              
              res.render("student/all_students_public", {info})
            }

              else res.redirect('/pu/student/page')
  })
  }





exports.privet_student_profile= (req, res)=>{


    let ID= req.body.ID;
  
            sqlmap.query(`SELECT * FROM students WHERE ID="${ID}"`, (err, info)=>{
       
              if(info.length>0){
  
                let avatar= `${info[0].avatar}`

                let html= `
          
                 <h5 class="card-title">${info[0].name} </h5>
                 <p class="card-text badge bg-light text-dark">Class: ${info[0].class}</p> 
                 <p class="card-text badge bg-light text-dark">Section: ${info[0].section}</p> 
                 <p class="card-text badge bg-light text-dark">Class Roll: ${info[0].roll}</p> 
                 <p class="card-text badge bg-light text-dark">student Id: ${info[0].student_id}</p> 
                 <p class="card-text badge bg-light text-dark">Reg: ${info[0].reg}</p> 
                 <p class="card-text badge bg-light text-dark">Email: ${info[0].email}</p> 
                 <p class="card-text badge bg-light text-dark">Contact: ${info[0].telephone}</p> 
                 <p class="card-text badge bg-light text-dark">Gender: ${info[0].gender}</p> 
                 <p class="card-text badge bg-light text-dark">Birth Date: ${info[0].birth_date}</p> 
                 <p class="card-text badge bg-light text-dark">Blood Group: ${info[0].blood_group}</p> 
                 <hr>
                 <strong>Extra Information</strong> <br>
                 <p class="card-text badge bg-light text-dark">Father Name: ${info[0].father_name}</p> 
                 <p class="card-text badge bg-light text-dark">Mother Name: ${info[0].mother_name}</p> 
                 <p class="card-text badge bg-light text-dark">Reliigion: ${info[0].religion}</p> 
                 <p class="card-text badge bg-light text-dark">Address: ${info[0].address}</p> 
                 <p class="card-text badge bg-light text-dark">Hobbies: ${info[0].hobbies}</p> 
                 <p class="card-text badge bg-light text-dark">Admission Date: ${info[0].admission_date}</p> 
             
                 

                 `
                
                res.send({html, avatar})

              }
  
                
    })
    }
  




exports.self_close_account= (req, res)=>{
  if(req.session.user=='student'){

  // sqlmap.query(`DELETE  FROM students WHERE ID="${req.body.dataID}"`, (err, info)=>{

  //   if(err) res.end("you are restricted! can't close your account")
     
  //   else 
  //   {
  //     sqlmap.query(`DELETE FROM attendance WHERE ID="${req.body.dataID}"`, (err_sub, info_sub)=>{
 
  //       if(err_sub) console.log(err_sub.sqlMessage);
  //      else res.send({msg: 'closed!'})
  //     })
   
      
  //   }
  // })

}
}







exports.self_social= (req, res)=>{
  if(req.session.user=='student'){
      let {facebookLink, twitterLink}=req.body;
        sqlmap.query(`UPDATE students SET facebook_link="${facebookLink}", twitter_link="${twitterLink}"  WHERE ID="${req.session.userid}"`, (err, info)=>{
      
          if(err) console.log(err.sqlMessage);
           
          else 
          {
            req.flash("alert", "success")
            req.flash("msg", "Social Link Updated...")
            res.redirect("/student/account")
          }
        })
      
      }
      }







exports.student_rank_get_class_base= (req, res)=>{


  let className= req.session.className;
  let sectionName= req.session.sectionName;

        let sql= `SELECT * FROM rank WHERE class="${className}" GROUP BY student_id ORDER BY poient DESC`
        sqlmap.query(sql, (err, info)=>{
    
    
          if(err) console.log(err.sqlMessage);
    
          else
          {
    
           sqlmap.query(`SELECT SUM(behavior) as behavior, SUM(uniform) as uniform, SUM(present) as present, SUM(study) as study FROM rank WHERE class="${className}" GROUP BY student_id ORDER BY poient DESC`, (errS, infoS)=>{
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
                             <img src="/image/student/${info[i].avatar}" height="30px" class=" rounded" width="40px" alt="">
                        
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
  sqlmap.query(`SELECT ID, email, name FROM parents WHERE student_id='${req.session.student_id}'`, (err, info)=>{
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
  sqlmap.query(`UPDATE parents SET permission='allow' WHERE student_id='${req.session.student_id}' AND email='${parentEmail}'`, (err, update)=>{
    if(err) console.log(err.sqlMessage);

    else {

      res.send({msg: 'Parent set updated!', alert: 'success'})
    }
  })

  
}


exports.student_parent_get= (req, res)=>{

  sqlmap.query(`SELECT ID, email, name, avatar FROM parents WHERE permission='allow' AND student_id='${req.session.student_id}'`, (err, info)=>{
    if(err) console.log(err.sqlMessage);

    else {

      if(info.length>0){
        let listData= '<code>Parent Access List</code>';

        for (const i in info) {
        listData+= 
         `
         <div class="input-group ">


             
         <span class=" input-group-text "><img width="50px" src="/image/parent/${info[i].avatar}" alt="404"></span>
         <input disabled readonly type="text" class= "form-control" value="${info[i].email} -  ${info[i].name}">

            </div>
           `
        }
     

      res.send({listData})
      }

    }

  })
  
}