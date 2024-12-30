const { sqlmap , randomBytes, createHmac, path,  fs, app, express} = require("../configs/server")


exports.admin_carousel_post= async(req, res)=>{

    
    
      for (let index = 0; index < req.files.length; index++) {
        sqlmap.query(
            `INSERT INTO carousel (domain, item_name) VALUES (?, ?)`,
            [res.locals.hostname, req.files[index].filename],
            (err, next) => {
                if (err) {
                    console.log(err.sqlMessage);
                }
            }
        );
    }
    
  
  res.send({msg: 'Image Added!', alert: 'alert-success'})
  
  
  }
  

exports.admin_gallery_image_post= async(req, res, next)=>{
    const {item_title}= req.body;
    const files = req.files;

    async function globalSqlUpoader(sql, params){
        return new Promise((resolve, reject)=>{
         sqlmap.query(sql, params, (err, next) => {
             if (err) {
                return reject(err.sqlMessage)
             } else resolve('File Uploaded Successfully...')
        });
        })
     }

  try{
   for (const file of files){
    await globalSqlUpoader(
        `INSERT INTO gallery (domain, item_type, item_title, item_name, data_id) VALUES (?, ?, ?, ?, ?)` 
        ,[res.locals.hostname, 'image', req.body.item_title, file.filename, Math.random() * 900000000]
    )
   }

  await res.send({msg: "Gallery Added Successfully!", alert: "alert-success"})
  }
    
  catch(err){
  next(err)
   }
}
  
  
  
exports.admin_gallery_image_data_post= async (req, res)=>{
    const {item_title, dataid}= req.body;
      
    for (let index = 0; index < req.files.length; index++) {
      sqlmap.query(
          `INSERT INTO gallery (domain, item_type, item_title, item_name, data_id) VALUES (?, ?, ?, ?, ?)`,
          [res.locals.hostname, 'image', item_title, req.files[index].filename, dataid],
          (err, next) => {
              if (err) {
                  console.log(err.sqlMessage);
              }
          }
      );
  }
  res.send({msg: "Gallery Added successfully!", alert: "alert-success"})
  
   }

// public gallery..........

exports.public_gallery_image_get = (req, res) => {
  const sql = `SELECT * FROM gallery WHERE domain=? AND item_type=? GROUP BY data_id ORDER BY ID DESC`;

  sqlmap.query(sql, [res.locals.hostname, 'image'], (err, info) => {
      if (err) {
          console.log(err.sqlMessage);
          return;
      }

      if (info) {
          res.render('public/gallery_image_page', { info });
      } else {
          res.redirect('/pages/empty.html');
      }
  });
};



exports.public_gallery_image_data_get = (req, res) => {
  const { dataid } = req.params;
  const sql = `SELECT * FROM gallery WHERE domain=? AND item_type=? AND data_id=? ORDER BY ID DESC`;

  sqlmap.query(sql, [res.locals.hostname, 'image', dataid], (err, info) => {
      if (err) {
          console.log(err.sqlMessage);
          return;
      }

      if (info) {
          res.render('public/gallery_image_data', { info });
      } else {
          res.send('<center><h1>Image not found!</h1></center>');
      }
  });
};




exports.public_gallery_video_get = (req, res) => {
  const sql = `SELECT * FROM gallery WHERE domain=? AND item_type=? GROUP BY data_id ORDER BY ID DESC`;

  sqlmap.query(sql, [res.locals.hostname, 'video'], (err, info) => {
      if (err) {
          console.log(err.sqlMessage);
          return;
      }

      if (info) {
          res.render('public/gallery_video_page', { info });
      } else {
          res.redirect('/pages/empty.html');
      }
  });
};




exports.public_gallery_video_data_get = (req, res) => {
  const { dataid } = req.params;
  const sql = `SELECT * FROM gallery WHERE domain=? AND item_type=? AND data_id=? ORDER BY ID DESC`;

  sqlmap.query(sql, [res.locals.hostname, 'video', dataid], (err, info) => {
      if (err) {
          console.log(err.sqlMessage);
          return;
      }

      if (info) {
          res.render('public/gallery_video_data', { info });
      } else {
          res.redirect('/pages/empty.html');
      }
  });
};





// admin carousel part





exports.admin_carousel_get = (req, res) => {
  const sql = `SELECT * FROM carousel WHERE domain=? ORDER BY ID DESC`;

  sqlmap.query(sql, [res.locals.hostname], (err, info) => {
      if (info.length > 0) {
          let listData = '';

          for (const index in info) {
              listData += `
              <div class="flex-fill flex-md-grow-0" style="width: 220px; height: 200px; position: relative;">
                  <img class="h-100 w-100 bg-card-color-light" src="/assets/images/carousel/resized/${info[index].item_name}" alt="">
                  <span style="position: absolute; top: 1px; left:1px" onclick='_delbox_pull(${info[index].ID})' class='btn bi bi-trash-fill bg-light shadowx text-primary fw-semibold'></span>
              </div>`;
          }

          res.send({ listData });
      } else {
          res.send({ listData: "<code>No image file here</code>" });
      }
  });
};




