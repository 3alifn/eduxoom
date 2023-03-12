const express = require("express")
const app = express()

const { sqlmap } = require("../server")




exports.teacher_pic_report_page= (req, res)=>{
  let {className, sectionName, subjectName}= req.body;  

  sqlmap.query( `SELECT * FROM pic_mark WHERE class='${className}' AND section='${sectionName}' AND subject='${subjectName}' GROUP BY student_id ORDER BY roll`, (err, info)=>{

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





exports.teacher_pic_report_get= (req, res)=>{

   let {student_id, className, sectionName, subjectName}= req.body;

   sqlmap.query(`SELECT * FROM pic_mark WHERE student_id=${student_id} AND class='${className}' AND section='${sectionName}' AND subject='${subjectName}'`, (err, info)=>{
    if(err) console.log(err.sqlMessage);

    sqlmap.query(`SELECT pi, chapter FROM pic_mark WHERE student_id=${student_id} AND class='${className}' AND section='${sectionName}' AND subject='${subjectName}' AND pi IN ('E', 'P', 'N') GROUP BY chapter ORDER BY chapter`, (errPI, infoPI)=>{

      if(errPI) console.log(errPI.sqlMessage);

      sqlmap.query(`SELECT bi, chapter FROM pic_mark WHERE student_id=${student_id} AND class='${className}' AND section='${sectionName}' AND subject='${subjectName}' AND bi IN ('E', 'P', 'N') GROUP BY chapter ORDER BY chapter` , (errBI, infoBI)=>{

        if(errBI) console.log(errBI.sqlMessage);
        
        if(info.length>0){

         
          let listData= `
          <li class="list-group-item">
          <span class=" badge bg-light text-dark"><img width="30px" src="/image/student/${info[0].avatar}" alt="404"></span>
          <span class=" badge bg-light text-dark">${info[0].name} (${info[0].roll})</span>
          <span class=" badge bg-light text-dark">${info[0].class} - ${info[0].section}  </span> 
          <span class=" badge bg-light text-danger">${info[0].subject}  </span> 
        </li> `;
  
          let listPI= '<strong>PI</strong>';
          let listBI= '<strong>BI</strong>';
  
          for (const i in infoPI) {
             listPI+= 
             `
             <li class="list-group-item"> <span class=" badge bg-light text-dark fw-bold">${infoPI[i].chapter} - ( ${infoPI[i].pi} )</span> </li>
             `
             
          }
  
          for (const i in infoBI) {
            listBI+= 
            `
            <li class="list-group-item"> <span class=" badge bg-light text-dark fw-bold"> ${infoBI[i].chapter} - ( ${infoBI[i].bi} )</span> </li>
  
            `
  
         }
      
    
  
      
      
          res.send({listData, listPI, listBI})

        }

    
        else {
          let listPI= '<strong>PI</strong>';
          let listBI= '<strong>BI</strong>';
          let listData= `
          <li class="list-group-item">
          <span class=" badge bg-light text-dark">Not Availble</span> 
        </li> `
       res.send({listData, listBI, listPI})
        }
  
      })


    })
 

   })
  
}








// exports.teacher_pic_class_get=(req, res)=>{

//     let teacher_id=  req.session.pdsId;
   
 
//      sqlmap.query( `SELECT class WHERE teacher WHERE  teacher_id= '${teacher_id}`, (err, info)=>{
 
//        if (err) console.log(err.sqlMessage);

       
 
//        let listData= ``
 
//        res.send({listData})
 
//      } )
 
//  }





exports.teacher_pic_student_get=(req, res)=>{
 
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
          <button  data-id="${info[i].student_id}"  data-id1="${info[i].roll}"  data-id2='pi' data-id3='E' data-id4='${info[i].name}' data-id5='${info[i].avatar}' class="piMark picMark btn btn-danger">E</button> 
          <button data-id="${info[i].student_id}" data-id1="${info[i].roll}" data-id2='pi' data-id3='P' data-id4='${info[i].name}' data-id5='${info[i].avatar}' class="piMark picMark btn btn-primary">P</button> 
          <button  data-id="${info[i].student_id}" data-id1="${info[i].roll}" data-id2='pi' data-id3='N' data-id4='${info[i].name}' data-id5='${info[i].avatar}' class="piMark picMark btn btn-success">N</button> 
     </span>

     <span class=" badge bg-light text-dark"> <strong class=" text-decoration-underline">BI</strong> <p></p>
         <button data-id="${info[i].student_id}" data-id1="${info[i].roll}" data-id2='bi' data-id3='E' data-id4='${info[i].name}' data-id5='${info[i].avatar}' class="biMark picMark btn btn-danger">E</button> 
         <button data-id="${info[i].student_id}" data-id1="${info[i].roll}" data-id2='bi' data-id3='P' data-id4='${info[i].name}' data-id5='${info[i].avatar}' class="biMark picMark btn btn-primary">P</button> 
         <button data-id="${info[i].student_id}" data-id1="${info[i].roll}" data-id2='bi' data-id3='N' data-id4='${info[i].name}' data-id5='${info[i].avatar}' class="biMark picMark btn btn-success">N</button> 
    </span>
    </center>
  
     
     
   </li>`
      }

      res.send({listData})

    } )

}





exports.teacher_pic_subject_get=(req, res)=>{


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









exports.teacher_pic_post=(req, res)=>{
 
  let teacher_id= req.session.userid;
    let {subjectName, className, roll, sectionName,  student_id, subjectChapter, name, avatar, picType, picMark} = req.body;
    let findDate= new Date().toLocaleDateString()

    sqlmap.query(`SELECT student_id FROM pic_mark WHERE class='${className}' AND section='${sectionName}' AND subject='${subjectName}'  AND chapter='${subjectChapter}' AND student_id=${student_id} AND ${picType} IN ('E', 'P', 'N')`, (checkErr, infoNext)=>{

      if(checkErr) console.log(checkErr.sqlMessage);

    if(infoNext.length==0){
      // console.log('insert........');
      sqlmap.query(`
      INSERT INTO pic_mark 
      ( teacher_id,  find_date , subject, class, section, student_id, roll, chapter, name, avatar, ${picType} )
      VALUES( ${teacher_id}, '${findDate}', '${subjectName}', '${className}', '${sectionName}', ${student_id}, ${roll}, '${subjectChapter}', '${name}', '${avatar}', '${picMark}')`, (errPost, todoPost)=>{
  
          if(errPost) console.log(errPost.sqlMessage);
  
           else res.send({msg: 'PIC mark Updated!', alert: 'success'})
      })
  

    }

    else {

      // console.log('update........');

      sqlmap.query(`UPDATE pic_mark SET  ${picType}='${picMark}' WHERE class='${className}' AND section='${sectionName}' AND subject='${subjectName}' AND chapter='${subjectChapter}' AND student_id='${student_id}'`, (errUpdate, infoUpdate)=>{
          
        if(errUpdate) console.log(errUpdate.sqlMessage);
        else  res.send({msg: 'PIC mark Updated!', alert: 'success'})
      })

    }


    })

   


}



