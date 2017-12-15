DROP TABLE `tblnomal`;
CREATE TABLE `tblnomal` (
	`id` CHAR(20) NOT NULL,
	`pass` CHAR(16) NOT NULL,
	`name` CHAR(10) NOT NULL,
	`gender` CHAR(1) NOT NULL,
	`birth` CHAR(8) NOT NULL,
	`phoneNum`CHAR(50) NOT NULL,
	`email` CHAR(40) NOT NULL,
	`zipcode` CHAR(7) NOT NULL,
	`address` CHAR(50) NOT NULL,
	PRIMARY KEY (`id`)
)
COLLATE='utf8_general_ci'
ENGINE=InnoDB
;
tblnomal