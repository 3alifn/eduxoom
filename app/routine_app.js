const express = require("express")
const { sqlmap, multer } = require("../server")
const app = express()






exports.public_routine_download= (req, res)=>{


    let className=req.query.className
    let sectionName=req.query.sectionName

 


    let sqlSun= `SELECT * FROM routine WHERE class="${className}" AND section="${sectionName}" AND day='ররিবার'  ORDER BY period_table `
    let sqlMon= `SELECT * FROM routine WHERE class="${className}" AND section="${sectionName}" AND day='সোমবার'  ORDER BY period_table `
    let sqlTue= `SELECT * FROM routine WHERE class="${className}" AND section="${sectionName}" AND day='মঙ্গলবার'  ORDER BY period_table `
    let sqlWed= `SELECT * FROM routine WHERE class="${className}" AND section="${sectionName}" AND day='বুধবার'  ORDER BY period_table `
    let sqlThu= `SELECT * FROM routine WHERE class="${className}" AND section="${sectionName}" AND day='বৃহস্পতিবার'  ORDER BY period_table `
 
    sqlmap.query(`SELECT * FROM routine WHERE class="${className}" AND section="${sectionName}"`, (err, info)=>{
        if(err) console.log(err.sqlMessage);

        else 
        {

            sqlmap.query(sqlSun, (errSun, infoSun)=>{

                sqlmap.query(sqlMon, (errMon, infoMon)=>{
        
                    sqlmap.query(sqlTue, (errTue, infoTue)=>{
        
                        sqlmap.query(sqlWed, (errWed, infoWed)=>{
        
                            sqlmap.query(sqlThu, (errThu, infoThu)=>{
       
                            
                                    res.render("routine/routine_page_download", { infoSun, infoMon, infoTue, infoWed, infoThu})
                       
                
                            })
               
              
                
                        })
              
                
                    })
              
                
                })
              
                
            })
        

        }
    })
 
}








exports.admin_routine_post= (req, res)=>{


    let {className, section, subject, day, periodTable,  teacherName}=req.body

 let teacherTemp= teacherName.split("$%&")
 
 let teacherPdsid= teacherTemp[1]

  let periodTemp= periodTable.split("$%&")
 
 let periodTableX= periodTemp[0]
 let periodTime= periodTemp[1]
 


 sqlmap.query(`SELECT * FROM routine WHERE class='${className}' AND section="${section}" AND day="${day}" AND subject="${subject}" AND (period_table="${periodTableX}" OR period_time="${periodTime}")`,(checkErr, checkInfo)=>{

   if(checkErr) console.log(checkErr.sqlMessage);

   if(checkInfo.length==0){
    sqlmap.query(`SELECT avatar, pds_id, name FROM teachers WHERE pds_id='${teacherPdsid}'`,(errT, infoT)=>{

        sqlmap.query(`INSERT INTO routine (class, section, day, period_table, subject, period_time, teacher_name, teacher_pdsid, teacher_avatar) 
        VALUES
         ("${className}", "${section}", "${day}", "${periodTableX}", "${subject}", "${periodTime}", "${infoT[0].name}", "${infoT[0].pds_id}", "${infoT[0].avatar}")`, (err, next)=>{
    
            if(err) console.log(err.sqlMessage);
            else res.send({msg: "Class Routine Created!", alert: 'text-success'})
    
        })
    
    
    
     })
   }

   else res.send({msg: "Class Routine Already Created!", alert: 'text-warning'})


 })

 

    }




    

exports.admin_routine_page= (req, res)=>{


    if(req.query.classBase==undefined) {
        var className="Six";
        var sectionName="A";
    }
    else {
        let value= req.query.classBase.split("-");
        var className= value[0];
        var sectionName= value[1];

    }
    
     
    
    
        let sqlSun= `SELECT * FROM routine WHERE class="${className}" AND section="${sectionName}" AND day='ররিবার'  ORDER BY period_table `
        let sqlMon= `SELECT * FROM routine WHERE class="${className}" AND section="${sectionName}" AND day='সোমবার'  ORDER BY period_table `
        let sqlTue= `SELECT * FROM routine WHERE class="${className}" AND section="${sectionName}" AND day='মঙ্গলবার'  ORDER BY period_table `
        let sqlWed= `SELECT * FROM routine WHERE class="${className}" AND section="${sectionName}" AND day='বুধবার'  ORDER BY period_table `
        let sqlThu= `SELECT * FROM routine WHERE class="${className}" AND section="${sectionName}" AND day='বৃহস্পতিবার'  ORDER BY period_table `
     
        sqlmap.query(`SELECT * FROM routine WHERE class="${className}" AND section="${sectionName}"`, (err, info)=>{
            if(err) console.log(err.sqlMessage);
    
            else 
            {
    
                sqlmap.query(sqlSun, (errSun, infoSun)=>{

    
                    sqlmap.query(sqlMon, (errMon, infoMon)=>{
            
                        sqlmap.query(sqlTue, (errTue, infoTue)=>{
            
                            sqlmap.query(sqlWed, (errWed, infoWed)=>{
            
                                sqlmap.query(sqlThu, (errThu, infoThu)=>{
           
                                
                                        res.render("admin/routine_page", { infoSun, infoMon, infoTue, infoWed, infoThu})
                           
                    
                                })
                   
                  
                    
                            })
                  
                    
                        })
                  
                    
                    })
                  
                    
                })
            
    
            }
        })
     
    }
    







