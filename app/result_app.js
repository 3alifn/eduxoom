
const { sqlmap, multer,  xlsx } = require("../server")

const locationResult= multer.diskStorage({
  destination: (req, file, cb)=>{
   cb(null, "./public/docs/result/")
  } ,

  filename: (req, file, cb)=>{

    cb(null, ` ${new Date().toLocaleDateString().replaceAll("/", "-") + '_' +  req.body.className+ '-' +req.body.sectionName+'.xlsx'}`)
  },
  
})



exports.uploadResult= multer({
  storage: locationResult,

  limits: {fileSize: 10000000},
  fileFilter: (req, file, cb)=>{
  
    if(file.mimetype=="application/vnd.openxmlformats-officedocument.spreadsheetml.sheet")
    {
      cb(null, true)
    } 
    else 
    {
      
        cb(new Error("file extension allow only xlsx"))
    }
    
  }

})










exports.admin_dynamic_student_get= (req, res)=>{


  let {className, sectionName}= req.body;

  sqlmap.query(`SELECT student_id FROM students WHERE class="${className}" AND section="${sectionName}"`, (err, info)=>{

    if(err) console.log(err.sqlMessage);

    else{

      let student_idList="";

      for (let index = 0; index < info.length; index++) {
        
        student_idList+= `<option value="${info[index].student_id}">`
        
      }



      res.send({student_idList})
    }

  })


}


exports.dynamic_subject_list = (req, res)=>{

  let {className}= req.body;
console.log(className);
 sqlmap.query(`SELECT subject FROM subject WHERE class="${className}"`, (err, info)=>{

    if(err) console.log(err.sqlMessage);

    else{

      let subjectList= "";

      for (let index = 0; index < info.length; index++) {
        
        subjectList+= `<option value="${info[index].subject}">`
        
      }


      

      res.send({subjectList})
    }

})

}






exports.admin_result_import= (req, res) => {

 let xlsxFilePath= './public/docs/result/'+req.file.filename;
 let session= new Date().getUTCFullYear();

  let workbook = xlsx.readFile(xlsxFilePath);
  let sheet_name_list = workbook.SheetNames;
  
  sheet_name_list.forEach(function (y) {
    let worksheet = workbook.Sheets[y];
    //getting the complete sheet
    // console.log(worksheet);
  
    let headers = {};
    var xlsxImportData = [];
    for (z in worksheet) {
      if (z[0] === "!") continue;
      //parse out the column, row, and value
      let col = z.substring(0, 1);
      // console.log(col);
  
      let row = parseInt(z.substring(1));
      // console.log(row);
  
      let value = worksheet[z].v;
      // console.log(value);
  
      //store header names
      if (row == 1) {
        headers[col] = value;
        // storing the header names
        continue;
      }
  
      if (!xlsxImportData[row]) xlsxImportData[row] = {};
      xlsxImportData[row][headers[col]] = value;
    }
    //drop those first two rows which are empty
    xlsxImportData.shift();
    xlsxImportData.shift();



    let subjectData= []
    let markData= []


 


    for (let i = 0; i < xlsxImportData.length; i++) {

      let key= subjectData.push(Object.keys(xlsxImportData[i]))
    let val= markData.push(Object.values(xlsxImportData[i]))
   
    }
    

    for(let cut=0; cut<markData.length; cut++){
     
      markData[cut].shift()
      markData[cut].shift()
      markData[cut].shift()
     
        
      }

   let {className, sectionName}= req.body;

  for(let run=0; run<xlsxImportData.length; run++){


   

    // console.log(xlsxImportData[run].student_id);
   
    for (let index = 0; index < markData[0].length; index++) {

        // console.log(Object.keys(xlsxImportData[run]).slice(3)[index]);
        // console.log(Object.values(xlsxImportData[run]).slice(3)[index]);


     let sql = `INSERT INTO result (session, class, section, student_id, name, roll,  subject, marks) VALUES (${session}, "${className}", "${sectionName}", "${xlsxImportData[run].student_id}", "${xlsxImportData[run].name}", "${xlsxImportData[run].roll}",   "${Object.keys(xlsxImportData[run]).slice(3)[index]}", "${Object.values(xlsxImportData[run]).slice(3)[index]}")`
    sqlmap.query(sql, (err, next) => {
  
      if (err) console.log(err.sqlMessage)
      
  
    })
   

       }

      }



 


      res.send({ msg: "Result Import Successfully!", alert: "alert-success text-success" })
  
 

  });
  



  

}




