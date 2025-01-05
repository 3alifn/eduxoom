function promiseUser() {
    return new Promise((resolve, reject) => {
      // asynchronous operation
      setTimeout(() => {
 console.log("Database user creation working...");
 
 sqlmap.query(`CREATE USER IF NOT EXISTS "eduxoomc"@"localhost" IDENTIFIED by "fun"`,(err, up)=>{
 if(err) reject(new Error(err.sql))
 else resolve("Database user created...");
 
 }) // CREATE DATABASE USER
    });
    });
  }
  
  function promiseGrantUser(props) {
    return new Promise((resolve, reject) => {
      // asynchronous operation
      setTimeout(() => {
        console.log("Database Grant user working...");
        
     sqlmap.query(`GRANT ALL PRIVILEGES ON *.* TO "eduxoomc_alifn"@"localhost" WITH GRANT OPTION`,(err, up)=>{
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
     