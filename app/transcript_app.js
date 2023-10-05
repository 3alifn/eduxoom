
const express = require("express")
const app = express()
const { sqlmap , fs} = require("../server");




// privet transcript router.....
exports.privet_transcript_report_student_get= ( req , res)=>{
  const {className, sectionName}= req.params;

  sqlmap.query(`SELECT student_id, name, roll, avatar FROM transcript_report WHERE domain='${req.hostname}' AND  class='${className}' AND section='${sectionName}'
   GROUP BY student_id  ORDER BY roll`
  ,(errStudent, infoStudentData)=>{
  if(infoStudentData.length>0){
      const infoStudent= infoStudentData;
      console.log(infoStudent[0].roll);
      res.render('transcript/transcript-page-report-student-privet', {infoStudent, className, sectionName})
  }
  else res.send('<center><h1>student not found!</h1></center>')


  })

}




const teacher_bi_transcript_post_update= (className, sectionName, student_id)=>{

  sqlmap.query(`SELECT * FROM bi_catagory WHERE domain='${req.hostname}' GROUP BY catagory_code ORDER BY ID`, (err_catagory, infoCatagory)=>{

  for (let index = 0; index < infoCatagory.length; index++) {
      sqlmap.query(`SELECT count(bi) as bi FROM bi_transcript WHERE domain='${req.hostname}' AND  class='${className}' AND section='${sectionName}' AND student_id='${student_id}' AND catagory='${infoCatagory[index].catagory_code}' AND bi =1`,(err_bi_danger, info_bi_danger)=>{
          if(err_bi_danger) console.log(err_bi_danger.sqlMessage);
          
          sqlmap.query(`SELECT count(bi) as bi FROM bi_transcript WHERE domain='${req.hostname}' AND  class='${className}' AND section='${sectionName}' AND student_id='${student_id}' AND catagory='${infoCatagory[index].catagory_code}' AND bi =2`,(err_bi_warning, info_bi_warning)=>{
              if(err_bi_warning) console.log(err_bi_warning.sqlMessage);
      
              sqlmap.query(`SELECT count(bi) as bi FROM bi_transcript WHERE domain='${req.hostname}' AND  class='${className}' AND section='${sectionName}' AND student_id='${student_id}' AND catagory='${infoCatagory[index].catagory_code}' AND bi =3`,(err_bi_success, info_bi_success)=>{
      
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
      
       sqlmap.query(`UPDATE bi_transcript SET bi_point='${bi_point}', bg_color='${bg_color}' WHERE domain='${req.hostname}' AND  student_id='${student_id}' AND catagory='${infoCatagory[index].catagory_code}'`
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

  sqlmap.query(`SELECT * FROM bi_catagory WHERE domain='${req.hostname}' GROUP BY catagory_name ORDER BY ID`, (err_catagory, infoCatagory)=>{

  sqlmap.query(`SELECT * FROM subject WHERE domain='${req.hostname}' AND  class='${className}' GROUP BY subject ORDER BY subject`, (err_subject, infoSubject)=>{

    sqlmap.query(`SELECT student_id, name, avatar, pi, bg_color, roll FROM transcript_report WHERE domain='${req.hostname}' AND  class='${className}' AND section='${sectionName}'
    AND student_id='${student_id}'`
    ,(errStudent, infoStudent)=>{

  sqlmap.query(`SELECT student_id, name, avatar, pi, bg_color FROM transcript_report WHERE domain='${req.hostname}' AND  class='${className}' AND section='${sectionName}'
   AND student_id='${student_id}' AND transcript_name='half'`
  ,(errStudentHalf, infoStudentHalf)=>{

if(errStudentHalf) console.log(errStudentHalf.sqlMessage);

sqlmap.query(`SELECT student_id, name, avatar, pi, bg_color FROM transcript_report WHERE domain='${req.hostname}' AND  class='${className}' AND section='${sectionName}'
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
  sqlmap.query(`SELECT pi, checkout, bg_color FROM transcript_report WHERE domain='${req.hostname}' AND  student_id='${student_id}' AND class='${className}' AND section='${sectionName}' ORDER BY student_id`, (errFind, info_checkout)=>{
      if(errFind) console.log(errFind.sqlMessage);
      else {  
          res.send({info_checkout}) 
      }
  })
}

exports.admin_transcript_report_get_checkout= (req, res)=>{

  const {className, sectionName, student_id}= req.body;
  sqlmap.query(`SELECT pi, checkout, bg_color FROM transcript_report WHERE domain='${req.hostname}' AND  student_id='${student_id}' AND class='${className}' AND section='${sectionName}' ORDER BY student_id`, (errFind, info_checkout)=>{
      if(errFind) console.log(errFind.sqlMessage);
      else {  
          res.send({info_checkout}) 
      }
  })
}


// admin transcript router....

exports.admin_transcript_report_student_get= ( req , res)=>{
  const {className, sectionName}= req.params;

  sqlmap.query(`SELECT student_id, name, roll, avatar FROM transcript_report WHERE domain='${req.hostname}' AND  class='${className}' AND section='${sectionName}'
  GROUP BY student_id  ORDER BY roll`
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
  if(student_id=='auto')   var findStudent= `SELECT student_id, name, avatar, pi, roll, bg_color FROM transcript_report WHERE domain='${req.hostname}' AND  class='${className}' AND section='${sectionName}'  GROUP BY student_id  ORDER BY ID DESC LIMIT 1 OFFSET ${offset}`
  else  var findStudent= `SELECT student_id, name, avatar, pi, roll, bg_color FROM transcript_report WHERE domain='${req.hostname}' AND  class='${className}' AND section='${sectionName}' AND student_id='${student_id}'`
  sqlmap.query(`SELECT * FROM bi_catagory WHERE domain='${req.hostname}' GROUP BY catagory_name ORDER BY ID`, (err_catagory, infoCatagory)=>{

sqlmap.query(`SELECT * FROM subject WHERE domain='${req.hostname}' AND  class='${className}' GROUP BY subject ORDER BY subject`, (err_subject, infoSubject)=>{
sqlmap.query(`SELECT student_id FROM transcript_report WHERE domain='${req.hostname}' AND  class='${className}' AND section='${sectionName}' GROUP BY student_id`, (err_row, info_row)=>{
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





// admin transcript pdf download

exports.admin_transcript_pdf_page= ( req , res)=>{
  const {className, sectionName}= req.params; 
  sqlmap.query(`SELECT student_id, roll FROM transcript_report WHERE domain='${req.hostname}' AND  class='${className}' AND section='${sectionName}' GROUP BY student_id ORDER BY ID`, (err, getStudent)=>{
    if(err) console.log(err.sqlMessage);
    if(getStudent.length>0){
      res.render('admin/transcript-pdf-page', {className, sectionName, getStudent})

    }
    else res.send('<center><h1>Not Report Found</h1></center>')
  })


}


exports.admin_transcript_pdf_get= ( req , res)=>{
  const {className, sectionName, student_id}= req.body; 
  teacher_bi_transcript_post_update(className, sectionName, student_id)

  const findStudent= `SELECT student_id, name, avatar, roll, pi, bg_color FROM transcript_report WHERE domain='${req.hostname}' AND  class='${className}' AND section='${sectionName}' AND student_id='${student_id}'`
  sqlmap.query(`SELECT * FROM bi_catagory WHERE domain='${req.hostname}' GROUP BY catagory_name ORDER BY ID`, (err_catagory, infoCatagory)=>{

sqlmap.query(`SELECT * FROM subject WHERE domain='${req.hostname}' AND  class='${className}' GROUP BY subject ORDER BY subject`, (err_subject, infoSubject)=>{

sqlmap.query( findStudent,(errStudent, infoStudent)=>{
 if(errStudent) console.log(errStudent.sqlMessage);

  if(infoStudent.length>0){  
    


        
    var infoChapter= ['PI-1','PI-2','PI-3','PI-4','PI-5', 'PI-6','PI-7','PI-8','PI-9','PI-10','PI-11','PI-12']

   var student_card= `<div class=" row">
     
   <div class="card col-12 col-md-8 p-2">
    <img class=" m-auto" width="60px" src="/image/default/resized/logo.png" alt="">
      <center>
        <h4 class="card-text school-name"></h4>
      <h6 class="card-text">Transcript Report</h6>
      </center>
   </div>  
   
   <div class="card col-12 col-md-4 p-2">
    <img class=" m-auto" width="100px" src="/image/student/${infoStudent[0].avatar}" alt="">
    <div class=" m-auto"> <br>
      <h6 class="card-text text-capitalize">${infoStudent[0].name } - ${infoStudent[0].roll }</h6>
    </div>
    </div>

  

</div>`







 var bi_perfomance= `

<div class="row" style="width: 100%; overflow-x: auto;">


  <div class="col-auto m-auto ">
<center><caption><b>BI Perfomance</b></caption></center>
  <table class=" table table-bordered">

      <thead  class="infoCatagory">

`



 for( let index = 0; index <infoCatagory.length; index++ ) { 
 bi_perfomance+= `<th><small style="font-size: smaller;">BI-${index+1}</small></th>`

 }




 
 bi_perfomance+= `</thead>

 <tbody class="">

      <tr>
`



 for( let index = 0; index <infoCatagory.length; index++ ) { 
bi_perfomance+= `<td > 
    <div class="form-check checkout_${infoStudent[0].student_id}${infoCatagory[index].catagory_code} fs-3 p-0 m-0">
  
    <i class="bi bi-square"></i>           

                                            
    </div>

    
   </td>`
  }


  bi_perfomance+= 
  `
  </tr>
</tbody>


</table>


</div>


</div>
`

  
var transcript_report= `<div class="row" style="width: 100%; overflow-x: auto;">
  <div class="col-auto m-auto" id="mainApp">

  <center><caption clas><b>Transcript report</b></caption></center>
    <table class=" table table-bordered mt-2">
   <thead class=""> 
    <tr>
      <th>Subject</th>

`

for( let index = 0; index <infoChapter.length; index++ ) { 
transcript_report+= `<th>${infoChapter[index]}</th>`


 }


transcript_report+=`  

</tr>
</thead>

<tbody class="">`




for( let i = 0; i < infoSubject.length; i++ ) { 
 transcript_report+= `<tr>
  
  <td>
  <small style="font-size: smaller; font-weight: bold;">${infoSubject[i].subject}</small>
  </td>`
  
  for( let index = 0; index <infoChapter.length; index++ ) { 
    transcript_report+= `<td > 
    
      <div class="form-check checkout_${student_id}${infoSubject[i].subject_code}${infoChapter[index]} fs-3 p-0 m-0">
                  
      <i class="bi bi-square"></i>           
                   
         
         </div>
    
      
     </td>`

    }
}



transcript_report+=`

</tr>
</tbody>
</table>

</div>
</div> 
`

let report_card= `
<div class='row mb-3'>
<div class='col-auto m-auto'>
`

report_card+=student_card; report_card+=bi_perfomance; report_card+=transcript_report;

report_card+=`</div></div>`

      res.send ({infoStudent, infoCatagory, infoSubject, student_id, className, sectionName, report_card})

  }


  })


  })
  })

}



exports.admin_transcript_pdf_checkout= (req, res)=>{
 
  const {className, sectionName}= req.body;
  sqlmap.query(`SELECT pi, checkout, roll, bg_color FROM transcript_report WHERE domain='${req.hostname}' AND  class='${className}' AND section='${sectionName}' ORDER BY student_id`, (errFind, info_checkout)=>{
      if(errFind) console.log(errFind.sqlMessage);
      else {  
          res.send({info_checkout}) 
      }
  })
}



exports.admin_bi_transcript_pdf_checkout= (req, res)=>{

  const {className, sectionName}= req.body;
  
  sqlmap.query(`SELECT bi, checkout, bi_point, bg_color FROM bi_transcript WHERE domain='${req.hostname}' AND  class='${className}' AND section='${sectionName}' ORDER BY student_id`, (errFind, info_checkout)=>{
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
  sqlmap.query(`SELECT * FROM students WHERE domain='${req.hostname}' AND  student_id=${student_id} AND class='${className}' AND section='${sectionName}' ORDER BY roll`,(errStudent, infoStudent)=>{
    if(errStudent) console.log(errStudent.sqlMessage);

    sqlmap.query(`INSERT INTO transcript_origin (domain, session, class, section, student_id, name, roll, at_status, avatar)
    VALUES('${req.hostname}', ${session}, '${className}', '${sectionName}', ${student_id}, '${infoStudent[0].name}', ${infoStudent[0].roll}, '${at_status}', '${infoStudent[0].avatar}')`
    , (errUp, infoUp)=>{
     if(errUp) console.log(errUp.sqlMessage);
 
    else {
      sqlmap.query(`UPDATE transcript_report SET at_status='finished' WHERE domain='${req.hostname}' AND  class='${className}' AND student_id=${student_id}`, (errUpdate, nextUpdate)=>{
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

  sqlmap.query(`SELECT * FROM students WHERE domain='${req.hostname}' AND  student_id=${student_id} AND class='${className}' AND section='${sectionName}' ORDER BY roll`,(errStudent, infoStudent)=>{
    if(errStudent) console.log(errStudent.sqlMessage);

    sqlmap.query(`INSERT INTO transcript_origin (domain, session, class, section, student_id, name, roll, at_status, avatar)
    VALUES('${req.hostname}', ${session}, '${className}', '${sectionName}', ${student_id}, '${infoStudent[0].name}', '${infoStudent[0].roll}', '${at_status}', '${infoStudent[0].avatar}')`
    , (errUp, infoUp)=>{
     if(errUp) console.log(errUp.sqlMessage);
 
     sqlmap.query(`UPDATE transcript_report SET at_status='finished' WHERE domain='${req.hostname}' AND  class='${className}' AND section='${sectionName}' AND student_id=${student_id}`, (errUpdate, nextUpdate)=>{
      if(errUpdate) console.log(errUpdate.sqlMessage);

      res.send({alert: 'success', msg: 'উক্ত ছাত্রকে অনউত্তীর্ন করা হয়েছে!'})
     })
 
 
    })

  })
 
 
}





exports.admin_transcript_final_card_passed_student_list= (req, res)=>{
  const {className, sectionName} = req.params
  sqlmap.query(`SELECT * FROM transcript_origin WHERE domain='${req.hostname}' AND  class='${className}' AND section='${sectionName}' AND at_status='passed' GROUP BY student_id  ORDER BY ID DESC`,(errStudent, infoStudent)=>{
    if(errStudent) console.log(errStudent.sqlMessage);

    
    if(infoStudent.length>0){
      res.render('admin/transcript_final_card_student_list', {infoStudent, className, sectionName})
    }

    else res.send('<center><h1>No Student Found!</h1></center>')


  })
 
 
}





exports.admin_transcript_final_card_drop_student_list= (req, res)=>{

  const {className, sectionName} = req.params;
  sqlmap.query(`SELECT * FROM transcript_origin WHERE domain='${req.hostname}' AND  class='${className}' AND section='${sectionName}' AND at_status='dropped' GROUP BY student_id  ORDER BY ID DESC`,(errStudent, infoStudent)=>{
    if(errStudent) console.log(errStudent.sqlMessage);

    
    if(infoStudent.length>0){
      res.render('admin/transcript_final_card_student_list', {infoStudent, className, sectionName})
    }

    else res.send('<center><h1>No Student Found!</h1></center>')


  })
 
 
}





exports.admin_transcript_final_card_waiting_student_list= (req, res)=>{
  const {className, sectionName} = req.params;


  sqlmap.query(`SELECT * FROM transcript_report WHERE domain='${req.hostname}' AND  class='${className}' AND section='${sectionName}' AND at_status='incomplete' GROUP BY student_id  ORDER BY ID DESC`,(errStudent, infoStudent)=>{
    if(errStudent) console.log(errStudent.sqlMessage);

    
    if(infoStudent.length>0){

      res.render('admin/transcript_final_card_student_list', {infoStudent, className, sectionName})
    }

    else res.send('<center><h1>No Student Found!</h1></center>')


  })
 
 
}

