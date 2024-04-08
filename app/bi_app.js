const {app, express, dotenv, nodemailer, mysql, sqlmap, multer, session, createHmac, randomBytes} = require("../server")
var regexTelephone= /^01[0-9]*$/
var regexNumber= /^[0-9]*$/
var regexString= /^[A-Za-z .-_]*$/
var regexBi= /^[A-Za-z0-9-_]*$/
var regexPassword= /^[a-zA-Z0-9!@#$%&*]*$/
var regexEmail= /^([a-zA-Z0-9_\-\.]+)@((\[[0-9]{1,3}\.[0-9]{1,3}\.[0-9]{1,3}\.)|(([a-zA-Z0-9\-]+\.)+))([a-zA-Z]{2,4}|[0-9]{1,3})(\]?)$/ 
const chapter_six= require('../chapter_api')


exports.teacher_bi_info= (req, res)=>{
    const {ID}= req.body;
sqlmap.query(`SELECT * FROM ini_bi_catagory WHERE domain='${req.hostname}' AND  ID=${ID}`, (err, info)=>{
    if(err) console.log(err.sqlMessage);
    const data= `<p>${info[0].catagory_name}</p>`
    res.send({data})
})
}



exports.admin_bi_catagory_post= (req, res)=>{
    const get= req.body;
    const session= new Date().getUTCFullYear();

    for (let index = 0; index < get.catagory_name.length; index++) {
       const randomString= randomBytes(10).toString('hex');
        sqlmap.query(`INSERT INTO bi_catagory (session, domain, catagory_name, catagory_code)
        VALUES(${session}', ${req.hostname}', '${get.catagory_name[index]}', '${randomString}')`, (err, post)=>{
            if(err) console.log(err.sqlMessage);
            
        })
}
res.send({msg: 'Adding successfully!'})

}
    


exports.admin_bi_catagory_get= (req, res)=>{

    sqlmap.query(`SELECT * FROM ini_bi_catagory  GROUP BY catagory_code ORDER BY ID`, (err, info)=>{
        if(err) console.log(err.sqlMessage);
        let tbody_data= '';
        for (let index = 0; index < info.length; index++) {

            tbody_data+=`<tr>
            <td> 
            <textarea  class="_inputbox-${info[index].ID}" disabled placeholder="catagory name" disabled cols='40' rows='5'>${info[index].catagory_name}</textarea>
            </td>
            <td> 
            <span  class="_penbox-sm-area-${info[index].ID}">
            <button data-id="${info[index].ID}" onclick='_penbox_sm_pull(${info[index].ID})' class="btn disabled edit-btn"><i class='bi bi-pen-fill'></i></button>
            </span>   

             <span class='_delbox-sm-area-${info[index].ID}'>
             <button data-id="${info[index].ID}" onclick='_delbox_sm_pull(${info[index].ID})'  class="btn disabled "><i class='bi bi-trash-fill'></i></button>
   
            </span>
         </td>

        </tr>`

        }

        res.send({tbody_data})
    })

}




exports.admin_bi_catagory_update_post= (req, res)=>{
    const {catagory_id, catagory_name}= req.body;
    sqlmap.query(`UPDATE bi_catagory SET catagory_name='${catagory_name}' WHERE domain='${req.hostname}' AND  ID=${catagory_id}`, (err, done)=>{
        if(err)console.log(err.sqlMessage);
        else res.send({msg: 'successfully!'})
    })
}




exports.admin_bi_catagory_delete= (req, res)=>{
const {catagory_id}= req.body;
sqlmap.query(`DELETE FROM bi_catagory WHERE domain='${req.hostname}' AND  ID=${catagory_id}`, (err, done)=>{
    if(err) console.log(err.sqlMessage);
    else res.send({msg: 'successfully!'})
})


}





exports.teacher_bi_page_mark_get= (req, res)=>{
    const teacher_uuid= req.session.teacher_uuid; 
    const {className, sectionName, page}= req.params; if(page==1) var offset=0; else var offset=page-1; const limit=20; 

    sqlmap.query(`SELECT * FROM ini_bi_catagory GROUP BY catagory_name ORDER BY ID`, (err_catagory, infoCatagory)=>{
        if(err_catagory) console.log(err_catagory.sqlMessage);

        sqlmap.query(`SELECT COUNT(student_uuid) as student_row FROM students WHERE domain='${req.hostname}' AND  class='${className}' AND section='${sectionName}'`
       ,(err_row, count_row)=>{
         if(err_row) console.log(err_row.sqlMessage);
        const student_row= count_row[0].student_row;
        const pagination= student_row / limit 
        if(Math.ceil(pagination)==page) var nextbtnstatus= 'disabled'; else nextbtnstatus=''
        if(page==1) var prevbtnstatus= 'disabled';  else prevbtnstatus=''
        sqlmap.query(`SELECT * FROM students WHERE domain='${req.hostname}' AND  class='${className}' AND section='${sectionName}'
         ORDER BY roll LIMIT ${limit} OFFSET ${offset*limit}`
        ,(errStudent, infoStudentData)=>{
    
        if(infoStudentData.length>0){
            const infoStudent= infoStudentData;
            res.render('bi/bi-page-mark-teacher', {infoStudent, infoCatagory, pagination, page, nextbtnstatus, prevbtnstatus, className, sectionName, teacher_uuid})
        }
        else res.redirect('/pages/empty.html')
    
    
        })

        })

        
    })
}




exports.teacher_bi_report_get= ( req , res)=>{

    const teacher_uuid= req.session.teacher_uuid;
    const {className, sectionName,page}= req.params; if(page==1) var offset=0; else var offset=page-1; const limit=20; 
    sqlmap.query(`SELECT * FROM ini_bi_catagory ORDER BY ID`, (err_catagory, infoCatagory)=>{
        if(err_catagory) console.log(err_catagory.sqlMessage);

        sqlmap.query(`SELECT COUNT(student_uuid) as student_row FROM bi_mark WHERE domain='${req.hostname}' AND  class='${className}' AND section='${sectionName}' AND teacher_uuid='${teacher_uuid}' GROUP BY student_uuid`
       ,(err_row, count_row)=>{
         if(err_row) console.log(err_row.sqlMessage);
         if(count_row.length>0){
            const student_row= count_row[0].student_row;
            const pagination= student_row / limit 
            if(Math.ceil(pagination)==page) var nextbtnstatus= 'disabled'; else nextbtnstatus=''
            if(page==1) var prevbtnstatus= 'disabled';  else prevbtnstatus='null'
            sqlmap.query(`SELECT * FROM bi_mark WHERE domain='${req.hostname}' AND  class='${className}' AND section='${sectionName}'
            AND teacher_uuid='${teacher_uuid}' GROUP BY student_uuid ORDER BY ID LIMIT ${limit} OFFSET ${offset*limit}`
            ,(errStudent, infoStudentData)=>{
        if(infoStudentData.length>0){ 
            const infoStudent= infoStudentData;
            res.render('bi/bi-page-report-teacher',{infoStudent, infoCatagory,pagination, page, nextbtnstatus, prevbtnstatus, className, sectionName, teacher_uuid})
        }
        else res.redirect('/pages/empty.html')
    
    
        })
         }   else res.redirect('/pages/empty.html')

    }) 
    })

}





const teacher_bi_transcript_post= ( domain, teacher_uuid, roll,  className, sectionName, bi_no, bi_group, catagory, bi, student_uuid, name, checkout )=>{
    const session= new Date().getUTCFullYear();
//   console.log(bi_group);
    sqlmap.query(`SELECT * FROM bi_transcript WHERE domain='${domain}' AND  teacher_uuid='${teacher_uuid}' AND student_uuid='${student_uuid}' AND class='${className}' AND section='${sectionName}' AND catagory='${catagory}'`
    , (errCheck, infoCheck)=>{
        if(errCheck) console.log(errCheck.sqlMessage);
        if(infoCheck==undefined||infoCheck.length===0){
            sqlmap.query(`INSERT INTO bi_transcript (domain, session, class, section, bi_no, bi_group, teacher_uuid, student_uuid, roll, name, catagory, bi, checkout) 
            VALUES('${domain}', ${session}, '${className}', '${sectionName}', '${bi_no}', '${bi_group}',  '${teacher_uuid}','${student_uuid}', '${roll}', '${name}', '${catagory}', '${bi}', '${checkout}')`, (errPost, nextPost)=>{
                if(errPost) console.log(errPost.sqlMessage);
                // console.log('bi_transcript_makeing!');
                else {
                    teacher_bi_transcript_post_update(domain, className, sectionName, student_uuid)

              
            }
            })
        } else console.log('already none!');
    })


}



const teacher_bi_transcript_post_update= (domain, className,  sectionName, student_uuid)=>{

      sqlmap.query(`SELECT * FROM ini_bi_catagory GROUP BY catagory_name ORDER BY ID`, (err_catagory, infoCatagory)=>{
  
      for (let index = 0; index < infoCatagory.length; index++) {
          sqlmap.query(`SELECT count(bi) as bi FROM bi_transcript WHERE domain='${domain}' AND  class='${className}' AND section='${sectionName}' AND student_uuid='${student_uuid}' AND catagory='${infoCatagory[index].catagory_code}' AND bi =-1`,(err_bi_danger, info_bi_danger)=>{
              if(err_bi_danger) console.log(err_bi_danger.sqlMessage);
              
              sqlmap.query(`SELECT count(bi) as bi FROM bi_transcript WHERE domain='${domain}' AND  class='${className}' AND section='${sectionName}' AND student_uuid='${student_uuid}' AND catagory='${infoCatagory[index].catagory_code}' AND bi =0`,(err_bi_warning, info_bi_warning)=>{
                  if(err_bi_warning) console.log(err_bi_warning.sqlMessage);
          
                  sqlmap.query(`SELECT count(bi) as bi FROM bi_transcript WHERE domain='${domain}' AND  class='${className}' AND section='${sectionName}' AND student_uuid='${student_uuid}' AND catagory='${infoCatagory[index].catagory_code}' AND bi =1`,(err_bi_success, info_bi_success)=>{
          
          if(err_bi_success) console.log(err_bi_success.sqlMessage);
          
            if(info_bi_success[0].bi>=info_bi_warning[0].bi && info_bi_success[0].bi>=info_bi_danger[0].bi){
              var bg_color= 'bg-success' ; var bi_point= 1;
              
            }
          
           else if(info_bi_warning[0].bi>=info_bi_danger[0].bi){
              var bg_color= 'bg-warning'; var bi_point= 0;
              
            }
          
            else {
              var bg_color= 'bg-danger'; var bi_point= -1;
            }
          
           sqlmap.query(`UPDATE bi_transcript SET bi_point='${bi_point}', bg_color='${bg_color}' WHERE domain='${domain}'  AND  student_uuid='${student_uuid}' AND catagory='${infoCatagory[index].catagory_code}'`
           ,(errUpdate, infoUpdate)=>{
          
              if(errUpdate) console.log(errUpdate.sqlMessage);
            //   else console.log('updated with ajax...'+bi_point +' '+ bg_color);
           })
          
  
                  })
          
              })
          
          })
  
  }
  
      })
  
  }


exports.teacher_bi_mark_post= (req, res)=>{
    const teacher_uuid= req.session.teacher_uuid;
    const session= new Date().getUTCFullYear();
    const domain= req.hostname;
    const {className,sectionName,bi_no, bi, student_uuid, roll, name, avatar, catagory, checkout, bg_color}= req.body;
    var g01= ['1','2','9','10'].includes(bi_no); var g02=['3','4','5','6'].includes(bi_no); var g03=['7','8'].includes(bi_no)
    if(g01==true){var bi_group='gp1'}else if(g02==true){var bi_group='gp2'}else{var bi_group='gp3'}
    sqlmap.query(`SELECT * FROM bi_mark WHERE domain='${req.hostname}' AND  teacher_uuid='${teacher_uuid}' AND class='${className}' AND section='${sectionName}' AND student_uuid='${student_uuid}' AND catagory='${catagory}'`,
     (errCheck, infoCheck)=>{
        if(errCheck) console.log(errCheck.sqlMessage);
        if(infoCheck===undefined || infoCheck.length===0){

            sqlmap.query(`INSERT INTO bi_mark (domain, session, class, section, bi_no, bi_group, teacher_uuid, student_uuid, roll, name, avatar, catagory, bi, checkout, bg_color)
            VALUES('${req.hostname}', ${session}, '${className}', '${sectionName}', '${bi_no}', '${bi_group}', '${teacher_uuid}','${student_uuid}', ${roll}, '${name}', '${avatar}', '${catagory}', ${bi}, '${checkout}', '${bg_color}')`, (errPost, nextPost)=>{
                if(errPost) console.log(errPost.sqlMessage);
                else { 

                    teacher_bi_transcript_post(domain, teacher_uuid, roll,  className, sectionName, bi_no, bi_group, catagory, bi, student_uuid, name, checkout)
                    
                    res.send({msg: 'success'}) 

                }
            })
        }
          else console.log(undefined+'!503');
    })

}








exports.admin_bi_transcript_report_checkout=(req, res)=>{
    const {className,sectionName, student_uuid}= req.body;
    const domain= req.hostname;
    teacher_bi_transcript_post_update(domain, className, sectionName, student_uuid)

    sqlmap.query(`SELECT * FROM ini_bi_catagory GROUP BY catagory_name ORDER BY ID`, (err_catagory, infoCatagory)=>{
   
        sqlmap.query(`SELECT bi_group, bi_point, bi_no, ID  FROM bi_transcript WHERE domain='${req.hostname}' AND  class='${className}' AND section='${sectionName}' 
        AND student_uuid='${student_uuid}' AND bi_group='gp1' GROUP BY bi_no ORDER BY ID DESC`,
    (errg01, infog01)=>{
        
        sqlmap.query(`SELECT bi_group, bi_point, bi_no, ID  FROM bi_transcript WHERE domain='${req.hostname}' AND  class='${className}' AND section='${sectionName}'
         AND student_uuid='${student_uuid}' AND bi_group='gp2' GROUP BY bi_no ORDER BY ID DESC`,
        (errg02, infog02)=>{
            
            
            sqlmap.query(`SELECT bi_group, bi_point, bi_no, ID  FROM bi_transcript WHERE domain='${req.hostname}' AND  class='${className}' AND section='${sectionName}' 
            AND student_uuid='${student_uuid}' AND bi_group='gp3' GROUP BY bi_no ORDER BY ID DESC`,
            (errg03, infog03)=>{
           
                if(infog01.length>0){
                 var tempgp01= [];
                 for (const key in infog01) {
                    tempgp01.push((infog01[key].bi_point));
                }
                
               var get_gp01=  tempgp01.reduce((a, b)=>{
                   return a+=b;
                })
// ................
                }
                
                if(infog02.length>0){
                 var tempgp02= [];
                 for (const key in infog02) {
                    tempgp02.push((infog02[key].bi_point));
                }
                
               var get_gp02=  tempgp02.reduce((a, b)=>{
                   return a+=b;
                })
// .................
                }

                if(infog03.length>0){
                 var tempgp03= [];
                    
                       
       
                for (const key in infog03) {
                    tempgp03.push((infog03[key].bi_point));
                }
                
               var get_gp03=  tempgp03.reduce((a, b)=>{
                   return a+=b;
                })
               
                }
         
                   
                const gp01v= (((get_gp01)/4)*100);
                const gp02v= (((get_gp02)/4)*100);
                const gp03v= (((get_gp03)/2)*100);
                // console.log('bi =>', gp01v, gp02v, gp03v);
               if(gp01v==100){
                var gp01= 7;
               } 
               else if(gp01v>=50){
                var gp01= 6;
               } 
               else if(gp01v>=25){
                var gp01= 5;
               }
               else if(gp01v>=0){
                var gp01= 4;
               }
               else if(gp01v>=-25){
                var gp01= 3;

               } else if(gp01v>=-50){
                var gp01= 2;

               }else if(gp01v>=-100){
                var gp01= 1;

               } else {

                var gp01= null;

               }


                      
               if(gp02v==100){
                var gp02= 7;
               } 
               else if(gp02v>=50){
                var gp02= 6;
               } 
               else if(gp02v>=25){
                var gp02= 5;
               }
               else if(gp02v>=0){
                var gp02= 4;
               }
               else if(gp02v>=-25){
                var gp02= 3;

               } else if(gp02v>=-50){
                var gp02= 2;

               }else if(gp02v>=-100){
                var gp02= 1;

               } else {

                var gp02= null;

               }




                      
               if(gp03v==100){
                var gp03= 7;
               } 
               else if(gp03v>=50){
                var gp03= 6;
               } 
               else if(gp03v>=25){
                var gp03= 5;
               }
               else if(gp03v>=0){
                var gp03= 4;
               }
               else if(gp03v>=-25){
                var gp03= 3;

               } else if(gp03v>=-50){
                var gp03= 2;

               }else if(gp03v>=-100){
                var gp03= 1;

               } else {

                var gp03= null;

               }
                res.send({gp01, gp02, gp03})

            })
    
        })

    });
    
   
    })
}








exports.teacher_bi_checkout= (req, res)=>{
    const teacher_uuid= req.session.teacher_uuid;

    const {className, sectionName, checkout}= req.body;
    sqlmap.query(`SELECT * FROM bi_mark WHERE domain='${req.hostname}' AND  class='${className}' AND section='${sectionName}' AND teacher_uuid='${teacher_uuid}' ORDER BY ID`, (errFind, info_checkout)=>{
        if(errFind) console.log(errFind.sqlMessage);
        res.send({info_checkout})
    })
}





exports.teacher_bi_report_self_checkout= (req, res)=>{
    const teacher_uuid= req.session.teacher_uuid;

    const {className, sectionName}= req.body;
    sqlmap.query(`SELECT * FROM bi_mark WHERE domain='${req.hostname}' AND  class='${className}' AND section='${sectionName}' AND teacher_uuid='${teacher_uuid}'`, (errFind, info_checkout)=>{
        if(errFind) console.log(errFind.sqlMessage);
        else {  
            
            res.send({info_checkout}) 
        }
    })
}





