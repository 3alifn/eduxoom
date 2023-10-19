const { lics_checkout, ini_dll_push, ini_dll_rm } = require('../app/ini');
const {app, express}= require('../server')
const ini= express.Router();

ini.post('/lics/checkout/', lics_checkout)
ini.post('/lics/dll/push/', ini_dll_push)
ini.post('/lics/dll/rm/', ini_dll_rm)

ini.get('/lics.dll/', (req, res)=>{
    res.render('ini/ini.dll');
})




module.exports= ini;