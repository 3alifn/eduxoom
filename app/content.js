const express = require("express")
const { sqlmap , multer, sharp} = require("../server")
const app = express()
const fs= require('fs')
const path= require('path')


const multer_location= multer.diskStorage({
  destination: (req, file, cb)=>{
   cb(null, "./public/image/content/")
  } ,

  filename: (req, file, cb)=>{

    cb(null, new Date().getTime()+"_"+file.originalname)
  },
  
})

exports.multer_upload= multer({
  storage: multer_location,

  limits: {fileSize: 1024*1024*5},
  fileFilter: (req, file, cb)=>{

    if(file.mimetype=="image/png" || file.mimetype=="image/jpeg")
    {
      cb(null, true)
    } 
    else 
    {
        cb(new Error("file extension allow only png or jpeg"))
    }
    
  }

})


const multer_location_carousel= multer.diskStorage({
  destination: (req, file, cb)=>{
   cb(null, "./public/image/school/")
  } ,

  filename: (req, file, cb)=>{

    cb(null, new Date().getTime()+"_"+file.originalname)
  },
  
})


exports.multer_upload_carousel= multer({
  storage: multer_location_carousel,

  limits: {fileSize: 1024*1024*5},
  fileFilter: (req, file, cb)=>{

    if(file.mimetype=="image/png" || file.mimetype=="image/jpeg")
    {
      cb(null, true)
    } 
    else 
    {
        cb(new Error("file extension allow only png or jpeg"))
    }
    
  }

})









exports.admin_content_image_post= async (req, res)=>{
  let {itemTitle}= req.body;

  for (let x = 0; x < req.files.length; x++) {
    const { filename: image } = req.files[x];

  if(req.files[x].size<1048576){
    await sharp(req.files[x].path)
    //  .resize(4000, 4000)
    //  .jpeg({ quality: 99 })
     .toFile(
         path.resolve(req.files[x].destination,'resized',image)
     )
     fs.unlinkSync(req.files[x].path)
  
    }
    else {
      await sharp(req.files[x].path)
      //  .resize(4000, 4000)
       .jpeg({ quality: 20 })
       .toFile(
           path.resolve(req.files[x].destination,'resized',image)
       )
       fs.unlinkSync(req.files[x].path)
    
      }
    }





  let dataId=itemTitle+Math.random()*900000;
  
 for (let i = 0; i < req.files.length; i++) {
  sqlmap.query(`INSERT INTO content (item_type, item_title, item_name, data_id)VALUES('image', '${itemTitle}', '${req.files[i].filename}', '${dataId}')`, (err, next)=>{
      if(err) console.log(err.sqlMessage);
      
  })


  
 }


//  console.log(itemTitle, dataId, );

  res.send({msg: "Content Added Successfully!", alert: "success"})
}











exports.admin_carousel_post= async (req, res)=>{

  for (let x = 0; x < req.files.length; x++) {
    const { filename: image } = req.files[x];

  if(req.files[x].size<1048576){
    await sharp(req.files[x].path)
    //  .resize(4000, 4000)
    //  .jpeg({ quality: 99 })
     .toFile(
         path.resolve(req.files[x].destination,'resized',image)
     )
     fs.unlinkSync(req.files[x].path)
  
    }

    else {
      await sharp(req.files[x].path)
      //  .resize(4000, 4000)
       .jpeg({ quality: 20 })
       .toFile(
           path.resolve(req.files[x].destination,'resized',image)
       )
       fs.unlinkSync(req.files[x].path)
    
      }
    }
  
  
  
 for (let i = 0; i < req.files.length; i++) {
  sqlmap.query(`INSERT INTO carousel (item_name)VALUES('${req.files[i].filename}')`, (err, next)=>{
      if(err) console.log(err.sqlMessage);
      
  })
}

res.send({msg: 'Image Added!', alert: 'success'})


}





exports.admin_carousel_get= (req, res)=>{

  sqlmap.query(`SELECT * FROM carousel ORDER BY ID DESC`, (err, info)=>{

    if(info.length>0){

      let listData= '';

      for (const i in info) {

        listData+= `
        <div class="col-6 col-md-3 m-auto ">
          
        <div class="card" id="">
        
           
          <img class='card-img-top' width="100%" src="/image/school/resized/${info[i].item_name}" alt="404">
          <span  data-id='${info[i].ID}' title='Delete' class='btn del_def'>&#10062;</span>
        </div>
                  
         </div> 
         
           
        `       
      }

      res.send({listData})


    }

  })

}





