
const express = require("express")
const app = express()

const { sqlmap, randomBytes } = require("../server");
// const { infoTeacher } = require("./teachers.manage");

exports.admin_subject_post= (req, res)=>{

    let { className, subjectName }=req.body;
  
//  let teacherTemp= teacherName.split("$%&")
 
//  let teacherPdsid= teacherTemp[1]
//  let teacherNameX= teacherTemp[0]
    
    for (let i = 0; i < subjectName.length; i++) {
    const randomString= randomBytes(10).toString('hex');
     sqlmap.query(`INSERT INTO subject (class, subject, subject_code) VALUES ("${className}", "${subjectName[i]}", "${randomString}")`, (err, next)=>{
 
       if (err) console.log(err.sqlMessage);
 
 
     })
 
   }
 
    res.send({msg: 'Subject Added! Successfully', alert:'text-success'})
 
 
 }



exports.admin_subject_list= (req, res)=>{

    let {className}= req.query; 
 

            sqlmap.query(`SELECT * FROM subject WHERE class="${className}" ORDER BY ID DESC`, (err, info)=>{
                if (err) console.log(err.sqlMessage);
                else res.render("admin/subject_page", {info, msg: req.flash("msg"), alert: req.flash("alert")})
              
            })
        
 }
 




exports.admin_subject_delete = (req, res)=>{

    let {ID}= req.body;

    sqlmap.query(`DELETE FROM subject WHERE ID=${ID}`, (err, next)=>{
        if(err) console.log(err.sqlMessage);
        else res.send({msg: "Subject Deleted!"})
    })

}





exports.admin_subject_select_teacher = (req, res)=>{

    let {teacherPdsid, className, sectionName, subjectName, ID}= req.body;

 

  sqlmap.query(`SELECT pds_id, name FROM teachers WHERE pds_id=(${teacherPdsid}) ORDER BY ID DESC`, (err, info)=>{
    if(err) console.log(err.sqlMessage);
    else 
    {


                sqlmap.query(`UPDATE  subject SET teacher_name="${info[0].name}", teacher_pdsid="${info[0].pds_id}" WHERE ID=${ID}`, (errLast, nextLast)=>{

                    if(errLast) console.log(errLast.sqlMessage);

                    else 
                    {


                        
                req.flash("msg", "Teacher Selection Successfully!")
                req.flash("alert", "success")
                res.redirect("/admin/subject/page?className=Ten")
            


                    }

                })



    }
  })

  

}




exports.admin_subject_set_time= (req, res)=>{
    let {ID, periodTime}= req.body;



    // sqlmap.query(`UPDATE subject SET period_time="${periodTime}" WHERE ID=${ID}`, (err, next)=>{
    //     if(err) console.log(err.sqlMessage);
     

    //     else 
    //     {
    //         req.flash("msg", "Teacher Selection Successfully!")
    //         req.flash("alert", "success")
    //         res.redirect("/admin/subject/page?className=Ten")

    //     }
    // })
}








