#设置客户端连接服务器端的编码
set names utf8;
#丢弃数据库，如果存在
drop database if exists meituan;
#创建数据库，设置存储的编码
create database meituan charset=utf8;
#进入数据库
use meituan;
#创建保存民宿数据的表
create table minsu(
  mnid int primary key auto_increment,
  mname varchar(16) not null,
  salary decimal(6,2),  
  intro varchar(100),             /*简介*/
	mtype varchar(50) not null,
	promotion varchar(100), 
	mhost varchar(20) not null,     /*房主*/
	location varchar(30) not null,  /*地址*/
	rating decimal(2,1),            /*评价*/
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
#插入数据
insert into minsu values(null,'柚子·少女之心',423.3,'临近钟楼/回民街/古城墙/钟楼地铁口/高铁站直达/超清极米投影/浴缸闺蜜房','整套80㎡,两间卧室:1厅1厨1卫,2x1.8米双人床x2,可住4人','首单特惠,新用户首单支付享8.5折','柚子Home','西安碑林区城市之心A座',4.8,'房子超大,无异味,是外出游玩的绝佳选择','Wi-Fi,有线网络,暖气,空调','退款权益:房东已为您提供预定成功后15分钟内免费取消权益。(该权益不受房源退订规则限制)','./img/minsu/youzi_1.jpg','./img/minsu/youzi_2.jpg','./img/minsu/youzi_3.jpg',true,true,false,true,false,true);
insert into minsu values(null,'粟居·home',168,'贰号房子【麦田捕梦网】大明宫市中心地铁旁近钟楼回民街印第安波西米亚风大床房特惠点头像看其它房源','整套55㎡,两间卧室:1厅1厨1卫,双人床x1,可住2人','天天特价:每晚168元，2020.04.08-2020.12.30期间入住可用','Iris冯','西安未央区未央路33号',5.0,'住过最满意的民宿,我特别的喜欢,经常过来入住','Wi-Fi,有线网络,暖气,空调','退订规则:宽松，入住前1天12:00前退订，可获100%退款。之后退订不退款','./img/minsu/suju_1.jpg','./img/minsu/suju_2.jpg','./img/minsu/suju_3.jpg',true,true,false,true,true,false);
insert into minsu values(null,'迷家',111.2,'市图书馆地铁口,近高铁,机场,钟楼,大明宫,汉城湖,可长租','整套62㎡,1间卧室:0厅1厨1卫,1张双人床,宜住2人','今夜特价:10:00~次日3:00预定，享受当晚8折优惠。连住优惠:7天以上9折优惠','小杰子0213','西安未央区文景北路11号',5.0,'我还想住第二次 房东姐姐人超级好 也很温柔 很贴心 厨房用具也很齐全 躺在床上就感觉 是公主 哈哈哈哈哈 虽然我男朋友每次就这么叫我 真的是很满意的一次 还会住de','Wi-Fi,有线网络,暖气,空调','极速退款:15分钟内免费取消,房东已为您提供预定成功后15分钟内免费取消权益。（该权益不受房源退订规则限制）','./img/minsu/mijia_1.jpg','./img/minsu/mijia_2.jpg','./img/minsu/mijia_3.jpg',true,true,false,true,false,true);
insert into minsu values(null,'15南舍民宿',75.65,'NO.5市中心/地铁口/钟楼回民街/小寨一条线/飘窗/透明气泡风/独立单间大床房','单间㎡,1间卧室:0厨1公卫,1张双人床,宜住2人','今夜特价:10:00~次日3:00预订，享受当晚8.5折优惠。新用户首单支付享8.5折','南舍民宿','西安莲湖区龙首村宫园壹号一期',4.8,'很喜欢,位置离地铁口近,房间设置齐全还非常干净,性价比超高,床也非常的舒服,房东姐姐很有耐心,希望下次有机会去体验一下别的房间','Wi-Fi,有线网络,暖气,空调','入住的前5天12:00前退订，可获100%退款。之后退订不退款。随时可预订,最少预订1天, 最多预订天数不限。','./img/minsu/15nanshe_1.jpg','./img/minsu/15nanshe_2.jpg','./img/minsu/15nanshe_3.jpg',true,true,false,true,false,true);
insert into minsu values(null,'爱在云端',148,'极光投影空中花园大床房,钟楼\回民街\小寨\北客站\大明宫。','整套40㎡,1间卧室:0厅1厨1公卫,1张双人床,宜住2人','30天以上8折优惠。每晚148元，2020.04.08-2020.12.30期间入住可用（2020.04.30-2020.05.05、2020.06.24-2020.06.27、2020.09.30-2020.10.08除外）','毛小九的家 西安民宿','西安未央区-',5.0,'已经是多次入住了呢  房间很好找','Wi-Fi,有线网络,暖气,空调','入住前1天12:00前退订，可获100%退款。之后退订不退款。随时可预订,最少预订1天, 最多预订天数不限','./img/minsu/yunduan_1.jpg','./img/minsu/yunduan_2.jpg','./img/minsu/yunduan_3.jpg',true,true,false,true,true,true);
insert into minsu values(null,'粟居·home',168,'贰号房子【麦田捕梦网】大明宫市中心地铁旁近钟楼回民街印第安波西米亚风大床房特惠点头像看其它房源','整套55㎡,两间卧室:1厅1厨1卫,双人床x1,可住2人','天天特价:每晚168元，2020.04.08-2020.12.30期间入住可用','Iris冯','西安未央区未央路33号',5.0,'住过最满意的民宿,我特别的喜欢,经常过来入住','Wi-Fi,有线网络,暖气,空调','退订规则:宽松，入住前1天12:00前退订，可获100%退款。之后退订不退款','./img/minsu/suju_1.jpg','./img/minsu/suju_2.jpg','./img/minsu/suju_3.jpg',true,true,false,true,true,false);
insert into minsu values(null,'迷家',111.2,'市图书馆地铁口,近高铁,机场,钟楼,大明宫,汉城湖,可长租','整套62㎡,1间卧室:0厅1厨1卫,1张双人床,宜住2人','今夜特价:10:00~次日3:00预定，享受当晚8折优惠。连住优惠:7天以上9折优惠','小杰子0213','西安未央区文景北路11号',5.0,'我还想住第二次 房东姐姐人超级好 也很温柔 很贴心 厨房用具也很齐全 躺在床上就感觉 是公主 哈哈哈哈哈 虽然我男朋友每次就这么叫我 真的是很满意的一次 还会住de','Wi-Fi,有线网络,暖气,空调','极速退款:15分钟内免费取消,房东已为您提供预定成功后15分钟内免费取消权益。（该权益不受房源退订规则限制）','./img/minsu/mijia_1.jpg','./img/minsu/mijia_2.jpg','./img/minsu/mijia_3.jpg',true,true,false,true,false,true);
insert into minsu values(null,'15南舍民宿',75.65,'NO.5市中心/地铁口/钟楼回民街/小寨一条线/飘窗/透明气泡风/独立单间大床房','单间㎡,1间卧室:0厨1公卫,1张双人床,宜住2人','今夜特价:10:00~次日3:00预订，享受当晚8.5折优惠。新用户首单支付享8.5折','南舍民宿','西安莲湖区龙首村宫园壹号一期',4.8,'很喜欢,位置离地铁口近,房间设置齐全还非常干净,性价比超高,床也非常的舒服,房东姐姐很有耐心,希望下次有机会去体验一下别的房间','Wi-Fi,有线网络,暖气,空调','入住的前5天12:00前退订，可获100%退款。之后退订不退款。随时可预订,最少预订1天, 最多预订天数不限。','./img/minsu/15nanshe_1.jpg','./img/minsu/15nanshe_2.jpg','./img/minsu/15nanshe_3.jpg',true,true,false,true,false,true);