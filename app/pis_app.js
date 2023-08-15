const express = require("express")
const app = express()

const { sqlmap } = require("../server")


exports.teacher_pis_page_mark_get= (req, res)=>{
  var {class_section, subject, page}= req.query;
  if(class_section==undefined) {
    var {className, sectionName}= req.query
  } else {
  var class_section_temp= class_section.split('$%&')
 var className= class_section_temp[0];
 var sectionName= class_section_temp[1];
  }
 if(page==1) var offset=0; else var offset=page-1; const limit= 15; 

 sqlmap.query(`SELECT COUNT(student_id) as student_row FROM students WHERE class='${className}' AND section='${sectionName}'`
 ,(err_row, count_row)=>{
   if(err_row) console.log(err_row.sqlMessage);
  const student_row= count_row[0].student_row;
  const pagination= student_row / limit 
  if(Math.ceil(pagination)==page) var nextbtnstatus= 'disabled'; else nextbtnstatus=''
  if(page==1) var prevbtnstatus= 'disabled';  else prevbtnstatus=''

 
      sqlmap.query(`SELECT student_id, name, avatar, roll FROM students WHERE class='${className}' AND section='${sectionName}'  ORDER BY roll LIMIT ${limit} OFFSET ${offset*limit}`,
      (errStudent, infoStudentData)=>{

        sqlmap.query(`SELECT subject_code, subject FROM subject WHERE class='${className}'  AND subject='${subject}'`
        , (errSubjectCode, infoSubjectCode)=>{
         const subject_code= infoSubjectCode[0].subject_code;

      if(infoStudentData){
          const infoStudent= infoStudentData;
          res.render('pis/pis-page-mark-teacher', {infoStudent, className, sectionName, subject, subject_code, pagination, page, nextbtnstatus, prevbtnstatus})
      }
      else res.send('<center><h1>student not found!</h1></center>')
  
  
      })
      })

      })
}



exports.teacher_pis_mark_post= (req, res)=>{
  const teacher_pdsid= req.session.pdsId; 
  const session= new Date().getUTCFullYear();
  const {className,sectionName, pi, student_id, roll, name, avatar, chapter, subject, checkout, bg_color}= req.body;

  sqlmap.query(`SELECT student_id, pi FROM pic_mark WHERE  class='${className}' AND section='${sectionName}' AND student_id=${student_id} AND subject='${subject}' AND chapter='${chapter}'`, (err_pic, info_pic)=>{
    if(err_pic) console.log(err_pic.sqlMessage);
    if(info_pic.length>0){
      const pic_pi= info_pic[0].pi;
      sqlmap.query(`SELECT student_id FROM pis_mark WHERE  class='${className}' AND section='${sectionName}' AND student_id=${student_id} AND subject='${subject}' AND chapter='${chapter}'`,
      (errCheck, infoCheck)=>{
         if(errCheck) console.log(errCheck.sqlMessage);
         if(infoCheck===undefined || infoCheck.length===0){
   
             sqlmap.query(`INSERT INTO pis_mark (session, class, section, student_id, subject, roll, name, avatar, chapter, pi, checkout, bg_color)
             VALUES(${session}, '${className}', '${sectionName}',  ${student_id}, '${subject}', ${roll}, '${name}', '${avatar}', '${chapter}', ${pi}, '${checkout}', '${bg_color}')`, (errPost, nextPost)=>{
                 if(errPost) console.log(errPost.sqlMessage);
                 else { 
   
                   todo_transcipt( className, teacher_pdsid, roll, sectionName,  student_id, subject, chapter, name, avatar, pi, pic_pi, checkout)
                     
                     res.send({msg: 'success'}) 
   
                 }
             })
         }
           else console.log(undefined+'!503');
     })

    }

    else res.send({msg: 'উক্ত বিষয় এবং অধ্যায়ের পি আই সি মার্ক আগে সম্পূর্ণ করতে হবে! তারপার পি আই এস করতে হবে! '})
  })



}



exports.teacher_pis_mark_checkout= (req, res)=>{
  const teacher_pdsid= req.session.pdsId;

  const {className, sectionName, subject}= req.body;
  sqlmap.query(`SELECT checkout, bg_color FROM pis_mark WHERE class='${className}' AND section='${sectionName}' AND subject='${subject}'`, (errFind, info_checkout)=>{
      if(errFind) console.log(errFind.sqlMessage);
      res.send({info_checkout})
  })
}