exports.admin_result_rank_post= (req, res)=>{



  sqlmap.query(`SELECT student_id FROM result GROUP BY student_id ORDER BY ID DESC `, (err, info)=>{
  
    for(let i=0; i<info.length; i++){
  
      sqlmap.query(`SELECT student_id, SUM(marks) as marks FROM result WHERE student_id=${info[i].student_id}`, (err2, info2)=>{
  
        sqlmap.query(`UPDATE result SET rank=${info2[0].marks} WHERE student_id=${info2[0].student_id}`)
   
        if(err2) console.log(err2.sqlMessage);
  
        // else console.log("done");
  
      })
  
    }

    res.send({msg: "Result Rank Successfully!", alert: "bg-success text-light"})
  
  })


}







exports.admin_result_export = (req, res)=>{

  let {className, sectionName}= req.body;


    
 sqlmap.query(`SELECT student_id, name, roll FROM students WHERE class='${className}' AND section='${sectionName}'`, (err, exportData)=>{



 if(err) console.log(err.sqlMessage);

 else 
 {


sqlmap.query(`SELECT subject FROM subject WHERE class='${className}' AND section='${sectionName}'`, (errS, infoSubject)=>{

  if(errS) console.log(errS.sqlMessage);

  else 
  {


    let rowData= []
    let subjectArr= []
    let subjectObj= {}
    rowData.push(exportData)
  

for (let i = 0; i < infoSubject.length; i++) {
      
  subjectArr.push(infoSubject[i].subject)
  
}

for (let i = 0; i < subjectArr.length; i++) {

subjectObj[subjectArr[i]]=' '

}

rowData[0].push(subjectObj)


      const workSheet= xlsx.utils.json_to_sheet(exportData)
  const workBook= xlsx.utils.book_new()
  xlsx.utils.book_append_sheet(workBook, workSheet, "exportData")
  
  xlsx.write(workBook, {bookType: "xlsx", type: "buffer"})
  
  xlsx.write(workBook, {bookType: "xlsx", type: "binary"})

  xlsx.writeFile(workBook, `./public/docs/result/export/${className +'_'+ sectionName}.xlsx`)
  
  res.download(`./public/docs/result/export/${className +'_'+ sectionName}.xlsx`)



  }

})

 

 }

 })



  


}












exports.admin_result_post = (req, res) => {

  let { className, section, student_id } = req.body
  let subject= req.body.subject;
  let mark= req.body.mark;

  let session= new Date().getUTCFullYear();

 let rankMark= mark.reduce((partialSum, a) => parseInt(partialSum) + parseInt(a), 0);

 

 for (let i=0; i< subject.length; i++) {
  sqlmap.query(`INSERT INTO result (session, class, section, student_id,  marks, subject) VALUES (${session},"${className}", "${section}", "${student_id}", "${mark[i]}", "${subject[i]}")`, (err, next) => {

    if (err) console.log(err.sqlMessage)
 
  })


}

res.send({ msg: " Result Created Successfully!", alert: "alert-success" })




}







exports.admin_result_rank_list = (req, res)=>{

  let {className, sectionName}= req.body;

  
  sqlmap.query(`SELECT * FROM result WHERE class="${className}" AND section="${sectionName}" GROUP BY student_id ORDER BY  roll`, (errRank, info)=>{
    if(errRank) console.log(errRank.sqlMessage);
  
    else 
    {

      let infoStudentRank= "";

      for(let i=0; i<info.length; i++){

        infoStudentRank+=  `   
        <ul class="list-group  mt-2 list" id="list">
            
            <li class="list-group-item list-group-item-primary ">
       
              <span class="badge bg-primary">Rank: ${parseInt(i)+parseInt(1)}</span>  
              <img src="/image/student/${info[i].avatar}" height="30px" class=" rounded" width="40px" alt="">
         
                <span class=" badge bg-light text-dark">${info[i].name}</span>
                <span class=" badge bg-light text-muted">${info[i].class} - ${info[i].section} </span>
                <span class=" badge bg-light text-muted">${info[i].student_id} </span>
        <hr>
      
        
        <span class=" badge bg-light text-success">Total (${info[i].rank}) </span>
      
      
                <div class=" btn-group btn-group-sm">
                
                </div>
        
             </li>
           
         
        </ul>`
  
  
      }
  
      res.send({ infoStudentRank})
  
    }
  
  })




}








