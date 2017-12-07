CREATE TABLE tblnomal(
	`id`	char(20) NOT NULL,
	`passWord` char(16) NOT NULL,
	`name` char(10) NOT NULL,
	`nickName` char(10) NOT NULL,	
	`birth` char(8) NOT NULL,
	`email` char(40) NOT NULL,
	`phoneNum` int NOT NULL,
	`certNum` int NOT NULL,
	`zipcode` char(7) NOT NULL,
	`address` char(50) NOT NULL,
	`gender` char(1) NOT NULL,
	PRIMARY KEY (`id`)
);
CREATE TABLE tblkids(
	`id`	char(20) NOT NULL,
	`passWord` char(16) NOT NULL,
	`name` char(10) NOT NULL,
	`nickName` char(10) NOT NULL,
	`birth` char(8) NOT NULL,
	`email` char(40) NOT NULL,
	`phoneNum` int NOT NULL,
	`certNum` int NOT NULL,
	`zipcode` char(7) NOT NULL,
	`address` char(50) NOT NULL,
	`gender` char(1) NOT NULL ,
	`pName` char(20) NOT NULL,
	`pBirth` int(8) NOT NULL,
	PRIMARY KEY (`id`)
);
CREATE TABLE tblseller(
	`id`	char(20) NOT NULL,
	`passWord` char(16) NOT NULL,
	`comName` char(20) NOT NULL,
	`comNum` char(10) NOT NULL,
	`bossName` char(10) NOT NULL,
	`phoneNum` int NOT NULL,
	`certNum` int NOT NULL,
	PRIMARY KEY (`id`)
);
CREATE TABLE tblmypage(
	`profile`	char(40) NOT NULL,
	`nickname` char(8) NOT NULL,
	`keeping` char(40) NOT NULL
);

