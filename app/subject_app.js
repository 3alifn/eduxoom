const {express, app, sqlmap, randomBytes } = require("../server");

exports.admin_subject_post = (req, res) => {
  const { class_name, subject_name } = req.body;
  for (let i = 0; i < subject_name.length; i++) {
      const randomString = randomBytes(10).toString('hex');
      sqlmap.query(
          `INSERT INTO subject (domain, class, subject, subject_code) VALUES (?, ?, ?, ?)`,
          [req.cookies["hostname"], class_name, subject_name[i], randomString],
          (err, next) => {
              if (err) {
                  console.log(err.sqlMessage);
              }
          }
      );
  }

  res.send({ msg: 'Subject Added! Successfully', alert: 'alert-success' });
};



exports.admin_subject_get = (req, res) => {
  const { class_name } = req.body;
  sqlmap.query(
      `SELECT * FROM ini_subject WHERE domain=? AND class=? GROUP BY subject ORDER BY subject`,
      [req.cookies["hostname"], class_name],
      (err, info) => {
          if (err) {
              console.log(err.sqlMessage);
              return;
          }

          if (info.length > 0) {
              let htmldata = ``;
              for (const index in info) {
                  htmldata +=
                      `<div class="d-flex p-2 m-1 shadowx fw-semibold">
                      <input disabled class="disabled shadowx form-check-input" value="${info[index].ID}" type="checkbox" name="dataid[]" id="">
                      <p class="ps-2">${info[index].subject}</p>
                      </div>`;
              }
              res.send({ htmldata });
          }
      }
  );
};



exports.admin_subject_rm = (req, res) => {
  const { dataid } = req.body;
  if (dataid == undefined) {
      res.send({ msg: "Data not found!", alert: "alert-info" });
  } else {
      sqlmap.query(
          `DELETE FROM subject WHERE domain=? AND ID IN (?)`,
          [req.cookies["hostname"], dataid],
          (err, next) => {
              if (err) {
                  console.log(err.sqlMessage);
                  return;
              }
              res.send({ msg: "Data Deleted! Successfully!", alert: "alert-success" });
          }
      );
  }
};





