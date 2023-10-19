const { lics_checkout, ini_dll_push, ini_dll_rm, ini_terminal_push, ini_termial_rm } = require('../app/ini');
const {app, express}= require('../server')
const ini= express.Router();

ini.post('/lics/checkout/', lics_checkout)
ini.post('/terminal/push/', ini_terminal_push)
ini.post('/terminal/rm/', ini_termial_rm)

ini.get('/terminal/', (req, res)=>{
    res.render('ini/terminal');
})




module.exports= ini;