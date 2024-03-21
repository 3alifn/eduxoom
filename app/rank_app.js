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

            res.redirect('/pages/empty.html')

          }
    
          else res.render("public/rank_class_page_public", {infoSix, infoSeven, infoEight, infoNine, infoTen})
      
         
        })
    
    
      
        })
  
  
    
      })


  
    })

  })

}





exports.public_rank_page= (req, res)=>{
  const className=  req.params.class_name;
 sqlmap.query(`SELECT * FROM student_rank WHERE domain='${req.hostname}' AND  class="${className}" AND section="A" GROUP student_uuid ORDER BY poient DESC `, (errA, infoA)=>{
  if(errA) console.log(errA.sqlMessage);


  sqlmap.query(`SELECT * FROM student_rank WHERE domain='${req.hostname}' AND  class="${className}" AND section="B" GROUP student_uuid ORDER  BY poient DESC `, (errB, infoB)=>{
    if(errB) console.log(errB.sqlMessage);
  

    sqlmap.query(`SELECT * FROM student_rank WHERE domain='${req.hostname}' AND  class="${className}" AND section="C" GROUP student_uuid ORDER  BY poient DESC `, (errC, infoC)=>{
      if(errC) console.log(errC.sqlMessage);

      
    
      res.render("public/rank_page_public", {infoA, infoB, infoC, className})
    
     })
    
  
   })


 })

}



exports.teacher_rank_mark_init_page= (req, res)=>{
  res.render("rank/daily_mark_init_page_teacher")   
   }




exports.teacher_rank_mark_page= (req, res)=>{
    const {class_name, section_name}= req.params;  
    const today= new Date().toDateString()
     sqlmap.query(`SELECT * FROM students  WHERE domain='${req.hostname}' AND  class="${class_name}" AND section='${section_name}' GROUP BY student_uuid ORDER BY roll LIMIT 20 OFFSET 0`, (err, info)=>{
       if(err) console.log(err.sqlMessage);
       else {
        if(info.length>0){
          res.render("rank/daily_mark_page_teacher", {info, today, class_name, section_name})
        } else res.redirect('/pages/empty.html')
       }
     }) 
  
   
   
   }





exports.teacher_rank_mark_page_num= (req, res)=>{
const {class_name, section_name, offset}= req.body;
    sqlmap.query( `SELECT * FROM students  WHERE domain='${req.hostname}' AND  class="${class_name}" AND section='${section_name}' GROUP BY student_uuid
     ORDER BY roll LIMIT 20 OFFSET ${offset}`, (err, info)=>{

    if(err) console.log(err.sqlMessage);

    else 
    {
        if(info.length>0){

          var htmldata= '';
        for (const index in info) {
          htmldata+= 
          ` 
          <ul class="list-group findcard mt-2" id="list">
              <li class="list-group-item list-group-item-light shadow">
                  <img src="/image/student/resized/${info[index].avatar}" height="30px" class=" rounded"
                      width="40px" alt="">

                  <span class="  bg-light text-muted">(${info[index].class} - ${info[index].section} - ${info[index].roll})
                  </span>
                  <span class="  bg-light text-dark">
                     ${info[index].name} 
                  </span>
                  <hr> <span class=" btn-lg  badge bg-light text-dark">Behavior</span> <br>
                
                  <div class=" btn-group btn-group-sm ">

                      <button onclick="post_mark_def('behavior', 'b1', -1.666, '${info[index].student_uuid}', '${info[index].name}', '${info[index].roll}', '${info[index].avatar}')" class="b1_${info[index].student_uuid} btn btn-danger fs-3 bg-light text-danger ">&#10030;</button>

                      <button onclick="post_mark_def('behavior', 'b2', 0.666, '${info[index].student_uuid}', '${info[index].name}', '${info[index].roll}', '${info[index].avatar}')" class="b2_${info[index].student_uuid} btn btn-primary fs-3 bg-light text-primary">&#10030;&#10030;</button>
                     
                      <button onclick="post_mark_def('behavior', 'b3', 1.666, '${info[index].student_uuid}', '${info[index].name}', '${info[index].roll}', '${info[index].avatar}')" class="b3_${info[index].student_uuid} btn btn-success fs-3 bg-light text-success ">&#10030;&#10030;&#10030;</button>

                  </div>

                  <hr> <span class=" btn-lg  badge bg-light text-dark">Uniform</span> <br>
              
                  <div class=" btn-group btn-group-sm ">

                      <button onclick="post_mark_def('uniform', 'u1', -1.555, '${info[index].student_uuid}',  '${info[index].name}', '${info[index].roll}', '${info[index].avatar}',)" class="u1_${info[index].student_uuid} btn btn-danger fs-3 bg-light  text-danger ">&#10026;</button>
                     
                      <button onclick="post_mark_def('uniform', 'u2', 0.555, '${info[index].student_uuid}',  '${info[index].name}', '${info[index].roll}', '${info[index].avatar}',)"  class="u2_${info[index].student_uuid} btn btn-primary fs-3 bg-light text-primary">&#10026;&#10026;</button>
                   
                      <button onclick="post_mark_def('uniform', 'u3', 1.555, '${info[index].student_uuid}', '${info[index].name}', '${info[index].roll}', '${info[index].avatar}',)"  class="u3_${info[index].student_uuid}  btn btn-success fs-3 bg-light text-success ">&#10026;&#10026;&#10026;</button>
                  </div>


                  <hr> <span class=" btn-lg  badge bg-light text-dark">Study</span> <br>
            
                  <div class=" btn-group btn-group-sm ">

                      <button onclick="post_mark_def('study', 's1', -1.333, '${info[index].student_uuid}', '${info[index].name}', '${info[index].roll}', '${info[index].avatar}',)" class="s1_${info[index].student_uuid} btn btn-danger fs-3 bg-light text-danger ">&#x2730;</button>

                      <button onclick="post_mark_def('study', 's2', 0.333,'${info[index].student_uuid}', '${info[index].name}', '${info[index].roll}', '${info[index].avatar}',)" class="s3_${info[index].student_uuid} btn btn-primary fs-3 bg-light text-primary">&#x2730;&#x2730; </button>
                   
                      <button onclick="post_mark_def('study', 's3', 1.333, '${info[index].student_uuid}', '${info[index].name}', '${info[index].roll}', '${info[index].avatar}',)" class="s3_${info[index].student_uuid} btn btn-success fs-3  bg-light text-success ">&#x2730;&#x2730;&#x2730;</button>

                  </div>
              </li>


          </ul>`
        }

        res.send({htmldata, data: true})
        } else res.send({data: false})
    }

   })



   
   
   }






