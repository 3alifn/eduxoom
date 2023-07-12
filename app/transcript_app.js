
const express = require("express")
const app = express()
const { sqlmap , puppeteer, fs} = require("../server")




// privet transcript router.....
exports.privet_transcript_report_student_get= ( req , res)=>{
  const {className, sectionName}= req.params;

  sqlmap.query(`SELECT student_id, name, avatar FROM transcript_report WHERE class='${className}' AND section='${sectionName}'
   GROUP BY student_id  ORDER BY ID DESC`
  ,(errStudent, infoStudentData)=>{
  if(infoStudentData.length>0){
      const infoStudent= infoStudentData;
      res.render('transcript/transcript-page-report-student-privet', {infoStudent, className, sectionName})
  }
  else res.send('<center><h1>student not found!</h1></center>')


  })

}




const teacher_bi_transcript_post_update= (className, sectionName, student_id)=>{

  sqlmap.query(`SELECT * FROM bi_catagory GROUP BY catagory_code ORDER BY ID`, (err_catagory, infoCatagory)=>{

  for (let index = 0; index < infoCatagory.length; index++) {
      sqlmap.query(`SELECT count(bi) as bi FROM bi_transcript WHERE class='${className}' AND section='${sectionName}' AND student_id='${student_id}' AND catagory='${infoCatagory[index].catagory_code}' AND bi =1`,(err_bi_danger, info_bi_danger)=>{
          if(err_bi_danger) console.log(err_bi_danger.sqlMessage);
          
          sqlmap.query(`SELECT count(bi) as bi FROM bi_transcript WHERE class='${className}' AND section='${sectionName}' AND student_id='${student_id}' AND catagory='${infoCatagory[index].catagory_code}' AND bi =2`,(err_bi_warning, info_bi_warning)=>{
              if(err_bi_warning) console.log(err_bi_warning.sqlMessage);
      
              sqlmap.query(`SELECT count(bi) as bi FROM bi_transcript WHERE class='${className}' AND section='${sectionName}' AND student_id='${student_id}' AND catagory='${infoCatagory[index].catagory_code}' AND bi =3`,(err_bi_success, info_bi_success)=>{
      
      if(err_bi_success) console.log(err_bi_success.sqlMessage);
      
        if(info_bi_success[0].bi>=info_bi_warning[0].bi && info_bi_success[0].bi>=info_bi_danger[0].bi){
          var bg_color= 'bg-success' ; var bi_point= 3;
          
        }
      
       else if(info_bi_warning[0].bi>=info_bi_danger[0].bi){
          var bg_color= 'bg-warning'; var bi_point= 2;
          
        }
      
        else {
          var bg_color= 'bg-danger'; var bi_point= 1;
        }
      
       sqlmap.query(`UPDATE bi_transcript SET bi_point='${bi_point}', bg_color='${bg_color}' WHERE student_id='${student_id}' AND catagory='${infoCatagory[index].catagory_code}'`
       ,(errUpdate, infoUpdate)=>{
      
          if(errUpdate) console.log(errUpdate.sqlMessage);
          // else console.log('updated...'+bi_point +' '+ bg_color);
       })
      

              })
      
          })
      
      })

}

  })

}



exports.privet_transcript_report_get= ( req , res)=>{
  const {className, sectionName, student_id}= req.params;
  teacher_bi_transcript_post_update(className, sectionName, student_id)

  sqlmap.query(`SELECT * FROM bi_catagory GROUP BY catagory_name ORDER BY ID`, (err_catagory, infoCatagory)=>{

  sqlmap.query(`SELECT * FROM subject WHERE class='${className}' GROUP BY subject ORDER BY subject`, (err_subject, infoSubject)=>{

    sqlmap.query(`SELECT student_id, name, avatar, pi, bg_color FROM transcript_report WHERE class='${className}' AND section='${sectionName}'
    AND student_id='${student_id}'`
    ,(errStudent, infoStudent)=>{

  sqlmap.query(`SELECT student_id, name, avatar, pi, bg_color FROM transcript_report WHERE class='${className}' AND section='${sectionName}'
   AND student_id='${student_id}' AND transcript_name='half'`
  ,(errStudentHalf, infoStudentHalf)=>{

if(errStudentHalf) console.log(errStudentHalf.sqlMessage);

sqlmap.query(`SELECT student_id, name, avatar, pi, bg_color FROM transcript_report WHERE class='${className}' AND section='${sectionName}'
AND student_id='${student_id}' AND transcript_name='full'`
   ,(errStudentFull, infoStudentFull)=>{
 if(errStudent) console.log(errStudent.sqlMessage);

  if(infoStudentHalf || infoStudentFull){
      res.render('transcript/transcript-page-report-get-privet', {infoStudentHalf, infoStudentFull, infoCatagory, infoStudent, infoSubject, student_id, className, sectionName})
  }
  else res.send('<center><h1>student not found!</h1></center>')


  })
  })
  })

  })
  })

}


