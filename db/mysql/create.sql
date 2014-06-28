#公司荣誉

#动态表,公司从相关经济资讯中选取的内容
drop table if exists NewsInfo;
create table if not exists NewsInfo(
	id INT primary key not null auto_increment,
	author VARCHAR(255),
	title VARCHAR(255) not null,
	content TEXT,
	creatTime TIMESTAMP,
	modifyTime TIMESTAMP
	) ENGINE=InnoDB DEFAULT CHARSET=utf8;

#视点表,公司发布的分析报告
drop table if exists ViewPoint;
create table if not exists ViewPoint(
	id INT primary key not null auto_increment,
	author VARCHAR(255),
	title VARCHAR(255) not null,
	content TEXT,
	creatTime TIMESTAMP,
	modifyTime TIMESTAMP
	) ENGINE=InnoDB DEFAULT CHARSET=utf8;

#推荐概要表
drop table if exists RecommendInfo;
create table if not exists RecommendInfo(
	recId INT primary key not null auto_increment,
	recAuthor VARCHAR(255),
	recTitle VARCHAR(255) not null,
	recInfo MEDIUMTEXT,
	recTime TIMESTAMP,
	modifyTime TIMESTAMP	
	) ENGINE=InnoDB DEFAULT CHARSET=utf8;

#产品表
drop table if exists ProductInfo;
create table if not exists ProductInfo(
	proName varchar(255) primary key not null,
	investManager varchar(255),
	productManager varchar(255),
	proInfo text
	) ENGINE=InnoDB DEFAULT CHARSET=utf8;

#投资经理表
drop table if exists InvestManager;
create table if not exists InvestManager(
	mgrName varchar(255) primary key not null,
	mgrInfo text
	) ENGINE=InnoDB DEFAULT CHARSET=utf8;

#产品经理表
drop table if exists ProductManager;
create table if not exists ProductManager(
	mgrName varchar(255) primary key not null,
	phoneNumber varchar(50)
	) ENGINE=InnoDB DEFAULT CHARSET=utf8;

#招聘信息表
drop table if exists RecruitInfo;
create table if not exists RecruitInfo(
	id INT primary key not null auto_increment,
	department VARCHAR(255) not null,
	position VARCHAR(255) not null,
	positionType VARCHAR(255) not null,
	positionNumber INT not null,
	positionStatement VARCHAR(255) not null,
	positionRequirement VARCHAR(255) not null,
	isValid INT not null,
	creatTime TIMESTAMP,
	modifyTime TIMESTAMP
	) ENGINE=InnoDB DEFAULT CHARSET=utf8;
	
drop table if exists ConfigInfo;
create table if not exists ConfigInfo(
	id INT primary key not null auto_increment,
	name VARCHAR(255) not null,
	detail TEXT not null,
	creatTime TIMESTAMP,
	modifyTime TIMESTAMP
	)ENGINE=InnoDB DEFAULT CHARSET=utf8;	