const { lics_checkout, ini_dll_push, ini_dll_rm, ini_terminal_push, ini_termial_rm, ini_termial_status, ini_termial_ren, ini_termial_get, ini_termial_dea } = require('../app/ini');
const {app, express}= require('../server')
const ini= express.Router();

ini.post('/lics/checkout/', lics_checkout)
ini.post('/terminal/get/', ini_termial_get)
ini.post('/terminal/dea/', ini_termial_dea)
ini.post('/terminal/push/', ini_terminal_push)
ini.post('/terminal/ren/', ini_termial_ren)
ini.post('/terminal/rm/', ini_termial_rm)

ini.get('/terminal/', (req, res)=>{
    res.render('ini/terminal');
})




module.exports= ini;