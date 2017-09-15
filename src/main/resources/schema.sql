DROP TABLE IF EXISTS oauth_client_details;
DROP TABLE IF EXISTS oauth_access_token;
DROP TABLE IF EXISTS oauth_refresh_token;
DROP TABLE IF EXISTS user;

create table oauth_client_details (
 client_id VARCHAR(256) PRIMARY KEY,
 resource_ids VARCHAR(256),
 client_secret VARCHAR(256),
 scope VARCHAR(256),
 authorized_grant_types VARCHAR(256),
 web_server_redirect_uri VARCHAR(256),
 authorities VARCHAR(256),
 access_token_validity INTEGER,
 refresh_token_validity INTEGER,
 additional_information VARCHAR(4096),
 autoapprove VARCHAR(256)
);

create table oauth_access_token (
 token_id VARCHAR(256),
 token BLOB,
 authentication_id VARCHAR(256) PRIMARY KEY,
 user_name VARCHAR(256),
 client_id VARCHAR(256),
 authentication BLOB,
 refresh_token VARCHAR(256)
);

create table oauth_refresh_token (
 token_id VARCHAR(256),
 token BLOB,
 authentication BLOB
);

CREATE TABLE IF NOT EXISTS `User` (
 `id` bigint(20) NOT NULL AUTO_INCREMENT,
 `firstName` varchar(200) NOT NULL,
 `lastName` varchar(200) NOT NULL,
 `username` varchar(200) NOT NULL,
 `password` varchar(200) NOT NULL,
 `enabled` varchar(200) NOT NULL,
 PRIMARY KEY (`id`)
);

INSERT INTO `User` (`id`,`firstName`, `lastName`, `username`, `password`, `enabled`)
VALUES (null,'simon', 'polle', 'test', '$2a$06$r6fi9IUaSlaCwslivDDcEeVWw/dWj2p9dzZLOGTl9aQGDaXX1LCJ6', '1');