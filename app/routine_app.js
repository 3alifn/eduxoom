const express = require("express")
const { sqlmap, multer } = require("../server")
const app = express()



exports.admin_routine_post= (req, res)=>{

    let {className, subject, day, periodTable,  teacherName}=req.body

 let teacherTemp= teacherName.split("$%&")
 
 let teacherIndex= teacherTemp[1]

  let periodTemp= periodTable.split("$%&")
 
 let periodTableX= periodTemp[0]
 let periodTime= periodTemp[1]
 


 sqlmap.query(`SELECT * FROM routine WHERE domain='${req.hostname}' AND  class='${className}'  AND day="${day}" AND subject="${subject}" AND (period_table="${periodTableX}" OR period_time="${periodTime}")`,(checkErr, checkInfo)=>{

   if(checkErr) console.log(checkErr.sqlMessage);

   if(checkInfo.length==0){
    sqlmap.query(`SELECT * FROM teachers WHERE domain='${req.hostname}' AND  index_number='${teacherIndex}'`,(errT, infoT)=>{

        sqlmap.query(`INSERT INTO routine (domain, class, day, period_table, subject, period_time, teacher_name, teacher_index, teacher_avatar) 
        VALUES
         ('${req.hostname}', "${className}", "${day}", "${periodTableX}", "${subject}", "${periodTime}", "${infoT[0].name}", "${infoT[0].index_number}", "${infoT[0].avatar}")`, (err, next)=>{
    
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
    }
    else {
        var className= req.query.classBase;

    }
    
    
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

    let sql= `DELETE FROM routine WHERE domain='${req.hostname}' AND  ID="${dataID}"`
    sqlmap.query(sql, (err, next)=>{

        if(err) console.log(err.sqlMessage);
        else res.send({msg: "Deleted! Successfully"})

    })

}


exports.public_routine_page= (req, res)=>{

    let className=req.query.className==undefined?"SIX":req.query.className;


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
    let {className}= req.body;

    sqlmap.query(`SELECT subject FROM subject WHERE domain='${req.hostname}' AND  class="${className}" GROUP BY subject ORDER BY ID DESC`, (err, info)=>{
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



    sqlmap.query(`SELECT * FROM teachers WHERE domain='${req.hostname}' ORDER BY ID DESC`, (err, info)=>{
        if(err) console.log(err.sqlMessage);

        else 
        {
            let html= `
            <option selected disabled value="">Select Teacher</option>
            `;

            for (i in info) {
               
                html+= `
                
                <option  value="${info[i].name+"$%&"+info[i].index_number}">${info[i].name+"-"+info[i].index_number}</option>
            `

        }


        res.send({html})

        }

        
    })
}










exports.admin_ptlist_dynamic_get= (req, res)=>{
    let {className, sectionName}= req.body;

    sqlmap.query(`SELECT * FROM subject WHERE domain='${req.hostname}' ORDER BY period_time`, (err, info)=>{
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



