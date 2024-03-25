const {app, express, dotenv, nodemailer, mysql, sqlmap, multer, createHmac, randomBytes} = require("../server")

const {Timer, axios, ZKLib}= require('../server')

const zkteco = async() => {
    let zkInstance = new ZKLib('192.168.1.201', 4370, 5200, 5000);
    try {
        // Create socket to machine
        await zkInstance.createSocket()
    
        // console.log(await zkInstance.getInfo())
    
        const logs = await zkInstance.getAttendances()
        var infoUsers = await zkInstance.getUsers()
       const getLast= logs.data.length;
       var domain= 'localhost';
       var user_id=logs.data[getLast-1].deviceUserId;
       var today= logs.data[getLast-1].recordTime;
       var record_date= logs.data[getLast-1].recordTime.slice(0, 15);
       var record_time= logs.data[getLast-1].recordTime.slice(0, 24);
        
    //     await zkInstance.getRealTimeLogs((data)=>{
    //       // do something when some checkin
    //       console.log(data)
    //   })


      } catch (e) {
        console.log(e)
        if (e.code === 'EADDRINUSE') {
        }
    }
    attnLog(domain, user_id, today, record_date, record_time) 

}
    
    setInterval(() => {
      zkteco()
    }, 3000);

    
    function attnLog(domain, user_id, today, record_date, record_time){
        const user= 'Teacher';
        const name= 'Fingerprint';
        pushAttnPostRouter(domain, user, name, user_id, today, record_date, record_time)
    
    }


