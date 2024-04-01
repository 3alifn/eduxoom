const { json } = require("body-parser");
const {app, express, dotenv, nodemailer, mysql, sqlmap, multer, createHmac, randomBytes, fs, path} = require("../server")

const {Timer, axios, ZKLib}= require('../server')

const zkteco = async(param) => {
    let zkInstance = new ZKLib('192.168.1.201', 4370, 5200, 5000);
    try {
        // Create socket to machine
        await zkInstance.createSocket()
        // get total attendance data    
        const logs = await zkInstance.getAttendances()
        // console.log(logs);
       const getLast= logs.data.length;
       const domain= 'localhost';
       const data= logs.data;
       const user= 'Student';
       const name= 'Fingerprint';
 
const lastSyncData = fs.readFileSync('./data.js', 'utf8');
const abs_count= Math.abs(getLast - lastSyncData)

// console.log( 'TOTAL ATTN LOGS IN MACHINE CAPACITY '+getLast);
// console.log( 'DIFF ATTN LOGS BETWEEN DATABASE AND MACHINE CAPACITY '+getLast);

if(getLast>lastSyncData && param=='abs_log_checkout'){
  for (let index = lastSyncData-abs_count; index < getLast; index++) {
    const user_id= data[index].deviceUserId;
    const today= data[index].recordTime;
    const record_date= data[index].recordTime.slice(0, 15);
    const record_time= data[index].recordTime.slice(0, 24);
  // console.log('abs_log_checkout');    
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


// const realTimeStart= "0800";
// const realTimeEnd= "1000";
// const nowTime= new Date().toTimeString().slice(0, 5).replace(":","")

setTimeout(() => {
  attn_log_checkout('localhost', 'Student')
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
console.log('TOTAL ATTN LOGS IN DATABASE '+ getLast);
console.log( 'TOTAL ATTN LOGS IN MACHINE CAPACITY '+lastSyncData);
console.log( 'DIFF ATTN LOGS BETWEEN DATABASE AND MACHINE CAPACITY '+abs_count);
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

    

const get_time= new Date().getTime();
const five_min= 300000;
const session= new Date().getUTCFullYear();

exports.pu_attn_checkout_logs= (req, res)=>{
  const {domain, user}= req.body;
  sqlmap.query(`SELECT COUNT(ID) AS lastSync, user FROM attn_record WHERE Domain='${domain}' AND user='${user}' AND menual=null`, (err, checkout)=>{
   if(err) console.log(err.sqlMessage);
   else res.send({lastSyncData: checkout[0].lastSync})
  
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

const tbname= user=='Teacher'?'teachers':user=='Student'?'students':'staff'
const colname= user=='Teacher'?'teacher_id':user=='Student'?'student_id':'staff_id'
const user_uid= user=='Teacher'?'teacher_id':user=='Student'?'student_id':'staff_id'


sqlmap.query(`SELECT user_id FROM attn_record WHERE domain='${domain}' AND user_id='${user_id}' AND record_date='${record_date}' ORDER BY at_date DESC`, 
(errf, infof)=>{
if(infof.length==0 && infof.length==undefined){

  sqlmap.query(`SELECT name, avatar, class, section, roll, ${user_uid} FROM ${tbname} WHERE domain='${domain}' AND ${colname}='${user_id}'`, 
(erru, infou)=>{
  
  if(erru) console.log(erru.sqlMessage+ " erru...");

  else {
// if find student................
 if(infou.length>0){

  if(tbname=='students') {
    var sqli= 
  `INSERT INTO attn_record (domain, session, class, section, user, user_id, roll, name, avatar, punch, checkout, at_status, take_time, get_cal, find_date, attn_date, record_date, record_time, year, month, day)
  VALUES('${domain}', '${session}', '${infou[0].class}', '${infou[0].section}', '${user}', '${infou[0].student_id}', '${infou[0].roll}', '${infou[0].name}', '${infou[0].avatar}', 'check-in', 1, 'present', '${get_time}', '${get_cal}', '${find_date}', '${attn_date}', '${record_date}', '${record_time}', '${currentYear}', '${currentMonth}', '${currentDate}')`
  } else if(tbname=='teachers'){
    var sqli= 
    `INSERT INTO attn_record (domain, session, user, user_id, name, avatar, punch, checkout, at_status, take_time, get_cal, find_date, attn_date, record_date, record_time, year, month, day)
    VALUES('${domain}', '${session}', '${user}', '${infou[0].teacher_id}', '${infou[0].name}', ${infou[0].avatar}', 'check-in', 1, 'present', '${get_time}', '${get_cal}', '${find_date}', '${attn_date}', '${record_date}', '${record_time}', '${currentYear}', '${currentMonth}', '${currentDate}')`
  } else {
    var sqli= 
    `INSERT INTO attn_record (domain, session, user, user_id, name, avatar, punch, checkout, at_status, take_time, get_cal, find_date, attn_date, record_date, record_time, year, month, day)
  VALUES('${domain}', '${session}', '${user}', '${infou[0].staff_id}', '${infou[0].name}', ${infou[0].avatar}', 'check-in', 1, 'present',  '${get_time}', '${get_cal}', '${find_date}', '${attn_date}', '${record_date}', '${record_time}', '${currentYear}', '${currentMonth}', '${currentDate}')`
  }

  sqlmap.query(sqli, (erri, insert)=>{
  if(erri) console.log(erri.sqlMessage);
  else{

    if(user=='Teacher') console.log(`"present now! ${infou[0].name} ${infou[0].teacher_id} ${today}"`);
    else if(user=='Student') console.log(`"present now! ${infou[0].name}  ${infou[0].student_id} ${today}"`);
    else console.log(`"present now! ${infou[0].name}  ${infou[0].staff_id} ${today}"`);

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





exports.pu_attn_checkout_webapi_absent=(req, res)=>{
  const {domain, user, name, today, record_date, record_time}= req.body;
  const todaym = new Date(today);
  const currentDate= new Date().getDate();
  const currentMonth = todaym.getMonth();
  const currentYear = todaym.getFullYear();
  const get_cal= currentMonth+'-'+currentYear;
  const myMonth= ["January", "February", "March", "April", "May", "June", "July", "August", "September", "October", "November", "December"]
  const find_date= `${myMonth[currentMonth]}-${currentDate}-${currentMonth+1}-${currentYear}`
  const attn_date= new Date().toDateString();
  const tbname= user=='Teacher'?'teachers':user=='Student'?'students':'staff'
  const colname= user=='Teacher'?'teacher_id':user=='Student'?'student_id':'staff_id'
  const user_uid= user=='Teacher'?'teacher_id':user=='Student'?'student_id':'staff_id'

  sqlmap.query(`SELECT name, avatar, ${user_uid}  FROM ${tbname} WHERE domain='${domain}' AND ${colname} NOT IN (SELECT user_id FROM attn_record WHERE record_date='${record_date}')`, 
  (errf, infof)=>{
  
    if(errf) console.log(errf.sqlMessage);

    else {
      for (let index = 0; index < infof.length; index++) {
      
        if(tbname=='students') {
          var sqli= 
        `INSERT INTO attn_record (domain, session, class, section, user, user_id, name, avatar, punch, checkout, at_status, take_time, get_cal, find_date, attn_date, record_date, record_time, year, month, day)
        VALUES('${domain}', '${session}', '${infof[index].class}', '${infof[index].section}', '${user}', '${infof[index].student_id}', '${infof[index].name}', '${infof[index].avatar}', null, 0, 'absent', '${get_time}', '${get_cal}', '${find_date}', '${attn_date}', '${record_date}', '${record_time}', '${currentYear}', '${currentMonth}', '${currentDate}')`
        } else if(tbname=='teachers'){
          var sqli= 
          `INSERT INTO attn_record (domain, session, user, user_id, name, avatar, punch, checkout, at_status, take_time, get_cal, find_date, attn_date, record_date, record_time, year, month, day)
          VALUES('${domain}', '${session}', '${user}', '${infof[index].teacher_id}', '${infof[index].name}', '${infof[index].avatar}', null, 0, 'absent', '${get_time}', '${get_cal}', '${find_date}', '${attn_date}', '${record_date}', '${record_time}', '${currentYear}', '${currentMonth}', '${currentDate}')`
        } else {
          var sqli= 
          `INSERT INTO attn_record (domain, session, user, user_id, name, avatar, punch, checkout, at_status, take_time, get_cal, find_date, attn_date, record_date, record_time, year, month, day)
        VALUES('${domain}', '${session}', '${user}', '${infof[index].staff_id}', '${infof[index].name}', '${infof[index].avatar}', null, 0, 'absent',  '${get_time}', '${get_cal}', '${find_date}', '${attn_date}', '${record_date}', '${record_time}', '${currentYear}', '${currentMonth}', '${currentDate}')`
        }
  
        sqlmap.query(sqli, (erri, insert)=>{
        if(erri) console.log(erri.sqlMessage);
        else {
            null
            if(tbname=='teacher') console.log(`"Absent today! ${infof[index].name} ${infof[index].teacher_id} ${today}"`);
            else if(tbname=='students') console.log(`"Absent today! ${infof[index].name}  ${infof[index].student_id} ${today}"`);
            else console.log(`"Absent today! ${infof[index].name}  ${infof[index].staff_id} ${today}"`);
        
            
            }
        })
        
      }
    }
     


  })
  
  
  }




// SELECT name, student_uuid
// FROM students WHERE EXISTS (SELECT user_id, checkout, record_time
//               FROM attn_record
//               WHERE students.student_uuid = attn_record.user_id);
              
              
// SELECT name, student_uuid FROM students WHERE student_uuid NOT IN (SELECT user_id FROM attn_record)