
const { app, express, mysql , sessionStore,  session, cookieParser, flash, sjcl, jwt,
Timer, axios, ZKLib, bodyParser, sqlmap, multer, 
randomBytes, createHmac, fs, path, dotenv } = require("./configs/server")
app.locals.data = require('./apps/admission_app');
const myini= require('./apps/myini');
const { MulterError } = require("multer")
const public = require("./routes/public_route")
const privet = require("./routes/privet_route")
const teacher = require("./routes/teacher_route")
const student = require("./routes/student_route")
const parent = require("./routes/parent_route")
const  authentication= require("./routes/auhentication_route");
const { home_page } = require("./apps/home_app");
const admin = require("./routes/admin_route");
const ini = require("./routes/ini_route");
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
