const express=require('express');
//引入连接池模块
const pool=require('../pool.js');
// console.log(pool);
//创建路由器对象
const r=express.Router();
//所有电影院名称
r.get('/cinema', (req,res) => {
	var sql = 'select * from cinema'
	pool.query(sql, (err, result) => {
		if (err) throw err;
		console.log(result);
		if (result.length > 0){
		    res.send(result);
		}
		else{
		    res.send('false');
		};
	});
})
//根据vid查询放映厅
r.get('/videoHall/:vid', (req,res) => {
	var _vid = req.params.vid;
	console.log(_vid);
	var sql = 'select * from videoHall where vid=?';
	pool.query(sql, [_vid], (err, result) => {
		if (err) throw err;
		console.log(result);
		if (result.length > 0){
		    res.send(result);
		}
		else{
		    res.send('false');
		};
	});
})
//根据sid查询电影名放映时间和价格
r.get('/showtick/:sid', (req,res) => {
	var _sid = req.params.sid;
	console.log(_sid);
	var sql = 'select * from showtick where sid=?';
	pool.query(sql, [_sid], (err, result) => {
		if (err) throw err;
		console.log(result);
		if (result.length > 0){
		    res.send(result);
		}
		else{
		    res.send('false');
		};
	});
})
//修改影厅的状态
r.post("/update",(req,res)=>{
	 var _seat=req.body;
	 var sql="update seat set ? where seid=?"
	 pool.query(sql,[_seat,_seat.seid],(err,result)=>{
		 if(err) throw err;
		 if(result.affectedRows>0){
			res.send("1")
		 }else{
		 	res.send("0")
		};
	 });
})

module.exports = r;