const express=require('express');
//引入连接池模块
const pool=require('../pool.js');
// console.log(pool);
//创建路由器对象
const r=express.Router();

//获取全部旅游种类
r.get('/travel', (req,res) => {
	var sql = 'select * from travel'
	pool.query(sql, (err, data) => {
		if (err) throw err;
		console.log(data);
		if (data.length > 0){
		    res.send(data);
		}
		else{
		    res.send('false');
		};
	});
})

//根据旅游种类检索航线
r.get('/airLine/:tid', (req,res) => {
	var _tid = req.params.tid;
	console.log(_tid);
	var sql = 'select * from airLine where tid=?';
	pool.query(sql, [_tid], (err, data) => {
		if (err) throw err;
		console.log(data);
		if (data.length > 0){
		    res.send(data);
		}
		else{
		    res.send('false');
		};
	});
})

//根据航线检索具体航线信息
r.get('/flight/:aid', (req,res) => {
	var _aid = req.params.aid;
	var sql = 'select * from flight where aid=?';
	pool.query(sql, [_aid], (err, data) => {
		if (err) throw err;
		console.log(data);
		if (data.length > 0){
		    res.send(data);
		}
		else{
		    res.send('false');
		};
	});
})

//插入机票信息
r.post('/reg', (req,res) => {
    var _obj = JSON.parse(req.body.obj);
    var sql = 'insert into ticket set ?';
    pool.query(sql, [_obj], (err, data) => {
        if (err) throw err;
        if (data.affectedRows > 0){
            res.send('1');
        }
        else{
            res.send('0');
        };
    });
})

module.exports = r;