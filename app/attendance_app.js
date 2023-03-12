const express = require("express")
const app = express()

const { sqlmap } = require("../server")

exports.teacher_attendance_post = (req, res) => {

  let { className, sectionName, studentName, student_id, roll, status, ID, avatar } = req.body;

  let findDateArr= []

  let findDateTemp = new Date().toLocaleDateString().split("/")
  
  findDateArr.push(findDateTemp[2])
  findDateArr.push(findDateTemp[0])
  findDateArr.push(findDateTemp[1])
  let atFindDate= findDateArr.toString().replaceAll(",", "/")
  


  let Year = new Date().getFullYear()
  let Month = new Date().toDateString().substring(4, 7)
  let Day = new Date().toDateString().substring(0, 4) + new Date().getDate()
  let findDate= new Date().toLocaleDateString();

 
  sqlmap.query(`SELECT * FROM attendance WHERE student_id=${student_id} AND find_date="${findDate}"`, (errr, next) => {

    if (errr) console.log(errr.sqlMessage)

      if (next.length > 0) {

        sqlmap.query(`UPDATE attendance SET at_status="${status}" WHERE student_id=${student_id} AND year="${Year}" AND month="${Month}" AND day="${Day}"`, (err, next) => {

          if (err) console.log(err.sqlMessage)
          else res.json({ msg: status })

        })


      }



      else {


  sqlmap.query(`INSERT INTO attendance (find_date, at_find_date, class, section, name, avatar, student_id, roll, student_uuid, at_status, year, month, day ) VALUES("${findDate}",  "${atFindDate}",  "${className}", "${sectionName}", "${studentName}", "${avatar}",  "${student_id}", "${roll}", "${ID}", "${status}", "${Year}", "${Month}", "${Day}")`, (err, next) => {

    if(err) console.log(err.sqlMessage);
    else res.json({ msg: status })  

  

  })

}

})


// console.log(findDate);
// console.log(req.body);

}












exports.teacher_attendance_page = (req, res) => {
  let { className, sectionName } = req.body;


  sqlmap.query(`SELECT * FROM students WHERE class="${className}" AND section="${sectionName}" GROUP BY student_id  ORDER BY roll`, (err, info) => {

    if (err) console.log(err.sqlMessage)
    else {

      let Year = new Date().getFullYear()
      let Month = new Date().toDateString().substring(4, 7)
      let Day = new Date().toDateString().substring(0, 4) + new Date().getDate()
      sqlmap.query(`SELECT * FROM attendance WHERE class="${className}" AND section="${sectionName}" AND year=${Year} AND month="${Month}" AND day="${Day}" GROUP BY student_id  ORDER BY roll`, (err_sub, info_sub) => {



        if (err_sub) console.log(err_sub.sqlMessage)

        if (info.length > 0 ) {

          res.render("attendance/attendance_page_teacher", {info, info_sub})
        
          }

    
         else  res.send("<center><h1>Student Not Found!</h1></center>")



      })
    }

  })



}










exports.privet_attendance_page = (req, res) => {

  let className =req.body.className==undefined?'Six':req.body.className
  let sectionName =req.body.sectionName==undefined?'A':req.body.sectionName
  let findDate= new Date().toLocaleDateString();


  let Year = new Date().getFullYear()
  let Month = new Date().toDateString().substring(4, 7)
  let Day = new Date().toDateString().substring(0, 4) + new Date().getDate()



  let sql = `SELECT * FROM attendance WHERE class='${className}' AND section='${sectionName}' AND year='${Year}' AND month='${Month}'   GROUP BY student_id ORDER BY day`
  sqlmap.query(sql, (err, info) => {

    if (err) console.log(err.sqlMessage)

    else
    { 
   
        if(info.length>0) 
        {
          
          res.render("attendance/attendance_report_privet", {info, className: info[0].class, sectionName:info[0].section})

      
        }

        else res.render("attendance/attendance_report_privet", {info, className: null, sectionName: null})

     }



  })



}









