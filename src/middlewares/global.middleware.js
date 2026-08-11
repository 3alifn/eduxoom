'use strict';

const { app, express, sharp, path, fs, sqlmap } = require('../configs/server');
const { MulterError } = require('multer');

const globalHostnameSetter = (req, res, next) => {
  // Normalize and remove leading "www." safely
  const rawHost = String(req.hostname || '');
  const hostname = rawHost.replace(/^www\./i, '') || rawHost;
  res.locals.hostname = hostname;
  res.cookie('hostname', hostname, { path: '/', sameSite: 'strict', httpOnly: true, priority: 'high' });
  next();
};

// Cache static middlewares per hostname to avoid recreating them on every request
const _staticCache = new Map();
const globalAssetsGetter = (req, res, next) => {
  const hostname = res.locals.hostname || 'default';
  let staticMw = _staticCache.get(hostname);
  if (!staticMw) {
    const dir = path.join(__dirname, '../assets', hostname);
    staticMw = express.static(dir);
    _staticCache.set(hostname, staticMw);
  }
  return staticMw(req, res, next);
};

const globalErrorHandler = (err, req, res, next) => {
  // Always log full error on server
  console.error(err && err.stack ? err.stack : err);

  if (err instanceof MulterError) {
    // File upload related error — return a client friendly message and 400 status
    const msg = err.message || 'File upload error';
    return res.status(400).send({ status: 400, msg: `Error! ${msg} & size upto 500kb`, alert: 'alert-warning text-dark' });
  }

  // In production we should avoid leaking error details to clients
  const safeMsg = process.env.NODE_ENV === 'production' ? 'Internal Server Error' : String(err);
  return res.status(500).send({ status: 500, msg: `Error! ${safeMsg}`, alert: 'alert-danger text-dark' });
};

const globalNotFoundPage = (req, res, next) => {
  // Return a 404 status and redirect to the 404 page (preserves original behavior while setting the status)
  return res.status(404).redirect('/pages/404.html');
};

const globalLicsCheckout = (req, res, next) => {
  // Allow the checkout route to proceed
  if (req.path === '/ini/lics/checkout/') return next();

  const hostname = res.locals.hostname;
  if (!hostname) {
    // If hostname wasn't set, skip license check (or optionally raise an error)
    return next();
  }

  sqlmap.query(
    'SELECT domain, lics FROM ___ini WHERE domain = ? AND at_status = ? AND checkout = ?',
    [hostname, true, true],
    (err, rows) => {
      if (err) {
        console.error('License check query error:', err && err.sqlMessage ? err.sqlMessage : err);
        return next(err);
      }
      if (Array.isArray(rows) && rows.length > 0) {
        return next();
      }
      // Render the license page if no matching record found
      return res.render('ini/lics');
    }
  );
};

module.exports = {
  globalHostnameSetter,
  globalAssetsGetter,
  globalErrorHandler,
  globalNotFoundPage,
  globalLicsCheckout,
};