exports.privet_transcript_report_get_checkout= (req, res)=>{

  const {className, sectionName, student_id}= req.body;
  sqlmap.query(`SELECT pi, checkout, bg_color FROM transcript_report WHERE student_id='${student_id}' AND class='${className}' AND section='${sectionName}' ORDER BY student_id`, (errFind, info_checkout)=>{
      if(errFind) console.log(errFind.sqlMessage);
      else {  
          res.send({info_checkout}) 
      }
  })
}


// admin transcript router....

exports.admin_transcript_report_student_get= ( req , res)=>{
  const {className, sectionName}= req.params;

  sqlmap.query(`SELECT student_id, name, avatar FROM transcript_report WHERE class='${className}' AND section='${sectionName}'
  AND at_status='incomplete' GROUP BY student_id  ORDER BY ID DESC`
  ,(errStudent, infoStudentData)=>{
  if(infoStudentData.length>0){
      const infoStudent= infoStudentData;
      res.render('admin/transcript-page-report-student', {infoStudent, className, sectionName})
  }
  else res.send('<center><h1>student not found!</h1></center>')


  })

}





exports.admin_transcript_report_get= ( req , res)=>{
  var {className, sectionName, student_id}= req.params; 
  const {student_offset}= req.query; const init_student= student_id;
  if(student_offset==undefined) var offset= 0; if(student_id=='auto') var offset= student_offset;  
  if(student_id=='auto')   var findStudent= `SELECT student_id, name, avatar, pi, bg_color FROM transcript_report WHERE class='${className}' AND section='${sectionName}' AND at_status='incomplete' GROUP BY student_id  ORDER BY ID DESC LIMIT 1 OFFSET ${offset}`
  else  var findStudent= `SELECT student_id, name, avatar, pi, bg_color FROM transcript_report WHERE class='${className}' AND section='${sectionName}' AND student_id='${student_id}' AND at_status='incomplete'`
  sqlmap.query(`SELECT * FROM bi_catagory GROUP BY catagory_name ORDER BY ID`, (err_catagory, infoCatagory)=>{

sqlmap.query(`SELECT * FROM subject WHERE class='${className}' GROUP BY subject ORDER BY subject`, (err_subject, infoSubject)=>{
sqlmap.query(`SELECT student_id FROM transcript_report WHERE class='${className}' AND section='${sectionName}' GROUP BY student_id`, (err_row, info_row)=>{
 if(err_row) console.log(err_row.sqlMessage);

sqlmap.query( findStudent,(errStudent, infoStudent)=>{
 if(errStudent) console.log(errStudent.sqlMessage);

  if(infoStudent.length>0){  
    
    const student_id= infoStudent[0].student_id; 
    if(info_row.length==parseInt(offset)+1) var btnstatus= 'disabled'; else var btnstatus=''; if(init_student=='auto') var offsetPlus= parseInt(offset)+1; else var offsetPlus= 0;  
    teacher_bi_transcript_post_update(className, sectionName, student_id)
      res.render('admin/transcript-page-report-get', {infoStudent, infoCatagory, btnstatus, offsetPlus, infoSubject, student_id, className, sectionName})
  }
  else res.send('<center><h1>student not found!</h1></center>')


  })

  })

  })
  })

}



exports.admin_transcript_report_get_checkout= (req, res)=>{

  const {className, sectionName, student_id}= req.body;
  sqlmap.query(`SELECT pi, checkout, bg_color FROM transcript_report WHERE student_id='${student_id}' AND class='${className}' AND section='${sectionName}' ORDER BY student_id`, (errFind, info_checkout)=>{
      if(errFind) console.log(errFind.sqlMessage);
      else {  
          res.send({info_checkout}) 
      }
  })
}


// transcript accept or dropped........


