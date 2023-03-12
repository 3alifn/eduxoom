const express = require("express")
const app = express()

const { sqlmap } = require("../server")




exports.teacher_pis_report_page= (req, res)=>{
  let {className, sectionName, subjectName}= req.body;  

  sqlmap.query( `SELECT * FROM pis_mark WHERE class='${className}' AND section='${sectionName}' AND subject='${subjectName}' GROUP BY student_id ORDER BY roll`, (err, info)=>{

    if (err) console.log(err.sqlMessage);

    let listData= '';

    for (const i in info) {
    listData+= `<li class="list-group-item">
    <span class=" badge bg-light text-dark"> 
        <img src="/image/student/${info[i].avatar}" width="50px" alt="404"> 
    </span> 
    <span class=" badge bg-light text-dark">${info[i].name} (${info[i].roll})</span>
    <span class=" badge bg-light text-dark">${info[i].class} - ${info[i].section} </span> <br>
    <span class=" badge bg-light text-dark">
        <button  data-id="${info[i].student_id}" class="infoDef btn btn-info">Info</button> 
   </span>
 </li>`
    }

    res.send({listData})

  } )

}





exports.teacher_pis_report_get= (req, res)=>{

   let {student_id, className, sectionName, subjectName}= req.body;

   sqlmap.query(`SELECT * FROM pis_mark WHERE student_id=${student_id} AND class='${className}' AND section='${sectionName}' AND subject='${subjectName}'`, (err, info)=>{
    if(err) console.log(err.sqlMessage);

    sqlmap.query(`SELECT pi, chapter FROM pis_mark WHERE student_id=${student_id} AND class='${className}' AND section='${sectionName}' AND subject='${subjectName}' AND pi IN ('E', 'P', 'N') GROUP BY chapter ORDER BY chapter`, (errPI, infoPI)=>{

      if(errPI) console.log(errPI.sqlMessage);

        
        if(info.length>0){

         
          let listData= `
          <li class="list-group-item">
          <span class=" badge bg-light text-dark"><img width="30px" src="/image/student/${info[0].avatar}" alt="404"></span>
          <span class=" badge bg-light text-dark">${info[0].name} (${info[0].roll})</span>
          <span class=" badge bg-light text-dark">${info[0].class} - ${info[0].section}  </span> 
          <span class=" badge bg-light text-danger">${info[0].subject}  </span> 
        </li> `;
  
          let listPI= '<center><strong>PI</strong></center>';
        
  
          for (const i in infoPI) {
             listPI+= 
             `
             <li class="list-group-item"> <span class=" badge bg-light text-dark fw-bold">${infoPI[i].chapter} - ( ${infoPI[i].pi} )</span> </li>
             `
             
          }
  

      
          res.send({listData, listPI})

        }

    
        else {
          let listPI= '<strong>PI</strong>';
          let listData= `
          <li class="list-group-item">
          <span class=" badge bg-light text-dark">Not Availble</span> 
        </li> `
       res.send({listData, listPI})
        }
  
    


    })
 

   })
  
}








// exports.teacher_pis_class_get=(req, res)=>{

//     let teacher_id=  req.session.pdsId;
   
 
//      sqlmap.query( `SELECT class WHERE teacher WHERE  teacher_id= '${teacher_id}`, (err, info)=>{
 
//        if (err) console.log(err.sqlMessage);

       
 
//        let listData= ``
 
//        res.send({listData})
 
//      } )
 
//  }





exports.teacher_pis_student_get=(req, res)=>{
 
    let {className, sectionName}= req.body;  


    sqlmap.query( `SELECT * FROM students WHERE class='${className}' AND section='${sectionName}' ORDER BY roll`, (err, info)=>{

      if (err) console.log(err.sqlMessage);

      let listData= '';

      for (const i in info) {
      listData+= `<li class="list-group-item">
      <span class=" badge bg-light text-dark"> 
          <img src="/image/student/${info[i].avatar}" width="50px" alt="404"> 
      </span> 
      <span class=" badge bg-light text-dark">${info[i].name} (${info[i].roll})</span>
      <span class=" badge bg-light text-dark">${info[i].class} - ${info[i].section} </span>

    <center>
      <span class=" badge bg-light text-dark"> <strong class=" text-decoration-underline">PI</strong> <p></p>
          <button  data-id="${info[i].student_id}"  data-id1="${info[i].roll}"   data-id3='E' data-id4='${info[i].name}' data-id5='${info[i].avatar}' class="piMark pisMark btn btn-danger">E</button> 
          <button data-id="${info[i].student_id}" data-id1="${info[i].roll}" data-id3='P' data-id4='${info[i].name}' data-id5='${info[i].avatar}' class="piMark pisMark btn btn-primary">P</button> 
          <button  data-id="${info[i].student_id}" data-id1="${info[i].roll}" data-id3='N' data-id4='${info[i].name}' data-id5='${info[i].avatar}' class="piMark pisMark btn btn-success">N</button> 
     </span>


  
     
     
   </li>`
      }

      res.send({listData})

    } )

}





exports.teacher_pis_subject_get=(req, res)=>{


   let {className}= req.body;
 
     sqlmap.query( `SELECT subject FROM subject WHERE class='${className}' ORDER BY ID DESC`, (err, info)=>{
 
       if (err) console.log(err.sqlMessage);
 
       let listData= ``
       for (const i in info) {

     listData+= `<option vlaue='${info[i].subject}'>${info[i].subject}</option>`

       }
 
       res.send({listData})
 
     } )
 
 }









exports.teacher_pis_post=(req, res)=>{
 
  let teacher_id= req.session.userid;
    let {subjectName, className, roll, sectionName,  student_id, subjectChapter, name, avatar, pisMark} = req.body;
    let findDate= new Date().toLocaleDateString()
    sqlmap.query(`SELECT student_id FROM pis_mark WHERE class='${className}' AND section='${sectionName}' AND subject='${subjectName}'  AND chapter='${subjectChapter}' AND student_id=${student_id} AND pi IN ('E', 'P', 'N')`, (checkErr, infoNext)=>{

      if(checkErr) console.log(checkErr.sqlMessage);

    if(infoNext.length==0){
      // console.log('insert........');
      sqlmap.query(`
      INSERT INTO pis_mark 
      ( teacher_id,  find_date , subject, class, section, student_id, roll, chapter, name, avatar, pi )
      VALUES( ${teacher_id}, '${findDate}', '${subjectName}', '${className}', '${sectionName}', ${student_id}, ${roll}, '${subjectChapter}', '${name}', '${avatar}', '${pisMark}')`, (errPost, todoPost)=>{
  
          if(errPost) console.log(errPost.sqlMessage);
  
           else res.send({msg: 'PIC mark Updated!', alert: 'success'})
      })
  

    }

    else {

      // console.log('update........');

      sqlmap.query(`UPDATE pis_mark SET  pi='${pisMark}' WHERE class='${className}' AND section='${sectionName}' AND subject='${subjectName}' AND chapter='${subjectChapter}' AND student_id='${student_id}'`, (errUpdate, infoUpdate)=>{
          
        if(errUpdate) console.log(errUpdate.sqlMessage);
        else  res.send({msg: 'PIC mark Updated!', alert: 'success'})
      })

    }


    })

   


}



