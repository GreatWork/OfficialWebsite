--公司荣誉

--推荐概要表
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
	proInfo text);

--投资经理表
create table if not exists InvestManager(
	mgrName varchar(255) primary key not null,
	mgrInfo text);
