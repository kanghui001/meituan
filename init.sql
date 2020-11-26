set names UTF8;

drop database if exists meituan;
create database meituan charset = utf8;
use meituan;

/*----------------------------
----------飞机票————WMY-------
----------------------------*/

create table travel(
	tid int primary key auto_increment,			/*旅游种类id*/
	tname varchar(5)							/*旅游名称*/
);

create table airLine(
	aid int primary key auto_increment,			/*航线id*/
	route varchar(10),							/*航线*/
	img varchar(50),							/*航线图片*/
	tid int,									/*航线对应的旅游种类id*/
	foreign key (tid) references travel(tid)
);

create table flight(
	fid int primary key auto_increment,			/*具体航线id*/
	startTime varchar(10),						/*起飞时间*/
	startPos varchar(8),						/*起点*/
	endTime varchar(10),						/*抵达时间*/
	endPos varchar(8),							/*目的地*/
	startAir varchar(6),						/*出发机场*/
	endAir varchar(6),							/*目的机场*/
	flyDate varchar(10),						/*起飞日期*/
	company varchar(6),							/*飞机所属公司*/
	price decimal(6,2),							/*价格*/
	nonStop boolean,							/*是否直飞：true为直飞*/
	hunger boolean,								/*true为票少*/
	hot boolean,								/*true为特惠*/
	airType varchar(20),						/*飞机型号*/
	onTime float,								/*准点率：小于1的两位小数*/
	aid int,									/*对应的航线id*/
	foreign key (aid) references airLine(aid)	
);

create table ticket(
	ticketId int primary key auto_increment,	/*机票id*/
	tname varchar(6),							/*乘客姓名*/	
	tiden varchar(18),							/*乘客证件号*/	
	tphone varchar(11),							/*乘客手机号*/	
	fid int,									/*对应的具体航线id*/
	userid int									/*用户id*/
);

/*----------------------------
----------用户————ZY----------
----------------------------*/

create table user(
	id int primary key auto_increment,
	username varchar(255) not null unique,/*姓名*/
	phone varchar(11) not null unique,/*手机号 不为空 长度11*/
	password varchar(255), unique key(username)
) engine=innodb;/*密码*/

insert into user(username,phone, password) values('zhangyuan','12345678910','456'),('kanghui', '12345678911','234');
/*#订单表*/
create table dingdan(
dd_id int primary key auto_increment  ,/*订单id 自增 不为空 主键*/
dd_name  varchar(100) not null, /*订单名称 */
dd_time datetime,/*订单时间 true 为美食 false为电影*/
dd_yyname varchar(40),/*影院名称*/
dd_date int,/*数量*/
dd_who	boolean, /*true为美食 false为电影*/
foreign key(dd_id) references user(id)/*设置外键和user表相关联*/
);

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

#插入左侧的表
create table right_side(
	fid int primary key auto_increment,
	sm_img varchar(128),			 			#商品图片
	lname varchar(128),							#商品名字
	address varchar(128),						#地址
	price varchar(32)								#价格
);

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
	m_picture varchar(100),                /*图片*/
	r_moive int                            /*热映电影*/
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
	s_price VARCHAR(10),                 /*价格*/
	vid INT,                                /*放映厅*/
	mvid INT,                             /*电影名*/
	seid int,
	foreign key (mvid) references movie (mvid),
	foreign key (seid) references seat (seid),
	foreign key (vid) references videoHall (vid)
);

/*----------------------------
 ----------休闲娱乐————HJY-----
 ----------------------------*/
 
 create table enterment(
    kid int primary key auto_increment,/*编号*/
 	kname varchar(20), /*名字*/
 	score varchar(4),    /*评分*/
 	thinknumber int,    /*评论数量*/
 	address varchar(60),/*地址*/
 	price varchar(10),      /*价格*/
 	detail varchar(60), /*价格详情 大包中包小包or酒吧套餐*/
 	picture varchar(120), /*照片*/
 	phone varchar(20),    /*联系电话*/
 	worktime varchar(30), /*工作时间*/
 	userid varchar(50),   /*用户名*/
 	userthink varchar(300),/*用户评论*/
 	ktype int /*娱乐设施类型:1为KTV	2为酒吧*/
 );
 
 create table item(                   /*酒吧里的售酒套餐*/
 	iid int primary key auto_increment,/*酒编号*/
 	alcohol varchar(20),/*酒的套餐名*/
 	sellnumber varchar(20),/*销售量*/
 	idate varchar(30),/*活动截止日期*/
 	newprice decimal(8,2),/*现价*/
 	beforeprice varchar(10),/*原价*/
 	kid int, /*具体的某家娱乐设施*/
 	foreign key (kid) references enterment(kid)
 );