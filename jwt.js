
var jwt=  require('jsonwebtoken');

public.get('/set/jwt/', (req, res)=>{
var token= jwt.sign(
  {name: 'mr. bean', age: 56}, 'pipilika',
  {expiresIn: '10s'}
)
app.locals.token= token;

res.json({token})


})

public.get('/get/jwt/', (req, res)=>{

  jwt.verify(app.locals.token, 'pipilika', (err, decoded) => {
    if (err) console.log(err);
    
    res.json({decoded})
});


});
