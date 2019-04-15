SET NAMES UTF8;
DROP DATABASE IF EXISTS store;
CREATE DATABASE store CHARSET=UTF8;
USE store;

# 购物车
CREATE TABLE store_shopcart(
    id INT PRIMARY KEY AUTO_INCREMENT,
    uid INT,
    cid INT,
    count INT,
	title VARCHAR(256),
	img_url VARCHAR(256),
	color VARCHAR(32),
	price VARCHAR(32)
);
# 用户列表
CREATE TABLE store_user(
    id INT PRIMARY KEY AUTO_INCREMENT,
    uname VARCHAR(64),
    upwd VARCHAR(32),
    phone VARCHAR(32),
    gender INT
);

-- 主页商品数据
CREATE TABLE store_index(
    id  INT PRIMARY KEY AUTO_INCREMENT,
    pid INT,
    title VARCHAR(128),
    subtitle VARCHAR(128),
    img_url VARCHAR(128),
    price VARCHAR(32),
    delprice VARCHAR(32)
);
INSERT INTO store_index VALUES(null,1,"宝宝五彩棉袜",null,"http://127.0.0.1:3000/img/s_img2.jpg",10,20);
INSERT INTO store_index VALUES(null,1,"宝宝棉衣",null,"http://127.0.0.1:3000/img/s_img3.jpg",66,88);
INSERT INTO store_index VALUES(null,1,"宝宝厨具",null,"http://127.0.0.1:3000/img/s_img4.jpg",128,158);
INSERT INTO store_index VALUES(null,1,"宝宝睡衣",null,"http://127.0.0.1:3000/img/s_img5.jpg",109,139);
INSERT INTO store_index VALUES(null,1,"宝宝厨具",null,"http://127.0.0.1:3000/img/tuan_img1.jpg",189,209);
INSERT INTO store_index VALUES(null,1,"宝宝袜子",null,"http://127.0.0.1:3000/img/tuan_img2.jpg",19,39);
INSERT INTO store_index VALUES(null,1,"宝宝玩具",null,"http://127.0.0.1:3000/img/tuan_img3.jpg",119,159);
INSERT INTO store_index VALUES(null,1,"宝宝睡衣",null,"http://127.0.0.1:3000/img/tuan_img4.jpg",169,199);

INSERT INTO store_index VALUES(null,2,null,null,"http://127.0.0.1:3000/img/hot1.png",null,null);
INSERT INTO store_index VALUES(null,2,null,null,"http://127.0.0.1:3000/img/hot2.png",null,null);
INSERT INTO store_index VALUES(null,2,null,null,"http://127.0.0.1:3000/img/hot5.png",null,null);
INSERT INTO store_index VALUES(null,2,null,null,"http://127.0.0.1:3000/img/hot6.png",null,null);
INSERT INTO store_index VALUES(null,2,null,null,"http://127.0.0.1:3000/img/hot7.png",null,null);
INSERT INTO store_index VALUES(null,2,null,null,"http://127.0.0.1:3000/img/hot8.png",null,null);
INSERT INTO store_index VALUES(null,2,null,null,"http://127.0.0.1:3000/img/hot9.png",null,null);

INSERT INTO store_index VALUES(null,3,null,null,"http://127.0.0.1:3000/img/s_img7.jpg",null,null);
INSERT INTO store_index VALUES(null,3,null,null,"http://127.0.0.1:3000/img/s_img8.jpg",null,null);
INSERT INTO store_index VALUES(null,3,null,null,"http://127.0.0.1:3000/img/s_img9.jpg",null,null);
INSERT INTO store_index VALUES(null,3,null,null,"http://127.0.0.1:3000/img/s_img10.jpg",null,null);
INSERT INTO store_index VALUES(null,3,null,null,"http://127.0.0.1:3000/img/s_img11.jpg",null,null);

