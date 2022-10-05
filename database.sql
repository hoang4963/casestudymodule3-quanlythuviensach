create
database quanlythuviensach;
use
quanlythuviensach;

CREATE TABLE `quanlythuviensach`.`role`
(
    `id`     INT         NOT NULL AUTO_INCREMENT,
    `roleId` VARCHAR(15) NOT NULL,
    `name`   VARCHAR(45) not NULL,
    UNIQUE (roleId),
    PRIMARY KEY (`id`)
);

CREATE TABLE `quanlythuviensach`.`accounts`
(
    `id`        INT          NOT NULL AUTO_INCREMENT,
    `accountId` VARCHAR(15)  not NULL,
    `name`      VARCHAR(45)  not NULL,
    `password`  VARCHAR(45)  not NULL,
    `email`     varchar(255) not null,
    `role_id`   VARCHAR(15)  not null,
    PRIMARY KEY (`id`),
    UNIQUE INDEX `id_UNIQUE` (`id` ASC) VISIBLE,
    foreign key (`role_id`) references `quanlythuviensach`.`role` (`roleId`)
);

CREATE TABLE `quanlythuviensach`.`bookcategory`
(
    `id`         INT          NOT NULL AUTO_INCREMENT,
    `categoryId` VARCHAR(15)  not NULL UNIQUE,
    `name`       VARCHAR(100) not NULL,
    PRIMARY KEY (`id`),
    UNIQUE INDEX `id_UNIQUE` (`id` ASC) VISIBLE
);

CREATE TABLE `quanlythuviensach`.`customer`
(
    `id`         INT          NOT NULL AUTO_INCREMENT,
    `customerId` VARCHAR(15)  not NULL UNIQUE,
    `name`       VARCHAR(100) not NULL,
    `birthday`   date NULL,
    `email`      VARCHAR(100) NOT NULL,
    `phone`      INT          NOT NULL,
    `avatar`     VARCHAR(255) NULL,
    `role_id`    VARCHAR(15)  not NULL,
    PRIMARY KEY (`id`),
    UNIQUE INDEX `id_UNIQUE` (`id` ASC) VISIBLE,
    UNIQUE INDEX `email_UNIQUE` (`email` ASC) VISIBLE,
    UNIQUE INDEX `phone_UNIQUE` (`phone` ASC) VISIBLE,
    INDEX        `role_id_idx` (`role_id` ASC) VISIBLE,
    CONSTRAINT `role_id`
        FOREIGN KEY (`role_id`)
            REFERENCES `quanlythuviensach`.`role` (`roleId`)
            ON DELETE NO ACTION
            ON UPDATE NO ACTION
);

CREATE TABLE `quanlythuviensach`.`borrower`
(
    `id`          INT          NOT NULL AUTO_INCREMENT,
    `borrowerId`  VARCHAR(15)  not NULL UNIQUE,
    `name`        varchar(200) not null,
    `birthday`    date null,
    `address`     VARCHAR(45) null,
    `customer_id` varchar(15) null,
    PRIMARY KEY (`id`),
    UNIQUE INDEX `id_UNIQUE` (`id` ASC) VISIBLE,
    INDEX         `customer_id_idx` (`customer_id` ASC) VISIBLE,
    CONSTRAINT `customer_id`
        FOREIGN KEY (`customer_id`)
            REFERENCES `quanlythuviensach`.`customer` (`customerId`)
            ON DELETE NO ACTION
            ON UPDATE NO ACTION
);

CREATE TABLE `quanlythuviensach`.`book`
(
    `id`          INT          NOT NULL AUTO_INCREMENT,
    `bookId`      VARCHAR(15)  not NULL UNIQUE,
    `name`        VARCHAR(255) not NULL,
    `description` VARCHAR(255) NULL,
    `image`       VARCHAR(255) NULL,
    `status`      VARCHAR(10) NULL,
    `category_id` VARCHAR(15)  not NULL,
    `origin`      VARCHAR(100) NULL,
    PRIMARY KEY (`id`),
    UNIQUE INDEX `id_UNIQUE` (`id` ASC) VISIBLE,
    INDEX         `category_id_idx` (`category_id` ASC) VISIBLE,
    CONSTRAINT `category_id`
        FOREIGN KEY (`category_id`)
            REFERENCES `quanlythuviensach`.`bookcategory` (`categoryId`)
            ON DELETE NO ACTION
            ON UPDATE NO ACTION
);

CREATE TABLE `quanlythuviensach`.`bookloanvoucher`
(
    `id`            INT         NOT NULL AUTO_INCREMENT,
    `loanvoucherId` VARCHAR(15) NULL UNIQUE,
    `status`        VARCHAR(45) NULL,
    `borrower_id`   VARCHAR(15) not NULL,
    `bookamount`    int         not null,
    `note`          varchar(255) null,
    PRIMARY KEY (`id`),
    UNIQUE INDEX `id_UNIQUE` (`id` ASC) VISIBLE,
    INDEX           `borrower_id_idx` (`borrower_id` ASC) VISIBLE,
    CONSTRAINT `borrower_id`
        FOREIGN KEY (`borrower_id`)
            REFERENCES `quanlythuviensach`.`borrower` (`borrowerId`)
            ON DELETE NO ACTION
            ON UPDATE NO ACTION
);

create table borrowedbook
(
    `id`         int primary key auto_increment not null,
    `voucher_id` VARCHAR(15) not null,
    `book_id`    VARCHAR(15) not null,
    `loandate`   date        not null,
    `returndate` date        not null,
    foreign key (voucher_id) references bookloanvoucher (loanvoucherid),
    foreign key (book_id) references book (bookid)
);