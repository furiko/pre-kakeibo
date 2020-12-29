
-- +migrate Up
CREATE TABLE users (
    id varchar(40) NOT NULL,
    name varchar(20) NOT NULL,
    email varchar(64),
    password varchar(40) NOT NULL,
    PRIMARY KEY (id)
);

CREATE TABLE expenses (
    id bigint(40) NOT NULL AUTO_INCREMENT,
    name varchar(64) NOT NULL,
    price bigint(40) NOT NULL,
    payed_day datetime,
    category varchar(40) NOT NULL,
    detail varchar(255) NOT NULL,
    PRIMARY KEY (id)
);

CREATE TABLE incomes (
    id int(40) NOT NULL AUTO_INCREMENT,
    name varchar(40) NOT NULL,
    amount int(40) NOT NULL,
    income_day datetime,
    category varchar(40) NOT NULL,
    detail varchar(255) NOT NULL,
    PRIMARY KEY (id)
);




-- +migrate Down
DROP TABLE IF EXISTS users;
DROP TABLE IF EXISTS incomes;
DROP TABLE IF EXISTS expenses;
