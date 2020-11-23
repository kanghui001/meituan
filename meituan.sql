set names UTF8;

drop database if exists meituan;
create database meituan charset = utf8;
use meituan;

/*----------------------------
----------飞机票————WMY-------
----------------------------*/

create table travel(
	tid int primary key auto_increment,
	tname varchar(5)
);

create table airLine(
	aid int primary key auto_increment,
	route varchar(10),
	img varchar(50),
	tid int,
	foreign key (tid) references travel(tid)
);

create table flight(
	fid int primary key auto_increment,
	startTime varchar(10),
	startPos varchar(8),
	endTime varchar(10),
	endPos varchar(8),
	startAir varchar(6),
	endAir varchar(6),
	flyDate varchar(10),
	company varchar(6),
	price decimal(6,2),
	nonStop boolean,
	hunger boolean,
	hot boolean,
	airType varchar(20),
	onTime float,
	tid int,
	foreign key (tid) references travel(tid)
);

insert into travel values (1,'海浪沙滩');
insert into travel values (2,'美食之都');

insert into airLine values (null,'西安-三亚','../img/air/summer_SYX.jpg','1');
insert into airLine values (null,'西安-三亚','../img/air/summer_SYX.jpg','1');
insert into airLine values (null,'西安-三亚','../img/air/summer_SYX.jpg','1');


insert into airLine values (null,'西安-重庆','../img/air/summer_CKG.jpg','2');
insert into airLine values (null,'西安-重庆','../img/air/summer_CKG.jpg','2');
insert into airLine values (null,'西安-重庆','../img/air/summer_CKG.jpg','2');


insert into flight values (null,'06:45','西安','09:25','三亚','咸阳','凤凰','2020-11-30','南方航空','1000','false','true','false','JD5679 空客319(中)','0.76',1);
insert into flight values (null,'07:45','西安','10:25','三亚','咸阳','凤凰','2020-11-30','南方航空','1000','false','true','false','JD5679 空客319(中)','0.76',1);
insert into flight values (null,'08:45','西安','11:25','三亚','咸阳','凤凰','2020-11-30','南方航空','1000','false','true','false','JD5679 空客319(中)','0.76',1);
insert into flight values (null,'12:45','西安','15:25','三亚','咸阳','凤凰','2020-11-30','南方航空','1000','true','false','true','JD5679 空客319(中)','0.76',1);
insert into flight values (null,'13:45','西安','16:25','三亚','咸阳','凤凰','2020-11-30','南方航空','1000','true','false','false','JD5679 空客319(中)','0.76',1);
insert into flight values (null,'14:45','西安','17:25','三亚','咸阳','凤凰','2020-11-30','南方航空','1000','true','false','false','JD5679 空客319(中)','0.76',1);


insert into flight values (null,'06:45','西安','09:25','三亚','咸阳','凤凰','2020-11-30','首都航空','1040','false','true','false','JD5679 空客319(中)','0.76',1);
insert into flight values (null,'07:45','西安','10:25','三亚','咸阳','凤凰','2020-11-30','首都航空','1040','false','true','true','JD5679 空客319(中)','0.76',1);
insert into flight values (null,'08:45','西安','11:25','三亚','咸阳','凤凰','2020-11-30','首都航空','1040','false','true','false','JD5679 空客319(中)','0.76',1);
insert into flight values (null,'12:45','西安','15:25','三亚','咸阳','凤凰','2020-11-30','首都航空','1040','true','false','false','JD5679 空客319(中)','0.76',1);
insert into flight values (null,'13:45','西安','16:25','三亚','咸阳','凤凰','2020-11-30','首都航空','1040','true','false','false','JD5679 空客319(中)','0.76',1);
insert into flight values (null,'14:45','西安','17:25','三亚','咸阳','凤凰','2020-11-30','首都航空','1040','true','false','false','JD5679 空客319(中)','0.76',1);