exports.admin_result_get = (req, res) => {


  sqlmap.query("SELECT start_mark, end_mark FROM grade_system ORDER BY end_mark DESC", (errOne, dynamicGrade) => {

    if (errOne) console.log(errOne.sqlMessage);

    else {

      let sql = `SELECT class, section, student_id, marks, subject, ID, CASE 
        
            WHEN marks >=${dynamicGrade[0].start_mark} AND marks <=${dynamicGrade[0].end_mark} THEN "A+"
            WHEN marks >=${dynamicGrade[1].start_mark} AND marks <=${dynamicGrade[1].end_mark} THEN "A"
            WHEN marks >=${dynamicGrade[2].start_mark} AND marks <=${dynamicGrade[2].end_mark} THEN "A-"
            WHEN marks >=${dynamicGrade[3].start_mark} AND marks <=${dynamicGrade[3].end_mark} THEN "B"
            WHEN marks >=${dynamicGrade[4].start_mark} AND marks <=${dynamicGrade[4].end_mark} THEN "C"
            WHEN marks >=${dynamicGrade[5].start_mark} AND marks <=${dynamicGrade[5].end_mark} THEN "D"
           ELSE "F"
           
            END AS grade,
           
            CASE 
           
            WHEN marks >=${dynamicGrade[0].start_mark} AND marks <=${dynamicGrade[0].end_mark} THEN 5.00
            WHEN marks >=${dynamicGrade[1].start_mark} AND marks <=${dynamicGrade[1].end_mark} THEN 4.00
            WHEN marks >=${dynamicGrade[2].start_mark} AND marks <=${dynamicGrade[2].end_mark} THEN 3.50
            WHEN marks >=${dynamicGrade[3].start_mark} AND marks <=${dynamicGrade[3].end_mark} THEN 3.00
            WHEN marks >=${dynamicGrade[4].start_mark} AND marks <=${dynamicGrade[4].end_mark} THEN 2.00
            WHEN marks >=${dynamicGrade[5].start_mark} AND marks <=${dynamicGrade[5].end_mark} THEN "1.00"
           ELSE "0.00"
           
            END AS points
             FROM result ORDER BY ID DESC`

      sqlmap.query(sql, (err, info) => {

        if (err) console.log(err.sqlMessage)
        else {

          if(info.length>0){

            
let html= "";

for(let i=0; i<info.length; i++) {

html+= ` <tr>
<td> <span class="badge bg-light text-danger"> ${info[i].student_id}</span>  </td>
<td> <span class="badge bg-light text-dark"> ${info[i].subject}</span>  </td>
<td> <span class="badge bg-light text-danger"> ${info[i].marks}</span>  </td>
<td> <span class="badge bg-light text-dark"> ${info[i].points}</span>  </td>
<td> <span class="badge bg-light text-primary"> ${info[i].grade}</span>  </td>
<td style="display: none"> <span class="badge bg-light text-primary">- ${info[i].section}</span>  </td>


</tr>`

{/* <td><button data-id="${info[i].ID}" class="btn def bagde bg-light text-danger" title="Delete!"><i class="fa-solid fa-trash"></button></td> */}

} 
     res.send({html})

     }

          else res.send( {html: '<center><strong class=" text-danger">No Data Found!</strong></center>'})
        }

      })

    }

  })



}