exports.teacher_pis_subject_get=(req, res)=>{


   const {className}= req.body;
 
     sqlmap.query( `SELECT subject FROM subject WHERE class='${className}' GROUP BY subject ORDER BY ID DESC`, (err, info)=>{
 
       if (err) console.log(err.sqlMessage);
 
       let listData= 
       `
       <option selected value="" disabled >বিষয় নির্বাচন করুন</option>
       `
       for (const i in info) {

     listData+= `<option vlaue='${info[i].subject}'>${info[i].subject}</option>`

       }
 
       res.send({listData})
 
     } )
 
 }





 exports.privet_pis_report_student_get= ( req , res)=>{
  const {className, sectionName}= req.params;

  sqlmap.query(`SELECT student_id, name, avatar FROM pis_mark WHERE class='${className}' AND section='${sectionName}'
   GROUP BY student_id ORDER BY ID DESC`
  ,(errStudent, infoStudentData)=>{
  if(infoStudentData.length>0){
      const infoStudent= infoStudentData;
      res.render('pis/pis-page-report-student-privet', {infoStudent, className, sectionName})
  }
  else res.send('<center><h1>student not found!</h1></center>')


  })

}




exports.privet_pis_report_get= ( req , res)=>{
  const {className, sectionName, student_id}= req.params;

  sqlmap.query(`SELECT * FROM subject WHERE class='${className}' GROUP BY subject ORDER BY subject`, (err_subject, infoSubject)=>{
  sqlmap.query(`SELECT student_id, name, avatar, pi, bg_color FROM pis_mark WHERE class='${className}' AND section='${sectionName}'
   AND student_id='${student_id}'`
  ,(errStudent, infoStudentData)=>{
  if(infoStudentData){
      const infoStudent= infoStudentData;
      res.render('pis/pis-page-report-get-privet', {infoStudent, infoSubject, student_id, className, sectionName})
  }
  else res.send('<center><h1>student not found!</h1></center>')


  })
  })

}






exports.privet_pis_report_get_checkout= (req, res)=>{
  const session= new Date().getUTCFullYear();

  const {className, sectionName, student_id}= req.body;
  sqlmap.query(`SELECT checkout, bg_color FROM pis_mark WHERE student_id='${student_id}' AND class='${className}' AND section='${sectionName}' ORDER BY student_id`, (errFind, info_checkout)=>{
      if(errFind) console.log(errFind.sqlMessage);
      else {  
          
          res.send({info_checkout}) 
      }
  })
}




function todo_transcipt(className, teacher_pdsid, roll, sectionName,  student_id, subject, chapter, name, avatar, pi, pic_pi, checkout){
  const session= new Date().getUTCFullYear(); 
  if(chapter=='A1' || chapter=='A2' || chapter=='A3' || chapter=='A4' || chapter=='A5' || chapter=='A6') var transciptName= 'half'; else var transciptName= 'full';
  if(pi>pic_pi) var final_pi= pi; else var final_pi=  pic_pi; if(final_pi==1) var bg_color= 'bg-danger'; else if(final_pi==2) var bg_color='bg-warning'; else bg_color='bg-success';
  sqlmap.query(`SELECT subject, chapter, student_id FROM transcript_report WHERE class='${className}' AND section='${sectionName}' AND 
  subject='${subject}' AND chapter='${chapter}' AND student_id=${student_id}`, (err_find, info_find)=>{
    if(err_find) console.log(err_find.sqlMessage);
    if(info_find.length==0 || info_find==undefined){

    
      sqlmap.query(`INSERT INTO transcript_report (session, class, section, subject, chapter,
        teacher_pdsid, student_id, roll, name,  transcript_name, pi, bg_color, checkout, avatar)
      VALUES(${session},'${className}', '${sectionName}', '${subject}', '${chapter}', '${teacher_pdsid}',
    '${student_id}', '${roll}', '${name}',  '${transciptName}', '${final_pi}', '${bg_color}', '${checkout}',  '${avatar}')`, (errTranscipt, todoTranscipt)=>{
     if(errTranscipt) console.log(errTranscipt.sqlMessage);
     else console.log('transcipt inserted!.');
   })

    }
  })

}