insert into flight values (null,'06:45','西安','09:25','重庆','咸阳','江北','2020-11-30','东方航空','310','false','true','false','JD5679 空客319(中)','0.76',1);
insert into flight values (null,'07:45','西安','11:25','重庆','咸阳','江北','2020-11-30','东方航空','310','false','true','false','JD5679 空客319(中)','0.76',1);
insert into flight values (null,'08:45','西安','12:25','重庆','咸阳','江北','2020-11-30','东方航空','310','false','true','false','JD5679 空客319(中)','0.76',1);
insert into flight values (null,'12:45','西安','15:25','重庆','咸阳','江北','2020-11-30','东方航空','310','true','false','false','JD5679 空客319(中)','0.76',1);
insert into flight values (null,'13:45','西安','16:25','重庆','咸阳','江北','2020-11-30','东方航空','310','true','false','false','JD5679 空客319(中)','0.76',1);
insert into flight values (null,'14:45','西安','17:25','重庆','咸阳','江北','2020-11-30','东方航空','310','true','false','true','JD5679 空客319(中)','0.76',1);


insert into flight values (null,'06:45','西安','09:25','重庆','咸阳','江北','2020-11-30','西部航空','310','false','true','false','JD5679 空客319(中)','0.76',1);
insert into flight values (null,'07:45','西安','11:25','重庆','咸阳','江北','2020-11-30','西部航空','310','false','true','false','JD5679 空客319(中)','0.76',1);
insert into flight values (null,'08:45','西安','12:25','重庆','咸阳','江北','2020-11-30','西部航空','310','false','true','false','JD5679 空客319(中)','0.76',1);
insert into flight values (null,'12:45','西安','15:25','重庆','咸阳','江北','2020-11-30','西部航空','310','true','false','false','JD5679 空客319(中)','0.76',1);
insert into flight values (null,'13:45','西安','16:25','重庆','咸阳','江北','2020-11-30','西部航空','310','true','false','false','JD5679 空客319(中)','0.76',1);
insert into flight values (null,'14:45','西安','17:25','重庆','咸阳','江北','2020-11-30','西部航空','310','true','false','true','JD5679 空客319(中)','0.76',1);

/*----------------------------
----------用户————ZY----------
----------------------------*/

create table user(
	id int primary key auto_increment,
	username varchar(255) not null unique,
	phone varchar(11) not null unique,
	password varchar(255), unique key(username)
) engine=innodb;

insert into user(username,phone, password) values('zhangyuan','12345678910','456'),('kanghui', '12345678911','234');

/*----------------------------
----------民宿————LXM---------
----------------------------*/

create table minsu(
	mnid int primary key auto_increment,
	mname varchar(16) not null,
	salary decimal(6,2),   #9999.99
	intro varchar(100),
	mtype varchar(50) not null,
	promotion varchar(100),
	mhost varchar(20) not null,
	location varchar(30) not null,
	rating decimal(2,1),
	reviews varchar(200),
	amenities varchar(100) not null,
	notice varchar(100),
	Fimg varchar(40),
	Simg varchar(40),
	Timg varchar(40),
	anxinzhu boolean,
	yixiaodu boolean,
	jinditie boolean,
	Iflist boolean,
	Ifbrand boolean,
	IfLDA boolean
);

