const { app, express, mysql , sessionStore,  session, cookieParser, flash, bodyParser, sqlmap, multer, randomBytes, createHmac, fs } = require("./server")

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
  
  // const randomString= randomBytes(10).toString('hex');

  // console.log(randomString);

//   const log= createHmac('md5', 'pipilikapipra').update('user@admin.com').digest('hex');
//   console.log(log);
  
  // ___ini('sahasrailpphs.saanviabc.com', 'ABC123XYS')
  // ___ini('norailmnmhs.saanviabc.com', 'ABC123XYN')
  // ___ini('goailbarimb.saanviabc.com', 'ABC123XYG')
  
  
  // var uuid= new Date().getTime()+Math.floor(Math.random()*900000000);

  //   const password= createHmac('md5', 'pipilikapipra').update('password@abc').digest('hex');

  // sqlmap.query(`SELECT password FROM students ORDER BY ID`, (err, info)=>{
  //   if(err) console.log(err.sqlMessage);
  //   else {
  //     for (let index = 0; index < info.length; index++) {
  //      sqlmap.query(`update students set password='${password}'`, (erru, update)=>{
  //       if(erru) console.log(erru.sqlMessage);
  //       else console.log(password);
  //      })
        
  //     }
  //   }
  // })

// var find_date= new Date('2023-10-21 11:56:35').toDateString()
// console.log(find_date);
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