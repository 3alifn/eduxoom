const {app, sqlmap, multer, fs, path}= require('../server')
const sharp= require('sharp');


const multer_location = multer.diskStorage({
    destination: (req, file, cb) => {
        cb(null, "./public/image/event/")
    },

    filename: (req, file, cb) => {

        cb(null, new Date().getTime() + "_" + file.originalname)
    },

})

exports.multer_upload_event= multer({
    storage: multer_location,

    limits: { fileSize: 1024 * 1024 * 2 },
    fileFilter: (req, file, cb) => {
        if (file.mimetype == "image/png" || file.mimetype == "image/jpeg") {
            cb(null, true)
        }
        else {
            cb(new Error("file extension allow only png or jpeg"))
        }

    }

})


exports.public_event_page= (req, res)=>{
    sqlmap.query(`SELECT * FROM event ORDER BY ID DESC`, (err, info)=>{
        if(err) console.log(sqlmap);
        else res.render('public/event_page', {info})
    })
}


exports.admin_event_pull=(req, res)=>{
    sqlmap.query(`SELECT * FROM event ORDER BY ID DESC`, (err, info)=>{
        if(err) console.log(err.sqlMessage);
        else {
            var tabledata= '';
            for (let index = 0; index < info.length; index++) {
              
                tabledata+=`

                <tr>
                        <td class="p-3"> <input class="shadowx checkout form-check-input" type="checkbox" value="${info[index].ID}" name="dataid[]" id=""></td>
                        <td class="fw-semibold text-muted">
        
                          <img class="shadowx" style="width: 60px; height: 40px;" src="/image/event/resized/${info[index].image}" alt="">
                          ${info[index].name}
                        </td>
        
                        <td class="fw-semibold text-muted">${info[index].position}</td>
        
                        <td class="fw-semibold text-muted">
                          <div class="dropdown">
                            <button data-bs-toggle="dropdown" class="btn btn-link dropdown-toggle shadowx"> <i
                                class="bi bi-three-dots-vertical"></i></button>
                            <div class="dropdown-menu">
                              <button type='button' onclick='_penbox_pull(${info[index].ID})' class="btn  dropdown-item btn-link p-2"><i class="bi bi-pen p-1"></i>view and edit</button>
                              <button type='button' onclick='_delbox_push(${info[index].ID})' class="btn dropdown-item btn-link p-2"><i class="bi bi-trash p-1"></i>delete forever</button>
                            </div>
                          </div>
                        </td>
        
                      </tr>
                 
                   
                `     

            }
               res.send({tabledata})

        }
    })
}




exports.admin_event_push= async(req, res)=>{

    const {name, position, index_number, gender, age, email, phone, address, joining_date}= req.body;
  
     if(req.file){
        if(req.file.size<1048576){
            const { filename: image } = req.file;
      
          await sharp(req.file.path)
          .jpeg({ quality: 50 })
          .toFile(
              path.resolve(path.resolve(req.file.destination, 'resized',image))
          )
          fs.unlinkSync(req.file.path)
      
          }
      
          else {
      
            
            await sharp(req.file.path)
            .jpeg({ quality: 50 })
            .toFile(
                path.resolve(path.resolve(req.file.destination, 'resized', image))
            )
      
        fs.unlinkSync(req.file.path)
          
            }
     }

     sqlmap.query(`INSERT INTO event (name, position, gender, index_number, age, email, phone, address, joining_date, image )
     VALUES('${name}','${position}', '${gender}', '${index_number}', '${age}', '${email}', '${phone}', '${address}', '${joining_date}', '${req.file.filename}')`, (err, next)=>{
         if(err) console.log(err.sqlMessage);
         else   res.send({msg: 'Added!', alert: 'success'})
     })
  

  
  
  }


