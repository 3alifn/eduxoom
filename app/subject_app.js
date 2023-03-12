
const express = require("express")
const app = express()

const { sqlmap } = require("../server");
// const { infoTeacher } = require("./teachers.manage");

exports.admin_subject_post= (req, res)=>{

    let { className, sectionName, subjectName, teacherName }=req.body;
  
//  let teacherTemp= teacherName.split("$%&")
 
//  let teacherPdsid= teacherTemp[1]
//  let teacherNameX= teacherTemp[0]

    
    for (let i = 0; i < subjectName.length; i++) {
  
     sqlmap.query(`INSERT INTO subject (class, section, subject) VALUES ("${className}", "${sectionName}", "${subjectName[i]}")`, (err, next)=>{
 
       if (err) console.log(err.sqlMessage);
 
   
 
     })
 
   }
 
 
    res.send({msg: 'Subject Added! Successfully', alert:'text-success'})
 
 
 }



exports.admin_subject_list= (req, res)=>{

    let {className, sectionName}= req.query;
    
   sqlmap.query(`SELECT pds_id, name, f_subject FROM teachers ORDER BY ID`, (errTeacher, infoTeacher)=>{
    if(errTeacher) console.log(errTeacher.sqlMessage);

    else 
    {

   

       sqlmap.query(`SELECT period_time FROM subject GROUP BY period_time ORDER BY period_time`, (errPT, infoPT)=>{
        if(errPT) console.log(errPT.sqlMessage);
        else 
        {
            sqlmap.query(`SELECT * FROM subject WHERE class="${className}" ORDER BY ID DESC`, (err, info)=>{
                if (err) console.log(err.sqlMessage);
                else res.render("admin/subject_page", {info, infoTeacher, infoPT, msg: req.flash("msg"), alert: req.flash("alert")})
              
            })
        }
       })
    }

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

 

  sqlmap.query(`SELECT f_subject, pds_id, name FROM teachers WHERE pds_id=(${teacherPdsid}) ORDER BY pds_id`, (err, info)=>{
    if(err) console.log(err.sqlMessage);
    else 
    {

        
        sqlmap.query(`UPDATE teachers SET f_subject="${info[0].f_subject.replaceAll("$%& "+subjectName, "")} $%& ${subjectName}" WHERE pds_id=${info[0].pds_id}`, (err, next)=>{
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
  })

  

}




exports.admin_subject_set_time= (req, res)=>{
    let {ID, periodTime}= req.body;



    sqlmap.query(`UPDATE subject SET period_time="${periodTime}" WHERE ID=${ID}`, (err, next)=>{
        if(err) console.log(err.sqlMessage);
     

        else 
        {
            req.flash("msg", "Teacher Selection Successfully!")
            req.flash("alert", "success")
            res.redirect("/admin/subject/page?className=Ten")

        }
    })
}








