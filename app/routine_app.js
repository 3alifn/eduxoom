const {express, app, sqlmap, multer } = require("../server")


exports.admin_routine_post= (req, res)=>{

    const {class_name, subject_name, day_name, periodTable,  teacher_name}=req.body
 let teacherTemp= teacher_name.split("$%&")
 
 let teacher_uuid= teacherTemp[1]

  let periodTemp= periodTable.split("$%&")
 
 let periodTableX= periodTemp[0]
 let periodTime= periodTemp[1]
 

 sqlmap.query(`SELECT * FROM routine WHERE domain='${req.hostname}' AND  class='${class_name}'  AND day="${day_name}" AND subject="${subject_name}" AND period_table="${periodTableX}"`,(checkErr, checkInfo)=>{

   if(checkErr) console.log(checkErr.sqlMessage);

   if(checkInfo.length==0){
    sqlmap.query(`SELECT * FROM teachers WHERE domain='${req.hostname}' AND  teacher_uuid='${teacher_uuid}'`,(errT, infoT)=>{

        sqlmap.query(`INSERT INTO routine (domain, class, day, period_table, subject, period_time, teacher_name, teacher_uuid, teacher_avatar) 
        VALUES
         ('${req.hostname}', "${class_name}", "${day_name}", "${periodTableX}", "${subject_name}", "${periodTime}", "${infoT[0].name}", "${infoT[0].teacher_uuid}", "${infoT[0].avatar}")`, (err, next)=>{
    
            if(err) console.log(err.sqlMessage); 
            else res.send({msg: "Class Routine Created!", alert: 'alert-success'})
    
        })
    
    
    
     })
   }

   else res.send({msg: "Class Routine Already Created!", alert: 'alert-warning'})


 })

 

    }


exports.admin_routine_get= (req, res)=>{
        const {class_name, day_name}= req.body; 
                sqlmap.query(`SELECT * FROM routine WHERE domain='${req.hostname}' AND  class="${class_name}"  AND day='${day_name}'  ORDER BY period_table`, (err, info)=>{
                    if (err) console.log(err.sqlMessage);
                    
                   if(info.length>0){ 
    
                    var htmldata= ``;
                    for (const index in info) { 
                        htmldata+=
                        `   
                        <div class="col-md-6 col-10 flex-fill p-2 m-auto">
                        <div class="card shadowx bg-card-color-light mt-2  pb-2">
                          <input  class=" shadowx ms-2 p-2 form-check-input" value="${info[index].ID}" type="checkbox" name="dataid[]" id="">
                    
                          <div class="d-flex ps-2 pe-2 justify-content-center align-items-center  fw-semibold">
                           <img class="avatar-circle ms-2 mb-2  bg-card-color-light" style="width: 60px; height: 60px;" src="/image/teacher/resized/${info[index].avatar}" alt="">
                           <p class="flex-fill p-2 rounded shadowx text-dark fs-6 m-1 bg-light"> ${info[index].teacher_name}</p>
                          </div>
                    
                          <div class="d-flex ps-2 pe-2 flex-wrap fw-semibold justify-content-center">
                            
                            <p class="flex-fill p-2 rounded shadowx text-dark fs-6 m-1 bg-light"> ${info[index].class} - ${info[index].day} - ${info[index].period_table}</p>
                            <p class="flex-fill p-2 rounded shadowx text-dark fs-6 m-1 bg-light"> ${info[index].subject} - ${info[index].period_time}</p>
                    
                          </div>
                        
                          </div>
                      </div>
                      `
                        }
                        res.send({htmldata})
                   }
                  
                })
            
     }
     





exports.admin_routine_rm= (req, res)=>{
        const {dataid}= req.body;
      if(dataid==undefined){
          res.send({msg: "Data not found!", alert: "alert-info"})
    
      }
      else {            
        sqlmap.query(`DELETE FROM routine WHERE domain='${req.hostname}' AND  ID IN (${dataid})`, (err, next)=>{
            if(err) console.log(err.sqlMessage);
            else  res.send({msg: "Data Deleted! Successfully!", alert: "alert-success"})
                
        })
        
        
      }
      
      
      
      
      }
    