exports.admin_carousel_rm = (req, res) => {
  const { dataid } = req.body;

  sqlmap.query(
      `SELECT * FROM carousel WHERE domain=? AND ID=?`,
      [res.locals.hostname, dataid],
      (errInfo, findInfo) => {
          if (errInfo) {
              console.log("data not found!");
              return;
          }

          sqlmap.query(
              `DELETE FROM carousel WHERE domain=? AND ID=?`,
              [res.locals.hostname, dataid],
              (err, next) => {
                  if (err) {
                      console.log(err.sqlMessage);
                      return;
                  }

                  for (const index in findInfo) {
                      fs.unlink(`./assets/${res.locals.hostname}/images/carousel/resized/${findInfo[index].item_name}`, function (errDelete) {
                          if (errDelete) {
                              console.log(errDelete + "_Data Deleted! Not found file!");
                          }
                      });
                  }

                  res.send({ msg: "Image Deleted! Successfully!", alert: "success" });
              }
          );
      }
  );
};




exports.admin_gallery_image_get = (req, res) => {
  const sql = `SELECT * FROM gallery WHERE domain=? AND item_type=? GROUP BY data_id ORDER BY ID DESC`;

  sqlmap.query(sql, [res.locals.hostname, 'image'], (err, info) => {
      if (err) {
          console.log(err.sqlMessage);
          return;
      }

      if (info.length>0) {
          let listData = '';

          for (let index = 0; index < info.length; index++) {
              listData += `
              <li class="p-1 w-100 fw-semibold view-link rounded m-1">
                  <input class="shadowx form-check-input" type="checkbox" value="${info[index].data_id}" name="dataid[]" id="">
                  <a class="text-three-line text-decoration-none" href="/admin/gallery/image/data/${info[index].data_id}/${info[index].item_title}">
                      ${info[index].item_title}
                  </a>
              </li>`;
          }

          res.send({ listData });
      } else {
        res.send({ listData: null });

      }
  });
};







exports.admin_gallery_image_delete = (req, res) => {
  let { dataid } = req.body;

  sqlmap.query(
      `SELECT * FROM gallery WHERE domain=? AND data_id IN (?)`,
      [res.locals.hostname, dataid],
      (errInfo, findInfo) => {
          if (errInfo) {
              console.log("data not found!");
              return;
          }

          sqlmap.query(
              `DELETE FROM gallery WHERE domain=? AND data_id IN (?)`,
              [res.locals.hostname, dataid],
              (err, next) => {
                  if (err) {
                      console.log(err.sqlMessage);
                      return;
                  }

                  for (const index in findInfo) {
                      fs.unlink(`./assets/${res.locals.hostname}/images/gallery/resized/${findInfo[index].item_name}`, function (errDelete) {
                          if (errDelete) {
                              console.log(errDelete + "_Data Deleted! Not found file!");
                          }
                      });
                  }

                  res.send({ msg: "Deleted! Successfully!", alert: "success" });
              }
          );
      }
  );
};




exports.admin_gallery_image_data_get = (req, res) => {
  const { dataid } = req.body;
  const sql = `SELECT * FROM gallery WHERE domain=? AND item_type=? AND data_id=? ORDER BY ID DESC`;

  sqlmap.query(sql, [res.locals.hostname, 'image', dataid], (err, info) => {
      if (err) {
          console.log(err.sqlMessage);
          return;
      }

      if (info.length>0) {
          let listData = '';

          for (let index = 0; index < info.length; index++) {
              listData += `
              <div class="flex-fill flex-md-grow-0" style="width: 220px; height: 200px; position: relative;">
                  <img class="h-100 w-100 bg-card-color-light jbox-img" src="/assets/images/gallery/resized/${info[index].item_name}" alt="">
                  <input class='shadowx p-2 m-1 form-check-input' style="position: absolute; top: 1px; left:1px" value='${info[index].ID}' type="checkbox" name="dataid[]">
              </div>`;
          }

          res.send({ listData, title: info[0].item_title });
        } else res.send({ listData: null, title: "undefined!" });
  });
};



exports.admin_gallery_image_data_delete = (req, res) => {
  let { dataid } = req.body;

  sqlmap.query(
      `SELECT * FROM gallery WHERE domain=? AND ID IN (?)`,
      [res.locals.hostname, dataid],
      (errInfo, findInfo) => {
          if (errInfo) {
              console.log("data not found!");
              return;
          }

          sqlmap.query(
              `DELETE FROM gallery WHERE domain=? AND ID IN (?)`,
              [res.locals.hostname, dataid],
              (err, next) => {
                  if (err) {
                      console.log(err.sqlMessage);
                      return;
                  }

                  for (const index in findInfo) {
                      fs.unlink(`./assets/${res.locals.hostname}/images/gallery/resized/${findInfo[index].item_name}`, function (errDelete) {
                          if (errDelete) {
                              console.log(errDelete + "_Data Deleted! Not found file!");
                          }
                      });
                  }

                  res.send({ msg: "Deleted! Successfully!", alert: "success" });
              }
          );
      }
  );
};



