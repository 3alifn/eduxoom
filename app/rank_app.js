const {app, express, sqlmap, session } = require("../server")


exports.public_rank_class_page= (req, res)=>{

  sqlmap.query(`SELECT * FROM student_rank WHERE domain='${req.hostname}' AND  class='Ten' GROUP BY poient DESC`, (errTen, infoTen)=>{

    if(errTen) console.log(errTen.sqlMessage);

    sqlmap.query(`SELECT * FROM student_rank WHERE domain='${req.hostname}' AND  class='Nine' GROUP BY poient DESC`, (errNine, infoNine)=>{

      if(errNine) console.log(errNine.sqlMessage);
  
      sqlmap.query(`SELECT * FROM student_rank WHERE domain='${req.hostname}' AND  class='Eight' GROUP BY poient DESC`, (errEight, infoEight)=>{

        if(errEight) console.log(errEight.sqlMessage);
    
        sqlmap.query(`SELECT * FROM student_rank WHERE domain='${req.hostname}' AND  class='Seven' GROUP BY poient DESC`, (errSeven, infoSeven)=>{

          if(errSeven) console.log(errSeven.sqlMessage);
      
          
        sqlmap.query(`SELECT * FROM student_rank WHERE domain='${req.hostname}' AND  class='Six' GROUP BY poient DESC`, (errSix, infoSix)=>{

         
          if(errSix) console.log(errSix.sqlMessage);
      
          if(infoSix.length==0 && infoSeven.length==0 && infoEight.length==0 && infoNine.length==0 && infoTen.length==0){

            res.send("<center><h2>No record</h2></center>")

          }
    
          else res.render("public/rank_class_page_public", {infoSix, infoSeven, infoEight, infoNine, infoTen})
      
         
        })
    
    
      
        })
  
  
    
      })


  
    })

  })

}





exports.public_rank_page= (req, res)=>{
  let className=  req.query.className;
  app.locals.className= className
 
 sqlmap.query(`SELECT * FROM student_rank WHERE domain='${req.hostname}' AND  class="${className}" AND section="A" GROUP BY poient DESC `, (errA, infoA)=>{
  if(errA) console.log(errA.sqlMessage);


  sqlmap.query(`SELECT * FROM student_rank WHERE domain='${req.hostname}' AND  class="${className}" AND section="B" GROUP BY poient DESC `, (errB, infoB)=>{
    if(errB) console.log(errB.sqlMessage);
  

    sqlmap.query(`SELECT * FROM student_rank WHERE domain='${req.hostname}' AND  class="${className}" AND section="C" GROUP BY poient DESC `, (errC, infoC)=>{
      if(errC) console.log(errC.sqlMessage);

      
    
      res.render("public/rank_page_public", {infoA, infoB, infoC, className: app.locals.className})
    
     })
    
  
   })


 })

}







exports.teacher_rank_mark_page= (req, res)=>{
  // let yearName= new Date().getFullYear()

  
     let sql= `SELECT * FROM students  WHERE domain='${req.hostname}' AND  class="Six" ORDER BY roll`
     sqlmap.query(sql, (err, info)=>{
       if(err) console.log(err.sqlMessage);
       else res.render("rank/daily_mark_page_teacher", {info})
     }) 
  
   
   
   }