exports.admin_transcript_final_card_passed_result= (req, res)=>{
  const {className, sectionName, student_id} = req.body;
  const session= new Date().getUTCFullYear();
  const at_status= 'passed'
  sqlmap.query(`SELECT * FROM students WHERE student_id=${student_id} AND class='${className}' AND section='${sectionName}'`,(errStudent, infoStudent)=>{
    if(errStudent) console.log(errStudent.sqlMessage);

    sqlmap.query(`INSERT INTO transcript_origin (session, class, section, student_id, name, roll, at_status, avatar)
    VALUES(${session}, '${className}', '${sectionName}', ${student_id}, '${infoStudent[0].name}', ${infoStudent[0].roll}, '${at_status}', '${infoStudent[0].avatar}')`
    , (errUp, infoUp)=>{
     if(errUp) console.log(errUp.sqlMessage);
 
    else {
      sqlmap.query(`UPDATE transcript_report SET at_status='finished' WHERE class='${className}' AND student_id=${student_id}`, (errUpdate, nextUpdate)=>{
        if(errUpdate) console.log(errUpdate.sqlMessage);
  
        res.send({alert: 'success', msg: 'উক্ত ছাত্রকে উত্তীর্ন করা হয়েছে!'})
       })
    }
 
 
    })

  })


}




exports.admin_transcript_final_card_drop_result= (req, res)=>{
  const {className, sectionName, student_id} = req.body;
  const session= new Date().getUTCFullYear();
  const at_status= 'dropped'

  sqlmap.query(`SELECT * FROM students WHERE student_id=${student_id} AND class='${className}' AND section='${sectionName}'`,(errStudent, infoStudent)=>{
    if(errStudent) console.log(errStudent.sqlMessage);

    sqlmap.query(`INSERT INTO transcript_origin (session, class, section, student_id, name, roll, at_status, avatar)
    VALUES(${session}, '${className}', '${sectionName}', ${student_id}, '${infoStudent[0].name}', '${infoStudent[0].roll}', '${at_status}', '${infoStudent[0].avatar}')`
    , (errUp, infoUp)=>{
     if(errUp) console.log(errUp.sqlMessage);
 
     sqlmap.query(`UPDATE transcript_report SET at_status='finished' WHERE class='${className}' AND section='${sectionName}' AND student_id=${student_id}`, (errUpdate, nextUpdate)=>{
      if(errUpdate) console.log(errUpdate.sqlMessage);

      res.send({alert: 'success', msg: 'উক্ত ছাত্রকে অনউত্তীর্ন করা হয়েছে!'})
     })
 
 
    })

  })
 
 
}





exports.admin_transcript_final_card_passed_student_list= (req, res)=>{
  const {className, sectionName} = req.params
  sqlmap.query(`SELECT * FROM transcript_origin WHERE class='${className}' AND section='${sectionName}' AND at_status='passed' GROUP BY student_id  ORDER BY ID DESC`,(errStudent, infoStudent)=>{
    if(errStudent) console.log(errStudent.sqlMessage);

    
    if(infoStudent.length>0){
      res.render('admin/transcript_final_card_student_list', {infoStudent, className, sectionName})
    }

    else res.send('<center><h1>No Student Found!</h1></center>')


  })
 
 
}





exports.admin_transcript_final_card_drop_student_list= (req, res)=>{

  const {className, sectionName} = req.params;
  sqlmap.query(`SELECT * FROM transcript_origin WHERE class='${className}' AND section='${sectionName}' AND at_status='dropped' GROUP BY student_id  ORDER BY ID DESC`,(errStudent, infoStudent)=>{
    if(errStudent) console.log(errStudent.sqlMessage);

    
    if(infoStudent.length>0){
      res.render('admin/transcript_final_card_student_list', {infoStudent, className, sectionName})
    }

    else res.send('<center><h1>No Student Found!</h1></center>')


  })
 
 
}





exports.admin_transcript_final_card_waiting_student_list= (req, res)=>{
  const {className, sectionName} = req.params;


  sqlmap.query(`SELECT * FROM transcript_report WHERE class='${className}' AND section='${sectionName}' AND at_status='incomplete' GROUP BY student_id  ORDER BY ID DESC`,(errStudent, infoStudent)=>{
    if(errStudent) console.log(errStudent.sqlMessage);

    
    if(infoStudent.length>0){

      res.render('admin/transcript_final_card_student_list', {infoStudent, className, sectionName})
    }

    else res.send('<center><h1>No Student Found!</h1></center>')


  })
 
 
}

