const { app, express, mysql , sessionStore,  session, cookieParser, flash, bodyParser, sqlmap, multer, randomBytes, createHmac, fs, ZKHLIB } = require("../configs/server")
//  subject_code_example: six_a_math

function ___ini(domain, lics) {
  const join_date = new Date().toLocaleDateString();
  const expire_date = (new Date().getMonth() + 1) + '/' + (new Date().getDate() + 1) + '/' + (new Date().getFullYear() + 1);

  sqlmap.query(
      `INSERT INTO ___ini (domain, lics, join_date, expire_date, at_status)
      VALUES (?, ?, ?, ?, ?)`,
      [domain, lics, join_date, expire_date, true],
      (err1, info1) => {
          if (err1) {
              console.log(err1.sqlMessage);
              return;
          }

          sqlmap.query(
              `INSERT INTO user_admin (domain) VALUES (?)`,
              [domain],
              (err2, info2) => {
                  if (err2) {
                      console.log(err2.sqlMessage);
                      return;
                  }

                  console.log('Created => ' + domain, lics, expire_date);
              }
          );
      }
  );
}





run_cmd_terminal=()=>{
  const cpm = require('child_process');
  // user for open any file form cmd........
  cpm.exec('start "" "index.html"', {cwd: 'C:/Users/3alifn/Desktop/web'});
  
}
 


// run_cmd_terminal()

  // const randomString= randomBytes(10).toString('hex');

  // console.log(randomString);

//   const log= createHmac('md5', 'pipilikapipra').update('user@admin.com').digest('hex');
  // const log= createHmac('md5', 'pipilikapipra').update('বাংলা').digest('hex');
  // console.log(log);

//  sql for update subject code..............

// sqlmap.query(
//   `SELECT ID, subject FROM subject ORDER BY subject`,
//   (err, info) => {
//       if (err) {
//           console.log(err.sqlMessage);
//           return;
//       }

//       for (let index = 0; index < info.length; index++) {
//           const subject_code = createHmac('md5', 'pipilikapipra').update(`${info[index].subject}`).digest('hex');

//           sqlmap.query(
//               `UPDATE subject SET subject_code=? WHERE ID=?`,
//               [subject_code, info[index].ID],
//               (errx, update) => {
//                   if (errx) {
//                       console.log(errx.sqlMessage);
//                       return;
//                   }
//                   if (info.length == index + 1) {
//                       console.log('updated');
//                   }
//               }
//           );
//       }
//   }
// );

  

  // sql for teacher id.....

  // sqlmap.query(
  //   `SELECT index_number, ID FROM teachers ORDER BY ID`,
  //   (err, info) => {
  //       if (err) {
  //           console.log(err.sqlMessage);
  //           return;
  //       }

  //       for (let index = 0; index < info.length; index++) {
  //           const teacher_id = info[index].index_number.slice(1);
  //           console.log(teacher_id);

  //           sqlmap.query(
  //               `UPDATE teachers SET teacher_id=? WHERE ID=?`,
  //               [teacher_id, info[index].ID],
  //               (erru, update) => {
  //                   if (erru) {
  //                       console.log(erru.sqlMessage);
  //                       return;
  //                   }
  //               }
  //           );
  //       }
  //   }



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

// sqlmap.query(
//   `SELECT ID FROM students_r ORDER BY ID`,
//   (err, info) => {
//       if (err) {
//           console.log(err.sqlMessage);
//           return;
//       }

//       for (let index = 0; index < info.length; index++) {
//           let newid = 2001;
//           let uuid = new Date().getTime() + Math.floor(Math.random() * 900000000);

//           sqlmap.query(
//               `UPDATE students_r SET ID=?, student_uuid=? WHERE ID=?`,
//               [newid + index, uuid, info[index].ID],
//               (err2, update) => {
//                   if (err2) {
//                       console.log(err2.sqlMessage);
//                       return;
//                   }
//                   console.log('updated...');
//               }
//           );
//       }
//   }
// );





// query for demo password

// var password = createHmac('md5', 'pipilikapipra').update('password@abc').digest('hex');
// sqlmap.query(
//     `UPDATE students SET password=?`,
//     [password],
//     (err, update) => {
//         if (err) {
//             console.log(err.sqlMessage);
//             return;
//         }
//         console.log('updated');
//     }
// );


// var get_position= ' Headmaster '.toLowerCase().trim();
// if(get_position.indexOf('headmaster')==0) var order_value= 'A';
// else if(get_position.indexOf('assistant headmaster')==0) var order_value= 'B';
// else if(get_position.indexOf('assistant teacher')==0) var order_value= 'C';
// else var order_value= 'D';

// console.log(get_position ,order_value);