exports.teacher_rank_mark_page_class_base= (req, res)=>{
  // let yearName= new Date().getFullYear()

    let sql= `SELECT * FROM students  WHERE domain='${req.hostname}' AND  class="${req.body.className}"  ORDER BY roll`
    sqlmap.query(sql, (err, info)=>{

    if(err) console.log(err.sqlMessage);

    else 
    {
        let html= '';

  
        for (const i in info) {
          html+= 
          ` <ul class="list-group mt-2" id="list">
          <li class="list-group-item list-group-item-light shadow">
          <img src="/image/student/resized/${info[i].avatar}" height="30px" class=" rounded" width="40px" alt="">
       
              <span class=" badge bg-light text-muted">${info[i].class} - ${info[i].section} </span>
              <span class=" badge bg-light text-dark">${info[i].name}</span>

              <span class=" badge bg-light text-muted">${info[i].roll} </span>
      <hr> <span class=" btn btn-default">Behavior</span> <br>
              <div class=" btn-group btn-group-sm ">
              <button data-id="weak_B" data-id2="${info[i].student_uuid}" id="weak" class="def  btn btn-danger fs-3 bg-light text-danger ">&#x2730;</button>

              <button data-id="good_B" data-id2="${info[i].student_uuid}" id="good" class="def   btn btn-primary fs-3 bg-light text-primary">&#x2730;&#x2730;</button>
              <button data-id="excellent_B" data-id2="${info[i].student_uuid}" id="excellent" class="def  btn fs-3 btn-success bg-light text-success ">&#x2730;&#x2730;&#x2730;</button>

         </div>

         <hr>  <span class=" btn btn-default">Uniform</span> <br>
         <div class=" btn-group btn-group-sm ">
             
             <button data-id="weak_U" data-id2="${info[i].student_uuid}" id="weak" class="def  btn fs-3 btn-danger bg-light  text-danger ">&#10026;</button>
             <button data-id="good_U" data-id2="${info[i].student_uuid}" id="good" class="def  btn btn-primary fs-3 bg-light text-primary">&#10026;&#10026;</button>
              <button data-id="excellent_U" data-id2="${info[i].student_uuid}" id="excellent" class="def fs-3 btn btn-success bg-light text-success ">&#10026;&#10026;&#10026;</button>
         </div>
 

         <hr> <span class=" btn btn-default">Study</span> <br>
         <div class=" btn-group btn-group-sm ">
          
             <button data-id="weak_S" data-id2="${info[i].student_uuid}" id="weak" class="def  btn fs-3 btn-danger bg-light text-danger ">&#10030;</button>

              <button data-id="good_S" data-id2="${info[i].student_uuid}" id="good" class="def   btn fs-3 btn-primary bg-light text-primary">&#10030;&#10030;</button>
              <button data-id="excellent_S" data-id2="${info[i].student_uuid}" id="excellent" class="def  btn fs-3 btn-success bg-light text-success ">&#10030;&#10030;&#10030;</button>

              </div>
           </li>
         
       
      </ul>`
        }

        res.send({html: html})
    }

   })



   
   
   }






exports.teacher_rank_mark_post= (req, res)=>{

  let defaultNumber= 1;
  let teacher_uuid= req.session.teacher_uuid;
  let session= new Date().getUTCFullYear();

  let findDate = new Date().toLocaleDateString();


    let today= new Date().toLocaleDateString();
    let {student_uuid, mark} = req.body;


    if(mark=='good_B' || mark=='weak_B' || mark=='excellent_B')
    {
        var markColumnName= 'behavior';
        
    }

    else if(mark=='good_U' || mark=='weak_U' || mark=='excellent_U')
    {
        var markColumnName= 'uniform';
    }

    

    else if(mark=='good_S' || mark=='weak_S' || mark=='excellent_S')
    {
        var markColumnName= 'study';
    }
    else var markColumnName= null;



   sqlmap.query(`SELECT * FROM student_rank WHERE domain='${req.hostname}' AND  student_uuid='${student_uuid}' AND today="${today}" AND teacher_uuid='${teacher_uuid}' AND ${markColumnName}=1 `, (err0, info0)=>{
    if(err0) console.log(err0.sqlMessage);
    if(info0.length==0)
    {

      sqlmap.query(`SELECT * FROM students WHERE domain='${req.hostname}' AND  student_uuid=${student_uuid}`, (err, info)=>{
            
        if(err) console.log(err.sqlMessage);
  
        sqlmap.query(`INSERT INTO student_rank (
          domain,
          session,
          find_date, 
          teacher_uuid, 
          today, 
          student_uuid,
            roll, 
            name, 
            class, 
            section,
             avatar, 
             ${markColumnName}
        )
      VALUES
        ('${req.hostname}',${session},
          "${findDate}",
          ${teacher_uuid},
          "${today}",
          ${info[0].student_uuid},
          ${info[0].roll},
          "${info[0].name}",
          "${info[0].class}",
          "${info[0].section}",
          "${info[0].avatar}",
          ${defaultNumber}
        )` , (errInsert, next)=>{
          
          if(errInsert) console.log(errInsert);

            sqlmap.query(`SELECT * FROM student_rank WHERE domain='${req.hostname}' AND  student_uuid= ${info[0].student_uuid} ORDER BY poient DESC`, (err3, info3)=>{
              if(err3) console.log(err3.sqlMessage);
       
              else 
              {
                sqlmap.query(`UPDATE student_rank SET poient=${ info[0].poient==undefined? 1 : parseFloat(info3[0].poient)+parseFloat(mark=='good_U'||mark=='good_S'||mark=='good_U'?1.555: mark=='excellent_U'||mark=='excellent_B'||mark=='excellent_S'? 2.555 : 0.555)} WHERE domain='${req.hostname}' AND  student_uuid=${info[0].student_uuid}`, (err4, info4)=>{
    
                  if(err4) console.log(err4.sqlMessage);
        
                  else res.send({msg: "Mark Updated...", alert: "dark"})
        
                })
    
              }
    
            })
    
      
        })
    
      })
    
    }
  
    else res.send({msg: "Today Locked! for you!", alert: "danger"})
   })
  
  
  }







