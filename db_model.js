const { exit } = require('process');
const {sqlmap}= require('./server');

function promiseUser() {
   return new Promise((resolve, reject) => {
     // asynchronous operation
     setTimeout(() => {
console.log("Database user creation working...");

sqlmap.query(`CREATE USER IF NOT EXISTS "mr_bean"@"localhost" IDENTIFIED by "fun"`,(err, up)=>{
if(err) reject(new Error(err.sql))
else resolve("Database user created...");

}) // CREATE DATABASE USER

     }, 3000);
   });
 }
 
 function promiseGrantUser(props) {
   return new Promise((resolve, reject) => {
     // asynchronous operation
     setTimeout(() => {
       console.log("Database Grant user working...");
       
    sqlmap.query(`GRANT ALL PRIVILEGES ON *.* TO "mr_bean"@"localhost" WITH GRANT OPTION`,(err, up)=>{
      if(err) reject(new Error(err.sql))
      else resolve("Database user granted...");
    
}) // ALL DATABASE USER ALL GRANT PERMISSION
   });
     }, 3000);

 }
 
 function promiseDatabase(props) {
   return new Promise((resolve, reject) => {
     // asynchronous operation
     setTimeout(() => {
       console.log("Database creation working...");
      sqlmap.query(`CREATE DATABASE IF NOT EXISTS bio`,(err, up)=>{
        if(err) reject(new Error(err.sql))
        else resolve("Database created...");
    
}) // CREATE DATABASE IF NOT EXISTS

       resolve("Data from promise finished");
     }, 1000);
   });
 }
 

 function promiseTables(props) {
  return new Promise((resolve, reject) => {
    // asynchronous operation
    setTimeout(() => {
      console.log('Table creation working...');
      
sqlmap.query(`CREATE TABLE IF NOT EXISTS demo
(
id INT AUTO_INCREMENT PRIMARY KEY,
name VARCHAR(100),
age INT
)`,(err, up)=>{
  if(err) reject(new Error(err.sql))
  else resolve('Database schema creation success...')
    
}) // CREATE TABLE IF NOT EXISTS
    }, 1000);
  });
}

//  promise1()
//    .then((data) => promise2(data))
//    .then((data) => promise3(data))
//    .then((result) => {
//      console.log("Final result:", result);
//    })
//    .catch(error => {
//       console.error("Error:", error);
//     }); // used promise then

    async function databaseSchema() {
      try {
        const user = await promiseUser();
        const userGrant = await promiseGrantUser(user);
        const database = await promiseDatabase(userGrant);
        const result = await promiseTables(database);
        console.log("Final result:", result);
      } catch (error) {
        console.error("Error:", error);
      }
      // process.exit(null) // exit after end programs

    }
    
    databaseSchema(); // used async await
      


// sqlmap.query(`CREATE USER "mr_bean"@"localhost" IDENTIFIED by "fun"`,(err, up)=>{
// if(err) throw err.sql
// else console.log('success...');

// }) // CREATE DATABASE USER


// sqlmap.query(`GRANT ALL PRIVILEGES ON *.* TO "mr_bean"@"localhost" WITH GRANT OPTION`,(err, up)=>{
//     if(err) throw err.sql
//     else console.log('success...');
    
// }) // ALL DATABASE USER ALL GRANT PERMISSION
    
    
// sqlmap.query(`CREATE DATABASE IF NOT EXISTS bio`,(err, up)=>{
//     if(err) throw err.sql
//     else console.log('success...');
    
// }) // CREATE DATABASE IF NOT EXISTS



// sqlmap.query(`CREATE TABLE IF NOT EXISTS person 
// (
// id INT AUTO_INCREMENT PRIMARY KEY,
// name VARCHAR(100),
// age INT
// )`,(err, up)=>{
//     if(err) throw err.sql
//     else console.log('success...');
    
// }) // CREATE TABLE IF NOT EXISTS



    