const session = require("express-session")
const mysqlStore = require("express-mysql-session")(session)
const { createHmac } = require("crypto")
const sqlmap = require('./mysql')

// Get session secrets from environment variables with fallbacks for development
const sessionSecret = process.env.SESSION_SECRET || 'pipilikiapipra'
const cookieSecret = process.env.COOKIE_SECRET || 'pipilikapira'
const cookiename = createHmac('md5', cookieSecret).update('saanviabc').digest('hex')

// Session store configuration
const sessionStore = new mysqlStore(
  { 
    expiration: 86400000 * 30, // 30 days
    checkExpirationInterval: 900000, // Check every 15 minutes
    createDatabaseTable: true
  }, 
  sqlmap
)

// Handle session store errors
sessionStore.on('error', (err) => {
  console.error('Session store error:', err)
})

const globalSessionWithMysql = session({
  key: 'eduxoom',
  secret: sessionSecret,
  store: sessionStore,
  resave: false,
  saveUninitialized: false,
  name: cookiename,
  cookie: {
    path: '/',
    secure: process.env.NODE_ENV === 'production', // Only HTTPS in production
    httpOnly: true,
    maxAge: 86400000 * 30, // 30 days
    sameSite: 'lax' // Protection against CSRF
  }
})

module.exports = {
  globalSessionWithMysql
}