exports.admin_result_get_class_base = (req, res) => {



  let className= req.body.className;

  sqlmap.query("SELECT start_mark, end_mark FROM grade_system ORDER BY end_mark DESC", (errOne, dynamicGrade) => {

    if (errOne) console.log(errOne.sqlMessage);

    else {

      let sql = `SELECT class, section, student_id, marks, subject, ID, CASE 
        
            WHEN marks >=${dynamicGrade[0].start_mark} AND marks <=${dynamicGrade[0].end_mark} THEN "A+"
            WHEN marks >=${dynamicGrade[1].start_mark} AND marks <=${dynamicGrade[1].end_mark} THEN "A"
            WHEN marks >=${dynamicGrade[2].start_mark} AND marks <=${dynamicGrade[2].end_mark} THEN "A-"
            WHEN marks >=${dynamicGrade[3].start_mark} AND marks <=${dynamicGrade[3].end_mark} THEN "B"
            WHEN marks >=${dynamicGrade[4].start_mark} AND marks <=${dynamicGrade[4].end_mark} THEN "C"
            WHEN marks >=${dynamicGrade[5].start_mark} AND marks <=${dynamicGrade[5].end_mark} THEN "D"
           ELSE "F"
           
            END AS grade,
           
            CASE 
           
            WHEN marks >=${dynamicGrade[0].start_mark} AND marks <=${dynamicGrade[0].end_mark} THEN 5.00
            WHEN marks >=${dynamicGrade[1].start_mark} AND marks <=${dynamicGrade[1].end_mark} THEN 4.00
            WHEN marks >=${dynamicGrade[2].start_mark} AND marks <=${dynamicGrade[2].end_mark} THEN 3.50
            WHEN marks >=${dynamicGrade[3].start_mark} AND marks <=${dynamicGrade[3].end_mark} THEN 3.00
            WHEN marks >=${dynamicGrade[4].start_mark} AND marks <=${dynamicGrade[4].end_mark} THEN 2.00
            WHEN marks >=${dynamicGrade[5].start_mark} AND marks <=${dynamicGrade[5].end_mark} THEN "1.00"
           ELSE "0.00"
           
            END AS points
             FROM result WHERE class="${className}"  ORDER BY ID DESC`

      sqlmap.query(sql, (err, info) => {

        if (err) console.log(err.sqlMessage)
        else {

          if(info.length>0){

            
let html= "";

for(let i=0; i<info.length; i++) {

html+= ` <tr>
<td> <span class="badge bg-light text-danger"> ${info[i].student_id}</span>  </td>
<td> <span class="badge bg-light text-dark"> ${info[i].subject}</span>  </td>
<td> <span class="badge bg-light text-danger"> ${info[i].marks}</span>  </td>
<td> <span class="badge bg-light text-dark"> ${info[i].points}</span>  </td>
<td> <span class="badge bg-light text-primary"> ${info[i].grade}</span>  </td>
<td style="display: none"> <span class="badge bg-light text-primary">- ${info[i].section}</span>  </td>

<td><button data-id="${info[i].ID}" class="btn def bagde bg-light text-danger" title="Delete!"><i class="fa-solid fa-trash"></button></td>

</tr>`

} 
     res.send({html})

     }

          else res.send( {html: '<center><strong class=" text-danger">No Data Found!</strong></center>'})
        }

      })

    }

  })


}