insert into minsu values(null,'柚子·少女之心',423.3,'临近钟楼/回民街/古城墙/钟楼地铁口/高铁站直达/超清极米投影/浴缸闺蜜房','整套80㎡,两间卧室:1厅1厨1卫,2x1.8米双人床x2,可住4人','首单特惠,新用户首单支付享8.5折','柚子Home','西安碑林区城市之心A座',4.8,'房子超大,无异味,是外出游玩的绝佳选择','Wi-Fi,有线网络,暖气,空调','退款权益:房东已为您提供预定成功后15分钟内免费取消权益。(该权益不受房源退订规则限制)','./img/minsu/youzi_1.jpg','./img/minsu/youzi_2.jpg','./img/minsu/youzi_3.jpg',true,true,false,true,false,true);
insert into minsu values(null,'粟居·home',168,'贰号房子【麦田捕梦网】大明宫市中心地铁旁近钟楼回民街印第安波西米亚风大床房特惠点头像看其它房源','整套55㎡,两间卧室:1厅1厨1卫,双人床x1,可住2人','天天特价:每晚168元，2020.04.08-2020.12.30期间入住可用','Iris冯','西安未央区未央路33号',5.0,'住过最满意的民宿,我特别的喜欢,经常过来入住','Wi-Fi,有线网络,暖气,空调','退订规则:宽松，入住前1天12:00前退订，可获100%退款。之后退订不退款','./img/minsu/suju_1.jpg','./img/minsu/suju_2.jpg','./img/minsu/suju_3.jpg',true,true,false,true,true,false);
insert into minsu values(null,'迷家',111.2,'市图书馆地铁口,近高铁,机场,钟楼,大明宫,汉城湖,可长租','整套62㎡,1间卧室:0厅1厨1卫,1张双人床,宜住2人','今夜特价:10:00~次日3:00预定，享受当晚8折优惠。连住优惠:7天以上9折优惠','小杰子0213','西安未央区文景北路11号',5.0,'我还想住第二次 房东姐姐人超级好 也很温柔 很贴心 厨房用具也很齐全 躺在床上就感觉 是公主 哈哈哈哈哈 虽然我男朋友每次就这么叫我 真的是很满意的一次 还会住de','Wi-Fi,有线网络,暖气,空调','极速退款:15分钟内免费取消,房东已为您提供预定成功后15分钟内免费取消权益。（该权益不受房源退订规则限制）','./img/minsu/mijia_1.jpg','./img/minsu/mijia_2.jpg','./img/minsu/mijia_3.jpg',true,true,false,true,false,true);
insert into minsu values(null,'15南舍民宿',75.65,'NO.5市中心/地铁口/钟楼回民街/小寨一条线/飘窗/透明气泡风/独立单间大床房','单间㎡,1间卧室:0厨1公卫,1张双人床,宜住2人','今夜特价:10:00~次日3:00预订，享受当晚8.5折优惠。新用户首单支付享8.5折','南舍民宿','西安莲湖区龙首村宫园壹号一期',4.8,'很喜欢,位置离地铁口近,房间设置齐全还非常干净,性价比超高,床也非常的舒服,房东姐姐很有耐心,希望下次有机会去体验一下别的房间','Wi-Fi,有线网络,暖气,空调','入住的前5天12:00前退订，可获100%退款。之后退订不退款。随时可预订,最少预订1天, 最多预订天数不限。','./img/minsu/15nanshe_1.jpg','./img/minsu/15nanshe_2.jpg','./img/minsu/15nanshe_3.jpg',true,true,false,true,false,true);
insert into minsu values(null,'爱在云端',148,'极光投影空中花园大床房,钟楼\回民街\小寨\北客站\大明宫。','整套40㎡,1间卧室:0厅1厨1公卫,1张双人床,宜住2人','30天以上8折优惠。每晚148元，2020.04.08-2020.12.30期间入住可用（2020.04.30-2020.05.05、2020.06.24-2020.06.27、2020.09.30-2020.10.08除外）','毛小九的家 西安民宿','西安未央区-',5.0,'已经是多次入住了呢  房间很好找','Wi-Fi,有线网络,暖气,空调','入住前1天12:00前退订，可获100%退款。之后退订不退款。随时可预订,最少预订1天, 最多预订天数不限','./img/minsu/yunduan_1.jpg','./img/minsu/yunduan_2.jpg','./img/minsu/yunduan_3.jpg',true,true,false,true,true,true);
insert into minsu values(null,'粟居·home',168,'贰号房子【麦田捕梦网】大明宫市中心地铁旁近钟楼回民街印第安波西米亚风大床房特惠点头像看其它房源','整套55㎡,两间卧室:1厅1厨1卫,双人床x1,可住2人','天天特价:每晚168元，2020.04.08-2020.12.30期间入住可用','Iris冯','西安未央区未央路33号',5.0,'住过最满意的民宿,我特别的喜欢,经常过来入住','Wi-Fi,有线网络,暖气,空调','退订规则:宽松，入住前1天12:00前退订，可获100%退款。之后退订不退款','./img/minsu/suju_1.jpg','./img/minsu/suju_2.jpg','./img/minsu/suju_3.jpg',true,true,false,true,true,false);
insert into minsu values(null,'迷家',111.2,'市图书馆地铁口,近高铁,机场,钟楼,大明宫,汉城湖,可长租','整套62㎡,1间卧室:0厅1厨1卫,1张双人床,宜住2人','今夜特价:10:00~次日3:00预定，享受当晚8折优惠。连住优惠:7天以上9折优惠','小杰子0213','西安未央区文景北路11号',5.0,'我还想住第二次 房东姐姐人超级好 也很温柔 很贴心 厨房用具也很齐全 躺在床上就感觉 是公主 哈哈哈哈哈 虽然我男朋友每次就这么叫我 真的是很满意的一次 还会住de','Wi-Fi,有线网络,暖气,空调','极速退款:15分钟内免费取消,房东已为您提供预定成功后15分钟内免费取消权益。（该权益不受房源退订规则限制）','./img/minsu/mijia_1.jpg','./img/minsu/mijia_2.jpg','./img/minsu/mijia_3.jpg',true,true,false,true,false,true);
insert into minsu values(null,'15南舍民宿',75.65,'NO.5市中心/地铁口/钟楼回民街/小寨一条线/飘窗/透明气泡风/独立单间大床房','单间㎡,1间卧室:0厨1公卫,1张双人床,宜住2人','今夜特价:10:00~次日3:00预订，享受当晚8.5折优惠。新用户首单支付享8.5折','南舍民宿','西安莲湖区龙首村宫园壹号一期',4.8,'很喜欢,位置离地铁口近,房间设置齐全还非常干净,性价比超高,床也非常的舒服,房东姐姐很有耐心,希望下次有机会去体验一下别的房间','Wi-Fi,有线网络,暖气,空调','入住的前5天12:00前退订，可获100%退款。之后退订不退款。随时可预订,最少预订1天, 最多预订天数不限。','./img/minsu/15nanshe_1.jpg','./img/minsu/15nanshe_2.jpg','./img/minsu/15nanshe_3.jpg',true,true,false,true,false,true);

