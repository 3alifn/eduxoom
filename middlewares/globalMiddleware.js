const {app, express, sharp, path, fs, sqlmap} = require('../server');
const {MulterError}= require('multer')
const globalHostnameSetter= (req, res, next)=>{
  const host = req.hostname.startsWith("www.");
  const hostname = host ? req.hostname.split("www.")[1] : req.hostname;
  res.locals.hostname= hostname;  
  res.cookie('hostname', hostname, { path: "/", sameSite: "strict", httpOnly: true, priority: "high" });
  next()
}

const globalAssetsGetter= (req, res, next) => { 
  const hostname = res.locals.hostname; 
  express.static(path.join(__dirname, '../assets', hostname))(req, res, next); 
}


const globalErrorHandler= (err, req, res, next)=>{
  if(err instanceof MulterError ) {
    console.error(err.message);
    res.send({status: 500, msg: "Error! "+ err.message+" & size upto 500kb", alert: "alert-warning text-dark"})
    return
   }
    console.error("My Next Error! "+ err);
    res.send({status: 500, msg: "Error! "+ err, alert: "alert-danger text-dark"})

}

const globalNotFoundPage= (req, res, next)=>{
  return res.redirect('/pages/404.html')
}

const globalLicsCheckout= (req, res, next) => {
  if(req.url=="/ini/lics/checkout/") return next()
   sqlmap.query(
     `SELECT domain, lics FROM ___ini WHERE domain=? AND at_status=? AND checkout=?`,
     [res.locals.hostname, true, true],
     (errllc, infollc) => {
         if (errllc) {
             console.log(errllc.sqlMessage);
             return next(errllc.sqlMessage);
         }
         if (infollc.length > 0) return next();
          res.render('ini/lics');
     }
 )};
 

module.exports={
   globalHostnameSetter, globalAssetsGetter, globalErrorHandler, globalNotFoundPage, globalLicsCheckout,
}