exports.public_result_get = (req, res) => {

  let { className, sectionName, student_id } = req.body

  sqlmap.query(`SELECT name, student_id, class, section, avatar FROM result WHERE class='${className}' AND section='${sectionName}'  AND student_id='${student_id}'`, (errStudent, infoStudent)=>{

    if(errStudent) console.log(errStudent.sqlMessage);

   else {
 

      sqlmap.query("SELECT start_mark, end_mark FROM grade_system ORDER BY end_mark DESC", (errOne, dynamicGrade) => {

        if (errOne) console.log(errOne.sqlMessage);
    
        else {
    
         
    
          let sql = `SELECT class, section, student_id, marks, subject, CASE 
           
            WHEN marks >=${dynamicGrade[0].start_mark} AND marks <=${dynamicGrade[0].end_mark} THEN "A+"
            WHEN marks >=${dynamicGrade[1].start_mark} AND marks <=${dynamicGrade[1].end_mark} THEN "A"
            WHEN marks >=${dynamicGrade[2].start_mark} AND marks <=${dynamicGrade[2].end_mark} THEN "A-"
            WHEN marks >=${dynamicGrade[3].start_mark} AND marks <=${dynamicGrade[3].end_mark} THEN "B"
            WHEN marks >=${dynamicGrade[4].start_mark} AND marks <=${dynamicGrade[4].end_mark} THEN "C"
            WHEN marks >=${dynamicGrade[5].start_mark} AND marks <=${dynamicGrade[5].end_mark} THEN "D"
           ELSE "F"
           
            END AS grade,
           
            CASE 
           
            WHEN marks >=${dynamicGrade[0].start_mark} AND marks <=${dynamicGrade[0].end_mark} THEN 5.00
                WHEN marks >=${dynamicGrade[1].start_mark} AND marks <=${dynamicGrade[1].end_mark} THEN 4.00
                WHEN marks >=${dynamicGrade[2].start_mark} AND marks <=${dynamicGrade[2].end_mark} THEN 3.50
                WHEN marks >=${dynamicGrade[3].start_mark} AND marks <=${dynamicGrade[3].end_mark} THEN 3.00
                WHEN marks >=${dynamicGrade[4].start_mark} AND marks <=${dynamicGrade[4].end_mark} THEN 2.00
                WHEN marks >=${dynamicGrade[5].start_mark} AND marks <=${dynamicGrade[5].end_mark} THEN "1.00"
           ELSE "0.00"
           
            END AS points
             FROM result WHERE class="${className}" AND section="${sectionName}" AND student_id="${student_id}" ORDER BY subject`
    
          sqlmap.query(sql, (err, info) => {
    
            if (err) console.log(err.sqlMessage)
            else {
    
              if (info.length > 0) {
    
                let gpaSum = []
    
                for (x in info) {
                  gpaSum.push(parseFloat(info[x].points))
                }
    
                if (gpaSum.includes(0) == true) {
                  var gpaResultStatus2 = "<span class=' badge bg-light text-danger'>Falied!</span>"
                } else {
    
                  let gpaNext = gpaSum.reduce((value, a) => {
    
                    return value + a;
    
                  })
    
                  var gpaResultStatus2 = (gpaNext / gpaSum.length).toFixed(2);
    
                  var gpaResultStatus2 = " <span class='badge bg-light text-success'> GPA= " + gpaResultStatus2 + " out of 5 </span>"
    
                }
                   
    let htmlTbody= "";
    
    for(let i=0; i<info.length; i++) {
    
    htmlTbody+= ` <tr>
    
    <td> <span class="badge bg-light text-dark"> ${info[i].subject}</span>  </td>
    <td> <span class="badge bg-light text-danger"> ${info[i].marks}</span>  </td>
    <td> <span class="badge bg-light text-primary"> ${info[i].grade}</span>  </td>
    
    
    </tr>`
    
    } 
    
    let htmlTfoot = `<tr> 
    
    
    <th class=" shadow" colspan="2">Status (${gpaResultStatus2})</th>
    </tr>`


    
    var infoStudentData=  `<ul class="list-group">
  
    <li class="list-group-item mt-1 list-group-item-secondary">
    <center><span class=" badge bg-dark text-light">  <img src="/image/default/logo.png" height="40px" class=" rounded"  width="40px" alt="404"> Boalmari George Academy</span></center>
    <br>
   <center>
   <img src="/image/student/${infoStudent[0].avatar}" height="40px" class=" rounded"  width="40px" alt="404">  <span class=" badge bg-light text-dark">${infoStudent[0].name}</span>
   <span class=" badge bg-light text-dark">${infoStudent[0].student_id}</span>
   <br>
   


   <span class=" badge bg-light text-dark">${infoStudent[0].class} - ${infoStudent[0].section}</span>
   <span class=" badge bg-light text-dark">status (${gpaResultStatus2})</span>
  
   </center>

  </ul>`

  
sqlmap.query(`SELECT student_id, rank FROM result GROUP BY student_id ORDER BY rank`, (errRank, infoRank)=>{
  if(errRank) console.log(errRank.sqlMessage);

  else 
  {
    for(let r=0; r<infoRank.length; r++){
      


      if(infoRank[r].student_id==student_id) var infoStudentRank= `<span class="badge btn btn-success">Rank: ${[r+1]}</span>`;
    }

    res.send({ htmlTbody, htmlTfoot, gpaResultStatus2, infoStudentData, infoStudentRank})

  }

})

      
    
              }
              
              else {
    
                res.send({ htmlTfoot: '<center><strong class=" text-danger">রেজাল্ট পাওয়া যায়নি!</strong></center>' })
    
              }
    
            }
    
            })
    
    
          }
    
        })

    }

  })


        }

   




exports.admin_result_delete = (req, res)=>{

 let ID=  req.body.dataID;

 let sql= `DELETE FROM result WHERE ID="${ID}"`
 sqlmap.query(sql, (err, next)=>{

  if(err) console.log(err.sqlMessage);
  else res.send({msg: "Deleted! From Result!", alert: "alert-danger text-danger"})
 })

}










