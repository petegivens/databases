-- ---
-- Globals
-- ---

-- SET SQL_MODE="NO_AUTO_VALUE_ON_ZERO";
-- SET FOREIGN_KEY_CHECKS=0;

-- ---
-- Table 'messages'
--
-- ---

DROP TABLE IF EXISTS `messages`;

CREATE TABLE `messages` (
  `id` INTEGER NULL AUTO_INCREMENT DEFAULT NULL,
  `text` VARCHAR(255) NOT NULL DEFAULT 'NULL',
  `room_id` INTEGER NOT NULL DEFAULT NULL,
  `user_id` INTEGER NOT NULL DEFAULT NULL,
  `roomname` VARCHAR(255) NOT NULL DEFAULT 'NULL',
  `username` VARCHAR(255) NULL DEFAULT NULL,
  PRIMARY KEY (`id`)
);

-- ---
-- Table 'rooms'
--
-- ---

DROP TABLE IF EXISTS `rooms`;

CREATE TABLE `rooms` (
  `id` INTEGER NULL AUTO_INCREMENT DEFAULT NULL,
  `name` VARCHAR(255) NOT NULL DEFAULT 'NULL',
  PRIMARY KEY (`id`)
);

-- ---
-- Table 'users'
--
-- ---

DROP TABLE IF EXISTS `users`;

CREATE TABLE `users` (
  `id` INTEGER NULL AUTO_INCREMENT DEFAULT NULL,
  `name` VARCHAR(255) NOT NULL DEFAULT 'NULL',
  PRIMARY KEY (`id`)
);

-- ---
-- Table 'messages_users'
--
-- ---

DROP TABLE IF EXISTS `messages_users`;

CREATE TABLE `messages_users` (
  `message_id` INTEGER NOT NULL DEFAULT NULL,
  `user_id` INTEGER NOT NULL DEFAULT NULL
);

-- ---
-- Table 'messages_rooms'
--
-- ---

DROP TABLE IF EXISTS `messages_rooms`;

CREATE TABLE `messages_rooms` (
  `message_id` INTEGER NOT NULL DEFAULT NULL,
  `room_id` INTEGER NULL DEFAULT NULL
);

-- ---
-- Table 'messages'
--
-- ---

DROP TABLE IF EXISTS `messages`;

CREATE TABLE `messages` (
  `id` INTEGER NULL AUTO_INCREMENT DEFAULT NULL,
  `text` VARCHAR(255) NOT NULL DEFAULT 'NULL',
  PRIMARY KEY (`id`)
);

-- ---
-- Foreign Keys
-- ---

ALTER TABLE `messages` ADD FOREIGN KEY (room_id) REFERENCES `rooms` (`id`);
ALTER TABLE `messages` ADD FOREIGN KEY (user_id) REFERENCES `users` (`id`);
ALTER TABLE `messages_users` ADD FOREIGN KEY (message_id) REFERENCES `messages` (`id`);
ALTER TABLE `messages_users` ADD FOREIGN KEY (user_id) REFERENCES `users` (`id`);
ALTER TABLE `messages_rooms` ADD FOREIGN KEY (message_id) REFERENCES `messages` (`id`);
ALTER TABLE `messages_rooms` ADD FOREIGN KEY (room_id) REFERENCES `rooms` (`id`);

-- ---
-- Table Properties
-- ---

-- ALTER TABLE `messages` ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_bin;
-- ALTER TABLE `rooms` ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_bin;
-- ALTER TABLE `users` ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_bin;
-- ALTER TABLE `messages_users` ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_bin;
-- ALTER TABLE `messages_rooms` ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_bin;
-- ALTER TABLE `messages` ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_bin;

-- ---
-- Test Data
-- ---

-- INSERT INTO `messages` (`id`,`text`,`room_id`,`user_id`,`roomname`,`username`) VALUES
-- ('','','','','','');
-- INSERT INTO `rooms` (`id`,`name`) VALUES
-- ('','');
-- INSERT INTO `users` (`id`,`name`) VALUES
-- ('','');
-- INSERT INTO `messages_users` (`message_id`,`user_id`) VALUES
-- ('','');
-- INSERT INTO `messages_rooms` (`message_id`,`room_id`) VALUES
-- ('','');
-- INSERT INTO `messages` (`id`,`text`) VALUES
-- ('','');