exports.privet_attendance_page_class_base= (req, res) => {

  let className =req.body.className
  let sectionName =req.body.sectionName

  let Year = new Date().getFullYear()
  let Month = new Date().toDateString().substring(4, 7)
  let Day = new Date().toDateString().substring(0, 4) + new Date().getDate()



  let sql = `SELECT * FROM attendance WHERE class='${className}' AND section='${sectionName}' AND year='${Year}' AND month='${Month}'  GROUP BY student_id ORDER BY roll `

  sqlmap.query(sql, (err, info) => {

    if (err) console.log(err.sqlMessage)

    else 
    {

      let list= '';
      for (const i in info) {
       
        list+= `      <div class="col-9 col-md-6 m-auto bg-light">
        
        <ul class="list-group mt-2">
          <li class="list-group-item list-group-item-secondary">
              <img src="/image/student/${info[i].avatar}" height="30px" class=" rounded" width="50px" alt="">
        
        
              <span class=" badge bg-light text-dark">${info[i].class} - ${info[i].section}</span>
              <span class=" badge bg-light text-dark">${info[i].name} (${info[i].roll})</span>

        <hr>
             
                  <span data-id="" class="badge bg-light ${info[i].at_status=="Present"?"text-success": "text-danger"  } ">Status (${info[i].at_status})</span>
                  <span data-id="" class="badge bg-light text-dark">Day (${info[i].day})</span>
                  <a href="/privet/attendance/report/history?student_id=${info[i].student_id}&year=${info[i].year}&month=${info[i].month}" class="badge bg-light text-dark">History</a>

        
           </li>
         
        
        </ul>
          </div>
          <p></p>
`

      }

      res.send({list})

    }


  })


}










exports.privet_attendance_report_history= (req, res)=>{

  let {student_id, year, month} = req.query;

  sqlmap.query(`SELECT * FROM attendance WHERE  year="${year}" AND month="${month}" AND student_id=${student_id}`, (err, info)=>{

    if(err) console.log(err.sqlMessage);



    else 
    {
      if(info.length>0)

      {

        sqlmap.query(`SELECT COUNT(at_status) as present FROM attendance WHERE  year="${year}" AND month="${month}" AND student_id=${student_id} AND at_status="Present"`, (errP, infoP)=>{

          if(errP) console.log(errP.sqlMessage);
      
          sqlmap.query(`SELECT COUNT(at_status) as absent FROM attendance WHERE  year="${year}" AND month="${month}" AND student_id=${student_id} AND at_status="Absent" `, (errA, infoA)=>{
      
            if(errA) console.log(errA.sqlMessage);
      
      
            sqlmap.query(`SELECT * FROM attendance WHERE year="${year}" AND month="${month}" AND student_id=${student_id} ORDER BY ID`, (errS, infoS)=>{
      
              // console.log(infoP, infoA);
              if(errS) console.log(errS.sqlMessage);
        
        
              res.render("attendance/attendance_history_privet", {info, infoS, infoP, infoA})
        
        
            })
      
      
          })
          
      
      
         } )
      

      }

    }



  })

}






exports.privet_attendance_get_day_wise = (req, res) => {


  let { findDate, className, sectionName} = req.body;
  let atFindDate= findDate.replaceAll('/01','/1').replaceAll('/02','/2').replaceAll('/03','/3').replaceAll('/04','/4').replaceAll('/05','/5').replaceAll('/06','/6').replaceAll('/07','/7').replaceAll('/08','/8').replaceAll('/09','/9')

  let Day = new Date().toDateString().substring(0, 4) + new Date().getDate()

  let sql = `SELECT * FROM attendance WHERE class="${className}" AND section="${sectionName}" AND at_find_date="${atFindDate}"`


  sqlmap.query(sql, (err, info) => {

 
    if (err) console.log(err.sqlMessage)

    else 
    {

      let list= '';
      for (const i in info) {
       
        list+= `      <div class="col-9 col-md-6 m-auto bg-light">
        
        <ul class="list-group mt-2">
          <li class="list-group-item list-group-item-secondary">
              <img src="/image/student/${info[i].avatar}" height="30px" class=" rounded" width="50px" alt="">
              <span class=" badge bg-light text-dark">${info[i].name}</span>
        
        
              <span class=" badge bg-light text-dark">${info[i].class} - ${info[i].section}</span>
              <span class=" badge bg-light text-dark">${info[i].student_id}</span>
        <hr>
             
                  <span data-id="" class="badge bg-light ${info[i].at_status=="Present"?"text-success": "text-danger"  } ">Status (${info[i].at_status})</span>
                  <span data-id="" class="badge bg-light text-dark">Day (${info[i].day})</span>
                  <a href="/privet/attendance/report/history?student_id=${info[i].student_id}&year=${info[i].year}&month=${info[i].month}" class="badge bg-light text-dark">History</a>

        
           </li>
         
        
        </ul>
          </div>
          <p></p>
`

      }

      res.send({list})

    }


  })

}












