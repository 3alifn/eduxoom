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

// console.log(getLast-abs_count, getLast);
if(getLast>lastSyncData && param=='abs_log_checkout'){
  for (let index = getLast-abs_count; index < getLast; index++) {
    const user_id= data[index].deviceUserId;
    const today= data[index].recordTime;
    const record_date= data[index].recordTime.slice(0, 15);
    const record_time= data[index].recordTime.slice(0, 24);
  // console.log('abs_log_checkout');
  console.log(data[index].recordTime.slice(0, 24));
    
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



function attn_log_checkout(domain, user){

  axios.post('http://localhost:30/pu/attn-checkout-webapi/', {
  domain, user
}).then((response) => {
  const getLast= response.data.lastSyncData;
  // console.log(getLast);
  setInterval(() => {
    zkteco('abs_log_checkout')
  }, 5000); // emit on after 5sec.........
  

  if(getLast>0){
    fs.writeFileSync('./data.js', JSON.stringify(getLast));
  }

})
.catch((error) => {
  console.error(error);
});
}


// const realTimeStart= "0800";
// const realTimeEnd= "1000";
// const nowTime= new Date().toTimeString().slice(0, 5).replace(":","")

setTimeout(() => {
  // attn_log_checkout('localhost', 'students')
}, 3000); // emit on after 3sec.........


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
  sqlmap.query(`SELECT COUNT(ID) AS lastSync, user FROM attn_record WHERE Domain='${domain}' AND user='${user}'`, (err, checkout)=>{
   if(err) console.log(err.sqlMessage);
   else res.send({lastSyncData: checkout[0].lastSync})
  
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

sqlmap.query(`SELECT user_id FROM attn_record WHERE domain='${domain}' AND user_id='${user_id}' AND record_date='${record_date}' ORDER BY at_date DESC`, 
(errf, infof)=>{

if(infof.length>0){
    null
    // console.log(`Last checkout: "${user} ${user_id} ${name} ${record_time} ${infof[0].checkout}"`);
}

else{

sqlmap.query(`SELECT user_id FROM attn_record WHERE domain='${domain}' AND user_id='${user_id}' AND record_date='${record_date}' ORDER BY at_date DESC`, 
(errc, infoc)=>{
 if(errc) console.log(errc.sqlMessage);

 else {
   if(infoc.length>=2) {
    null
    console.log(`"HI, dear ${user} ${user_id} ${name} you are already checkout today!"`);
   } 
   
   else if(infoc.length==0 || infoc.length==undefined){
 
    sqlmap.query(`INSERT INTO attn_record (domain, session, user, user_id, name, punch, checkout, at_status, take_time, get_cal, find_date, attn_date, record_date, record_time, year, month, day)
    VALUES('${domain}', '${session}', '${user}', '${user_id}', '${name}', 'check-in', 1, 'present', '${get_time}', '${get_cal}', '${find_date}', '${attn_date}', '${record_date}', '${record_time}', '${currentYear}', '${currentMonth}', '${currentDate}')`, 
    
    (erri, insert)=>{
    if(erri) console.log(erri.sqlMessage);
    else {
        null
        console.log(`"Congratulations! your are check-in, ${user} ${user_id} ${today}"`);
    
        }
    })

   }


      
   else if(infoc.length==1 && infoc[0].take_time>get_time){
 
    sqlmap.query(`INSERT INTO attn_record (domain, session, user, user_id, name, punch, checkout, at_status, take_time, get_cal, find_date, attn_date,  record_date, record_time, year, month, day)
    VALUES('${domain}', '${session}', '${user}', '${user_id}', '${name}', 'check-out', 1, 'present', '${get_time}', '${get_cal}', '${find_date}', '${attn_date}', '${record_date}', '${record_time}', '${currentYear}', '${currentMonth}', '${currentDate}')`, 
    
    (erri, insert)=>{
    if(erri) console.log(erri.sqlMessage);
    else {
    null
    console.log(`"Thanks! your are check-out, ${user} ${user_id} ${today}"`);

    }
    })

   }

   
   else{
    null 
    // console.log(`"HI, dear ${user} ${user_id} you can check-out after 5 minutes for checkout!"`);

   }

 }
})

}

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
  const selected= user=='Teacher'?'teacher_id':user=='Student'?'student_id':'staff_id'

  sqlmap.query(`SELECT name, '${selected}'  FROM ${tbname} WHERE ${colname} NOT IN (SELECT user_id FROM attn_record WHERE record_date='${record_date}')`, 
  (errf, infof)=>{
    if(errf) console.log(errf.sqlMessage);

    for (let index = 0; index < infof.length; index++) {
      
      if(tbname=='students') {
        var sqli= 
      `INSERT INTO attn_record (domain, session, user, user_id, name, punch, checkout, at_status, take_time, get_cal, find_date, attn_date, record_date, record_time, year, month, day)
      VALUES('${domain}', '${session}', '${user}', '${infof[index].student_id}', '${infof[index].name}', null, 0, 'absent', '${get_time}', '${get_cal}', '${find_date}', '${attn_date}', '${record_date}', '${record_time}', '${currentYear}', '${currentMonth}', '${currentDate}')`
      } else if(tbname=='teachers'){
        var sqli= 
        `INSERT INTO attn_record (domain, session, user, user_id, name, punch, checkout, at_status, take_time, get_cal, find_date, attn_date, record_date, record_time, year, month, day)
        VALUES('${domain}', '${session}', '${user}', '${infof[index].teacher_id}', '${infof[index].name}', null, 0, 'absent', '${get_time}', '${get_cal}', '${find_date}', '${attn_date}', '${record_date}', '${record_time}', '${currentYear}', '${currentMonth}', '${currentDate}')`
      } else {
        var sqli= 
        `INSERT INTO attn_record (domain, session, user, user_id, name, punch, checkout, at_status, take_time, get_cal, find_date, attn_date, record_date, record_time, year, month, day)
      VALUES('${domain}', '${session}', '${user}', '${infof[index].staff_id}', '${infof[index].name}',  null, 0, 'absent',  '${get_time}', '${get_cal}', '${find_date}', '${attn_date}', '${record_date}', '${record_time}', '${currentYear}', '${currentMonth}', '${currentDate}')`
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
     


  })
  
  
  }




// SELECT name, student_uuid
// FROM students WHERE EXISTS (SELECT user_id, checkout, record_time
//               FROM attn_record
//               WHERE students.student_uuid = attn_record.user_id);
              
              
// SELECT name, student_uuid FROM students WHERE student_uuid NOT IN (SELECT user_id FROM attn_record)