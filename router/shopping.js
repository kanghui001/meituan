const express=require('express');
//引入连接池模块
const pool=require('../pool.js');
//创建路由器对象
const r=express.Router();

//http://127.0.0.1:8080/shop/v1/shopp
r.get("/v1/list",(req,res)=>{
	var sql="select * from shopping";
	pool.query(sql,(err,result)=>{
		if(err) throw err;
		res.send(result);
	})
})








































//导出路由器对象
module.exports=r;