exports.privet_attendance_get_month_wise = (req, res) => {

  let { findDate, className, sectionName} = req.body;
  let atFindDate= findDate.replaceAll('/01','/1').replaceAll('/02','/2').replaceAll('/03','/3').replaceAll('/04','/4').replaceAll('/05','/5').replaceAll('/06','/6').replaceAll('/07','/7').replaceAll('/08','/8').replaceAll('/09','/9')

   
  let Day = new Date().toDateString().substring(0, 4) + new Date().getDate()

  let sql = `SELECT * FROM attendance WHERE class="${className}" AND section="${sectionName}" AND at_find_date LIKE "${atFindDate}%"`


  sqlmap.query(sql, (err, info) => {

 
    if (err) console.log(err.sqlMessage)

    else 
    {

      
      let list= '';
      for (const i in info) {
       
        list+= `      <div class="col-9 col-md-6 m-auto bg-light">
        
        <ul class="list-group mt-2">
          <li class="list-group-item list-group-item-secondary">
              <img src="/image/student/${info[i].avatar}" height="30px" class=" rounded" width="50px" alt="">
        
        
              <span class=" badge bg-light text-dark">${info[i].class} - ${info[i].section}</span>
              <span class=" badge bg-light text-dark">${info[i].name}</span>

              <span class=" badge bg-light text-dark">${info[i].roll}</span>
        <hr>
             
                  <span data-id="" class="badge bg-light ${info[i].at_status=="Present"?"text-success": "text-danger"  } ">Status (${info[i].at_status})</span>
                  <span data-id="" class="badge bg-light text-dark">Day (${info[i].day})</span>
                  <a href="/privet/attendance/report/history?student_id=${info[i].student_id}&year=${info[i].year}&month=${info[i].month}" class="badge bg-light text-dark">History</a>

        
           </li>
         
        
        </ul>
          </div>
          <p></p>
`

      }

      res.send({list})

    }


  })

}










exports.privet_attendance_report_history_month= (req, res)=>{

  let {student_id, year, month} = req.query;

  sqlmap.query(`SELECT * FROM attendance WHERE year="${year}" AND month="${month}" AND student_id=${student_id} `, (err, info)=>{

    if(err) console.log(err.sqlMessage);



    else 
    {
      if(info.length>0)

      {

        sqlmap.query(`SELECT at_status, day, find_date FROM attendance WHERE  year="${info[0].year}" AND month="${info[0].month}" AND student_id=${info[0].student_id} AND at_status="Present" ORDER BY ID`, (errP, infoP)=>{

          if(errP) console.log(errP.sqlMessage);
      
          sqlmap.query(`SELECT at_status, day, find_date FROM attendance WHERE  year="${info[0].year}" AND month="${info[0].month}" AND student_id=${info[0].student_id} AND at_status="Absent" ORDER BY ID`, (errA, infoA)=>{
      
            if(errA) console.log(errA.sqlMessage);
      
      
            sqlmap.query(`SELECT * FROM attendance WHERE year="${year}" AND month="${month}" AND student_id=${info[0].student_id} ORDER BY ID DESC `, (errS, infoS)=>{
      
              // console.log(infoP, infoA);
              if(errS) console.log(errS.sqlMessage);
        
        
              res.send({info, infoS, infoP, infoA})
        
        
            })
      
      
          })
          
      
      
         } )
      

      }

    }



  })

}


