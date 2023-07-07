const express = require("express")
const { sqlmap } = require("../server")
const app = express()



exports.home_page= (req, res)=>{
    let sqlStudent= `SELECT COUNT(ID) FROM students` 
    let sqlTeacher= `SELECT COUNT(ID) FROM teachers` 
   sqlmap.query(sqlStudent, (errS, infoS)=>{

    sqlmap.query(sqlTeacher, (errT, infoT)=>{

        res.render("public/home_page", {infoS, infoT})
      
    })

   })
}