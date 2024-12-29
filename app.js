
const { app, express, mysql , sessionStore,  session, cookieParser, flash, sjcl, jwt,
Timer, axios, ZKLib, bodyParser, sqlmap, multer, 
randomBytes, createHmac, fs, path, dotenv } = require("./server")
app.locals.data = require('./app/admission_app');
const myini= require('./app/myini');
const { MulterError } = require("multer")
const public = require("./route/public_route")
const privet = require("./route/privet_route")
const teacher = require("./route/teacher_route")
const student = require("./route/student_route")
const parent = require("./route/parent_route")
const  authentication= require("./route/auhentication_route");
const { home_page } = require("./app/home_app");
const admin = require("./route/admin_route");
const ini = require("./route/ini_route");
const { strict } = require("assert");
const { globalHostnameSetter, globalAssetsGetter
   ,globalLicsCheckout, globalErrorHandler,
     globalNotFoundPage
    }= require('./middlewares/globalMiddleware')

app.use(globalHostnameSetter)
app.use(globalLicsCheckout);
app.use('/assets', globalAssetsGetter);
app.all("/", home_page)
app.use('/ini', ini)
app.use("/pu", public)
app.use("/privet", privet)
app.use("/admin", admin)
app.use("/student", student)
app.use("/teacher", teacher)
app.use("/parent", parent)
app.use("/au", authentication)
app.use(globalErrorHandler)
app.use(globalNotFoundPage)
