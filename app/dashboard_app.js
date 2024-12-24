import { app, sqlmap } from '../server.js';


export const admin_dashboard_tsa_lookup = (req, res) => {
  sqlmap.query(
      `SELECT COUNT(ID) AS tAll, 
      COUNT(CASE WHEN gender="Female" THEN 1 END) AS tFemale,
      COUNT(CASE WHEN gender="Male" THEN 1 END) AS tMale 
      FROM teachers WHERE domain=?`,
      [req.cookies["hostname"]],
      (err, info) => {
          if (err) {
              console.log(err.sqlMessage);
              return;
          }
          const countTeacher = info[0].tAll;
          const percentTmale = (100 / info[0].tAll * info[0].tMale).toFixed() + '%';
          const percentTfemale = (100 / info[0].tAll * info[0].tFemale).toFixed() + '%';
          const tMale = info[0].tMale;
          const tFemale = info[0].tFemale;

          sqlmap.query(
              `SELECT COUNT(ID) AS staffAll, 
              COUNT(CASE WHEN gender="Female" THEN 1 END) AS staffFemale,
              COUNT(CASE WHEN gender="Male" THEN 1 END) AS staffMale 
              FROM staff WHERE domain=?`,
              [req.cookies["hostname"]],
              (err, info) => {
                  if (err) {
                      console.log(err.sqlMessage);
                      return;
                  }
                  const countStaff = info[0].staffAll;
                  const staffMale = info[0].staffMale;
                  const staffFemale = info[0].staffFemale;

                  sqlmap.query(
                      `SELECT COUNT(ID) AS sAll, 
                      COUNT(CASE WHEN gender="Female" THEN 1 END) AS sFemale,
                      COUNT(CASE WHEN gender="Male" THEN 1 END) AS sMale 
                      FROM students WHERE domain=?`,
                      [req.cookies["hostname"]],
                      (err, info) => {
                          if (err) {
                              console.log(err.sqlMessage);
                              return;
                          }
                          const countStudent = info[0].sAll;
                          const percentSmale = (100 / info[0].sAll * info[0].sMale).toFixed() + '%';
                          const percentSfemale = (100 / info[0].sAll * info[0].sFemale).toFixed() + '%';
                          const sMale = info[0].sMale;
                          const sFemale = info[0].sFemale;
                          res.send({
                              countTeacher, percentTmale, percentTfemale,
                              countStaff, staffMale, staffFemale, 
                              countStudent, percentSmale, percentSfemale, 
                              tMale, tFemale, sMale, sFemale
                          });
                      }
                  );
              }
          );
      }
  );
};

