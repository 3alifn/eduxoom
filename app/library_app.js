const {app, fs, path, sqlmap } = require("../server")

exports.admin_library_post = (req, res) => {
  let { bookName, authorName, bookCopy, description } = req.body;
  let filenameBook = req.file ? req.file.filename : "book_image.png";

  sqlmap.query(
      `INSERT INTO library (domain, book_name, book_author, book_copy, description, book_image) 
      VALUES (?, ?, ?, ?, ?, ?)`,
      [res.locals.hostname, bookName, authorName, bookCopy, description, filenameBook],
      (err, next) => {
          if (err) {
              console.log(err.sqlMessage);
              return;
          }
          res.send({ msg: "New Book Added Successfully!" });
      }
  );
};



exports.admin_library_get = (req, res) => {
  let sql = `SELECT * FROM library WHERE domain=? ORDER BY ID DESC`;
  sqlmap.query(sql, [res.locals.hostname], (err, info) => {
      if (err) {
          console.log(err.sqlMessage);
          return;
      }

      if (info.length > 0) {
          var html = "";
          for (let i = 0; i < info.length; i++) {
              html += `
              <tr>
                  <td>
                      <span class="badge bg-light text-danger">${info[i].book_name}</span>
                      <input type="checkbox" name="ID[]" id="" value="${info[i].ID}">
                  </td>
                  <td><span class="badge bg-light text-primary">${info[i].book_author}</span></td>
                  <td><img width='100px' height='60px' class="bg-demo-img-color" src="/assets/images/library/${info[i].book_image}"></td>
                  <td><span class="badge bg-light text-dark">${info[i].book_copy}</span></td>
                  <td><span class="badge bg-light text-dark">${info[i].description}</span></td>
                  <td><span class="badge bg-light text-primary">${info[i].at_date.toString().substring(0, 15)}</span></td>
                  <td><a class="btn" title="Edit" href="/admin/library/update/page?id=${info[i].ID}"><i class="fa-solid fa-pen"></i></a></td>
              </tr>`;
          }
          res.send({ html });
      } else {
          res.send({ html: "<strong>No Data Found...</strong>" });
      }
  });
};




exports.admin_library_delete = (req, res) => {
  let filepathBook = path.dirname(__dirname);
  const { ID } = req.body;

  sqlmap.query(
      `SELECT * FROM library WHERE domain=? AND ID IN (?)`,
      [res.locals.hostname, ID.toString()],
      (errInfo, findInfo) => {
          if (errInfo) {
              console.log("data not found!");
              return;
          }

          sqlmap.query(
              `DELETE FROM library WHERE domain=? AND ID IN (?)`,
              [res.locals.hostname, ID.toString()],
              (err, next) => {
                  if (err) {
                      console.log(err.sqlMessage);
                      return;
                  }

                  for (const i in findInfo) {
                      fs.unlink(`./assets/${res.locals.hostname}/images/library/${findInfo[i].book_photos}`, function (errDelete) {
                          if (errDelete) {
                              console.log(errDelete + "_" + "Data Deleted! Not found file!");
                          }
                      });
                  }

                  res.send({ msg: "Data Deleted! Successfully!", alert: "success" });
              }
          );
      }
  );
};




exports.admin_library_update_page = (req, res) => {
  let { ID } = req.query;

  sqlmap.query(
      `SELECT * FROM library WHERE domain=?`,
      [res.locals.hostname],
      (err, info) => {
          if (err) {
              console.log(err.sqlMessage);
              return;
          }
          res.render("admin/library_update_page", { info });
      }
  );
};


exports.admin_library_update = (req, res) => {
  let { ID, bookName, bookAuthor, bookCopy, description } = req.body;

  sqlmap.query(
      `UPDATE library SET book_name=?, book_author=?, book_copy=?, description=? WHERE domain=? AND ID=?`,
      [bookName, bookAuthor, bookCopy, description, res.locals.hostname, ID],
      (err, next) => {
          if (err) {
              console.log(err.sqlMessage);
              return;
          }
          res.redirect("/admin/library/page");
      }
  );
};



exports.public_library_get = (req, res) => {
  let sql = `SELECT * FROM library WHERE domain=? ORDER BY ID DESC`;
  sqlmap.query(sql, [res.locals.hostname], (err, info) => {
      if (err) {
          console.log(err.sqlMessage);
          return;
      }

      if (info.length > 0) {
          var html = "";
          for (let i = 0; i < info.length; i++) {
              html += `
              <tr>
                  <td>
                      <span class="badge bg-light text-danger"><img width="50px" height="50px" src="/assets/images/library/${info[i].book_photos}" alt="book"></span>
                  </td>
                  <td><span class="badge bg-light text-danger">${info[i].book_name}</span></td>
                  <td><span class="badge bg-light text-primary">${info[i].book_author}</span></td>
                  <td><span class="badge bg-light text-dark">${info[i].book_copy}</span></td>
                  <td><span class="badge bg-light text-dark">${info[i].description}</span></td>
                  <td><span class="badge bg-light text-primary">${info[i].at_date.toString().substring(0, 15)}</span></td>
              </tr>`;
          }
          res.send({ html });
      } else {
          res.send({ html: "<strong>No Data Found...</strong>" });
      }
  });
};
