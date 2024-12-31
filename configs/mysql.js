const mysql = require("mysql")
const sqlmap= mysql.createPool({
    host: process.env.host_name,
    user: process.env.user_name,
    password: process.env.user_password,
    database: process.env.database_name,
    // queueLimit: 0,
    connectionLimit: 50
})

module.exports= sqlmap;

module.exports = sqlmap;
