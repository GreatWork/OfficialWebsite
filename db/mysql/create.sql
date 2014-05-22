--公司荣誉

--动态表，公司从相关经济资讯中选取的内容
drop table if exists NewsInfo;
create table if not exists NewsInfo(
	id INT primary key not null auto_increment,
	author VARCHAR(255),
	title VARCHAR(255) not null,
	content TEXT,
	creatTime TIMESTAMP，
	modifyTime TIMESTAMP
	);

--视点表，公司发布的分析报告
drop table if exists ViewPoint;
create table if not exists ViewPoint(
	id INT primary key not null auto_increment,
	author VARCHAR(255),
	title VARCHAR(255) not null,
	content TEXT,
	creatTime TIMESTAMP，
	modifyTime TIMESTAMP
	);

--推荐概要表
drop table if exists RecommendInfo;
create table if not exists RecommendInfo(
	recId INT primary key not null auto_increment,
	recAuthor VARCHAR(255),
	recTitle VARCHAR(255) not null,
	recInfo MEDIUMTEXT,
	recTime TIMESTAMP);

--产品表
drop table if exists ProductInfo;
create table if not exists ProductInfo(
	proName varchar(255) primary key not null,
	investManager varchar(255),
	productManager varchar(255),
	proInfo text);

--投资经理表
create table if not exists InvestManager(
	mgrName varchar(255) primary key not null,
	mgrInfo text);

--产品经理表
create table if not exists ProductManager(
	mgrName varchar(255) primary key not null,
	phoneNumber varchar(50));