exports.admin_event_penbox_pull=(req, res)=>{
    const {dataid}= req.body; 
    sqlmap.query(`SELECT * FROM event WHERE ID=${dataid}`, (err, info)=>{
        if(err) console.log(err.sqlMessage);
        else {

var penboxdata=
`
<div id="penboxform" data-bs-backdrop="static" class="row modal  p-2 mt-5">

<div class="  modal-dialog modal-content shadowx  mt-3 bg-gradient- bg-light text- mb-5 col-12 m-auto">
<div class="d-flex justify-content-end p-2">
<button type="button" data-bs-dismiss="modal" class="btn btn-close bg-light "></button>

</div>
<form id="penboxdata" class="penboxdata" method="post" action="#" onsubmit="return false">
  <div class=" card shadowx">
   
    <center class=" p-2">
      <img style="width: 150px; height: 120px" class=" shadowx float-start " src="/image/event/resized/${info[0].image}" alt="">
    </center>

    <div class="card-body fw-semibold">
    
    <div class="d-flex text-muted m-2">
    <input required type="hidden" name="dataid" value='${info[0].ID}'>
       <div class="p-1 w-25">Position</div>
        <input class="form-dev w-75 p-1" required type="text" value="${info[0].position}" placeholder="Gateman" name="position" id="">
      </div>

      <div class="d-flex text-muted m-2">
         <div class="p-1 w-25">Name</div>
          <input class="form-dev w-75 p-1" required type="text" value="${info[0].name}" placeholder="enter name" name="name" id="">
        </div>


        <div class="d-flex p-2 justify-content-between align-items-center">
        <p class="w-25 fw-semibold m-auto">Gender</p>
        <span class="w-75">
          Male <input value="Male" class="form-check-input shadowx ms-2 me-2" ${info[0].gender=='Male'?'checked':null} type="radio" name="gender" id="">
          Female <input value="Female" class="form-check-input shadowx ms-2" ${info[0].gender=='Female'?'checked':null} type="radio" name="gender" id="">
      
        </span>
      
      </div>

        
      <div class="d-flex text-muted m-2">
        <div class="p-1 w-25">Index No</div>
         <input class="form-dev w-75 p-1" type="number" value="${info[0].index_number}" placeholder="enter index no" name="index_number" id="">
       </div>


       
      <div class="d-flex text-muted m-2">
        <div class="p-1 w-25">Email</div>
         <input class="form-dev w-75 p-1"  type="email" value="${info[0].email}" placeholder="example@mail.com" name="email" id="">
       </div>


       
      <div class="d-flex text-muted m-2">
        <div class="p-1 w-25">Phone</div>
         <input required class="form-dev w-75 p-1"  type="tel" value="${info[0].phone}" placeholder="enter phone no" name="phone" id="">
       </div>


       
      <div class="d-flex text-muted m-2">
        <div class="p-1 w-25">Age</div>
         <input class="form-dev w-75 p-1" type="number" value="${info[0].age}" placeholder="enter age" name="age" id="">
       </div>


       
      <div class="d-flex text-muted m-2">
        <div class="p-1 w-25">Address</div>
         <input class="form-dev w-75 p-1" type="text" value="${info[0].address}" placeholder="enter address" name="address" id="">
       </div>


       
      <div class="d-flex text-muted m-2">
        <div class="p-1 w-25">Joining date</div>
         <input class="form-dev w-75 p-1"  type="date" value="${info[0].joining_date}"  name="joining_date" id="">
       </div>

             
      <div class="d-flex justify-content-end text-muted m-2">
       <input  class="btn  text-primary submitbtn nav-fill btn-hover shadowx"  type="submit" value="Save and changes" id="">
     </div>


</div>
</div>
</form>
</div>
</div>
`
 res.send({penboxdata})

        }
    })
}



  exports.admin_event_penbox_push=(req, res)=>{
    const {dataid, name, position, index_number, gender, age, email, phone, address, joining_date}= req.body;
    sqlmap.query(`UPDATE event SET name='${name}', position='${position}', index_number='${index_number}',
    gender='${gender}', age='${age}', email='${email}', phone='${phone}', address='${address}', joining_date='${joining_date}'`,
    (err, update)=>{
        if(err) console.log(err.sqlMessage);
        else res.send({aler: 'alert-success', msg: 'Update successfully!'})
    })
    
}




exports.admin_event_pop= (req, res)=>{

    const {dataid}= req.body; 
  
  if(dataid==undefined){
      res.send({msg: "Data not found!", alert: "alert-info"})

  }
  else {
    sqlmap.query(`SELECT * FROM event WHERE ID IN (${dataid})`, (errInfo, findInfo)=>{
        if(errInfo) console.log("data not found!")
        
        else {
    
            
    sqlmap.query(`DELETE FROM event WHERE ID IN (${dataid})`, (err, next)=>{
        if(err) console.log(err.sqlMessage);
        else
        {
    
           for (const index in findInfo) {
            fs.unlink(`./public/image/event/resized/${findInfo[index].image}`, function (errDelete) {
                if (errDelete) console.log(errDelete+"_"+"Data Deleted! Not found file!");
    
                
              
              });
           }
    
           res.send({msg: "Data Deleted! Successfully!", alert: "alert-success"})
            
        }
    })
    
        }
    
    })
  }
  
  
  
  
  }