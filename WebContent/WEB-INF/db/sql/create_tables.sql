DROP DATABASE app;
CREATE DATABASE app;
use app;


DROP TABLE IF EXISTS user;
CREATE TABLE IF NOT EXISTS user
(
	user_id BIGINT AUTO_INCREMENT,
    name varchar(40) NOT NULL,
    password varchar(40) NOT NULL,
    role varchar(40) NOT NULL,
    enabled tinyint(1),
    PRIMARY KEY(user_id)
    
)ENGINE=INNODB;


DROP TABLE IF EXISTS genre;
CREATE TABLE IF NOT EXISTS genre
(
	id BIGINT AUTO_INCREMENT NOT NULL,
    name VARCHAR(50) UNIQUE NOT NULL,
    CONSTRAINT genre_pk PRIMARY KEY(id)
    
)ENGINE=INNODB;


DROP TABLE IF EXISTS publisher;
CREATE TABLE IF NOT EXISTS publisher
(
	id BIGINT AUTO_INCREMENT NOT NULL,
    name VARCHAR(50) NOT NULL,
    CONSTRAINT category_pk PRIMARY KEY(id)
    
)ENGINE=INNODB;


DROP TABLE IF EXISTS author;
CREATE TABLE IF NOT EXISTS author
(
	id BIGINT AUTO_INCREMENT NOT NULL,
    name VARCHAR(50) NOT NULL,
    lastname VARCHAR(50) NOT NULL,
    CONSTRAINT author_pk PRIMARY KEY(id)
    
)ENGINE=INNODB;

DROP TABLE IF EXISTS book;
CREATE TABLE IF NOT EXISTS book
(
	id BIGINT AUTO_INCREMENT NOT NULL,
    title VARCHAR(50) NOT NULL,
    publisher_id BIGINT NOT NULL,
    author_id BIGINT NOT NULL,
    publicationdate VARCHAR(15),
    price DOUBLE,
    rating INT,
    synopsis TEXT,
    image VARCHAR(255),
    state VARCHAR(10) NOT NULL,
    CONSTRAINT book_pk PRIMARY KEY(id),
	CONSTRAINT book_publisher_fk FOREIGN KEY(publisher_id) 
		REFERENCES publisher(id) MATCH FULL ON UPDATE CASCADE ON DELETE CASCADE,
	CONSTRAINT book_author_fk FOREIGN KEY(author_id) 
		REFERENCES author(id) MATCH FULL ON UPDATE CASCADE ON DELETE CASCADE
    
)ENGINE=INNODB;


DROP TABLE IF EXISTS book_genre;
CREATE TABLE IF NOT EXISTS book_genre (
  book_id BIGINT NOT NULL,
  genre_id BIGINT NOT NULL,
  CONSTRAINT book_genre_pk PRIMARY KEY (book_id, genre_id),
  CONSTRAINT book_genre_book_fk FOREIGN KEY(book_id)
  	REFERENCES book(id) MATCH FULL ON UPDATE CASCADE ON DELETE CASCADE,
  CONSTRAINT book_genre_genre_fk FOREIGN KEY(genre_id)
  	REFERENCES genre(id) MATCH FULL ON UPDATE CASCADE ON DELETE CASCADE
) ENGINE=InnoDB;


DROP TABLE IF EXISTS comment;
CREATE TABLE IF NOT EXISTS comment (
  id BIGINT AUTO_INCREMENT NOT NULL,
  book_id BIGINT NOT NULL,
  username VARCHAR(50) NOT NULL,
  content TEXT NOT NULL,
  CONSTRAINT comment_pk PRIMARY KEY (id),
  CONSTRAINT comment_book_fk FOREIGN KEY (book_id)
	REFERENCES book(id) MATCH FULL ON DELETE CASCADE ON UPDATE CASCADE
) ENGINE=InnoDB;

DROP TABLE IF EXISTS banner;
CREATE TABLE IF NOT EXISTS banner (
  id BIGINT AUTO_INCREMENT NOT NULL,
  book_id BIGINT NOT NULL UNIQUE,
  CONSTRAINT banner_pk PRIMARY KEY (id),
  CONSTRAINT banner_book_fk FOREIGN KEY (book_id)
	REFERENCES book(id) MATCH FULL ON DELETE CASCADE ON UPDATE CASCADE
) ENGINE=InnoDB;

-- DELETE FROM book WHERE id=2