exports.teacher_rank_mark_post_attendance = (req, res) => {

    let session = new Date().getFullYear()
    let Month = new Date().toDateString().substring(4, 7)
    let Day = new Date().toDateString().substring(0, 4) + new Date().getDate()
    let today= new Date().toLocaleDateString();
    let findDate= new Date().toLocaleDateString();

    sqlmap.query(`SELECT * FROM attendance WHERE domain='${req.hostname}' AND  find_date="${findDate}"`, (err, info) => {

      if (err) console.log(err.sqlMessage)
  
  
        for (let i = 0; i < info.length; i++) {
       
          sqlmap.query(`SELECT * FROM student_rank WHERE domain='${req.hostname}' AND  student_uuid=${info[i].student_uuid} AND find_date='${findDate}'`, (errCheck, infoCheck)=>{
            if(errCheck) console.log(errCheck.sqlMessage);
            // console.log(infoCheck.length);

            if(infoCheck.length==0){

              
          sqlmap.query( `INSERT INTO student_rank (domain,session, find_date ,today, name,  student_uuid, student_uuid, roll, class, section, avatar, present) 
          VALUES ('${req.hostname}', ${session}, "${findDate}", "${today}",  "${info[i].name}", "${info[i].student_uuid}", "${info[i].student_uuid}", "${info[i].roll}", "${info[i].class}",  "${info[i].section}", "${info[i].avatar}", 1)`, (err2, info2)=>{

            if(err2) console.log(err2.sqlMessage + "fooooooooo");
    
                 
              sqlmap.query(`SELECT * FROM student_rank WHERE domain='${req.hostname}' AND  student_uuid=${info[i].student_uuid} ORDER BY poient DESC LIMIT 1`, (err3, info3)=>{
                if(err3) console.log(err3.sqlMessage);
      
                  sqlmap.query(`UPDATE student_rank SET poient=${parseFloat(info3[0].poient)+parseFloat(3.333)} WHERE domain='${req.hostname}' AND  student_uuid=${info[i].student_uuid}`, (err4, info4)=>{
      
                    if(err4) console.log(err4.sqlMessage);
          
                  
                  
          
                  })
      
            
      
              })
  
          })

            }

          })

  
    
        }
    
        res.send({msg: "Attendance finished with student_rank mark!", alert: "success"})
  
  
  })
  }
  
  
  




