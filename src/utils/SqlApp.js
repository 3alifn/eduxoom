const sqlmap= require('../configs/mysql')

class SqlApp{
    constructor(sqlmap){
        this.sqlmap= sqlmap;
                //     if (typeof sql !== 'string') { throw new Error('First parameter must be a string'); }
        //    if (!Array.isArray(data)) { throw new Error('Second parameter must be an array'); }
    }
    
    async CreateApp(sql, data){
            this.sql= sql;
            this.data= data;
            return new Promise((resolve, reject)=>{
              sqlmap.query(sql, data, (err, next)=>{
                if(err) return reject({status: 500, msg: err.sqlMessage})
                    return resolve({status: 200, msg: 'App Created Successfully'})
              })
            })
        };
        
        async UpdateApp(sql, data){
            return new Promise((resolve, reject)=>{
                sqlmap.query(sql, data, (err, next)=>{
                    if(err) return reject({status: 500, msg: err.sqlMessage})
                        return resolve({status: 200, msg: "App Update Successfully"})
                })
            })

        };

        async FetchApp(sql, data){
            return new Promise((resolve, reject)=>{
                sqlmap.query(sql, data, (err, AppData)=>{
                    if(err) return reject({status: 500, msg: err.sqlMessage})
                        return resolve({status: 200, AppData})
                })
            })

        };

        
        async DeleteApp(sql, data){
            return new Promise((resolve, reject)=>{
                sqlmap.query(sql, data, (err, next)=>{
                    if(err) return reject({status: 500, msg: err.sqlMessage})
                        return resolve({status: 200, msg: "App Deleted Successfully!"})
                })
            })

        };
        
}

module.exports= SqlApp;