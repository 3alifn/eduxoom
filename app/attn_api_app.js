const { json } = require("body-parser");
const {app, express, dotenv, nodemailer, mysql, sqlmap, multer, createHmac, randomBytes, fs, path} = require("../server")

const {Timer, axios, ZKLib}= require('../server');

const zkteco = async(param) => {
    let zkInstance = new ZKLib('192.168.1.201', 4370, 5200, 5000);
    try {
        // Create socket to machine
        await zkInstance.createSocket()
        // get total attendance data    
        const logs = await zkInstance.getAttendances()
        // console.log(await zkInstance.getInfo());
       const getLast= logs.data.length;
       const domain= 'localhost';
       const data= logs.data;
       const user= 'Student';
       const name= 'Fingerprint';
const lastSyncData = fs.readFileSync('./data.js', 'utf8');
const abs_count= Math.abs(getLast - lastSyncData)

// console.log( 'TOTAL ATTN LOGS IN MACHINE CAPACITY '+getLast);
// console.log( 'ATTN LOGS LAST SYNC DATA '+lastSyncData);
// console.log( 'DIFF ATTN LOGS BETWEEN DATABASE AND MACHINE CAPACITY '+abs_count);
// console.log('=================================================================');
if(getLast>lastSyncData && param=='abs_log_checkout'){
  for (let index = getLast-abs_count; index < getLast; index++) {
    const user_id= data[index].deviceUserId;
    const today= data[index].recordTime;
    const record_date= data[index].recordTime.slice(0, 15);
    const record_time= data[index].recordTime.slice(0, 24);
    // console.log(user_id);    
    abs_log_checkout(domain, user, name, user_id, today, record_date, record_time);
  }
}


if(getLast>0){
  fs.writeFileSync('./data.js', JSON.stringify(getLast));
}

      } catch (e) {
        console.log(e)
        if (e.code === 'EADDRINUSE') {
        }
    }

}

const get_time= new Date().getTime();
const five_min= 300000;
const session= new Date().getUTCFullYear();

const checkinTime= "0800";
const checkoutTime= "1000";
const realTime= new Date().toTimeString().slice(0, 5).replace(":","")

// attn_checkout_webapi_absent_student('localhost', 'Student', 'Fingerprint')

setTimeout(() => {
  // attn_log_checkout('localhost', 'Student')
}, 3000); // emit on after 3sec.........


function attn_log_checkout(domain, user){

  axios.post('http://localhost:30/pu/attn-checkout-webapi/', {
  domain, user
}).then((response) => {
  const getLast= response.data.lastSyncData;

  setInterval(() => {
    zkteco('abs_log_checkout')
  }, 5000); // emit on after 5sec.........

const lastSyncData = fs.readFileSync('./data.js', 'utf8');
const abs_count= Math.abs(getLast - lastSyncData)
console.log('TOTAL ATTN LOGS IN DATABASE '+ parseInt(getLast));
console.log( 'TOTAL ATTN LOGS IN MACHINE CAPACITY '+parseInt(lastSyncData));
console.log( 'DIFF ATTN LOGS BETWEEN DATABASE AND MACHINE CAPACITY '+parseInt(abs_count));
console.log('=================================================================');

fs.writeFileSync('./data.js', JSON.stringify(getLast));



})
.catch((error) => {
  console.error(error);
});
}



function abs_log_checkout(domain, user, name, user_id, today, record_date, record_time){

  axios.post('http://localhost:30/pu/attn-present-webapi/', {
  domain, user, name, user_id, today, record_date, record_time
})
  .then((response) => {
    console.log(response.data);
  })
  .catch((error) => {
    console.error(error);
  });



}



function attn_checkout_webapi_absent_teacher(domain, user, name){

  axios.post('http://localhost:30/pu/attn-absent-webapi/teacher/', {
  domain, user, name
})
  .then((response) => {
    console.log(response.data);
  })
  .catch((error) => {
    console.error(error);
  });
}
    

function attn_checkout_webapi_absent_staff(domain, user, name){

  axios.post('http://localhost:30/pu/attn-absent-webapi/staff/', {
  domain, user, name
})
  .then((response) => {
    console.log(response.data);
  })
  .catch((error) => {
    console.error(error);
  });
}



function attn_checkout_webapi_absent_student(domain, user, name){

  axios.post('http://localhost:30/pu/attn-absent-webapi/student/', {
  domain, user, name
})
  .then((response) => {
    console.log(response.data);
  })
  .catch((error) => {
    console.error(error);
  });
}



exports.pu_attn_checkout_logs= (req, res)=>{
  const {domain, user}= req.body;
  sqlmap.query(`SELECT COUNT(id) AS lastSync, user FROM attn_record WHERE domain='${domain}' AND user='${user}' AND menual=0`, (err, checkout)=>{
   if(err) console.log(err.sqlMessage);
   else {
    res.send({lastSyncData: checkout[0].lastSync})
   }
  
  })
}


exports.pu_attn_checkout_webapi_present=(req, res)=>{
const {domain, user_id, user, name, today, record_date, record_time}= req.body;
// console.log(domain, user_id, user, name, today, record_date, record_time);
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
if(infof.length==0){

sqlmap.query(`SELECT name, avatar, class, section, roll, ${user_uid} FROM ${tbname} WHERE domain='${domain}' AND user='${user}' AND ${colname}='${user_id}'`, 
(erru, infou)=>{
  
  if(erru) console.log(erru.sqlMessage+ " erru...");

  else {
// if find student................
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
  else{

    if(user=='Teacher') console.log(`"present now! ${infou[0].name} ${infou[0].teacher_id} ${record_time}"`);
    else if(user=='Student') console.log(`"present now! ${infou[0].name}  ${infou[0].student_id} ${record_time}"`);
    else console.log(`"present now! ${infou[0].name}  ${infou[0].staff_id} ${record_time}"`);

  } 
  })
  
 } else {
  console.log(user_id+ ' user id not found in database!');
 }

   


  }
  })

}

else null;

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

// SELECT name, student_uuid
// FROM students WHERE EXISTS (SELECT user_id, checkout, record_time
//               FROM attn_record
//               WHERE students.student_uuid = attn_record.user_id);
              
              
// SELECT name, student_uuid FROM students WHERE student_uuid NOT IN (SELECT user_id FROM attn_record)