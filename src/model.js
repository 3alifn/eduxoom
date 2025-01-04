const sqlmap= require('./configs/mysql');

class MySqlData{
    constructor(sql, data){
        this.sql= sql;
        this.data= data;
    }

    static mysql(){
        sqlmap.query(this.sql, this.data, (err, result)=>{
            if(err){
                return err.sqlMessage
            } 
           return result
        })
    }
}


      const cls= new MySqlData('select name from ? limit ?', ['students', 5])
     const res= MySqlData.mysql()
        console.log(res);