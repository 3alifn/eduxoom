const {app, express, dotenv, nodemailer, mysql, sqlmap, multer, session, createHmac, randomBytes} = require("../server")
var regexTelephone= /^01[0-9]*$/
var regexNumber= /^[0-9]*$/
var regexString= /^[A-Za-z .-_]*$/
var regexpi= /^[A-Za-z0-9-_]*$/
var regexPassword= /^[a-zA-Z0-9!@#$%&*]*$/
var regexEmail= /^([a-zA-Z0-9_\-\.]+)@((\[[0-9]{1,3}\.[0-9]{1,3}\.[0-9]{1,3}\.)|(([a-zA-Z0-9\-]+\.)+))([a-zA-Z]{2,4}|[0-9]{1,3})(\]?)$/ 



exports.admin_pi_transcript_report_checkout=(req, res)=>{
    const {className,sectionName, student_uuid}= req.body;
    const domain= req.hostname;
  
  
    sqlmap.query(`SELECT *, COUNT(pi) as pi_count, SUM(pi) as pi_sum FROM transcript_report WHERE domain='${req.hostname}' AND  class='${className}' AND section='${sectionName}' AND subject='English' AND student_uuid='${student_uuid}'
    AND pi_group='group01'`,
    (errg01, infog01)=>{
        
        sqlmap.query(`SELECT *, COUNT(pi) as pi_count, SUM(pi) as pi_sum FROM transcript_report WHERE domain='${req.hostname}' AND  class='${className}' AND section='${sectionName}' AND subject='English' AND student_uuid='${student_uuid}'
        AND pi_group='group02'`,
        (errg02, infog02)=>{
            
        sqlmap.query(`SELECT *, COUNT(pi) as pi_count, SUM(pi) as pi_sum FROM transcript_report WHERE domain='${req.hostname}' AND  class='${className}' AND section='${sectionName}' AND subject='English' AND student_uuid='${student_uuid}'
        AND pi_group='group03'`,
        (errg03, infog03)=>{
            
            
            sqlmap.query(`SELECT *, COUNT(pi) as pi_count, SUM(pi) as pi_sum FROM transcript_report WHERE domain='${req.hostname}' AND  class='${className}' AND section='${sectionName}' AND subject='English' AND student_uuid='${student_uuid}'
            AND pi_group='group04'`,
            (errg04, infog04)=>{
                
                const english_gp01v= (infog01[0].pi_sum/infog01[0].pi_count*100);
                const english_gp02v= (infog02[0].pi_sum/infog02[0].pi_count*100);
                const english_gp03v= (infog03[0].pi_sum/infog03[0].pi_count*100);
                const english_gp04v= (infog04[0].pi_sum/infog04[0].pi_count*100);
        
               if(english_gp01v==100){
                var english_gp01= 7;
               } 
               else if(english_gp01v>=50){
                var english_gp01= 6;
               } 
               else if(english_gp01v>=25){
                var english_gp01= 5;
               }
               else if(english_gp01v>=0){
                var english_gp01= 4;
               }
               else if(english_gp01v>=-25){
                var english_gp01= 3;
  
               } else if(english_gp01v>=-50){
                var english_gp01= 2;
  
               }else if(english_gp01v>=-100){
                var english_gp01= 1;
  
               } else {
  
                var english_gp01= 0;
  
               }
  
  
                      
               if(english_gp02v==100){
                var english_gp02= 7;
               } 
               else if(english_gp02v>=50){
                var english_gp02= 6;
               } 
               else if(english_gp02v>=25){
                var english_gp02= 5;
               }
               else if(english_gp02v>=0){
                var english_gp02= 4;
               }
               else if(english_gp02v>=-25){
                var english_gp02= 3;
  
               } else if(english_gp02v>=-50){
                var english_gp02= 2;
  
               }else if(english_gp02v>=-100){
                var english_gp02= 1;
  
               } else {
  
                var english_gp02= 0;
  
               }
  
  
  
  
                      
               if(english_gp03v==100){
                var english_gp03= 7;
               } 
               else if(english_gp03v>=50){
                var english_gp03= 6;
               } 
               else if(english_gp03v>=25){
                var english_gp03= 5;
               }
               else if(english_gp03v>=0){
                var english_gp03= 4;
               }
               else if(english_gp03v>=-25){
                var english_gp03= 3;
  
               } else if(english_gp03v>=-50){
                var english_gp03= 2;
  
               }else if(english_gp03v>=-100){
                var english_gp03= 1;
  
               } else {
  
                var english_gp03= 0;
  
               }



               if(english_gp04v==100){
                var english_gp04= 7;
               } 
               else if(english_gp04v>=50){
                var english_gp04= 6;
               } 
               else if(english_gp04v>=25){
                var english_gp04= 5;
               }
               else if(english_gp04v>=0){
                var english_gp04= 4;
               }
               else if(english_gp04v>=-25){
                var english_gp04= 3;
            
               } else if(english_gp04v>=-50){
                var english_gp04= 2;
            
               }else if(english_gp04v>=-100){
                var english_gp04= 1;
            
               } else {
            
                var english_gp04= 0;
            
               }
  
            console.log(english_gp01, english_gp02, english_gp03, english_gp04);
              res.send({english_gp01, english_gp02, english_gp03, english_gp04})
  
            })
    
        })

        })
  
    });
    
 
  }
  