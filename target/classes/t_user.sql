create database ShopDB default character set=utf8;

use ShopDB;

create table t_user(
u_id integer auto_increment primary key,
u_name varchar(20),
u_psd varchar(20),
u_iden varchar(10),
u_sex varchar(5),
u_rname varchar(20),
u_idcard varchar(20),
u_mobile varchar(15),
u_aid integer
);

create table t_goods(
g_id integer auto_increment primary key,
g_name varchar(50),
g_photo varchar(50),
g_oPrice float,
g_price float,
g_describe  varchar(100)
);


insert into t_goods(g_name,g_photo,g_oPrice,g_price,g_describe)
values("怡宝天然矿泉水","yibao",1.50,1.30,"怡宝矿泉水越喝越迷人");

insert into t_goods(g_name,g_photo,g_oPrice,g_price,g_describe)
values("可口可乐","coco",3.00,2.43,"可口可乐越喝越快乐迷人");

create table t_category(
c_id integer auto_increment primary key,
g_id integer,
c_name varchar(30)
);

insert into t_category values(null,"服装");
insert into t_category values(null,"美妆");
insert into t_category values(null,"数码");
insert into t_category values(null,"家居");
insert into t_category values(null,1,"食品");
insert into t_category values(null,2,"食品");
insert into t_category values(null,"图书");
insert into t_category values(null,"时尚潮流");
insert into t_category values(null,"名店促销");
insert into t_category values(null,"潮货汇集");
insert into t_category values(null,"感恩回馈");
insert into t_category values(null,"品牌盛宴");
insert into t_category values(null,"新品爆款");
insert into t_category values(null,"名店潮搭");
insert into t_category values(null,"精品搭配");
insert into t_category values(null,1,"新客专享");
insert into t_category values(null,"超值返利");
insert into t_category values(null,2,"超值返利");
insert into t_category values(null,"限时抢购");


create table t_address(
u_aid integer auto_increment primary key,
u_address varchar(30)
);

insert into t_user(u_name,u_psd,u_iden,u_sex,u_rname,u_idcard,u_mobile,u_aid) 
values("root","123456","用户","男","小兮","430524111555222222","13152647891","1");

insert into t_user(u_name,u_psd,u_iden,u_sex,u_rname,u_idcard,u_mobile,u_aid) 
values("admin","111222","用户","女","小兮","430524111555222222","13152647891","1");

insert into t_user(u_name,u_psd,u_iden,u_sex,u_rname,u_idcard,u_mobile,u_aid) 
values("user","000000","用户","男","小兮","430524111555222222","13152647891","2");

insert into t_address values(null,1,"湖南长沙");

insert into t_address values(null,2,"湖南邵阳");

insert into t_address values(null,3,"湖南永州");

insert into t_address values(null,3,"湖南长沙");



select a.u_id,u_name,u_iden,u_sex,u_rname,u_idcard,u_mobile,u_address from t_user a
join t_address b on a.u_id = b.u_id and a.u_aid = b.u_aid;

select  a.g_id,g_name,g_photo,g_oPrice,g_price,g_describe,c_name
from t_goods a join t_category b on b.g_id =a.g_id where c_name = "食品" ;