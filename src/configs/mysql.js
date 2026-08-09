const mysql = require("mysql")

const sqlmap = mysql.createPool({
  host: process.env.host_name,
  user: process.env.user_name,
  password: process.env.user_password,
  database: process.env.database_name,
  connectionLimit: 50,
  waitForConnections: true,
  queueLimit: 0,
  enableKeepAlive: true,
  keepAliveInitialDelayMs: 0
})

// Error handling for connection pool
sqlmap.on('error', (err) => {
  console.error('MySQL Connection Pool Error:', err.code)
  if (err.code === 'PROTOCOL_CONNECTION_LOST') {
    console.error('Database connection was closed.')
  }
  if (err.code === 'PROTOCOL_ENQUEUE_AFTER_FATAL_ERROR') {
    console.error('Database connection had a fatal error.')
  }
  if (err.code === 'PROTOCOL_ENQUEUE_AFTER_QUILTING') {
    console.error('Database connection was closed.')
  }
})

module.exports = sqlmap