/*----------------------------
----------美食————KH----------
----------------------------*/

create table shopping (
	aid int primary key auto_increment,
	sm_img varchar(128),			 				#商品图片
	lname varchar(48),								#商品名字
	grade varchar(10),								#商品评分
	reviews varchar(128),							#商品评论
	title varchar(128), 				 			#地址
	price varchar(128)								#商品价格
);

insert into shopping values(null,'img/food/1.jpg','牛水煮·功夫水煮牛肉（大悦城店）','4.3分','14条评论','雁塔区慈恩路西安大悦城B1层','人均¥50' );
insert into shopping values(null,'img/food/2.jpg','云贵过桥米线（车城花园店）','5分','6691条评论','高陵区车城花园东门南50米西安银行隔壁','人均¥15' );
insert into shopping values(null,'img/food/3.jpg','蝎王府羊蝎子(西稍门点)','4.9分','9631条评论','莲湖区西稍门向北50米东路(开元商城对面)','人均¥58' );
insert into shopping values(null,'img/food/4.jpg','酒食里·酒馆·烧烤','4.7分','159条评论','雁塔区电子四路62号','人均¥53' );
insert into shopping values(null,'img/food/5.jpg','西安君乐城堡酒店·雅庭西餐厅','4.6分','2676条评论','碑林区环城南路西段12号西安君乐城堡酒店（近南门广场）','人均¥89' );
insert into shopping values(null,'img/food/6.jpg','比格比萨自助（新世界时尚广场店）','4.9分','24856条评论','莲湖区北大街新世界时尚广场3层001','人均¥55' );
insert into shopping values(null,'img/food/7.jpg','弓家大队老碗面（东木头市总店）','4.8分','743条评论','碑林区东木头市与柏树林交叉口西110米','人均¥19');
insert into shopping values(null,'img/food/8.jpg','李记搅团（三桥店）','4.9分','2707条评论','未央区沣东新城双拥路金桥国际','人均¥48');
insert into shopping values(null,'img/food/9.jpg','乡村基（丈八北路店）','4.1分','5310条评论','雁塔区丈八北路540号华润万家1楼','人均¥25');
insert into shopping values(null,'img/food/10.jpg','小九老火锅（玄武东路店）','4.4分','26条评论','未央区辛家庙广运潭西路华远海南城二期东门北五十米','人均¥52');
insert into shopping values(null,'img/food/11.jpg','口口私房锅（立丰国际店）','4.9分','513条评论','碑林区东二环立丰国际公寓南隔壁立信公寓709室','人均¥59');
insert into shopping values(null,'img/food/12.jpg','尚学社的理想书店','5分','585条评论','雁塔区陕西省西安市雁塔区科技路195号世纪颐园B座10201号','人均¥26');
insert into shopping values(null,'img/food/13.jpg','金玉鲜烤串','4.6分','9条评论','碑林区环城南路45号时代诺利达大厦一层10105号','人均¥70');
insert into shopping values(null,'img/food/14.jpg','欧味轩艺术蛋糕','4.8分','4483条评论','长安区南长安街樊家十字112号（人人家超市对面）','人均¥40' );