exports.admin_carousel_delete= (req, res)=>{

  let {ID}= req.body;

  sqlmap.query(`SELECT * FROM carousel WHERE ID = ${ID}`, (errInfo, findInfo)=>{
    if(errInfo) console.log("data not found!")
    
    else {

        
sqlmap.query(`DELETE FROM carousel WHERE ID=${ID}`, (err, next)=>{
    if(err) console.log(err.sqlMessage);
    else
    {

       for (const i in findInfo) {
        fs.unlink(`./public/image/school/resized/${findInfo[i].item_name}`, function (errDelete) {
            if (errDelete) console.log(errDelete+"_"+"Data Deleted! Not found file!");

            
          
          });
       }

       res.send({msg: "Data Deleted! Successfully!", alert: "success"})
        
    }
})

    }

})





}






exports.public_carousel_get= (req, res)=>{

  sqlmap.query(`SELECT * FROM carousel ORDER BY ID DESC`, (err, info)=>{

    if(info.length>0){

      let listData= '';

      for (const i in info) {

   

        listData+= `
 
        
        <div class="carousel-item ${i==0?'active':''}">
        <img class="d-block responseiveImg card-img"  src="/image/school/resized/${info[i].item_name}" alt="404">
        </div>
        `       
      }

      res.send({listData})


    }

  })

}










exports.admin_content_video_post= (req, res)=>{
    let {itemLink, itemTitle}= req.body;
    let dataId=itemTitle+Math.random()*900000;
    
   for (let i = 0; i < itemLink.length; i++) {
    sqlmap.query(`INSERT INTO content (item_type, item_title, item_name, data_id)VALUES('video', '${itemTitle}', '${itemLink[i].replaceAll("/watch?v=", "/embed/").replaceAll("//youtu.be/", "//youtube.com/embed/")}', '${dataId}')`, (err, next)=>{
        if(err) console.log(err.sqlMessage);
        
    })
   }
    

    res.send({msg: "Content Added Successfully!", alert: "success"})
}










exports.admin_content_get= (req, res)=>{

    
    if(req.body.itemType==undefined){
    
  var sqlContentGet= `SELECT * FROM content GROUP BY data_id ORDER BY ID DESC`
    }
    else {
        var sqlContentGet= `SELECT * FROM content WHERE item_type='${req.body.itemType}' GROUP BY data_id ORDER BY ID DESC`

    }

    sqlmap.query(sqlContentGet, (err, info)=>{
        if(err) console.log(err.sqlMessage);

        if(info){
           let listData= '';

           for (let i = 0; i < info.length; i++) {
            listData+= `
            <li class="list-group-item"> <a href="/admin/content/${info[i].item_type=='image'?'image':'video'}?data=${info[i].data_id}">${info[i].item_title}</a> <input style="height:30px; width: 30px" type="checkbox" name="deleteData[]" value="${info[i].data_id}"></li>
                  
           
            `

        }

        res.send({listData})

        }

    })

}




exports.admin_content_video= (req, res)=>{


  let sql= `SELECT * FROM content WHERE item_type='video' AND data_id='${req.app.locals.dataid}' ORDER BY ID DESC`


    sqlmap.query(sql, (err, info)=>{
        if(err) console.log(err.sqlMessage);

        if(info){
        
           let listData= '';

           for (let i = 0; i < info.length; i++) {
            listData+= `
          
            <div class="col-6 col-md-3 m-auto ">
          
            <div class="card" id="">
           
                  <iframe class='video-scope card-img-top' src="${info[i].item_name.replace("watch?v=", "embed/")}" title="YouTube video player" frameborder="0" allow="accelerometer; autoplay; clipboard-write; encrypted-media; gyroscope; picture-in-picture; web-share" allowfullscreen></iframe>
                  <input style="height:30px; width: 30px" type="checkbox" name="deleteData[]" value="${info[i].ID}"></li>
      
            </div>
                      
                  </div>

            `

        }

        res.send({listData})

        }

    })

}






