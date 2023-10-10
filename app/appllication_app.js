const {app, express, sqlmap, nodemailer, multer, session}= require("../server")

const locationApplication= multer.diskStorage({
    destination: (req, file, cb)=>{
     cb(null, "./public/docs/application/")
    } ,
  
    filename: (req, file, cb)=>{
  
      cb(null, new Date().getTime()+"_"+file.originalname)
    },
    
  })



  
exports.multer_upload_docs= multer({
  storage: locationApplication,

  limits: {fileSize: 10000000},
  fileFilter: (req, file, cb)=>{

    if(file.mimetype=="application/pdf")
    {
      cb(null, true)
    } 
    else 
    {
        cb(new Error("file extension allow only pdf"))
    }
    
  }

})


  


  

exports.student_application_post =  (req, res)=>{
let  {subject, comment}= req.body;
let student_uuid= req.session.student_uuid;

if(req.file) var attachmentApplication= req.file.filename;
else var attachmentApplication= "demo.pdf"


sqlmap.query(`SELECT * FROM students WHERE domain='${req.hostname}' AND  student_uuid='${student_uuid}'`, (errMain, infoMain)=>{
if(errMain) console.log(errMain.sqlMessage+"+++");

sqlmap.query(
  `INSERT INTO application (
    domain,
    subject,
     comment, 
     attachment,
      name, 
      student_uuid, 
      roll, 
      class, 
      section, 
      avatar
      )
   VALUES (
    "${req.hostname}",
    "${subject}",
     "${comment}",
      "${attachmentApplication}", 
      "${infoMain[0].name}", 
       "${infoMain[0].student_uuid}",
    "${infoMain[0].roll}", 
    "${infoMain[0].class}",
     "${infoMain[0].section}", 
     "${infoMain[0].avatar}"
     )`,

    (err, data)=>{

 if(err) console.log(err+"______");

 else
 {
   res.send({msg: "Application Sent Successfully!", alert: 'text-success'})
 }

});
})



}




exports.student_application_get = (req,res)=>{
  let student_uuid= req.session.student_uuid

let sql = `SELECT * FROM  application WHERE domain='${req.hostname}' AND  student_uuid='${student_uuid}' ORDER BY ID DESC`
sqlmap.query(sql,(err,info)=>{
  if(err) console.log(err.sqlMessage);


  else
  {
    let html= "";
    for (const i in info) {
           html += `
           <ul class="list-group  ">

           <li  class="list-group-item mt-1 list-group-item-danger"><a class="text-dark fw-bold page-link" href="/student/application/download?id=${info[i].ID}">${info[i].subject} 
           <span title="Download" class="badge bg-light text-dark">${info[i].at_date.toString().substring(0, 25)} - click to download</span></a>
           
           <span class="badge badge-light text-primary">${info[i].replay} </span>

           </li>
      
    
              </ul>
           `

          
    }


    res.send({html: html})
    
  }


});

}




exports.admin_application_download= (req, res)=>{


let ID=  req.query.id

let sql= `SELECT attachment FROM  application WHERE domain='${req.hostname}' AND  ID="${ID}"`

sqlmap.query(sql, (err, info)=>{

if(err) res.send({msg: "Attachment Not Found!"})

else
{
res.download(`./public/docs/application/${info[0].attachment}`)
}
})


}



exports.student_application_download= (req, res)=>{



let ID=  req.query.id

let sql= `SELECT attachment FROM  application WHERE domain='${req.hostname}' AND  ID="${ID}"`

sqlmap.query(sql, (err, info)=>{

if(err) res.send({msg: "Attachment Not Found!"})

else
{
res.download(`./public/docs/application/${info[0].attachment}`)
}
})

}





exports.admin_application_get= (req,res)=>{

let sql = `SELECT * FROM  application WHERE domain='${req.hostname}' ORDER BY ID DESC`
sqlmap.query(sql,(err,info)=>{
  if(err) console.log(err.sqlMessage);


  else
  {
    let html= "";
    for (const i in info) {
           html += `
           <ul class="list-group  ">

           <li class="list-group-item mt-1 list-group-item-secondary"><a class=" btn-link text-dark page-link" href="/admin/application/download?id=${info[i].ID}">${info[i].subject} <span class="badge bg-light text-danger">${info[i].at_date.toString().substring(0, 25)}</span></a> 
           <br>
           <img src="/image/student/${info[0].avatar}" height="40px" class=" rounded"  width="40px" alt="404"> <br>
    
   
           <span class=" badge bg-light text-dark">${info[0].class} - ${info[0].section}</span>
           <span class=" badge bg-light text-dark">${info[0].name} (${info[0].roll})</span>
           <span class="d-none badge bg-light text-dark">${info[0].at_date.toLocaleString('en-ZA').substring(0,10)}</span>
           <form action="/admin/application/replay" id="replayForm"  method="post">
           <div class=" btn-group">
               <input type="hidden" value="${info[i].ID}" name="ID">
               <textarea name="replay" id="" cols="10" rows="2" placeholder="Replay" required>${info[i].replay}</textarea>
                <button id="replaySent" class=" btn-self p-0">Sent</button>
           </div>
          </form>
           </li>
      
    
              </ul>
           `

          
          
    }



    res.send({html: html})
    
  }


});

    
}




exports.admin_application_replay= (req, res)=>{

let {ID, replay}= req.body;
let sql= `UPDATE  application SET replay="${replay}" WHERE domain='${req.hostname}' AND  ID=${ID}`
sqlmap.query(sql, (err, next)=>{
req.flash("alert", "success")
req.flash("msg", "Replay Sent!")
if(err) console.log(err.sqlMessage);

else res.render("admin/application_page", {msg: req.flash("msg"), alert: req.flash("alert")})

})


}