insert into shopping values(null,'img/food/15.jpg','金迈源自助涮烤王','4.2分','19453条评论','碑林区咸宁中路华润万家旁（乐宁会购物广场4楼）','人均¥50');

#插入左侧的表
create table right_side(
	fid int primary key auto_increment,
	sm_img varchar(128),			 			#商品图片
	lname varchar(128),							#商品名字
	address varchar(128),						#地址
	price varchar(32)								#价格
);

insert into right_side values(null,'img/food/01.jpg','泰熙家(赛高店)','未央路沿线','¥32.0');
insert into right_side values(null,'img/food/02.jpg','杨翔豆皮涮羊肉(西咸万象城店)','三桥','¥89.0');
insert into right_side values(null,'img/food/03.jpg','阿米米线(中贸广场店)','小雁塔/南稍门','¥28.1');
insert into right_side values(null,'img/food/04.jpg','拉菲达牛排自助(赛格国际店)','小寨','¥66.0');
insert into right_side values(null,'img/food/05.jpg','成都钢管厂五区小郡肝串串香(半坡店)','纺织厂','¥85.0');
insert into right_side values(null,'img/food/06.jpg','罗小胖螺蛳粉(凤城一路店)','未央路沿线','¥13.8');
insert into right_side values(null,'img/food/07.jpg','御品轩(锦园店)','桃花源','¥29.9');
insert into right_side values(null,'img/food/08.jpg','勇利赵家烤肉坊(丈八路店)','明德门','¥93.0');
insert into right_side values(null,'img/food/09.jpg','聚海国际健身俱乐部','丈八','¥38.0');
insert into right_side values(null,'img/food/010.jpg','哆啦乐图(钟楼店)','钟楼/鼓楼','¥80.0');
insert into right_side values(null,'img/food/011.jpg','东东包(盛龙广场店)','二府店','¥5.0');
insert into right_side values(null,'img/food/012.jpg','百富烤霸(北大街店)','北大街','¥6.8');
insert into right_side values(null,'img/food/013.jpg','冒之屋','张家堡','¥19.9');
insert into right_side values(null,'img/food/014.jpg','金迈源自助涮王','立丰国际','¥54.9');

/*----------------------------
----------猫眼电影————SBW-----
----------------------------*/