exports.admin_content_image= (req, res)=>{


  let sql= `SELECT * FROM content WHERE item_type='image' AND data_id='${req.app.locals.dataid}' ORDER BY ID DESC`


    sqlmap.query(sql, (err, info)=>{
        if(err) console.log(err.sqlMessage);

        if(info){
        
           let listData= '';

           for (let i = 0; i < info.length; i++) {
            listData+= `
     
            <div class="col-6 col-md-3 m-auto ">
          
            <div class="card" id="">
           
              <input style="height:20px; width: 20px" type="checkbox" name="deleteData[]" value="${info[i].ID}"></li>
               
              <img class='card-img-top' width="100%" src="/image/content/resized/${info[i].item_name}" alt="404">
        
            </div>
                      
                  </div>
            `

        }

        res.send({listData})

        }

    })

}






exports.admin_content_delete= (req, res)=>{
   let dataId=  req.body.deleteData;
   let data= dataId.toString()
   let datapush= []
   for (let i=0; i<dataId.length; i++) {
    datapush.push(JSON.stringify(dataId[i]))
   }

 console.log(req.body); 

    sqlmap.query(`SELECT * FROM content WHERE data_id IN (${datapush.toString()})`, (errInfo, findInfo)=>{
      if(errInfo) console.log("data not found!")
      
      else {
  
          
  sqlmap.query(`DELETE FROM content WHERE data_id IN (${datapush.toString()})`, (err, next)=>{
      if(err) console.log(err.sqlMessage);
      else
      {
  
         for (const i in findInfo) {
          fs.unlink(`./public/image/content/resized/${findInfo[i].item_name}`, function (errDelete) {
              if (errDelete) console.log(errDelete+"_"+"Data Deleted! Not found file!");
  
              
            
            });
         }
  
         res.send({msg: "Data Deleted! Successfully!", alert: "success"})
          
      }
  })
  
      }
  
  })

}



exports.admin_content_data_delete= (req, res)=>{

    let dataId= req.body.deleteData;



    sqlmap.query(`SELECT * FROM content WHERE ID IN (${dataId.toString()})`, (errInfo, findInfo)=>{
      if(errInfo) console.log("data not found!")
      
      else {
  
          
  sqlmap.query(`DELETE FROM content WHERE ID IN (${dataId.toString()})`, (err, next)=>{
      if(err) console.log(err.sqlMessage);
      else
      {
  
         for (const i in findInfo) {
          fs.unlink(`./public/image/content/resized/${findInfo[i].item_name}`, function (errDelete) {
              if (errDelete) console.log(errDelete+"_"+"Data Deleted! Not found file!");
  
              
            
            });
         }
  
         res.send({msg: "Data Deleted! Successfully!", alert: "success"})
          
      }
  })
  
      }
  
  })
    

}










exports.public_gallery_video= (req, res)=>{
  // data_id='${req.app.locals.dataid}'
  let sql= `SELECT * FROM content WHERE item_type='video' GROUP BY data_id ORDER BY ID DESC`


    sqlmap.query(sql, (err, info)=>{
        if(err) console.log(err.sqlMessage);

        if(info){
        
           let listData= '';

           for (let i = 0; i < info.length; i++) {
            listData+= `
          
            <div class="col-6 col-md-3 m-0 p-0 ">
          
            <div class="card" id="">
            
            <iframe class='video-scope card-img-top' src="${info[i].item_name}" title="YouTube video player" frameborder="0" allow="accelerometer; autoplay; clipboard-write; encrypted-media; gyroscope; picture-in-picture; web-share" allowfullscreen></iframe>
            <center><a href="/pu/gallery/video/list?data=${info[i].data_id}" class=" link-primary">${info[i].item_title}....<a/></center>

            </div>
                      
                  </div>

            `

        }

        res.send({listData})

        }

    })

}