function pushAttnPostRouter(domain, user, name, user_id, today, record_date, record_time){

        axios.post('http://localhost:30/pu/attn-tid-webapi/', {
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

exports.pu_attn_tid_webapi_post=(req, res)=>{
const {domain, user_id, user, name, today, record_date, record_time}= req.body;
const todaym = new Date(today);
const currentDate= new Date().getDate();
const currentMonth = todaym.getMonth();
const currentYear = todaym.getFullYear();
const get_cal= currentMonth+'-'+currentYear;
const myMonth= ["January", "February", "March", "April", "May", "June", "July", "August", "September", "October", "November", "December"]
const find_date= `${myMonth[currentMonth]}-${currentDate}-${currentMonth+1}-${currentYear}`
const attn_date= new Date().toDateString();

sqlmap.query(`SELECT * FROM attn_record WHERE domain='${domain}' AND user_id='${user_id}' AND record_time='${record_time}' ORDER BY at_date DESC`, 
(errf, infof)=>{

if(infof.length>0){
    null
    console.log(`Last checkout: "${user} ${user_id} ${name} ${record_time} ${infof[0].checkout}"`);
}

else{

sqlmap.query(`SELECT * FROM attn_record WHERE domain='${domain}' AND user_id='${user_id}' AND record_date='${record_date}' ORDER BY at_date DESC`, 
(errc, infoc)=>{
 if(errc) console.log(errc.sqlMessage);

 else {
   if(infoc.length>=2) {
    null
    console.log(`"HI, dear ${user} ${user_id} ${name} you are already checkout today!"`);
   } 
   
   else if(infoc.length==0 || infoc.length==undefined){
 
    sqlmap.query(`INSERT INTO attn_record (domain, session, user, user_id, name, checkout, take_time, get_cal, find_date, attn_date, record_date, record_time, year, month, day)
    VALUES('${domain}', '${session}', '${user}', '${user_id}', '${name}', 'check-in', '${get_time}', '${get_cal}', '${find_date}', '${attn_date}', '${record_date}', '${record_time}', '${currentYear}', '${currentMonth}', '${currentDate}')`, 
    
    (erri, insert)=>{
    if(erri) console.log(erri.sqlMessage);
    else {
        null
        console.log(`"Congratulations! your are check-in, ${user} ${user_id} ${name} ${record_time}"`);
    
        }
    })

   }


      
   else if(infoc.length==1 || infoc[0].take_time>get_time){
 
    sqlmap.query(`INSERT INTO attn_record (domain, session, user, user_id, name, checkout, take_time, get_cal, find_date, attn_date,  record_date, record_time, year, month, day)
    VALUES('${domain}', '${session}', '${user}', '${user_id}', '${name}', 'check-out', '${get_time}', '${get_cal}', '${find_date}', '${attn_date}', '${record_date}', '${record_time}', '${currentYear}', '${currentMonth}', '${currentDate}')`, 
    
    (erri, insert)=>{
    if(erri) console.log(erri.sqlMessage);
    else {
    null
    console.log(`"Thanks! your are check-out, ${user} ${user_id} ${name} ${record_time}"`);

    }
    })

   }

   
   else{
    null 
    console.log(`"HI, dear ${user} ${user_id} ${name} now you can check-out after  5 minutes for checkout!"`);

   }

 }
})

}

})

}



exports.pu_attn_stid_webapi_post=(req, res)=>{
    const {domain, user_id, user, name, today, record_date, record_time}= req.body;
    const todaym = new Date(today);
    const currentDate= new Date().getDate();
    const currentMonth = todaym.getMonth();
    const currentYear = todaym.getFullYear();
    const get_cal= currentMonth+'-'+currentYear;
    const myMonth= ["January", "February", "March", "April", "May", "June", "July", "August", "September", "October", "November", "December"]
    const find_date= `${myMonth[currentMonth]}-${currentDate}-${currentMonth+1}-${currentYear}`
    const attn_date= new Date().toDateString();
    
    sqlmap.query(`SELECT * FROM attn_record WHERE domain='${domain}' AND user_id='${user_id}' AND record_time='${record_time}' ORDER BY at_date DESC`, 
    (errf, infof)=>{
    
    if(infof.length>0){
        null
        console.log(`Last checkout: "${user} ${user_id} ${name} ${record_time} ${infof[0].checkout}"`);
    }
    
    else{
    
    sqlmap.query(`SELECT * FROM attn_record WHERE domain='${domain}' AND user_id='${user_id}' AND record_date='${record_date}' ORDER BY at_date DESC`, 
    (errc, infoc)=>{
     if(errc) console.log(errc.sqlMessage);
    
     else {
       if(infoc.length>=2) {
        null
        console.log(`"HI, dear ${user} ${user_id} ${name} you are already checkout today!"`);
       } 
       
       else if(infoc.length==0 || infoc.length==undefined){
     
        sqlmap.query(`INSERT INTO attn_record (domain, session, user, user_id, name, checkout, take_time, get_cal, find_date, attn_date, record_date, record_time, year, month, day)
        VALUES('${domain}', '${session}', '${user}', '${user_id}', '${name}', 'check-in', '${get_time}', '${get_cal}', '${find_date}', '${attn_date}', '${record_date}', '${record_time}', '${currentYear}', '${currentMonth}', '${currentDate}')`, 
        
        (erri, insert)=>{
        if(erri) console.log(erri.sqlMessage);
        else {
            null
            console.log(`"Congratulations! your are check-in, ${user} ${user_id} ${name} ${record_time}"`);
        
            }
        })
    
       }
    
    
          
       else if(infoc.length==1 || infoc[0].take_time>get_time){
     
        sqlmap.query(`INSERT INTO attn_record (domain, session, user, user_id, name, checkout, take_time, get_cal, find_date, attn_date,  record_date, record_time, year, month, day)
        VALUES('${domain}', '${session}', '${user}', '${user_id}', '${name}', 'check-out', '${get_time}', '${get_cal}', '${find_date}', '${attn_date}', '${record_date}', '${record_time}', '${currentYear}', '${currentMonth}', '${currentDate}')`, 
        
        (erri, insert)=>{
        if(erri) console.log(erri.sqlMessage);
        else {
        null
        console.log(`"Thanks! your are check-out, ${user} ${user_id} ${name} ${record_time}"`);
    
        }
        })
    
       }
    
       
       else{
        null 
        console.log(`"HI, dear ${user} ${user_id} ${name} now you can check-out after  5 minutes for checkout!"`);
    
       }
    
     }
    })
    
    }
    
    })
    
}
    




exports.pu_attn_fsid_webapi_post=(req, res)=>{
        const {domain, user_id, user, name, today, record_date, record_time}= req.body;
        const todaym = new Date(today);
        const currentDate= new Date().getDate();
        const currentMonth = todaym.getMonth();
        const currentYear = todaym.getFullYear();
        const get_cal= currentMonth+'-'+currentYear;
        const myMonth= ["January", "February", "March", "April", "May", "June", "July", "August", "September", "October", "November", "December"]
        const find_date= `${myMonth[currentMonth]}-${currentDate}-${currentMonth+1}-${currentYear}`
        const attn_date= new Date().toDateString();
        
        sqlmap.query(`SELECT * FROM attn_record WHERE domain='${domain}' AND user_id='${user_id}' AND record_time='${record_time}' ORDER BY at_date DESC`, 
        (errf, infof)=>{
        
        if(infof.length>0){
            null
            console.log(`Last checkout: "${user} ${user_id} ${name} ${record_time} ${infof[0].checkout}"`);
        }
        
        else{
        
        sqlmap.query(`SELECT * FROM attn_record WHERE domain='${domain}' AND user_id='${user_id}' AND record_date='${record_date}' ORDER BY at_date DESC`, 
        (errc, infoc)=>{
         if(errc) console.log(errc.sqlMessage);
        
         else {
           if(infoc.length>=2) {
            null
            console.log(`"HI, dear ${user} ${user_id} ${name} you are already checkout today!"`);
           } 
           
           else if(infoc.length==0 || infoc.length==undefined){
         
            sqlmap.query(`INSERT INTO attn_record (domain, session, user, user_id, name, checkout, take_time, get_cal, find_date, attn_date, record_date, record_time, year, month, day)
            VALUES('${domain}', '${session}', '${user}', '${user_id}', '${name}', 'check-in', '${get_time}', '${get_cal}', '${find_date}', '${attn_date}', '${record_date}', '${record_time}', '${currentYear}', '${currentMonth}', '${currentDate}')`, 
            
            (erri, insert)=>{
            if(erri) console.log(erri.sqlMessage);
            else {
                null
                console.log(`"Congratulations! your are check-in, ${user} ${user_id} ${name} ${record_time}"`);
            
                }
            })
        
           }
        
        
              
           else if(infoc.length==1 || infoc[0].take_time>get_time){
         
            sqlmap.query(`INSERT INTO attn_record (domain, session, user, user_id, name, checkout, take_time, get_cal, find_date, attn_date,  record_date, record_time, year, month, day)
            VALUES('${domain}', '${session}', '${user}', '${user_id}', '${name}', 'check-out', '${get_time}', '${get_cal}', '${find_date}', '${attn_date}', '${record_date}', '${record_time}', '${currentYear}', '${currentMonth}', '${currentDate}')`, 
            
            (erri, insert)=>{
            if(erri) console.log(erri.sqlMessage);
            else {
            null
            console.log(`"Thanks! your are check-out, ${user} ${user_id} ${name} ${record_time}"`);
        
            }
            })
        
           }
        
           
           else{
            null 
            console.log(`"HI, dear ${user} ${user_id} ${name} now you can check-out after  5 minutes for checkout!"`);
        
           }
        
         }
        })
        
        }
        
        })
        
}




exports.pu_attn_msid_webapi_post=(req, res)=>{
    const {domain, user_id, user, name, today, record_date, record_time}= req.body;
    const todaym = new Date(today);
    const currentDate= new Date().getDate();
    const currentMonth = todaym.getMonth();
    const currentYear = todaym.getFullYear();
    const get_cal= currentMonth+'-'+currentYear;
    const myMonth= ["January", "February", "March", "April", "May", "June", "July", "August", "September", "October", "November", "December"]
    const find_date= `${myMonth[currentMonth]}-${currentDate}-${currentMonth+1}-${currentYear}`
    const attn_date= new Date().toDateString();
    
    sqlmap.query(`SELECT * FROM attn_record WHERE domain='${domain}' AND user_id='${user_id}' AND record_time='${record_time}' ORDER BY at_date DESC`, 
    (errf, infof)=>{
    
    if(infof.length>0){
        null
        console.log(`Last checkout: "${user} ${user_id} ${name} ${record_time} ${infof[0].checkout}"`);
    }
    
    else{
    
    sqlmap.query(`SELECT * FROM attn_record WHERE domain='${domain}' AND user_id='${user_id}' AND record_date='${record_date}' ORDER BY at_date DESC`, 
    (errc, infoc)=>{
     if(errc) console.log(errc.sqlMessage);
    
     else {
       if(infoc.length>=2) {
        null
        console.log(`"HI, dear ${user} ${user_id} ${name} you are already checkout today!"`);
       } 
       
       else if(infoc.length==0 || infoc.length==undefined){
     
        sqlmap.query(`INSERT INTO attn_record (domain, session, user, user_id, name, checkout, take_time, get_cal, find_date, attn_date, record_date, record_time, year, month, day)
        VALUES('${domain}', '${session}', '${user}', '${user_id}', '${name}', 'check-in', '${get_time}', '${get_cal}', '${find_date}', '${attn_date}', '${record_date}', '${record_time}', '${currentYear}', '${currentMonth}', '${currentDate}')`, 
        
        (erri, insert)=>{
        if(erri) console.log(erri.sqlMessage);
        else {
            null
            console.log(`"Congratulations! your are check-in, ${user} ${user_id} ${name} ${record_time}"`);
        
            }
        })
    
       }
    
    
          
       else if(infoc.length==1 || infoc[0].take_time>get_time){
     
        sqlmap.query(`INSERT INTO attn_record (domain, session, user, user_id, name, checkout, take_time, get_cal, find_date, attn_date,  record_date, record_time, year, month, day)
        VALUES('${domain}', '${session}', '${user}', '${user_id}', '${name}', 'check-out', '${get_time}', '${get_cal}', '${find_date}', '${attn_date}', '${record_date}', '${record_time}', '${currentYear}', '${currentMonth}', '${currentDate}')`, 
        
        (erri, insert)=>{
        if(erri) console.log(erri.sqlMessage);
        else {
        null
        console.log(`"Thanks! your are check-out, ${user} ${user_id} ${name} ${record_time}"`);
    
        }
        })
    
       }
    
       
       else{
        null 
        console.log(`"HI, dear ${user} ${user_id} ${name} now you can check-out after  5 minutes for checkout!"`);
    
       }
    
     }
    })
    
    }
    
    })
    
    }
    