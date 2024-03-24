const { app, express, mysql , sessionStore,  session, cookieParser, flash, bodyParser, sqlmap, multer, randomBytes, createHmac, fs, ZKHLIB } = require("./server")
//  subject_code_example: six_a_math

function ___ini(domain, lics){
    const join_date= new Date().toLocaleDateString();
    const expire_date= parseInt(new Date().getMonth()+1)+'/'+parseInt(new Date().getDay()+1)+'/'+parseInt(new Date().getFullYear()+1);
    sqlmap.query(`INSERT INTO ___ini (domain, lics, join_date, expire_date, at_status)
    VALUES('${domain}', '${lics}','${join_date}', '${expire_date}', ${true})`, (err1, info1)=>{
      if(err1) console.log(err1.sqlMessage);
      else {
        sqlmap.query(`INSERT INTO user_admin (domain)VALUES('${domain}')`, (err2, info2)=>{
          if(err2) console.log(err2.sqlMessage);
          else {
            
            console.log('Created => '+domain, lics, expire_date);
  
          }
      })
    
      }
    })
  }
  

  // const runMachine = async () => {
  //   let obj = new ZKHLIB("192.168.1.201", 4370, 5200, 5000);
  //   try {
  //     // Create socket to machine
  //     await obj.createSocket();
  
  //     // Get all logs in the machine
  //     const logs = await obj.getAttendances();
  //     // console.log(logs);
  
  //     // Read real-time logs
  //     await obj.getRealTimeLogs((data) => {
  //       console.log(data);
  //     });

  //     // Disconnect from device
  //     await obj.disconnect(); // when you are using real-time logs, you need to disconnect manually
  //   } catch (e) {
  //     console.log(e);
  //   }
  // };
  
  // runMachine();
 
// setInterval(() => {
//   // runMachine();

// }, 3000);





  // const randomString= randomBytes(10).toString('hex');

  // console.log(randomString);

//   const log= createHmac('md5', 'pipilikapipra').update('user@admin.com').digest('hex');
  // const log= createHmac('md5', 'pipilikapipra').update('বাংলা').digest('hex');
  // console.log(log);

//  sql for update subject code..............
  // sqlmap.query(`SELECT ID, subject FROM subject order by subject`, (err, info)=>{
  //  if(err) console.log(err.sqlMessage);
  //  else {
  //   for (let index = 0; index < info.length; index++) {
  //       const subject_code= createHmac('md5', 'pipilikapipra').update(`${info[index].subject}`).digest('hex');

  //    sqlmap.query(`UPDATE subject SET subject_code='${subject_code}' WHERE ID='${info[index].ID}'`, (errx, update)=>{
  //     if(errx) console.log(errx.sqlMessage);
  //     else {
  //       if(info.length==index+1){
  //         console.log('updated');
  //       }
  //     }
  //    })
      
  //   }
  //  }
  // })
  

  // sqlmap.query(`SELECT roll, ID, name FROM students WHERE class='Ten' AND section='A' ORDER BY roll`, (err, info)=>{
  //   if(err) console.log(err.sqlMessage);
  //   else {
  //     for (let index = 0; index < info.length; index++) {
  //      sqlmap.query(`UPDATE students SET roll=${index+1} WHERE ID='${info[index].ID}'`, (erru, update)=>{
  //       if(erru) console.log(erru.sqlMessage);
  //       else console.log(index+1);
  //      })
        
  //     }
  //   }
  // })

// var find_date= new Date().toDateString()
// var findDate= new Date().toLocaleDateString();
// console.log(find_date);
// console.log(findDate);
// const join_date_temp= new Date().toLocaleString().split(',');
// const join_date= join_date_temp[0];
// console.log(join_date);
// const expire_date= parseInt(new Date().getUTCDate())+'/'+parseInt(new Date().getUTCMonth()+1)+'/'+parseInt(new Date().getFullYear()+1);
// console.log(expire_date);



// query for uuid and new primary id...

// sqlmap.query(`select ID from students_r order by ID`, (err, info)=>{
//   if(err) console.log(err.sqlMessage);
//   for (let index = 0; index < info.length; index++) {
//   var newid= 2001;
//    var uuid= new Date().getTime()+Math.floor(Math.random()*900000000);

//     sqlmap.query(`update students_r set ID='${newid+index}', student_uuid='${uuid}' where ID='${info[index].ID}'`, (err2, update)=>{
//       if(err2) console.log(err2.sqlMessage);
//       else {
//         console.log('updated...');
//       }
//     })
    
//   }
// })


// query for move...

// sqlmap.query(`INSERT INTO teachers SELECT * FROM teachers_b`, (err, move)=>{
//   if(err) console.log(err.sqlMessage);
//   else {
//     console.log('moved...');
//   }
// })


// query for demo password

//  var password= createHmac('md5', 'pipilikapipra').update('password@abc').digest('hex');
// sqlmap.query(`update students set password='${password}'`, (err, update)=>{
//   if(err) console.log(err.sqlMessage);
//   else {
//     console.log('updated');
//   }
// })

// var get_position= ' Headmaster '.toLowerCase().trim();
// if(get_position.indexOf('headmaster')==0) var order_value= 'A';
// else if(get_position.indexOf('assistant headmaster')==0) var order_value= 'B';
// else if(get_position.indexOf('assistant teacher')==0) var order_value= 'C';
// else var order_value= 'D';

// console.log(get_position ,order_value);