const { json } = require("body-parser");
const {app, express, mysql, sqlmap, createHmac, randomBytes, fs, path} = require("../server")


const get_time= new Date().getTime();
const five_min= 300000;
const session= new Date().getUTCFullYear();


exports.pu_attn_checkout_logs= (req, res)=>{
  const {domain, user}= req.body;
  sqlmap.query(`SELECT COUNT(id) AS lastSync, user FROM attn_record WHERE domain='${domain}' AND user='${user}' AND menual=0 AND menual=0 AND checkout=1`, (err, checkout)=>{
   if(err) console.log(err.sqlMessage);
   else {
    res.send({lastSyncData: checkout[0].lastSync})
   }
  
  })
}


exports.pu_attn_checkout_webapi_present=(req, res)=>{
const {domain, user_id, user, name, today, record_date, record_time}= req.body;

const todaym = new Date(today);
const currentDate= new Date().getDate();
const currentMonth = todaym.getMonth();
const currentYear = todaym.getFullYear();
const get_cal= currentMonth+'-'+currentYear;
const myMonth= ["January", "February", "March", "April", "May", "June", "July", "August", "September", "October", "November", "December"]
const find_date= `${myMonth[currentMonth]}-${currentDate}-${currentMonth+1}-${currentYear}`
const attn_date= new Date().toDateString();
const duplicate_data= user_id+'_'+record_time;
const tbname= user=='Teacher'?'teachers':user=='Student'?'students':'staff'
const colname= user=='Teacher'?'teacher_id':user=='Student'?'student_id':'staff_id'
const user_uid= user=='Teacher'?'teacher_id':user=='Student'?'student_id':'staff_id'


sqlmap.query(`SELECT user_id FROM attn_record WHERE domain='${domain}' AND user='${user}' AND user_id='${user_id}' AND record_date='${record_date}' ORDER BY at_date DESC`, 
(errf, infof)=>{
    
    if(errf) res.json({status: errf.sqlMessage});
    
    else {
        
sqlmap.query(`SELECT name, avatar, class, section, roll, ${user_uid} FROM ${tbname} WHERE domain='${domain}' AND ${colname}='${user_id}'`, 
(erru, infou)=>{
  
  if(erru) res.json({status: erru.sqlMessage});

  else {
    
    if(infou.length>0){
     
     if(tbname=='students') {
    var sqli= 
  `INSERT INTO attn_record (domain, session, duplicate_data, class, section, user, user_id, roll, name, avatar, punch, checkout, at_status, take_time, get_cal, find_date, attn_date, record_date, record_time, year, month, day)
  VALUES('${domain}', '${session}', '${duplicate_data}', '${infou[0].class}', '${infou[0].section}', '${user}', '${infou[0].student_id}', '${infou[0].roll}', '${infou[0].name}', '${infou[0].avatar}', 'check-in', 1, 'present', '${get_time}', '${get_cal}', '${find_date}', '${attn_date}', '${record_date}', '${record_time}', '${currentYear}', '${currentMonth}', '${currentDate}')`
  } else if(tbname=='teachers'){
    var sqli= 
    `INSERT INTO attn_record (domain, session, duplicate_data, user, user_id, name, avatar, punch, checkout, at_status, take_time, get_cal, find_date, attn_date, record_date, record_time, year, month, day)
    VALUES('${domain}', '${session}', '${duplicate_data}', '${user}', '${infou[0].teacher_id}', '${infou[0].name}', ${infou[0].avatar}', 'check-in', 1, 'present', '${get_time}', '${get_cal}', '${find_date}', '${attn_date}', '${record_date}', '${record_time}', '${currentYear}', '${currentMonth}', '${currentDate}')`
  } else {
    var sqli= 
    `INSERT INTO attn_record (domain, session, duplicate_data, user, user_id, name, avatar, punch, checkout, at_status, take_time, get_cal, find_date, attn_date, record_date, record_time, year, month, day)
  VALUES('${domain}', '${session}', '${duplicate_data}', '${user}', '${infou[0].staff_id}', '${infou[0].name}', ${infou[0].avatar}', 'check-in', 1, 'present',  '${get_time}', '${get_cal}', '${find_date}', '${attn_date}', '${record_date}', '${record_time}', '${currentYear}', '${currentMonth}', '${currentDate}')`
  }

  sqlmap.query(sqli, (erri, insert)=>{
  if(erri) console.log(erri.sqlMessage);
  else res.json({msg: `"present now! ${infou[0].name} ${user_id} ${record_time}"`});

  })

  
 } else res.json({msg: user_id+ ' user id not found in database!'});

   
}

  })
    }
})



}



