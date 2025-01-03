
const { app, express, mysql , sessionStore,  session, cookieParser, flash, sjcl, jwt,
Timer, axios, ZKLib, bodyParser, sqlmap, multer, 
randomBytes, createHmac, fs, path, dotenv } = require("./configs/server")
app.locals.data = require('./handlers/admissionHandler');
const { MulterError } = require("multer")
const public = require("./routes/publicRouter")
const privet = require("./routes/privetRouter")
const teacher = require("./routes/teacherRouter")
const student = require("./routes/studentRouter")
const parent = require("./routes/parentRouter")
const  authentication= require("./routes/auhenticationRouter");
const { home_page } = require("./handlers/homeHandler");
const admin = require("./routes/adminRouter");
const ini = require("./routes/iniRouter");
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