CREATE TABLE cinema(                   /*影院表*/
	cid INT PRIMARY KEY AUTO_INCREMENT,
	c_name VARCHAR(20),                   /*影院名*/
	c_loction VARCHAR(50),                /*地址*/
	c_tel CHAR(11)                        /*电话*/
);

CREATE TABLE movie(
	mvid INT PRIMARY KEY AUTO_INCREMENT,
	m_name VARCHAR(20),                  /*电影名*/
	m_actor VARCHAR(20),                 /*演员名*/
	m_type  VARCHAR(20),                 /*类型*/
	m_picture varchar(100)                /*图片*/
 );
 
CREATE TABLE videoHall(
	vid INT PRIMARY KEY AUTO_INCREMENT,
	v_no VARCHAR(10),                     /*放映厅*/
	v_seat INT,                            /*座位数*/
	cid INT,
	foreign key (cid) references cinema (cid)/*影院名*/
);

create table seat(
	seid INT PRIMARY KEY AUTO_INCREMENT,
	isSit boolean,
	vid INT,
	foreign key (vid) references videoHall(vid)
);
	
CREATE TABLE showtick(
	sid INT PRIMARY KEY AUTO_INCREMENT,
	s_time VARCHAR(10),                   /*放映时间*/
	s_price decimal(3,0),                 /*价格*/
	vid INT,                                /*放映厅*/
	mvid INT,                             /*电影名*/
	seid int,
	foreign key (mvid) references movie (mvid),
	foreign key (seid) references seat (seid),
	foreign key (vid) references videoHall (vid)
);
	
	
	 /*影院表*/
insert into cinema values(
	null,'万达影城','地址：碑林区雁塔路北段8号','15353729070'
	);
insert into cinema values(
	null,'香港未来主题影院','地址：碑林区长安立交东香港未来影院二楼','13384529070'
	);
insert into cinema values(
	null,'CGV影城','未央区三桥新街1076号华润万象城4层','13299169330'
	);
insert into cinema values(
	null,'文投国际影城','地址：新城区朝阳门外长乐西路华东万悦城7层','18829587477'
	);
  /*电影表 价格*/
insert into showtick values(
	null,'2020-11-04 16:00','￥36.9起',null,null,null
);
insert into showtick values(
	null,'2020-11-04 16:55','￥36.9起',null,null,null
);
insert into showtick values(
	null,'2020-11-04 17:30','￥36.9起',null,null,null
);
insert into showtick values(
	null,'2020-11-04 18:00','￥40.9起',null,null,null
);
insert into showtick values(
	null,'2020-11-04 20:00','￥40.9起',null,null,null
);
insert into showtick values(
	null,'2020-11-04 22:00','￥36.9起',null,null,null
);

 /*电影表详情*/
 insert into movie values(
	null,'除暴','王千源 吴彦祖','动作','../img/chubao.jpj'
 );
 insert into movie values(
	null,'姜子牙','邓希 杨凝','动漫','../img/jiangziya.jpj'
 );
 insert into movie values(
	null,'我和我的家乡','葛优 沈腾 邓超','喜剧','../img/jiaxiang.jpj'
 );
 insert into movie values(
	null,'金刚川','张译 吴京','战争','../img/chuan.jpj'
 );
 insert into movie values(
	null,'八佰','王千源 张译','战争','../img/ba.jpj'
 );
 insert into movie values(
	null,'怪物猎人','米拉乔沃维奇','科幻','../img/guai.jpj'
 );
 insert into movie values(
	null,'夺冠','巩俐','励志','../img/duo.jpj'
 );
 insert into movie values(
	null,'风平浪静','章雨 宋佳','爱情','../img/feng.jpj'
 );
 
 /*放映厅*/
 insert into videohall values(
	null,'6FL-10号厅',80,null
 );
 insert into videohall values(
	null,'RealD-8号厅',100,null
 );
 insert into videohall values(
	null,'RealD-9号厅',100,null
 );
 insert into videohall values(
	null,'RealD-10号厅',120,null
 );
 