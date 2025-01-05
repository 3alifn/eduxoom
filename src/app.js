
const { app, express, mysql , sessionStore,  session, cookieParser, flash, sjcl, jwt,
Timer, axios, ZKLib, bodyParser, sqlmap, multer, 
randomBytes, createHmac, fs, path, dotenv } = require("./configs/server")
app.locals.data = require('./controllers/admission.controller');
const { MulterError } = require("multer")
const public = require("./routes/public.router")
const privet = require("./routes/privet.router")
const teacher = require("./routes/teacher.router")
const student = require("./routes/student.router")
const parent = require("./routes/parent.router")
const  authentication= require("./routes/auhentication.router");
const { home_page } = require("./controllers/home.controller");
const admin = require("./routes/admin.router");
const ini = require("./routes/ini.router");
const { strict } = require("assert");
const { globalHostnameSetter, globalAssetsGetter
   ,globalLicsCheckout, globalErrorHandler,
     globalNotFoundPage
    }= require('./middlewares/global.middleware')

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