INSERT INTO store_index VALUES(null,4,"时尚宝宝小黄鸭T恤纯棉耐脏多色可选0-2岁宝宝",null,"http://127.0.0.1:3000/img/s_img2.jpg",100,null);
INSERT INTO store_index VALUES(null,4,"时尚宝宝小黄鸭T恤纯棉耐脏多色可选0-2岁宝宝",null,"http://127.0.0.1:3000/img/s_img3.jpg",100,null);
INSERT INTO store_index VALUES(null,4,"时尚宝宝小黄鸭T恤纯棉耐脏多色可选0-2岁宝宝",null,"http://127.0.0.1:3000/img/s_img4.jpg",100,null);
INSERT INTO store_index VALUES(null,4,"时尚宝宝小黄鸭T恤纯棉耐脏多色可选0-2岁宝宝",null,"http://127.0.0.1:3000/img/s_img5.jpg",100,null);
INSERT INTO store_index VALUES(null,4,"时尚宝宝小黄鸭T恤纯棉耐脏多色可选0-2岁宝宝",null,"http://127.0.0.1:3000/img/s_img7.jpg",100,null);
INSERT INTO store_index VALUES(null,4,"时尚宝宝小黄鸭T恤纯棉耐脏多色可选0-2岁宝宝",null,"http://127.0.0.1:3000/img/s_img8.jpg",100,null);
INSERT INTO store_index VALUES(null,4,"时尚宝宝小黄鸭T恤纯棉耐脏多色可选0-2岁宝宝",null,"http://127.0.0.1:3000/img/s_img9.jpg",100,null);
INSERT INTO store_index VALUES(null,4,"时尚宝宝小黄鸭T恤纯棉耐脏多色可选0-2岁宝宝",null,"http://127.0.0.1:3000/img/s_img10.jpg",100,null);
INSERT INTO store_index VALUES(null,4,"时尚宝宝小黄鸭T恤纯棉耐脏多色可选0-2岁宝宝",null,"http://127.0.0.1:3000/img/s_img11.jpg",100,null);
INSERT INTO store_index VALUES(null,4,"时尚宝宝小黄鸭T恤纯棉耐脏多色可选0-2岁宝宝",null,"http://127.0.0.1:3000/img/hot1.png",100,null);
INSERT INTO store_index VALUES(null,4,"时尚宝宝小黄鸭T恤纯棉耐脏多色可选0-2岁宝宝",null,"http://127.0.0.1:3000/img/hot2.png",100,null);
INSERT INTO store_index VALUES(null,4,"时尚宝宝小黄鸭T恤纯棉耐脏多色可选0-2岁宝宝",null,"http://127.0.0.1:3000/img/hot3.png",100,null);
INSERT INTO store_index VALUES(null,4,"时尚宝宝小黄鸭T恤纯棉耐脏多色可选0-2岁宝宝",null,"http://127.0.0.1:3000/img/hot4.png",100,null); 

CREATE TABLE store_goodlist(
    id  INT PRIMARY KEY AUTO_INCREMENT,
    lid INT,
    title VARCHAR(128),
    subtitle VARCHAR(128),
    img_url VARCHAR(128),
    price VARCHAR(32),
    delprice VARCHAR(32),
	color VARCHAR(128),
	sell INT
);
INSERT INTO store_goodlist VALUES(null,1,"男女宝宝秋冬装套装0一1岁婴儿衣服潮加厚连体衣保暖冬季外出抱衣",null,"http://127.0.0.1:3000/img/tuan_img1.jpg",110,220,"白色,粉色,黄色,橙色",2019); 
INSERT INTO store_goodlist VALUES(null,1,"男女宝宝秋冬装套装0一1岁婴儿衣服潮加厚连体衣保暖冬季外出抱衣",null,"http://127.0.0.1:3000/img/tuan_img2.jpg",150,320,"白色,粉色,黄色,橙色",2019); 
INSERT INTO store_goodlist VALUES(null,1,"男女宝宝秋冬装套装0一1岁婴儿衣服潮加厚连体衣保暖冬季外出抱衣",null,"http://127.0.0.1:3000/img/tuan_img3.jpg",140,220,"白色,粉色,黄色,橙色",2019); 
INSERT INTO store_goodlist VALUES(null,1,"男女宝宝秋冬装套装0一1岁婴儿衣服潮加厚连体衣保暖冬季外出抱衣",null,"http://127.0.0.1:3000/img/tuan_img4.jpg",199,290,"白色,粉色,黄色,橙色",2019); 
INSERT INTO store_goodlist VALUES(null,1,"男女宝宝秋冬装套装0一1岁婴儿衣服潮加厚连体衣保暖冬季外出抱衣",null,"http://127.0.0.1:3000/img/tuan_img5.jpg",139,220,"白色,粉色,黄色,橙色",2019); 
INSERT INTO store_goodlist VALUES(null,1,"男女宝宝秋冬装套装0一1岁婴儿衣服潮加厚连体衣保暖冬季外出抱衣",null,"http://127.0.0.1:3000/img/tuan_img6.jpg",330,520,"白色,粉色,黄色,橙色",2019); 
INSERT INTO store_goodlist VALUES(null,1,"男女宝宝秋冬装套装0一1岁婴儿衣服潮加厚连体衣保暖冬季外出抱衣",null,"http://127.0.0.1:3000/img/tuan_img7.jpg",230,350,"白色,粉色,黄色,橙色",2019); 
INSERT INTO store_goodlist VALUES(null,1,"男女宝宝秋冬装套装0一1岁婴儿衣服潮加厚连体衣保暖冬季外出抱衣",null,"http://127.0.0.1:3000/img/tuan_img1.jpg",350,550,"白色,粉色,黄色,橙色",2019); 

