const express=require('express');
//引入连接池模块
const pool=require('../pool.js');
// console.log(pool);
//创建路由器对象
const r=express.Router();

//获取民宿
r.get('/minsu', (req,res) => {
	var sql='select * from minsu'
	pool.query(sql,(err,result) => {
		if (err) throw err;
		console.log(result);
		res.send(result);
	});
})


// 根据名字搜索民宿
r.get('/select/:mnid', (req,res) => {
	var _mnid = req.params.mnid;
	console.log(_mnid);
	var sql = 'select * from minsu where mnid=?';
	pool.query(sql, [_mnid], (err,result) => {
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

r.post('/Reserve', (req,res) => {
    var _obj = JSON.parse(Reserve.body.obj);
    var sql = 'insert into Reserve set ?';
    pool.query(sql, [_obj], (err,result) => {
        if (err) throw err;
        if (result.affectedRows > 0){
            res.send('1');
        }
        else{
            res.send('0');
        };
    });
})

module.exports = r;