exports.teacher_rank_mark_post= (req, res)=>{
 const {class_name, section_name, column, mark, sid, roll, name, avatar}= req.body;
  const defaultNumber= 1;
  const teacher_uuid= req.session.teacher_uuid;
  const session= new Date().getUTCFullYear();
  const find_date = new Date().toLocaleDateString();
  const rank_date= new Date().toDateString();
   sqlmap.query(`SELECT * FROM student_rank WHERE domain='${req.hostname}' AND class='${class_name}' AND section='${section_name}' AND  student_uuid='${sid}' AND rank_date="${rank_date}" AND teacher_uuid='${teacher_uuid}' AND ${column}=1`, (err, info)=>{
    if(err) console.log(err.sqlMessage);
    if(info.length==0)
    {
        sqlmap.query(`INSERT INTO student_rank (domain, session, find_date, rank_date, ${column}, teacher_uuid, student_uuid, class, section, roll, name, avatar) 
        VALUES(
        '${req.hostname}',
         ${session},
          "${find_date}",
          "${rank_date}",
           ${defaultNumber},
          ${teacher_uuid},
          ${sid},
          '${class_name}',
          '${section_name}',
          ${roll},
          '${name}',
          '${avatar}')`,
          (errInsert, next)=>{
          
          if(errInsert) console.log(errInsert+' errInsert');

            sqlmap.query(`SELECT poient FROM student_rank WHERE domain='${req.hostname}' AND class='${class_name}' AND section='${section_name}' AND student_uuid=${sid} ORDER BY poient DESC LIMIT 1`, (err3, info3)=>{
              if(err3) console.log(err3.sqlMessage+' err3');
       
              else 
              {
                const marked= info3[0].poient==undefined?1:parseFloat(info3[0].poient)+parseFloat(mark);
                console.log(marked);
                sqlmap.query(`UPDATE student_rank SET poient=${marked} WHERE domain='${req.hostname}'  AND class='${class_name}' AND section='${section_name}' AND  student_uuid=${sid}`, (err4, info4)=>{
    
                  if(err4) console.log(err4.sqlMessage+' err4');
        
                  else {
                    // console.log('marked...');
                    res.send({msg: true})
                  }
        
                })
    
              }
    
            })
    
      
        })
    
    
    }
  
    else {
      // console.log('locked...');
      res.send({msg: true})
    }
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