// admin gallery video part 

exports.admin_gallery_video_post = (req, res) => {
  let { item_link, item_title } = req.body;
  let dataid = Math.random() * 900000;

  for (let index = 0; index < item_link.length; index++) {
      sqlmap.query(
          `INSERT INTO gallery (domain, item_type, item_title, item_name, data_id) VALUES (?, ?, ?, ?, ?)`,
          [res.locals.hostname, 'video', item_title, item_link[index].replaceAll("/watch?v=", "/embed/").replaceAll("//youtu.be/", "//youtube.com/embed/"), dataid],
          (err, next) => {
              if (err) {
                  console.log(err.sqlMessage);
                  return;
              }
          }
      );
  }

  res.send({ msg: "Gallery Added Successfully!", alert: "alert-success" });
};



exports.admin_gallery_video_data_post = (req, res) => {
  let { item_link, item_title, dataid } = req.body;

  for (let index = 0; index < item_link.length; index++) {
      sqlmap.query(
          `INSERT INTO gallery (domain, item_type, item_title, item_name, data_id) VALUES (?, ?, ?, ?, ?)`,
          [res.locals.hostname, 'video', item_title, item_link[index].replaceAll("/watch?v=", "/embed/").replaceAll("//youtu.be/", "//youtube.com/embed/"), dataid],
          (err, next) => {
              if (err) {
                  console.log(err.sqlMessage);
                  return;
              }
          }
      );
  }

  res.send({ msg: "Gallery Added Successfully!", alert: "alert-success" });
};


exports.admin_gallery_video_get = (req, res) => {
  const sql = `SELECT * FROM gallery WHERE domain=? AND item_type=? GROUP BY data_id ORDER BY ID DESC`;

  sqlmap.query(sql, [res.locals.hostname, 'video'], (err, info) => {
      if (err) {
          console.log(err.sqlMessage);
          return;
      }

      if (info) {
          let listData = '';
          for (let index = 0; index < info.length; index++) {
              listData += `
              <li class="p-1 w-100 fw-semibold view-link rounded m-1">
                  <input class="shadowx form-check-input" type="checkbox" value="${info[index].data_id}" name="dataid[]" id="">
                  <a class="text-three-line text-decoration-none" href="/admin/gallery/video/data/${info[index].data_id}/${info[index].item_title}">
                      ${info[index].item_title}
                  </a>
              </li>`;
          }
          res.send({ listData });
      }
  });
};



exports.admin_gallery_video_data_get = (req, res) => {
  const { dataid } = req.body;
  const sql = `SELECT * FROM gallery WHERE domain=? AND item_type=? AND data_id=? ORDER BY ID DESC`;

  sqlmap.query(sql, [res.locals.hostname, 'video', dataid], (err, info) => {
      if (err) {
          console.log(err.sqlMessage);
          return;
      }

      if (info.length>0) {
          let listData = '';

          for (let index = 0; index < info.length; index++) {
              listData += `
              <div class="flex-fill flex-md-grow-0" style="width: 220px; height: 200px; position: relative;">
                  <iframe class='video-scope h-100 w-100 bg-demo-img-color' src="${info[index].item_name.replace("watch?v=", "embed/")}" title="YouTube video player" frameborder="0" allow="accelerometer; autoplay; clipboard-write; encrypted-media; gyroscope; picture-in-picture; web-share" allowfullscreen></iframe>
                  <input class='shadowx p-2 m-1 form-check-input' style="position: absolute; top: 1px; left:1px" value='${info[index].ID}' type="checkbox" name="dataid[]">
              </div>`;
          }

          res.send({ listData, title: info[0].item_title });
        } else res.send({ listData: null, title: "undefined!" });
    
  });
};


 exports.admin_gallery_video_delete = (req, res) => {
  let { dataid } = req.body;

  sqlmap.query(
      `DELETE FROM gallery WHERE domain=? AND data_id IN (?)`,
      [res.locals.hostname, dataid],
      (err, next) => {
          if (err) {
              console.log(err.sqlMessage);
              return;
          }
          res.send({ msg: "Deleted! Successfully!", alert: "success" });
      }
  );
};




exports.admin_gallery_video_data_delete = (req, res) => {
  let { dataid } = req.body;

  sqlmap.query(
      `SELECT * FROM gallery WHERE domain=? AND ID IN (?)`,
      [res.locals.hostname, dataid],
      (errInfo, findInfo) => {
          if (errInfo) {
              console.log("data not found!");
              return;
          }

          sqlmap.query(
              `DELETE FROM gallery WHERE domain=? AND ID IN (?)`,
              [res.locals.hostname, dataid],
              (err, next) => {
                  if (err) {
                      console.log(err.sqlMessage);
                      return;
                  }
                  res.send({ msg: "Deleted! Successfully!", alert: "success" });
              }
          );
      }
  );
};