exports.public_routine_page= (req, res)=>{

    let className=req.query.className==undefined?"SIX":req.query.className;


    let sqlAll= `SELECT * FROM routine WHERE domain='${req.hostname}' AND  class="${className}"  AND day='ররিবার' OR day='সোমবার' OR day='মঙ্গলবার' OR day='বুধবার' OR day='বৃহস্পতিবার'`
    let sqlSun= `SELECT * FROM routine WHERE domain='${req.hostname}' AND  class="${className}"  AND day='ররিবার'  ORDER BY period_table `
    let sqlMon= `SELECT * FROM routine WHERE domain='${req.hostname}' AND  class="${className}"  AND day='সোমবার'  ORDER BY period_table `
    let sqlTue= `SELECT * FROM routine WHERE domain='${req.hostname}' AND  class="${className}"  AND day='মঙ্গলবার'  ORDER BY period_table `
    let sqlWed= `SELECT * FROM routine WHERE domain='${req.hostname}' AND  class="${className}"  AND day='বুধবার'  ORDER BY period_table `
    let sqlThu= `SELECT * FROM routine WHERE domain='${req.hostname}' AND  class="${className}"  AND day='বৃহস্পতিবার'  ORDER BY period_table `
 
    sqlmap.query(`SELECT * FROM routine WHERE domain='${req.hostname}' AND  class="${className}" `, (err, info)=>{
        if(err) console.log(err.sqlMessage);

        else 
        {

            sqlmap.query(sqlAll, (errAll, infoAll)=>{
            sqlmap.query(sqlSun, (errSun, infoSun)=>{

                sqlmap.query(sqlMon, (errMon, infoMon)=>{
        
                    sqlmap.query(sqlTue, (errTue, infoTue)=>{
        
                        sqlmap.query(sqlWed, (errWed, infoWed)=>{
        
                            sqlmap.query(sqlThu, (errThu, infoThu)=>{
                                   
                                if(infoAll.length>0) {
                                    res.render("public/routine_page_public", { infoSun, infoMon, infoTue, infoWed, infoThu, info})
                                }
                                else {
                                    res.redirect('/pages/empty.html')
                                }
                            
                                    
                       
                
                            })
               
              
                
                        })
              
                
                    })
              
                
                })

                })
              
                
            })
        

        }
    })
 
}




exports.public_routine_page_class_base= (req, res)=>{

     var className= req.query.classBase;

    let sqlSun= `SELECT * FROM routine WHERE domain='${req.hostname}' AND  class="${className}"  AND day='ররিবার'  ORDER BY period_table `
    let sqlMon= `SELECT * FROM routine WHERE domain='${req.hostname}' AND  class="${className}"  AND day='সোমবার'  ORDER BY period_table `
    let sqlTue= `SELECT * FROM routine WHERE domain='${req.hostname}' AND  class="${className}"  AND day='মঙ্গলবার'  ORDER BY period_table `
    let sqlWed= `SELECT * FROM routine WHERE domain='${req.hostname}' AND  class="${className}"  AND day='বুধবার'  ORDER BY period_table `
    let sqlThu= `SELECT * FROM routine WHERE domain='${req.hostname}' AND  class="${className}"  AND day='বৃহস্পতিবার'  ORDER BY period_table `
 
    sqlmap.query(`SELECT * FROM routine WHERE domain='${req.hostname}' AND  class="${className}" `, (err, info)=>{
        if(err) console.log(err.sqlMessage);

        else 
        {

            sqlmap.query(sqlSun, (errSun, infoSun)=>{

                sqlmap.query(sqlMon, (errMon, infoMon)=>{
        
                    sqlmap.query(sqlTue, (errTue, infoTue)=>{
        
                        sqlmap.query(sqlWed, (errWed, infoWed)=>{
        
                            sqlmap.query(sqlThu, (errThu, infoThu)=>{
        
               
                             
                                    
                            
                                    res.render("public/routine_page_public", { infoSun, infoMon, infoTue, infoWed, infoThu, info})
                          
              
                
                            })
               
              
                
                        })
              
                
                    })
              
                
                })
              
                
            })
        

        }
    })
 
}





exports.admin_subject_dynamic_get= (req, res)=>{
    const {class_name}= req.body;

    sqlmap.query(`SELECT subject FROM subject WHERE domain='${req.hostname}' AND  class="${class_name}" GROUP BY subject ORDER BY subject`, (err, info)=>{
        if(err) console.log(err.sqlMessage);

        else 
        {
            let htmldata= "";

            for (i in info) {
               
                htmldata+= `<option  value="${info[i].subject}">${info[i].subject}</option>`

        }

    

        res.send({htmldata})

        }

        
    })
}




exports.admin_teacher_dynamic_get= (req, res)=>{

    sqlmap.query(`SELECT * FROM teachers WHERE domain='${req.hostname}' ORDER BY name`, (err, info)=>{
        if(err) console.log(err.sqlMessage);

        else 
        {
            let htmldata= `
            <option selected disabled value="">Choose a teacher</option>
            `;

            for (i in info) {
               
                htmldata+= `<option  value="${info[i].name+"$%&"+info[i].teacher_uuid}">${info[i].name+"-"+info[i].index_number}</option>`

        }


        res.send({htmldata})

        }

        
    })
}