exports.admin_routine_delete= (req, res)=>{

    let {dataID}=req.body;

    let sql= `DELETE FROM routine WHERE ID="${dataID}"`
    sqlmap.query(sql, (err, next)=>{

        if(err) console.log(err.sqlMessage);
        else res.send({msg: "Deleted! Successfully"})

    })

}






exports.privet_routine_page= (req, res)=>{


    let className=req.query.className==undefined?"Six":req.query.className;
    let sectionName=req.query.sectionName==undefined?"A":req.query.sectionName;

 


    let sqlSun= `SELECT * FROM routine WHERE class="${className}" AND section="${sectionName}" AND day='ররিবার'  ORDER BY period_table `
    let sqlMon= `SELECT * FROM routine WHERE class="${className}" AND section="${sectionName}" AND day='সোমবার'  ORDER BY period_table `
    let sqlTue= `SELECT * FROM routine WHERE class="${className}" AND section="${sectionName}" AND day='মঙ্গলবার'  ORDER BY period_table `
    let sqlWed= `SELECT * FROM routine WHERE class="${className}" AND section="${sectionName}" AND day='বুধবার'  ORDER BY period_table `
    let sqlThu= `SELECT * FROM routine WHERE class="${className}" AND section="${sectionName}" AND day='বৃহস্পতিবার'  ORDER BY period_table `
 
    sqlmap.query(`SELECT * FROM routine WHERE class="${className}" AND section="${sectionName}"`, (err, info)=>{
        if(err) console.log(err.sqlMessage);

        else 
        {

            sqlmap.query(sqlSun, (errSun, infoSun)=>{

                sqlmap.query(sqlMon, (errMon, infoMon)=>{
        
                    sqlmap.query(sqlTue, (errTue, infoTue)=>{
        
                        sqlmap.query(sqlWed, (errWed, infoWed)=>{
        
                            sqlmap.query(sqlThu, (errThu, infoThu)=>{
       
                            
                                    res.render("routine/routine_page_public", { infoSun, infoMon, infoTue, infoWed, infoThu})
                       
                
                            })
               
              
                
                        })
              
                
                    })
              
                
                })
              
                
            })
        

        }
    })
 
}




exports.privet_routine_page_class_base= (req, res)=>{


    let value= req.query.classBase.split("-");
    let className= value[0];
    let sectionName= value[1];

  

    let sqlSun= `SELECT * FROM routine WHERE class="${className}" AND section="${sectionName}" AND day='ররিবার'  ORDER BY period_table `
    let sqlMon= `SELECT * FROM routine WHERE class="${className}" AND section="${sectionName}" AND day='সোমবার'  ORDER BY period_table `
    let sqlTue= `SELECT * FROM routine WHERE class="${className}" AND section="${sectionName}" AND day='মঙ্গলবার'  ORDER BY period_table `
    let sqlWed= `SELECT * FROM routine WHERE class="${className}" AND section="${sectionName}" AND day='বুধবার'  ORDER BY period_table `
    let sqlThu= `SELECT * FROM routine WHERE class="${className}" AND section="${sectionName}" AND day='বৃহস্পতিবার'  ORDER BY period_table `
 
    sqlmap.query(`SELECT * FROM routine WHERE class="${className}" AND section="${sectionName}"`, (err, info)=>{
        if(err) console.log(err.sqlMessage);

        else 
        {

            sqlmap.query(sqlSun, (errSun, infoSun)=>{

                sqlmap.query(sqlMon, (errMon, infoMon)=>{
        
                    sqlmap.query(sqlTue, (errTue, infoTue)=>{
        
                        sqlmap.query(sqlWed, (errWed, infoWed)=>{
        
                            sqlmap.query(sqlThu, (errThu, infoThu)=>{
        
               
                             
                                    
                            
                                    res.render("routine/routine_page_privet", { infoSun, infoMon, infoTue, infoWed, infoThu})
                          
              
                
                            })
               
              
                
                        })
              
                
                    })
              
                
                })
              
                
            })
        

        }
    })
 
}











