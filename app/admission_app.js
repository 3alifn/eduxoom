const { app, express, sqlmap, nodemailer, createHmac, randomBytes, fs, path } = require("../server")

exports.public_admission_step1 = (req, res) => {
  // console.log(mysession);
  res.render("public/admission_form_public", { pastAdmission: true, nextAdmission: false, data: false, msg: req.flash("msg"), alert: req.flash("alert") })

}


exports.public_admission_step2 = async(req, res) => {

  const {studentName, gender, dobNumber, birthDate, fatherName, motherName, bloodGroup, Religion, Email, telephone, guardianName, Address, Hobbies} = req.body;
  req.session.studentName= studentName;
  req.session.dobNumber= dobNumber;
  req.session.birthDate= birthDate;
  req.session.fatherName= fatherName;
  req.session.motherName= motherName;
  req.session.bloodGroup= bloodGroup;
  req.session.Religion= Religion;
  req.session.Email= Email;
  req.session.guardianName= guardianName;
  req.session.Address= Address;
  req.session.Hobbies= Hobbies;
  req.session.gender= gender;
  req.session.telephone= telephone;
    req.session.avatar= req.file.filename;
    res.render("public/admission_form_public", { nextAdmission: true, pastAdmission: false })

}


exports.public_admission_post = async (req, res) => {

  const {studentName, gender, avatar, dobNumber, birthDate, fatherName, motherName, bloodGroup, Religion, Email, telephone, guardianName, Address, Hobbies} = req.session;
  const { lastEducation, admissionClass, comment } = req.body;
  const session = new Date().getUTCFullYear();
  const findDate = new Date().toDateString();
  const uuid= randomBytes(8).toString('hex'); 

  if(req.file){

      const filename = req.file.filename

sqlmap.query(` INSERT INTO admission (domain, uuid, session, find_date, name, gender, avatar, dob_number, birth_date, father_name, mother_name, blood_group, religion, telephone, email, guardian_name, address, hobbies, last_education, admission_class, docs, comment)
VALUES (?, ?, ?, ?, ?, ?, ?, ?, ?, ?, ?, ?, ?, ?, ?, ?, ?, ?, ?, ?, ?, ?) `, 
[ res.locals.hostname, uuid, session, findDate, studentName, gender, avatar, dobNumber, birthDate, fatherName, motherName,
bloodGroup, Religion, telephone, Email, guardianName, Address, Hobbies, lastEducation, admissionClass, filename, comment ], (err, result) => {

    if (err) console.log(err.sqlMessage)

    else {

      req.flash("msg", "Admission submited successfully! wait for response! we sent email as soon as.")
      req.flash("alert", "success")

      res.redirect("/pu/admission/step1")

    }

  })

        }
    
 }



exports.admin_admission_page = (req, res) => {



  sqlmap.query(`SELECT uuid, ID, name, find_date, avatar FROM admission WHERE domain=? ORDER BY ID DESC`,[res.locals.hostname], (err, info) => {


    res.render("admin/admission_report", { info })


  })



}

exports.admin_admission_student_page = (req, res) => {
const {uuid}= req.params;
  sqlmap.query(`SELECT * FROM admission WHERE domain=? AND uuid=?`,[res.locals.hostname, uuid], (err, info) => {


    res.render("admin/admission_student_page", { info })


  })



}





exports.admin_admission_info = (req, res) => {

  const { ID } = req.body;

  sqlmap.query(`SELECT * FROM admission WHERE domain=? AND  ID=?`,[res.locals.hostname, ID], (err, info) => {



    let avatar = `${info[0].avatar}`

    let html = `
              <strong>Personal Information</strong> <br> 
               <h5 class="card-title">${info[0].name} </h5>
               <p class="badge border bg-light text-dark">Gender: ${info[0].gender}</p> 
               <p class="badge border bg-light text-dark">Email: ${info[0].email}</p> 
               <p class="badge border bg-light text-dark">Contact: ${info[0].telephone}</p> 
               <p class="badge border bg-light text-dark">Birth Date: ${info[0].birth_date}</p> 
               <br>
               <strong>Education Information</strong> <br>
               <p class="badge border bg-light text-dark">Last Education: ${info[0].last_education}</p> 
               <p class="badge border bg-light text-dark">Join Group: ${info[0].join_group}</p> 
               <p class="badge border bg-light text-dark"> Roll No: ${info[0].roll}</p> 
               <p class="badge border bg-light text-dark">Reg No: ${info[0].reg}</p> 
               <p class="badge border bg-light text-dark">Board: ${info[0].board}</p> 
               <p class="badge border bg-light text-dark">Passing Year: ${info[0].passing_year}</p> 

           <br>

               <strong>Extra Information</strong> <br>
               <p class="badge border bg-light text-dark">Father Name: ${info[0].father_name}</p> 
               <p class="badge border bg-light text-dark">Mother Name: ${info[0].mother_name}</p> 
               <p class="badge border bg-light text-dark">Guardian Name: ${info[0].guardian_name}</p> 
               <p class="badge border bg-light text-dark">Reliigion: ${info[0].religion}</p> 
               <p class="badge border bg-light text-dark">Address: ${info[0].address}</p> 
               <p class="badge border bg-light text-dark">Hobbies: ${info[0].hobbies}</p> 
               <p class="badge border bg-light text-dark">Comment: ${info[0].comment}</p> 
               `


    res.send({ html, avatar })




  })

}



exports.admin_admission_accept = (req, res) => {

  const { email, ID } = req.body;

  const transporter = nodemailer.createTransport({

    host: process.env.email_host,
    port: process.env.email_port,
    auth: {
      user: process.env.email_address,
      pass: process.env.email_password
    }

  })


  let mailOutput = `<html> 
  <h2>Welcome to Our School</h2><h4 style="background-color: slateblue; color: white;">Congatulations! you are admission submited...</h4>
  </html>`

  let mailOptions = {
    from: process.env.email_address,
    to: email,
    subject: "Admission Submited!",
    text: "your are accepted!",
    html: mailOutput
  }



  transporter.sendMail(mailOptions, (err, info) => {

    if (err) {

      req.flash("msg", "Something Wrong! please try again...")

      res.send({ msg: 'Something was wrong! pls try again!', alert: 'warning' })
    }

    else res.send({ msg: 'Admission Submited Sent!', alert: 'success' })




  })

}


exports.admin_admission_reject = (req, res) => {

  const { ID, email } = req.body;

  sqlmap.query(`DELETE FROM admission WHERE domain=? AND  ID=?`,[res.locals.hostname, ID], (err, info) => {

    if (err) console.log(err.sqlMessage);
    else {
      const transporter = nodemailer.createTransport({

        host: process.env.email_host,
        port: process.env.email_port,
        auth: {
          user: process.env.email_address,
          pass: process.env.email_password
        }

      })


      let mailOutput = `<html> 
    <h2>sorry!</h2><
    h4 style="background-color: slateblue; color: white;">your addmission is not approval! </h4>
    </html>`

      let mailOptions = {
        from: process.env.email_address,
        to: email,
        subject: "Admission rejected!",
        text: "your are not accepted!",
        html: mailOutput
      }



      transporter.sendMail(mailOptions, (err, info) => {

        if (err) {

          req.flash("msg", "Something Wrong! please try again...")

          res.send({ msg: 'Something was wrong! pls try again!', alert: 'warning' })
        }

        else res.send({ msg: "<strong class='alert alert-success'>Reject Admission Successfully!</strong>" })





      })

    }

  })



}
