const express=require('express')
const pool=require('../pool.js')
const r=express.Router();
//注册
r.post('/reg',(req,res)=>{
	let obj=req.body;
		console.log(obj);
		if(!obj.username){
		res.send({code:401,msg:'username required'})
			return;
		}
		if(!obj.password){
			res.send({code:402,msg:'password required'})
			return;
		}
		if(!obj.phone){
			res.send({code:404,msg:'phone required'})
		    return
			}
		pool.query('insert into user set ?',[obj],(err,result)=>{
			if(err) throw err;
			console.log(result)
				res.send({code:200,msg:'reg success'})
		});
	//res.send('注册成功')
});
//登录
r.post('/landing',(req,res)=>{
	let obj=req.body;
	console.log(obj)
		if(!obj.phone){
		res.send({code:404,msg:'username required'})
	 return;
		}
		if(!obj.password){
		res.send({code:402,msg:'password required'})
	 return;
		}

pool.query('select * from user where phone=? and password=?',[obj.phone,obj.password],(err,result)=>{
	if(err) throw err;
	console.log(result);
	if(result.length===0){
		res.send({code:301,msg:'login error'});
	}else{
res.send({code:200,msg:'login success'})
	}
});
	
});
//模糊查询
r.get('/search/:mingcheng',(req,res)=>{
	res.send("你好")
	var _mingcheng=req.params.minghceng;
	//三表联和再根据条件查询
	var sql=`select * from dingdan inner join 
	shopping on dingdan.dd_id=shopping.aid 
	inner join enterment on shopping_id=enterment.kid 
	where mo_name link '%${_mingcheng}%'; `
	pool.query(sql,(err,result)=>{
		if(err) throw err;
		if(result.length>0){
			res.send(result)
			}else{
			res.send("0")
		}
	})
})

module.exports=r;