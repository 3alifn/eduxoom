const session= require("express-session")
const mysqlStore= require("express-mysql-session")(session)
const {randomBytes, createHmac}= require("crypto")
const sqlmap= require('./mysql')
const cookiename= createHmac('md5', 'pipilikapira').update('saanviabc').digest('hex')
const sessionStore= new mysqlStore({expiration: 86400000*30}, sqlmap)

const globalSessionWithMysql= session({
    key: 'eduxoom',
    secret: 'pipilikiapipra',
    store: sessionStore,
    resave: false,
    saveUninitialized: false,
    name: cookiename,
    cookie: {
     path: '/', secure: false, httpOnly: true, maxAge:  86400000*30, 
    }
})

module.exports={
    globalSessionWithMysql
}