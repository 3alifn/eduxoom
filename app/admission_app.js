const express = require("express")
const app = express()

const { sqlmap, nodemailer } = require("../server")

exports.public_admission_step1 = (req, res) => {

  res.render("admission/admission_form_public", { pastAdmission: true, nextAdmission: false, data: false, msg: req.flash("msg"), alert: req.flash("alert") })


}


exports.public_admission_step2 = (req, res) => {

  let data = req.body;


  res.render("admission/admission_form_public", { nextAdmission: true, pastAdmission: false, data })



}




exports.public_admission_post = (req, res) => {

  let { lastEducation, roll, regNumber, Board, passingYear, joinGroup } = req.body;
  let data = req.body.pastData.split("$%");

 let yearName= new Date().getUTCFullYear();
    let findDate= new Date().toLocaleDateString();


  sqlmap.query(`
  INSERT INTO admission (find_date, name, dob_number, birth_date, gender, father_name, mother_name, blood_group, religion, telephone, email, guardian_name, address, hobbies, yearly_income, last_education, roll, reg, board, passing_year, join_group) 
     
  VALUES ( "${findDate}",  "${data[0]}", "${data[1]}","${data[2]}","${data[3]}","${data[4]}","${data[5]}", "${data[6]}","${data[7]}", "${data[8]}","${data[9]}","${data[10]}","${data[11]}","${data[12]}", "${data[13]}","${lastEducation}", "${roll}", "${regNumber}", "${Board}", "${passingYear}", "${joinGroup}")

  `, (err, next) => {


    if (err) console.log(err.sqlMessage)



    else {

      req.flash("msg", "Admission submited successfully! wait for response! we sent email as soon as.")
      req.flash("alert", "success")

      res.redirect("/pu/admission/step1")

    }

  })
  

}







exports.admin_admission_page= (req, res)=>{



    sqlmap.query(`SELECT * FROM admission ORDER BY ID DESC`, (err, info)=>{

      if(info.length>0){
      

        res.render("admin/admission_report", {info})
          
      }

    else res.send("<center><h1>No data found!</h1></center>")
})

  

  }





exports.admin_admission_info= (req, res)=>{

  let ID= req.body.dataID;

          sqlmap.query(`SELECT * FROM admission WHERE ID="${ID}"`, (err, info)=>{
     
          

              let avatar= `${info[0].avatar}`

              let html= `
               <h5 class="card-title">${info[0].name} </h5>
               <p class="badge bg-light text-dark">Gender: ${info[0].gender}</p> 
               <p class="badge bg-light text-dark">Email: ${info[0].email}</p> 
               <p class="badge bg-light text-dark">Contact: ${info[0].telephone}</p> 
               <p class="badge bg-light text-dark">Birth Date: ${info[0].birth_date}</p> 
               <br>
               <strong>Education Information</strong> <br>
               <p class="badge bg-light text-dark">Last Education: ${info[0].last_education}</p> 
               <p class="badge bg-light text-dark"> Roll No: ${info[0].roll}</p> 
               <p class="badge bg-light text-dark">Reg No: ${info[0].reg}</p> 
               <p class="badge bg-light text-dark">Board: ${info[0].board}</p> 
               <p class="badge bg-light text-dark">Passing Year: ${info[0].passing_year}</p> 

           <br>

               <strong>Extra Information</strong> <br>
               <p class="badge bg-light text-dark">Father Name: ${info[0].father_name}</p> 
               <p class="badge bg-light text-dark">Mother Name: ${info[0].mother_name}</p> 
               <p class="badge bg-light text-dark">Guardian Name: ${info[0].guardian_name}</p> 
               <p class="badge bg-light text-dark">Reliigion: ${info[0].religion}</p> 
               <p class="badge bg-light text-dark">Address: ${info[0].address}</p> 
               <p class="badge bg-light text-dark">Hobbies: ${info[0].hobbies}</p> 
               <p class="badge bg-light text-dark">Yearly Income: ${info[0].yearly_income}</p> 
               `
  
             
              res.send({html, avatar})

          

              
  })

  }



exports.admin_admission_accept = (req, res) => {

  let email = req.body.email

      
  const transporter= nodemailer.createTransport({
  
    host: process.env.email_host,
    port: process.env.email_port,
    auth: {
      user: process.env.email_address,
      pass: process.env.email_password
    }

  })

  
  let mailOutput= `<html> 
  <h2>Welcome to Our School</h2><
  h4 style="background-color: slateblue; color: white;">Congatulations! you are submited
  </h4>
  </html>`

  let mailOptions = {
    from: process.env.email_address,
    to: email,
    subject: "Admission Submited!",
    text: "your are accepted!",
    html: mailOutput
  }


  
  transporter.sendMail(mailOptions, (err, info)=>{
    
    if(err) {

      req.flash("msg", "Something Wrong! please try again...")
       
      res.send({msg: 'Something was wrong! pls try again!', alert: 'warning'})
     }
    
     else res.send({msg: 'Admission Submited Sent!', alert: 'success'})

  


})

}


exports.admin_admission_reject = (req, res) => {

  let ID = req.body.dataID


  let sql = `DELETE FROM admission WHERE ID=${ID}`

  sqlmap.query(sql, (err, info) => {

    if (err) console.log(err.sqlMessage);
    else res.send({ msg: "<strong class='alert alert-success'>Reject Admission Successfully!</strong>" })

  })



}
