const express=require('express');
//引入连接池模块
const pool=require('../pool.js');
// console.log(pool);
//创建路由器对象
const r=express.Router();
//1.根据ktype查询酒吧和ktv  get  "/enter/v1/enterment/:ktype"  响应json 或者0
r.get("/v1/enterment/:ktype",(req,res)=>{
 var _ktype=req.params.ktype;
 var sql="select * from enterment where ktype=?";
 pool.query(sql,[_ktype],(err,result)=>{
  if(err) throw err;
  // console.log(result);
  if(result.length>0){
   res.send(result);
 }else{
  res.send("0");
 }
 });
});
//2.根据item查询酒吧附带套餐   get  "/enter/v1/item/"  响应json 或者0
r.get("/v1/item",(req,res)=>{
 var _item=req.params.item;
 var sql="select * from item";
 pool.query(sql,[_item],(err,result)=>{
  if(err) throw err;
  // console.log(result);
  if(result.length>0){
   res.send(result);
 }else{
  res.send("0");
 }
 });
});
module.exports=r;