
-- #设置客户端连接服务器端编码
SET NAMES UTF8;
-- #丢弃数据库
DROP DATABASE IF EXISTS tq;
-- #创建数据库,设置存储的编码
CREATE DATABASE tq CHARSET=UTF8;
-- #进入该数据库
USE tq;
-- #创建保存flowerslist数据的表
CREATE TABLE list(
    id  INT PRIMARY KEY AUTO_INCREMENT,
    title   VARCHAR(30),
    price   VARCHAR(20),
    notPrice   VARCHAR(20),
    picture VARCHAR(100)
);
-- 插入数据
INSERT INTO list VALUES
(NULL,'至死不渝-4支精品红玫瑰','￥148.00','￥192.00','http://127.0.0.1:3000/imgs/01.jpg'),
(NULL,'与你共舞-33支精品...','￥358.00','￥465.00','http://127.0.0.1:3000/imgs/02.jpg'),
(NULL,'祝你一切顺利-9支精...','￥158.00','￥206.00','http://127.0.0.1:3000/imgs/03.jpg'),
(NULL,'长相守-11支精品红玫瑰','￥179.00','￥232.00','http://127.0.0.1:3000/imgs/04.jpg'),
(NULL,'不变的心-11支精品...','￥289.00','￥375.00','http://127.0.0.1:3000/imgs/05.jpg'),
(NULL,'青春之歌-淡粉色满天...','￥399.00','￥375.00','http://127.0.0.1:3000/imgs/06.jpg'),
(NULL,'一辈子的诺言-33支精品红玫瑰','￥368.00','￥478.00','http://127.0.0.1:3000/imgs/07.jpg'),
(NULL,'浪漫香气-9支精...','￥359.00','￥466.00','http://127.0.0.1:3000/imgs/08.jpg'),
(NULL,'刚好遇见你-33支精...','￥338.00','￥439.00','http://127.0.0.1:3000/imgs/09.jpg'),
(NULL,'含羞红焰-19支精品...','￥289.00','￥375.00','http://127.0.0.1:3000/imgs/10.jpg'),
(NULL,'两情相悦-19支精品...','￥299.00','￥388.00','http://127.0.0.1:3000/imgs/11.jpg'),
(NULL,'美丽的遇见-33支精...','￥359.00','￥466.00','http://127.0.0.1:3000/imgs/12.jpg'),
(NULL,'只为伊人-33支精...','￥499.00','￥648.00','http://127.0.0.1:3000/imgs/13.jpg'),
(NULL,'永远爱你-11支混色...','￥259.00','￥336.00','http://127.0.0.1:3000/imgs/14.jpg'),
(NULL,'心若向阳-3支精品向日葵','￥239.00','￥310.00','http://127.0.0.1:3000/imgs/15.jpg'),
(NULL,'花好月圆-19支精品...','￥299.00','￥388.00','http://127.0.0.1:3000/imgs/16.jpg'),
(NULL,'怦然心动-33支精品...','￥358.00','￥465.00','http://127.0.0.1:3000/imgs/17.jpg'),
(NULL,'爱意朦胧-33支精品...','￥339.00','￥440.00','http://127.0.0.1:3000/imgs/18.jpg'),
(NULL,'爱的就是你-11支精...','￥258.00','￥335.00','http://127.0.0.1:3000/imgs/19.jpg'),
(NULL,'一往情深-19支精品...','￥399.00','￥518.00','http://127.0.0.1:3000/imgs/20.jpg'),
(NULL,'下一个花季-11支精...','￥239.00','￥310.00','http://127.0.0.1:3000/imgs/21.jpg'),
(NULL,'美丽的她-11支精品...','￥199.00','￥258.00','http://127.0.0.1:3000/imgs/22.jpg'),
(NULL,'领家女孩-33支精品...','￥399.00','￥518.00','http://127.0.0.1:3000/imgs/23.jpg'),
(NULL,'美好的祝愿—3支精品...','￥199.00','￥258.00','http://127.0.0.1:3000/imgs/24.jpg'),
(NULL,'爱的诺言-9支精品...','￥178.00','￥231.00','http://127.0.0.1:3000/imgs/25.jpg'),
(NULL,'遇见你-33支精品粉玫瑰','￥358.00','￥465.00','http://127.0.0.1:3000/imgs/26.jpg'),
(NULL,'爱到深处-33支精品...','299.00','￥388.00','http://127.0.0.1:3000/imgs/27.jpg'),
(NULL,'轻轻的祝福+1支篮...','388.00','￥504.00','http://127.0.0.1:3000/imgs/28.jpg'),
(NULL,'花开无声-11支精品...','138.00','￥179.00','http://127.0.0.1:3000/imgs/29.jpg'),
(NULL,'幸福逐渐到来-19支精品...','279.00','￥362.00','http://127.0.0.1:3000/imgs/30.jpg');




-- 创建登录表
USE tq;
CREATE TABLE tq_login(
    id INT PRIMARY KEY AUTO_INCREMENT,
    uname VARCHAR(50),
    upwd VARCHAR(32)
);
INSERT INTO tq_login VALUES(NULL,'tom',123456);
INSERT INTO tq_login VALUES(NULL,'jerry',456789);


