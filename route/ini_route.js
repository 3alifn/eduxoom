const { lics_checkout } = require('../app/ini');
const {app, express}= require('../server')
const ini= express.Router();

ini.post('/lics/checkout/', lics_checkout)






module.exports= ini;