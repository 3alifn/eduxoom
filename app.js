import {
     app, express, mysql, session, cookieParser, 
    flash, sjcl, jwt, Timer, axios, ZKLib, bodyParser, sqlmap,
     multer, randomBytes, createHmac, fs, dotenv 
    } from "./server.js";
    
import myini from './app/myini.js';
import { MulterError } from "multer";
import publicRoute from "./route/public_route.js";
import privetRoute from "./route/privet_route.js";
import teacherRoute from "./route/teacher_route.js";
import studentRoute from "./route/student_route.js";
import parentRoute from "./route/parent_route.js";
import authenticationRoute from "./route/auhentication_route.js";
import { home_page } from "./app/home_app.js";
import adminRoute from "./route/admin_route.js";
import iniRoute from "./route/ini_route.js";

app.locals.data = (await import('./app/admission_app.js')).default;

app.all('*', (req, res, next) => {
  const host = req.hostname.startsWith("www.");
  const hostnameInt = host ? req.hostname.split("www.")[1] : req.hostname;
  res.cookie('hostname', hostnameInt, { path: "/", sameSite: "strict", httpOnly: true, priority: "high" });

  if (req.url === "/ini/lics/checkout/") {
      next();
  } else {
      sqlmap.query(
          `SELECT domain, lics FROM ___ini WHERE domain=? AND at_status=? AND checkout=?`,
          [hostnameInt, true, true],
          (errllc, infollc) => {
              if (errllc) {
                  console.log(errllc.sqlMessage);
                  return;
              }
              if (infollc.length > 0) {
                  next();
              } else {
                  res.render('ini/lics');
              }
          }
      );
  }
});

app.get("/", home_page);
app.use('/ini', iniRoute);
app.use("/pu", publicRoute);
app.use("/privet", privetRoute);
app.use("/admin", adminRoute);
app.use("/student", studentRoute);
app.use("/teacher", teacherRoute);
app.use("/parent", parentRoute);
app.use("/au", authenticationRoute);

app.use((err, req, res, next) => {
  if (err instanceof MulterError) {
      console.log(err.message + "_multer_");
      res.send({ status: 500, msg: err.message, alert: "alert-warning text-warning" });
  } else {
      console.log("My Next Error! " + err);
      res.send({ status: 500, msg: err, alert: "alert-danger" });
  }
});

app.use((req, res, next) => {
  res.redirect('/pages/404.html');
  // throw new Error("This url was not found!");
});