exports.public_routine_page= (req, res)=>{


    let className=req.query.className==undefined?"SIX":req.query.className;
    let sectionName=req.query.sectionName==undefined?"A":req.query.sectionName;

 


    let sqlSun= `SELECT * FROM routine WHERE class="${className}" AND section="${sectionName}" AND day='ররিবার'  ORDER BY period_table `
    let sqlMon= `SELECT * FROM routine WHERE class="${className}" AND section="${sectionName}" AND day='সোমবার'  ORDER BY period_table `
    let sqlTue= `SELECT * FROM routine WHERE class="${className}" AND section="${sectionName}" AND day='মঙ্গলবার'  ORDER BY period_table `
    let sqlWed= `SELECT * FROM routine WHERE class="${className}" AND section="${sectionName}" AND day='বুধবার'  ORDER BY period_table `
    let sqlThu= `SELECT * FROM routine WHERE class="${className}" AND section="${sectionName}" AND day='বৃহস্পতিবার'  ORDER BY period_table `
 
    sqlmap.query(`SELECT * FROM routine WHERE class="${className}" AND section="${sectionName}"`, (err, info)=>{
        if(err) console.log(err.sqlMessage);

        else 
        {

            sqlmap.query(sqlSun, (errSun, infoSun)=>{

                sqlmap.query(sqlMon, (errMon, infoMon)=>{
        
                    sqlmap.query(sqlTue, (errTue, infoTue)=>{
        
                        sqlmap.query(sqlWed, (errWed, infoWed)=>{
        
                            sqlmap.query(sqlThu, (errThu, infoThu)=>{
       
                            
                                    res.render("routine/routine_page_public", { infoSun, infoMon, infoTue, infoWed, infoThu, info})
                       
                
                            })
               
              
                
                        })
              
                
                    })
              
                
                })
              
                
            })
        

        }
    })
 
}




exports.public_routine_page_class_base= (req, res)=>{


    let value= req.query.classBase.split("-");
    let className= value[0];
    let sectionName= value[1];

  

    let sqlSun= `SELECT * FROM routine WHERE class="${className}" AND section="${sectionName}" AND day='ররিবার'  ORDER BY period_table `
    let sqlMon= `SELECT * FROM routine WHERE class="${className}" AND section="${sectionName}" AND day='সোমবার'  ORDER BY period_table `
    let sqlTue= `SELECT * FROM routine WHERE class="${className}" AND section="${sectionName}" AND day='মঙ্গলবার'  ORDER BY period_table `
    let sqlWed= `SELECT * FROM routine WHERE class="${className}" AND section="${sectionName}" AND day='বুধবার'  ORDER BY period_table `
    let sqlThu= `SELECT * FROM routine WHERE class="${className}" AND section="${sectionName}" AND day='বৃহস্পতিবার'  ORDER BY period_table `
 
    sqlmap.query(`SELECT * FROM routine WHERE class="${className}" AND section="${sectionName}"`, (err, info)=>{
        if(err) console.log(err.sqlMessage);

        else 
        {

            sqlmap.query(sqlSun, (errSun, infoSun)=>{

                sqlmap.query(sqlMon, (errMon, infoMon)=>{
        
                    sqlmap.query(sqlTue, (errTue, infoTue)=>{
        
                        sqlmap.query(sqlWed, (errWed, infoWed)=>{
        
                            sqlmap.query(sqlThu, (errThu, infoThu)=>{
        
               
                             
                                    
                            
                                    res.render("routine/routine_page_public", { infoSun, infoMon, infoTue, infoWed, infoThu})
                          
              
                
                            })
               
              
                
                        })
              
                
                    })
              
                
                })
              
                
            })
        

        }
    })
 
}









exports.admin_subject_dynamic_get= (req, res)=>{
    let {className}= req.body;

    sqlmap.query(`SELECT subject FROM subject WHERE class="${className}" GROUP BY subject ORDER BY ID DESC`, (err, info)=>{
        if(err) console.log(err.sqlMessage);

        else 
        {
            let html= "";

            for (i in info) {
               
                html+= `]
                
                <option  value="${info[i].subject}">${info[i].subject}</option>
            `

        }

    

        res.send({html})

        }

        
    })
}








exports.admin_teacher_dynamic_get= (req, res)=>{
    // let {className, subjectName}= req.body;



    sqlmap.query(`SELECT name, pds_id FROM teachers ORDER BY ID DESC`, (err, info)=>{
        if(err) console.log(err.sqlMessage);

        else 
        {
            let html= `
            <option selected disabled value="">Select Teacher</option>
            `;

            for (i in info) {
               
                html+= `
                
                <option  value="${info[i].name+"$%&"+info[i].pds_id}">${info[i].name+"-"+info[i].pds_id}</option>
            `

        }


        res.send({html})

        }

        
    })
}










exports.admin_ptlist_dynamic_get= (req, res)=>{
    let {className, sectionName}= req.body;

    sqlmap.query(`SELECT period_time FROM subject ORDER BY period_time`, (err, info)=>{
        if(err) console.log(err.sqlMessage);

        else 
        {
            let ptlist= "";

            for (i in info) {
               
                ptlist+= `
                
                <option  value="${info[i].period_time}">${info[i].period_time}</option>
            `

        }

    

        res.send({ptlist})

        }

        
    })
}