exports.public_rank_get= (req, res)=>{
 let className=  req.body.className;

//  let yearName= new Date().getFullYear()

     let sql= `SELECT * FROM student_rank WHERE domain='${req.hostname}' AND  class='${className}' GROUP BY student_uuid ORDER BY poient DESC`
     sqlmap.query(sql, (err, info)=>{

    

       if(err) console.log(err.sqlMessage);

       else
       {

        sqlmap.query(`SELECT SUM(behavior) as behavior, SUM(uniform) as uniform, SUM(present) as present, SUM(study) as study FROM student_rank WHERE domain='${req.hostname}' AND  class='${className}' GROUP BY student_uuid ORDER BY poient DESC`, (errS, infoS)=>{
            if(errS) console.log(errS.sqlMessage);


            else 
            {

                let html= "";

                for (const i in info) {
        
                    html+= 
                    /*html*/
                    `
                       
                    <ul class="list-group  mt-2 list" id="list">
                        
                        <li class="list-group-item list-group-item-primary ">
                   
                          <span class="badge bg-primary">Rank: ${parseInt(i)+parseInt(1)}</span>  
                          <img src="/image/student/resized/${info[i].avatar}" height="30px" class=" rounded" width="40px" alt="">
                     
                            <span class=" badge bg-light text-muted">${info[i].class} - ${info[i].section} </span>
                            <span class=" badge bg-light text-dark">${info[i].name} (${info[i].roll})</span>

                    <hr>
        
                    <span class=" badge bg-light text-danger">Behavior (${infoS[i].behavior})</span>
                    <span class=" badge bg-light text-secondary"> Uniform (${infoS[i].uniform}) </span>
                    <span class=" badge bg-light text-success">Study (${infoS[i].study}) </span>
                    <span class=" badge bg-light text-info">Present (${infoS[i].present}) </span>
                    <span class=" badge bg-light text-primary">Ratting (${info[i].poient}) </span>
        
        
                            <div class=" btn-group btn-group-sm">
                            
                            </div>
                    
                         </li>
                       
                     
                    </ul>
        
                    `
                 
                }
        
                res.send({html: html})
                
            }

        })

      

       }



     }) 
  

   
   }









exports.public_rank_get_class_base= (req, res)=>{

    let sql= `SELECT * FROM student_rank WHERE domain='${req.hostname}' AND  class="${req.body.className}" GROUP BY student_uuid ORDER BY poient DESC`
    sqlmap.query(sql, (err, info)=>{


      if(err) console.log(err.sqlMessage);

      else
      {

       sqlmap.query(`SELECT SUM(behavior) as behavior, SUM(uniform) as uniform, SUM(present) as present, SUM(study) as study FROM student_rank WHERE domain='${req.hostname}' AND  class="${req.body.className}" GROUP BY student_uuid ORDER BY poient DESC`, (errS, infoS)=>{
           if(errS) console.log(errS.sqlMessage);


           else 
           {

               let html= "";

               for (const i in info) {
       
                   html+= 
                   /*html*/
                   `
                      
                   <ul class="list-group  mt-2 list" id="list">
                       
                       <li class="list-group-item list-group-item-primary ">
                  
                         <span class="badge bg-primary">Rank: ${parseInt(i)+parseInt(1)}</span>  
                         <img src="/image/student/resized/${info[i].avatar}" height="30px" class=" rounded" width="40px" alt="">
                    
                           <span class=" badge bg-light text-muted">${info[i].class} - ${info[i].section} </span>
                           <span class=" badge bg-light text-muted">${info[i].name} (${info[i].roll}) </span>
                   <hr>
       
                   <span class=" badge bg-light text-danger">Behavior (${infoS[i].behavior})</span>
                   <span class=" badge bg-light text-secondary"> Uniform (${infoS[i].uniform}) </span>
                   <span class=" badge bg-light text-success">Study (${infoS[i].study}) </span>
                   <span class=" badge bg-light text-info">Present (${infoS[i].present}) </span>
                   <span class=" badge bg-light text-primary">Ratting (${info[i].poient}) </span>
       
       
                           <div class=" btn-group btn-group-sm">
                           
                           </div>
                   
                        </li>
                      
                    
                   </ul>
       
                   `
                
               }
       
               res.send({html: html})
               
           }

       })

     

      }



    }) 
 

  
  }
