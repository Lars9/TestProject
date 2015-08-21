--CREATE SCHEMA contacts_book DEFAULT CHARACTER SET utf8;

DROP TABLE IF EXISTS contacts;
DROP TABLE IF EXISTS users;

USE contacts_book;

CREATE TABLE IF NOT EXISTS users(
    id int(10) PRIMARY KEY NOT NULL AUTO_INCREMENT,
    fio varchar(255)
)engine=InnoDb charset=utf8 AUTO_INCREMENT=1;

CREATE TABLE IF NOT EXISTS contacts(
    id int(10) PRIMARY KEY NOT NULL AUTO_INCREMENT,
    phone varchar(255),
    user_id int(10),
    CONSTRAINT user_id1 FOREIGN KEY user_id(user_id) REFERENCES users(id) ON DELETE CASCADE ON UPDATE CASCADE
)Engine=InnoDb charset=utf8 AUTO_INCREMENT=1;

