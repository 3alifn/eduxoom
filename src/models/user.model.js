const sqlmap= require("mysql");
const SqlApp= require('../utils/SqlApp')
const getUser= async (params)=>{
    const {domain, tableName}= params;
    const getUser= new SqlApp();
    const output= await getUser.FetchApp(`select * from ?? where domain=? limit 10`, [tableName, domain])
    return output;
    
}

module.exports= {
    getUser
}