exports.pu_attn_checkout_webapi_absent_teacher=(req, res)=>{
  const {domain, user, name}= req.body;
  const today = new Date();
  const currentDate= new Date().getDate();
  const currentMonth = today.getMonth();
  const currentYear = today.getFullYear();
  const get_cal= currentMonth+'-'+currentYear;
  const myMonth= ["January", "February", "March", "April", "May", "June", "July", "August", "September", "October", "November", "December"]
  const find_date= `${myMonth[currentMonth]}-${currentDate}-${currentMonth+1}-${currentYear}`
  const attn_date= new Date().toDateString();
  const record_date= new Date().toDateString();
  const record_time= new Date();

  sqlmap.query(`SELECT name, avatar, index_number, teacher_id FROM teachers WHERE domain='${domain}' AND teacher_id NOT IN (SELECT user_id FROM attn_record WHERE domain='${domain}' AND record_date='${record_date}')`, 
  (errf, infof)=>{
  
    if(errf) console.log(errf.sqlMessage);

    else {
      // if student found...........

      if(infof.length>0){

      for (let index = 0; index < infof.length; index++) {   
  
        sqlmap.query(`INSERT INTO attn_record (domain, session, duplicate_data, user, user_id, name, avatar, punch, checkout, at_status, take_time, get_cal, find_date, attn_date, record_date, record_time, year, month, day)
        VALUES('${domain}', '${session}', '${infof[index].teacher_id}_${record_date}', '${user}', '${infof[index].teacher_id}', '${infof[index].name}', '${infof[index].avatar}', 
        null, 0, 'absent', '${get_time}', '${get_cal}', '${find_date}', '${attn_date}', '${record_date}', '${record_time}', '${currentYear}', '${currentMonth}', '${currentDate}')`
       ,(erri, todo)=>{
        if(erri) console.log(erri.sqlMessage);
       
        else console.log(`"Absent today! ${infof[index].name}  ${infof[index].student_id} ${today}"`)
      
        })
        
      }

    } else null;

  } 
     


  
  })
  
  
  }


exports.pu_attn_checkout_webapi_absent_staff=(req, res)=>{
    const {domain, user, name}= req.body;
    const today = new Date();
    const currentDate= new Date().getDate();
    const currentMonth = today.getMonth();
    const currentYear = today.getFullYear();
    const get_cal= currentMonth+'-'+currentYear;
    const myMonth= ["January", "February", "March", "April", "May", "June", "July", "August", "September", "October", "November", "December"]
    const find_date= `${myMonth[currentMonth]}-${currentDate}-${currentMonth+1}-${currentYear}`
    const attn_date= new Date().toDateString();
    const record_date= new Date().toDateString();
    const record_time= new Date();
  
    sqlmap.query(`SELECT name, avatar, staff_id FROM staff WHERE domain='${domain}' AND staff_id NOT IN (SELECT user_id FROM attn_record WHERE domain='${domain}' AND record_date='${record_date}')`, 
    (errf, infof)=>{
    
      if(errf) console.log(errf.sqlMessage);
  
      else {
        // if staff found...........
  
        if(infof.length>0){
  
        for (let index = 0; index < infof.length; index++) {   
    
          sqlmap.query(`INSERT INTO attn_record (domain, session, duplicate_data, user, user_id, name, avatar, punch, checkout, at_status, take_time, get_cal, find_date, attn_date, record_date, record_time, year, month, day)
          VALUES('${domain}', '${session}', '${infof[index].staff_id}_${record_date}', '${user}', '${infof[index].staff_id}', '${infof[index].name}', '${infof[index].avatar}', 
          null, 0, 'absent', '${get_time}', '${get_cal}', '${find_date}', '${attn_date}', '${record_date}', '${record_time}', '${currentYear}', '${currentMonth}', '${currentDate}')`
         ,(erri, todo)=>{
          if(erri) console.log(erri.sqlMessage);
         
          else console.log(`"Absent today! ${infof[index].name}  ${infof[index].student_id} ${today}"`)
        
          })
          
        }
  
      } else null;
  
    } 
       
  
  
    
    })
    
    
    }


exports.pu_attn_checkout_webapi_absent_student=(req, res)=>{
    const {domain, user, name}= req.body;
    const today = new Date();
    const currentDate= new Date().getDate();
    const currentMonth = today.getMonth();
    const currentYear = today.getFullYear();
    const get_cal= currentMonth+'-'+currentYear;
    const myMonth= ["January", "February", "March", "April", "May", "June", "July", "August", "September", "October", "November", "December"]
    const find_date= `${myMonth[currentMonth]}-${currentDate}-${currentMonth+1}-${currentYear}`
    const attn_date= new Date().toDateString();
    const record_date= new Date().toDateString();
    const record_time= new Date();
  
    sqlmap.query(`SELECT name, avatar, class, section, roll, student_id FROM students WHERE domain='${domain}' AND student_id NOT IN (SELECT user_id FROM attn_record WHERE domain='${domain}' AND record_date='${record_date}')`, 
    (errf, infof)=>{
    
      if(errf) console.log(errf.sqlMessage);
  
      else {
        // if student found...........
  
        if(infof.length>0){
  
        for (let index = 0; index < infof.length; index++) {   
    
          sqlmap.query(`INSERT INTO attn_record (domain, session, duplicate_data, class, section, roll, user, user_id, name, avatar, punch, checkout, at_status, take_time, get_cal, find_date, attn_date, record_date, record_time, year, month, day)
          VALUES('${domain}', '${session}', '${infof[index].student_id}_${record_date}', '${infof[index].class}', '${infof[index].section}', ${infof[index].roll}, '${user}', '${infof[index].student_id}', '${infof[index].name}', '${infof[index].avatar}', 
          null, 0, 'absent', '${get_time}', '${get_cal}', '${find_date}', '${attn_date}', '${record_date}', '${record_time}', '${currentYear}', '${currentMonth}', '${currentDate}')`
         ,(erri, todo)=>{
          if(erri) console.log(erri.sqlMessage);
         
          else console.log(`"Absent today! ${infof[index].name}  ${infof[index].student_id} ${today}"`)
        
          })
          
        }
  
      } else null;
  
    } 
       
  
  
    
    })
    
    
    }

