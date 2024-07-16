/*
 * Roundcube Persistent Login Schema
 *
 * @author Gene Hawkins <texxasrulez@yahoo.com>
 *
 * @licence GNU AGPL
 */

CREATE TABLE IF NOT EXISTS auth_tokens (
    `token` varchar(128) NOT NULL PRIMARY KEY,
    `expires` datetime NOT NULL,
    `user_id` int unsigned NOT NULL CHECK(`user_id` > 0),
    `user_name` varchar(128) NOT NULL,
    `user_pass` varchar(128) NOT NULL,
    `host` varchar(255) NOT NULL,
    CONSTRAINT `auth_tokens_ibfk_1`
        FOREIGN KEY (`user_id`)
        REFERENCES users(`user_id`)
        ON DELETE CASCADE
);

CREATE INDEX `user_id_fk_auth_tokens` ON auth_tokens (`user_id`);

REPLACE INTO `system` (`name`, `value`) VALUES ('tx-persistent-login-version', '2020080200');