--创建购物车列表
USE tq;
CREATE TABLE cartlist(
    id  INT PRIMARY KEY AUTO_INCREMENT,
    title   VARCHAR(30),
    price   VARCHAR(20),
    notPrice   VARCHAR(20),
    picture VARCHAR(100)
);
INSERT INTO cartlist VALUES
(NULL,'心若向阳-3支精品向日葵','￥239.00','￥286.00','http://127.0.0.1:3000/imgs/15.jpg'),
(NULL,'怦然心动-33支精品...','￥358.00','￥429.00','http://127.0.0.1:3000/imgs/17.jpg'),
(NULL,'爱到深处-33支精品...','299.00','￥358.00','http://127.0.0.1:3000/imgs/27.jpg'),
(NULL,'含羞红焰-19支精品...','￥289.00','￥375.00','http://127.0.0.1:3000/imgs/10.jpg'),
(NULL,'一往情深-19支精品...','￥399.00','￥518.00','http://127.0.0.1:3000/imgs/20.jpg'),
(NULL,'两情相悦-19支精品...','￥299.00','￥388.00','http://127.0.0.1:3000/imgs/11.jpg');

-- 创建主页中的蛋糕的详情表
USE tq;
CREATE TABLE detailsEmp(
    id  INT PRIMARY KEY AUTO_INCREMENT,
    carouselOne VARCHAR(100),
    carouselTwo VARCHAR(100),
    title VARCHAR(20),
    price   VARCHAR(20),
    selected VARCHAR(200),
    explain VARCHAR(100)
);
INSERT INTO detailsEmp VALUES
(NULL,'http://127.0.0.1:3000/detail-imgs/b1.jpg','http://127.0.0.1:3000/detail-imgs/b-1.jpg','方形奶油鲜奶蛋糕','￥298.00','1磅(454g) 2磅(908g) 3磅(1.36kg) 5磅(2.27kg)','8-12人食 约28cm*18cm*5.5cm 提前5小时预定'),
(NULL,'http://127.0.0.1:3000/detail-imgs/b2.jpg','http://127.0.0.1:3000/detail-imgs/b-2.jpg','草莓奶油鲜奶蛋糕','￥298.00','1磅(454g) 2磅(908g) 3磅(1.36kg)','4-7人食 约19cm*7.0cm 提前5小时预定'),
(NULL,'http://127.0.0.1:3000/detail-imgs/b3.jpg','http://127.0.0.1:3000/detail-imgs/b-3.jpg','浓巧迷情冰淇淋蛋糕','￥298.00','1磅(454g) 2磅(908g)','4-7人食 约17cm*4.3cm 提前5小时预定 若不及时食用，请放置冰箱冷冻室存储'),
(NULL,'http://127.0.0.1:3000/detail-imgs/b4.jpg','http://127.0.0.1:3000/detail-imgs/b-4.jpg','蓝莓轻乳拿破仑','￥298.00','1磅(454g) 2磅(908g) 3磅(1.36kg)','4-7人食 约23cm*14cm*5cm 提前5小时预定'),
(NULL,'http://127.0.0.1:3000/detail-imgs/b5.jpg','http://127.0.0.1:3000/detail-imgs/b-5.jpg','安逸兔奶油蛋糕','￥318.00','1磅(681g) 2磅(1.14kg) 3磅(1.59kg) 5.5磅(2.5kg)','4-7人食 约21cm*5.5cm 提前5小时预定'),
(NULL,'http://127.0.0.1:3000/detail-imgs/b6.jpg','http://127.0.0.1:3000/detail-imgs/b-6.jpg','黑巧克力慕斯蛋糕','￥298.00','1磅(454g) 2磅(908g) 3磅(1.36kg) 5.5磅(2.27kg)','4-7人食 约23cm*14cm*5.5cm 提前5小时预定'),
(NULL,'http://127.0.0.1:3000/detail-imgs/b7.jpg','http://127.0.0.1:3000/detail-imgs/b-7.jpg','可爱熊奶油蛋糕','￥298.00','1.5磅(681g)','4-7人食 约27cm*17cm*4.3cm 提前5小时预定 若不及时食用，请放置冰箱冷冻室存储'),
(NULL,'http://127.0.0.1:3000/detail-imgs/b8.jpg','http://127.0.0.1:3000/detail-imgs/b-8.jpg','小女孩奶油芝士蛋糕','￥318.00','1磅(681g) 2磅(1.13kg) 3磅(1.58kg) 5.5磅(2.5kg)','4-7人食 约19cm*7.5cm 提前5小时预定'),
(NULL,'http://127.0.0.1:3000/detail-imgs/b9.jpg','http://127.0.0.1:3000/detail-imgs/b-9.jpg','爱丽丝花境鲜奶蛋糕','￥298.00','1.5磅(681g) 2.5磅(1.14kg)''2-3人食 约19cm*7.5cm 提前5小时预定'),
(NULL,'http://127.0.0.1:3000/detail-imgs/b10.jpg','http://127.0.0.1:3000/detail-imgs/b-10.jpg','Mojito 柠.漾蛋糕','￥298.00','1.5磅(681g) 2.5磅(1.14kg) 3磅(1.36kg)''4-7人食 约19cm*7.5cm 提前5小时预定'),
(NULL,'http://127.0.0.1:3000/detail-imgs/b11.jpg','http://127.0.0.1:3000/detail-imgs/b-11.jpg','沙布蕾芭菲蛋糕','￥298.00','1.5磅(681g) 2.5磅(1.14kg) 3磅(1.36kg ) 5磅(2.27kg)''4-7人食 约23cm*7.5cm 提前5小时预定'),
(NULL,'http://127.0.0.1:3000/detail-imgs/b12.jpg','http://127.0.0.1:3000/detail-imgs/b-12.jpg','摩登绿茶蛋糕','￥298.00','1.5磅(681g) 2.5磅(1.14kg) 3磅(1.36kg ) 5磅(2.27kg)''4-7人食 约23cm*14cm*7.5cm 提前5小时预定');