exports.public_gallery_video_list= (req, res)=>{

  let sql= `SELECT * FROM content WHERE item_type='video' AND data_id='${req.app.locals.dataid}' ORDER BY ID DESC`


    sqlmap.query(sql, (err, info)=>{
        if(err) console.log(err.sqlMessage);

        if(info){
        
           let listData= '';

           for (let i = 0; i < info.length; i++) {
            listData+= `
          
            <div class="col-6 col-md-3 p-0 m-0 ">
          
            <div  class="card" id="">
            
            
            <iframe  class='video-scope card-img-top' src="${info[i].item_name.replace("watch?v=", "embed/")}" title="YouTube video player" frameborder="0" allow="accelerometer; autoplay; clipboard-write; encrypted-media; gyroscope; picture-in-picture; web-share" allowfullscreen></iframe>
            
            </div>
                      
                  </div>

            `

        }

        res.send({listData})

        }

    })

}






exports.public_gallery_image= (req, res)=>{


  let sql= `SELECT * FROM content WHERE item_type='image' GROUP BY data_id ORDER BY ID DESC`


    sqlmap.query(sql, (err, info)=>{
        if(err) console.log(err.sqlMessage);

        if(info){
        
           let listData= '';

           for (let i = 0; i < info.length; i++) {
            listData+= `
     
            <div class="col-6 p-0 m-0 col-md-3"  >
          
            <div class="card" id="">
        

            <a href="/pu/gallery/image/list?data=${info[i].data_id}" class=" link-primary">
              <img  class='card-img' src="/image/content/resized/${info[i].item_name}" alt="404">
              <center>${info[i].item_title}</center>
              <a/>

                  
            </div>
                      
                  </div>
            `

        }

        res.send({listData})

        }

    })

}








exports.public_gallery_image_list= (req, res)=>{


  let sql= `SELECT * FROM content WHERE item_type='image' AND data_id='${req.app.locals.dataid}' ORDER BY ID DESC`


    sqlmap.query(sql, (err, info)=>{
        if(err) console.log(err.sqlMessage);

        if(info){
        
           let listData= '';

           for (let i = 0; i < info.length; i++) {
            listData+= `
     
            <div class="col-6 col-md-3 m-0 p-0 ">
          
            <div class="card" id="">
       
            
              <a href="/image/content/resized/${info[i].item_name}">
              <img  class='card-img'  src="/image/content/resized/${info[i].item_name}" alt="404">
              </a>
                  
            </div>
                      
                  </div>
            `

        }

        res.send({listData})

        }

    })

}









exports.public_content_header_list= (req, res)=>{
  
  if(req.session.userAccess==='privet'){


    if(req.session.hashUser=='hashAdmin'){
      let listData= ` 
      <a href="/admin/dashboard" class="fw-bold dropdown-item ">Dashboard</a>
      <a href="/admin/account" class="dropdown-item fw-bold" >Account</a>
  
      <a href="/au/singout" class="fw-bold dropdown-item ">Singout</a> 
      `
  
      res.send({listData})
    }

    else if(req.session.user=='teacher') {
      let listData= ` 
      <a href="/teacher/dashboard" class="fw-bold dropdown-item ">Dashboard</a>
      <a href="/teacher/account" class="dropdown-item fw-bold" >Account</a>
  
      <a href="/au/singout" class="fw-bold dropdown-item ">Singout</a> 
      `
  
      res.send({listData})
    }

    else if(req.session.user=='student'){

        let listData= ` 
        <a href="/student/dashboard" class="fw-bold dropdown-item ">Dashboard</a>
        <a href="/student/account" class="dropdown-item fw-bold" >Account</a>
    
        <a href="/au/singout" class="fw-bold dropdown-item ">Singout</a> 
        `
    
        res.send({listData})
      
    }

    else if(req.session.user=='parent'){
      let listData= ` 
      <a href="/parent/dashboard" class="fw-bold dropdown-item ">Dashboard</a>
      <a href="/parent/account" class="dropdown-item fw-bold" >Account</a>
  
      <a href="/au/singout" class="fw-bold dropdown-item ">Singout</a> 
      `
  
      res.send({listData})
    }
   
  }

  else {

    let listData= `<a href="/pu/join/student" class="fw-bold dropdown-item ">Join Student</a>
    <a href="/pu/join/parent" class="dropdown-item fw-bold" >Join Parent</a>

    <a href="/au/singin/page" class="fw-bold dropdown-item ">Sing in</a> 
    <a class="fw-bold dropdown-item " href="/admin/cpanel/login">Admin Panel</a>

    `

    res.send({listData})
  }

  

   

}