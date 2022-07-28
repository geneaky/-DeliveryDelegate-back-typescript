#
# TABLE STRUCTURE FOR: delegator
#

--CREATE TABLE `reciept` (`reciept_id` int NOT NULL AUTO_INCREMENT, `anything` int NOT NULL, PRIMARY KEY (`reciept_id`)) ENGINE=InnoDB
--CREATE TABLE `store` (`store_id` int NOT NULL AUTO_INCREMENT, `store_name` varchar(255) NOT NULL, `store_posx` varchar(255) NOT NULL, `store_posy` varchar(255) NOT NULL, `store_address` varchar(255) NOT NULL, PRIMARY KEY (`store_id`)) ENGINE=InnoDB
--CREATE TABLE `review` (`review_id` int NOT NULL AUTO_INCREMENT, `content` varchar(255) NOT NULL, `storeStoreId` int NULL, `userUserId` int NULL, PRIMARY KEY (`review_id`)) ENGINE=InnoDB
--CREATE TABLE `thumb` (`thumb_id` int NOT NULL AUTO_INCREMENT, `thumb_up` tinyint NOT NULL, `thumb_down` tinyint NOT NULL, `userUserId` int NULL, `reviewReviewId` int NULL, PRIMARY KEY (`thumb_id`)) ENGINE=InnoDB
--NOT NULL, `exemption_count` int NOT NULL, PRIMARY KEY (`user_id`)) ENGINE=InnoDB
--CREATE TABLE `order` (`order_id` int NOT NULL AUTO_INCREMENT, `store_name` varchar(255) NOT NULL, `mapx` varchar(255) NOT NULL, `mapy` varchar(255) NOT NULL, `detail` varchar(255) NOT NULL, `delegatorDelegatorId` int NULL, PRIMARY KEY (`order_id`)) ENGINE=InnoDB
--CREATE TABLE `delegator` (`delegator_id` int NOT NULL AUTO_INCREMENT, `ranking` int NOT NULL, `userUserId` int NULL, `gameGameId` int NULL, PRIMARY KEY (`delegator_id`)) ENGINE=InnoDB
--CREATE TABLE `game` (`game_id` int NOT NULL AUTO_INCREMENT, `game_type` varchar(255) NOT NULL, `game_name` varchar(255) NOT NULL, `population` int NOT NULL, `landmark_posx` varchar(255) NOT NULL, `landmark_posy` varchar(255)
--NOT NULL, `socket_room_name` varchar(255) NOT NULL, PRIMARY KEY (`game_id`)) ENGINE=InnoDB

DROP TABLE IF EXISTS `delegator`;

CREATE TABLE `delegator` (
  `delegator_id` int(11) NOT NULL AUTO_INCREMENT,
  `ranking` int(11) NOT NULL,
  `userUserId` int(11) DEFAULT NULL,
  `gameGameId` int(11) DEFAULT NULL,
  PRIMARY KEY (`delegator_id`)
) ENGINE=InnoDB AUTO_INCREMENT=101 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

INSERT INTO `delegator` (`delegator_id`, `ranking`, `userUserId`, `gameGameId`) VALUES (1, 3, 24, 97);
INSERT INTO `delegator` (`delegator_id`, `ranking`, `userUserId`, `gameGameId`) VALUES (2, 3, 60, 41);
INSERT INTO `delegator` (`delegator_id`, `ranking`, `userUserId`, `gameGameId`) VALUES (3, 8, 85, 7);
INSERT INTO `delegator` (`delegator_id`, `ranking`, `userUserId`, `gameGameId`) VALUES (4, 6, 90, 11);
INSERT INTO `delegator` (`delegator_id`, `ranking`, `userUserId`, `gameGameId`) VALUES (5, 7, 87, 81);
INSERT INTO `delegator` (`delegator_id`, `ranking`, `userUserId`, `gameGameId`) VALUES (6, 4, 50, 72);
INSERT INTO `delegator` (`delegator_id`, `ranking`, `userUserId`, `gameGameId`) VALUES (7, 6, 17, 18);
INSERT INTO `delegator` (`delegator_id`, `ranking`, `userUserId`, `gameGameId`) VALUES (8, 7, 31, 89);
INSERT INTO `delegator` (`delegator_id`, `ranking`, `userUserId`, `gameGameId`) VALUES (9, 4, 100, 75);
INSERT INTO `delegator` (`delegator_id`, `ranking`, `userUserId`, `gameGameId`) VALUES (10, 3, 20, 6);
INSERT INTO `delegator` (`delegator_id`, `ranking`, `userUserId`, `gameGameId`) VALUES (11, 6, 68, 78);
INSERT INTO `delegator` (`delegator_id`, `ranking`, `userUserId`, `gameGameId`) VALUES (12, 9, 98, 98);
INSERT INTO `delegator` (`delegator_id`, `ranking`, `userUserId`, `gameGameId`) VALUES (13, 8, 43, 65);
INSERT INTO `delegator` (`delegator_id`, `ranking`, `userUserId`, `gameGameId`) VALUES (14, 3, 25, 15);
INSERT INTO `delegator` (`delegator_id`, `ranking`, `userUserId`, `gameGameId`) VALUES (15, 2, 100, 82);
INSERT INTO `delegator` (`delegator_id`, `ranking`, `userUserId`, `gameGameId`) VALUES (16, 5, 66, 23);
INSERT INTO `delegator` (`delegator_id`, `ranking`, `userUserId`, `gameGameId`) VALUES (17, 4, 79, 25);
INSERT INTO `delegator` (`delegator_id`, `ranking`, `userUserId`, `gameGameId`) VALUES (18, 7, 64, 63);
INSERT INTO `delegator` (`delegator_id`, `ranking`, `userUserId`, `gameGameId`) VALUES (19, 8, 32, 53);
INSERT INTO `delegator` (`delegator_id`, `ranking`, `userUserId`, `gameGameId`) VALUES (20, 8, 73, 18);
INSERT INTO `delegator` (`delegator_id`, `ranking`, `userUserId`, `gameGameId`) VALUES (21, 0, 33, 22);
INSERT INTO `delegator` (`delegator_id`, `ranking`, `userUserId`, `gameGameId`) VALUES (22, 4, 90, 50);
INSERT INTO `delegator` (`delegator_id`, `ranking`, `userUserId`, `gameGameId`) VALUES (23, 2, 40, 20);
INSERT INTO `delegator` (`delegator_id`, `ranking`, `userUserId`, `gameGameId`) VALUES (24, 8, 39, 39);
INSERT INTO `delegator` (`delegator_id`, `ranking`, `userUserId`, `gameGameId`) VALUES (25, 7, 95, 58);
INSERT INTO `delegator` (`delegator_id`, `ranking`, `userUserId`, `gameGameId`) VALUES (26, 6, 45, 62);
INSERT INTO `delegator` (`delegator_id`, `ranking`, `userUserId`, `gameGameId`) VALUES (27, 5, 35, 42);
INSERT INTO `delegator` (`delegator_id`, `ranking`, `userUserId`, `gameGameId`) VALUES (28, 8, 59, 78);
INSERT INTO `delegator` (`delegator_id`, `ranking`, `userUserId`, `gameGameId`) VALUES (29, 0, 6, 84);
INSERT INTO `delegator` (`delegator_id`, `ranking`, `userUserId`, `gameGameId`) VALUES (30, 4, 93, 6);
INSERT INTO `delegator` (`delegator_id`, `ranking`, `userUserId`, `gameGameId`) VALUES (31, 2, 65, 58);
INSERT INTO `delegator` (`delegator_id`, `ranking`, `userUserId`, `gameGameId`) VALUES (32, 5, 29, 43);
INSERT INTO `delegator` (`delegator_id`, `ranking`, `userUserId`, `gameGameId`) VALUES (33, 1, 83, 92);
INSERT INTO `delegator` (`delegator_id`, `ranking`, `userUserId`, `gameGameId`) VALUES (34, 8, 5, 14);
INSERT INTO `delegator` (`delegator_id`, `ranking`, `userUserId`, `gameGameId`) VALUES (35, 0, 44, 78);
INSERT INTO `delegator` (`delegator_id`, `ranking`, `userUserId`, `gameGameId`) VALUES (36, 6, 32, 77);
INSERT INTO `delegator` (`delegator_id`, `ranking`, `userUserId`, `gameGameId`) VALUES (37, 9, 99, 21);
INSERT INTO `delegator` (`delegator_id`, `ranking`, `userUserId`, `gameGameId`) VALUES (38, 0, 27, 39);
INSERT INTO `delegator` (`delegator_id`, `ranking`, `userUserId`, `gameGameId`) VALUES (39, 6, 40, 65);
INSERT INTO `delegator` (`delegator_id`, `ranking`, `userUserId`, `gameGameId`) VALUES (40, 6, 77, 34);
INSERT INTO `delegator` (`delegator_id`, `ranking`, `userUserId`, `gameGameId`) VALUES (41, 0, 23, 21);
INSERT INTO `delegator` (`delegator_id`, `ranking`, `userUserId`, `gameGameId`) VALUES (42, 0, 95, 58);
INSERT INTO `delegator` (`delegator_id`, `ranking`, `userUserId`, `gameGameId`) VALUES (43, 9, 63, 54);
INSERT INTO `delegator` (`delegator_id`, `ranking`, `userUserId`, `gameGameId`) VALUES (44, 9, 35, 69);
INSERT INTO `delegator` (`delegator_id`, `ranking`, `userUserId`, `gameGameId`) VALUES (45, 7, 37, 28);
INSERT INTO `delegator` (`delegator_id`, `ranking`, `userUserId`, `gameGameId`) VALUES (46, 3, 74, 2);
INSERT INTO `delegator` (`delegator_id`, `ranking`, `userUserId`, `gameGameId`) VALUES (47, 6, 85, 3);
INSERT INTO `delegator` (`delegator_id`, `ranking`, `userUserId`, `gameGameId`) VALUES (48, 3, 44, 67);
INSERT INTO `delegator` (`delegator_id`, `ranking`, `userUserId`, `gameGameId`) VALUES (49, 5, 95, 49);
INSERT INTO `delegator` (`delegator_id`, `ranking`, `userUserId`, `gameGameId`) VALUES (50, 2, 81, 38);
INSERT INTO `delegator` (`delegator_id`, `ranking`, `userUserId`, `gameGameId`) VALUES (51, 4, 26, 12);
INSERT INTO `delegator` (`delegator_id`, `ranking`, `userUserId`, `gameGameId`) VALUES (52, 9, 15, 25);
INSERT INTO `delegator` (`delegator_id`, `ranking`, `userUserId`, `gameGameId`) VALUES (53, 3, 32, 41);
INSERT INTO `delegator` (`delegator_id`, `ranking`, `userUserId`, `gameGameId`) VALUES (54, 0, 63, 72);
INSERT INTO `delegator` (`delegator_id`, `ranking`, `userUserId`, `gameGameId`) VALUES (55, 3, 6, 40);
INSERT INTO `delegator` (`delegator_id`, `ranking`, `userUserId`, `gameGameId`) VALUES (56, 4, 5, 29);
INSERT INTO `delegator` (`delegator_id`, `ranking`, `userUserId`, `gameGameId`) VALUES (57, 5, 61, 100);
INSERT INTO `delegator` (`delegator_id`, `ranking`, `userUserId`, `gameGameId`) VALUES (58, 6, 86, 23);
INSERT INTO `delegator` (`delegator_id`, `ranking`, `userUserId`, `gameGameId`) VALUES (59, 3, 54, 21);
INSERT INTO `delegator` (`delegator_id`, `ranking`, `userUserId`, `gameGameId`) VALUES (60, 5, 92, 91);
INSERT INTO `delegator` (`delegator_id`, `ranking`, `userUserId`, `gameGameId`) VALUES (61, 5, 48, 66);
INSERT INTO `delegator` (`delegator_id`, `ranking`, `userUserId`, `gameGameId`) VALUES (62, 1, 92, 32);
INSERT INTO `delegator` (`delegator_id`, `ranking`, `userUserId`, `gameGameId`) VALUES (63, 6, 68, 36);
INSERT INTO `delegator` (`delegator_id`, `ranking`, `userUserId`, `gameGameId`) VALUES (64, 6, 99, 62);
INSERT INTO `delegator` (`delegator_id`, `ranking`, `userUserId`, `gameGameId`) VALUES (65, 2, 84, 80);
INSERT INTO `delegator` (`delegator_id`, `ranking`, `userUserId`, `gameGameId`) VALUES (66, 1, 100, 10);
INSERT INTO `delegator` (`delegator_id`, `ranking`, `userUserId`, `gameGameId`) VALUES (67, 1, 91, 15);
INSERT INTO `delegator` (`delegator_id`, `ranking`, `userUserId`, `gameGameId`) VALUES (68, 2, 35, 23);
INSERT INTO `delegator` (`delegator_id`, `ranking`, `userUserId`, `gameGameId`) VALUES (69, 4, 56, 98);
INSERT INTO `delegator` (`delegator_id`, `ranking`, `userUserId`, `gameGameId`) VALUES (70, 5, 94, 61);
INSERT INTO `delegator` (`delegator_id`, `ranking`, `userUserId`, `gameGameId`) VALUES (71, 0, 37, 99);
INSERT INTO `delegator` (`delegator_id`, `ranking`, `userUserId`, `gameGameId`) VALUES (72, 8, 90, 98);
INSERT INTO `delegator` (`delegator_id`, `ranking`, `userUserId`, `gameGameId`) VALUES (73, 9, 99, 75);
INSERT INTO `delegator` (`delegator_id`, `ranking`, `userUserId`, `gameGameId`) VALUES (74, 8, 21, 52);
INSERT INTO `delegator` (`delegator_id`, `ranking`, `userUserId`, `gameGameId`) VALUES (75, 2, 95, 12);
INSERT INTO `delegator` (`delegator_id`, `ranking`, `userUserId`, `gameGameId`) VALUES (76, 9, 42, 42);
INSERT INTO `delegator` (`delegator_id`, `ranking`, `userUserId`, `gameGameId`) VALUES (77, 0, 77, 33);
INSERT INTO `delegator` (`delegator_id`, `ranking`, `userUserId`, `gameGameId`) VALUES (78, 3, 74, 45);
INSERT INTO `delegator` (`delegator_id`, `ranking`, `userUserId`, `gameGameId`) VALUES (79, 9, 68, 72);
INSERT INTO `delegator` (`delegator_id`, `ranking`, `userUserId`, `gameGameId`) VALUES (80, 9, 7, 52);
INSERT INTO `delegator` (`delegator_id`, `ranking`, `userUserId`, `gameGameId`) VALUES (81, 9, 51, 6);
INSERT INTO `delegator` (`delegator_id`, `ranking`, `userUserId`, `gameGameId`) VALUES (82, 3, 62, 42);
INSERT INTO `delegator` (`delegator_id`, `ranking`, `userUserId`, `gameGameId`) VALUES (83, 1, 21, 96);
INSERT INTO `delegator` (`delegator_id`, `ranking`, `userUserId`, `gameGameId`) VALUES (84, 2, 64, 76);
INSERT INTO `delegator` (`delegator_id`, `ranking`, `userUserId`, `gameGameId`) VALUES (85, 4, 93, 58);
INSERT INTO `delegator` (`delegator_id`, `ranking`, `userUserId`, `gameGameId`) VALUES (86, 5, 37, 30);
INSERT INTO `delegator` (`delegator_id`, `ranking`, `userUserId`, `gameGameId`) VALUES (87, 4, 56, 26);
INSERT INTO `delegator` (`delegator_id`, `ranking`, `userUserId`, `gameGameId`) VALUES (88, 2, 27, 54);
INSERT INTO `delegator` (`delegator_id`, `ranking`, `userUserId`, `gameGameId`) VALUES (89, 6, 100, 47);
INSERT INTO `delegator` (`delegator_id`, `ranking`, `userUserId`, `gameGameId`) VALUES (90, 2, 5, 94);
INSERT INTO `delegator` (`delegator_id`, `ranking`, `userUserId`, `gameGameId`) VALUES (91, 0, 59, 47);
INSERT INTO `delegator` (`delegator_id`, `ranking`, `userUserId`, `gameGameId`) VALUES (92, 2, 36, 35);
INSERT INTO `delegator` (`delegator_id`, `ranking`, `userUserId`, `gameGameId`) VALUES (93, 7, 80, 9);
INSERT INTO `delegator` (`delegator_id`, `ranking`, `userUserId`, `gameGameId`) VALUES (94, 5, 80, 48);
INSERT INTO `delegator` (`delegator_id`, `ranking`, `userUserId`, `gameGameId`) VALUES (95, 2, 81, 86);
INSERT INTO `delegator` (`delegator_id`, `ranking`, `userUserId`, `gameGameId`) VALUES (96, 6, 99, 32);
INSERT INTO `delegator` (`delegator_id`, `ranking`, `userUserId`, `gameGameId`) VALUES (97, 4, 92, 60);
INSERT INTO `delegator` (`delegator_id`, `ranking`, `userUserId`, `gameGameId`) VALUES (98, 9, 73, 12);
INSERT INTO `delegator` (`delegator_id`, `ranking`, `userUserId`, `gameGameId`) VALUES (99, 1, 56, 37);
INSERT INTO `delegator` (`delegator_id`, `ranking`, `userUserId`, `gameGameId`) VALUES (100, 5, 87, 48);


#
# TABLE STRUCTURE FOR: game
#

DROP TABLE IF EXISTS `game`;

CREATE TABLE `game` (
  `game_id` int(11) NOT NULL AUTO_INCREMENT,
  `game_type` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `game_name` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `population` int(11) NOT NULL,
  `landmark_posx` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `landmark_posy` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `socket_room_name` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  PRIMARY KEY (`game_id`)
) ENGINE=InnoDB AUTO_INCREMENT=101 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

INSERT INTO `game` (`game_id`, `game_type`, `game_name`, `population`, `landmark_posx`, `landmark_posy`, `socket_room_name`) VALUES (1, 'dolor', 'amet', 3, '9', '8', 'et');
INSERT INTO `game` (`game_id`, `game_type`, `game_name`, `population`, `landmark_posx`, `landmark_posy`, `socket_room_name`) VALUES (2, 'ipsam', 'reiciendis', 2, '', '6', 'itaque');
INSERT INTO `game` (`game_id`, `game_type`, `game_name`, `population`, `landmark_posx`, `landmark_posy`, `socket_room_name`) VALUES (3, 'nisi', 'id', 0, '', '5', 'dignissimos');
INSERT INTO `game` (`game_id`, `game_type`, `game_name`, `population`, `landmark_posx`, `landmark_posy`, `socket_room_name`) VALUES (4, 'neque', 'eius', 3, '5', '9', 'veniam');
INSERT INTO `game` (`game_id`, `game_type`, `game_name`, `population`, `landmark_posx`, `landmark_posy`, `socket_room_name`) VALUES (5, 'rem', 'qui', 6, '', '3', 'omnis');
INSERT INTO `game` (`game_id`, `game_type`, `game_name`, `population`, `landmark_posx`, `landmark_posy`, `socket_room_name`) VALUES (6, 'et', 'sit', 7, '5', '', 'harum');
INSERT INTO `game` (`game_id`, `game_type`, `game_name`, `population`, `landmark_posx`, `landmark_posy`, `socket_room_name`) VALUES (7, 'nihil', 'est', 8, '9', '2', 'consequatur');
INSERT INTO `game` (`game_id`, `game_type`, `game_name`, `population`, `landmark_posx`, `landmark_posy`, `socket_room_name`) VALUES (8, 'veritatis', 'sint', 4, '4', '6', 'dolorem');
INSERT INTO `game` (`game_id`, `game_type`, `game_name`, `population`, `landmark_posx`, `landmark_posy`, `socket_room_name`) VALUES (9, 'minima', 'necessitatibus', 2, '3', '8', 'quia');
INSERT INTO `game` (`game_id`, `game_type`, `game_name`, `population`, `landmark_posx`, `landmark_posy`, `socket_room_name`) VALUES (10, 'quia', 'deserunt', 8, '', '7', 'aliquam');
INSERT INTO `game` (`game_id`, `game_type`, `game_name`, `population`, `landmark_posx`, `landmark_posy`, `socket_room_name`) VALUES (11, 'alias', 'quia', 3, '6', '2', 'non');
INSERT INTO `game` (`game_id`, `game_type`, `game_name`, `population`, `landmark_posx`, `landmark_posy`, `socket_room_name`) VALUES (12, 'ea', 'maiores', 2, '1', '8', 'culpa');
INSERT INTO `game` (`game_id`, `game_type`, `game_name`, `population`, `landmark_posx`, `landmark_posy`, `socket_room_name`) VALUES (13, 'explicabo', 'ea', 8, '1', '7', 'et');
INSERT INTO `game` (`game_id`, `game_type`, `game_name`, `population`, `landmark_posx`, `landmark_posy`, `socket_room_name`) VALUES (14, 'omnis', 'eos', 9, '2', '8', 'architecto');
INSERT INTO `game` (`game_id`, `game_type`, `game_name`, `population`, `landmark_posx`, `landmark_posy`, `socket_room_name`) VALUES (15, 'distinctio', 'esse', 5, '2', '', 'voluptatem');
INSERT INTO `game` (`game_id`, `game_type`, `game_name`, `population`, `landmark_posx`, `landmark_posy`, `socket_room_name`) VALUES (16, 'iusto', 'incidunt', 9, '3', '1', 'libero');
INSERT INTO `game` (`game_id`, `game_type`, `game_name`, `population`, `landmark_posx`, `landmark_posy`, `socket_room_name`) VALUES (17, 'inventore', 'fugit', 7, '9', '3', 'adipisci');
INSERT INTO `game` (`game_id`, `game_type`, `game_name`, `population`, `landmark_posx`, `landmark_posy`, `socket_room_name`) VALUES (18, 'molestiae', 'saepe', 6, '3', '2', 'sit');
INSERT INTO `game` (`game_id`, `game_type`, `game_name`, `population`, `landmark_posx`, `landmark_posy`, `socket_room_name`) VALUES (19, 'dolorum', 'sit', 3, '8', '9', 'quis');
INSERT INTO `game` (`game_id`, `game_type`, `game_name`, `population`, `landmark_posx`, `landmark_posy`, `socket_room_name`) VALUES (20, 'rerum', 'id', 8, '8', '8', 'nihil');
INSERT INTO `game` (`game_id`, `game_type`, `game_name`, `population`, `landmark_posx`, `landmark_posy`, `socket_room_name`) VALUES (21, 'sit', 'et', 8, '4', '5', 'velit');
INSERT INTO `game` (`game_id`, `game_type`, `game_name`, `population`, `landmark_posx`, `landmark_posy`, `socket_room_name`) VALUES (22, 'qui', 'tempore', 3, '2', '9', 'quo');
INSERT INTO `game` (`game_id`, `game_type`, `game_name`, `population`, `landmark_posx`, `landmark_posy`, `socket_room_name`) VALUES (23, 'ut', 'porro', 3, '1', '9', 'maxime');
INSERT INTO `game` (`game_id`, `game_type`, `game_name`, `population`, `landmark_posx`, `landmark_posy`, `socket_room_name`) VALUES (24, 'non', 'suscipit', 1, '9', '8', 'reiciendis');
INSERT INTO `game` (`game_id`, `game_type`, `game_name`, `population`, `landmark_posx`, `landmark_posy`, `socket_room_name`) VALUES (25, 'aspernatur', 'reprehenderit', 4, '2', '4', 'similique');
INSERT INTO `game` (`game_id`, `game_type`, `game_name`, `population`, `landmark_posx`, `landmark_posy`, `socket_room_name`) VALUES (26, 'officia', 'rerum', 9, '7', '8', 'non');
INSERT INTO `game` (`game_id`, `game_type`, `game_name`, `population`, `landmark_posx`, `landmark_posy`, `socket_room_name`) VALUES (27, 'molestiae', 'sed', 8, '8', '4', 'itaque');
INSERT INTO `game` (`game_id`, `game_type`, `game_name`, `population`, `landmark_posx`, `landmark_posy`, `socket_room_name`) VALUES (28, 'dolores', 'id', 2, '8', '3', 'assumenda');
INSERT INTO `game` (`game_id`, `game_type`, `game_name`, `population`, `landmark_posx`, `landmark_posy`, `socket_room_name`) VALUES (29, 'a', 'doloremque', 3, '3', '8', 'tempora');
INSERT INTO `game` (`game_id`, `game_type`, `game_name`, `population`, `landmark_posx`, `landmark_posy`, `socket_room_name`) VALUES (30, 'vero', 'impedit', 6, '8', '1', 'consequatur');
INSERT INTO `game` (`game_id`, `game_type`, `game_name`, `population`, `landmark_posx`, `landmark_posy`, `socket_room_name`) VALUES (31, 'aperiam', 'optio', 8, '9', '8', 'totam');
INSERT INTO `game` (`game_id`, `game_type`, `game_name`, `population`, `landmark_posx`, `landmark_posy`, `socket_room_name`) VALUES (32, 'alias', 'provident', 2, '4', '8', 'laborum');
INSERT INTO `game` (`game_id`, `game_type`, `game_name`, `population`, `landmark_posx`, `landmark_posy`, `socket_room_name`) VALUES (33, 'ducimus', 'labore', 4, '', '5', 'et');
INSERT INTO `game` (`game_id`, `game_type`, `game_name`, `population`, `landmark_posx`, `landmark_posy`, `socket_room_name`) VALUES (34, 'ea', 'voluptatum', 1, '1', '', 'velit');
INSERT INTO `game` (`game_id`, `game_type`, `game_name`, `population`, `landmark_posx`, `landmark_posy`, `socket_room_name`) VALUES (35, 'aut', 'iure', 5, '5', '8', 'ut');
INSERT INTO `game` (`game_id`, `game_type`, `game_name`, `population`, `landmark_posx`, `landmark_posy`, `socket_room_name`) VALUES (36, 'consequuntur', 'iure', 3, '8', '6', 'quia');
INSERT INTO `game` (`game_id`, `game_type`, `game_name`, `population`, `landmark_posx`, `landmark_posy`, `socket_room_name`) VALUES (37, 'dolorum', 'quibusdam', 3, '9', '3', 'rerum');
INSERT INTO `game` (`game_id`, `game_type`, `game_name`, `population`, `landmark_posx`, `landmark_posy`, `socket_room_name`) VALUES (38, 'nobis', 'possimus', 5, '2', '5', 'atque');
INSERT INTO `game` (`game_id`, `game_type`, `game_name`, `population`, `landmark_posx`, `landmark_posy`, `socket_room_name`) VALUES (39, 'voluptas', 'distinctio', 1, '1', '2', 'odit');
INSERT INTO `game` (`game_id`, `game_type`, `game_name`, `population`, `landmark_posx`, `landmark_posy`, `socket_room_name`) VALUES (40, 'sed', 'voluptates', 7, '5', '6', 'rerum');
INSERT INTO `game` (`game_id`, `game_type`, `game_name`, `population`, `landmark_posx`, `landmark_posy`, `socket_room_name`) VALUES (41, 'quia', 'at', 8, '9', '1', 'ducimus');
INSERT INTO `game` (`game_id`, `game_type`, `game_name`, `population`, `landmark_posx`, `landmark_posy`, `socket_room_name`) VALUES (42, 'corporis', 'et', 3, '2', '8', 'reiciendis');
INSERT INTO `game` (`game_id`, `game_type`, `game_name`, `population`, `landmark_posx`, `landmark_posy`, `socket_room_name`) VALUES (43, 'asperiores', 'repellat', 9, '2', '1', 'voluptates');
INSERT INTO `game` (`game_id`, `game_type`, `game_name`, `population`, `landmark_posx`, `landmark_posy`, `socket_room_name`) VALUES (44, 'occaecati', 'velit', 5, '4', '3', 'ut');
INSERT INTO `game` (`game_id`, `game_type`, `game_name`, `population`, `landmark_posx`, `landmark_posy`, `socket_room_name`) VALUES (45, 'et', 'vero', 2, '5', '1', 'est');
INSERT INTO `game` (`game_id`, `game_type`, `game_name`, `population`, `landmark_posx`, `landmark_posy`, `socket_room_name`) VALUES (46, 'non', 'quia', 9, '5', '5', 'cum');
INSERT INTO `game` (`game_id`, `game_type`, `game_name`, `population`, `landmark_posx`, `landmark_posy`, `socket_room_name`) VALUES (47, 'iste', 'veniam', 6, '', '3', 'non');
INSERT INTO `game` (`game_id`, `game_type`, `game_name`, `population`, `landmark_posx`, `landmark_posy`, `socket_room_name`) VALUES (48, 'reprehenderit', 'aliquid', 4, '6', '3', 'repellat');
INSERT INTO `game` (`game_id`, `game_type`, `game_name`, `population`, `landmark_posx`, `landmark_posy`, `socket_room_name`) VALUES (49, 'nesciunt', 'quis', 9, '6', '', 'voluptatem');
INSERT INTO `game` (`game_id`, `game_type`, `game_name`, `population`, `landmark_posx`, `landmark_posy`, `socket_room_name`) VALUES (50, 'excepturi', 'et', 8, '9', '8', 'libero');
INSERT INTO `game` (`game_id`, `game_type`, `game_name`, `population`, `landmark_posx`, `landmark_posy`, `socket_room_name`) VALUES (51, 'voluptatem', 'mollitia', 9, '2', '4', 'consectetur');
INSERT INTO `game` (`game_id`, `game_type`, `game_name`, `population`, `landmark_posx`, `landmark_posy`, `socket_room_name`) VALUES (52, 'non', 'rerum', 0, '1', '1', 'consequatur');
INSERT INTO `game` (`game_id`, `game_type`, `game_name`, `population`, `landmark_posx`, `landmark_posy`, `socket_room_name`) VALUES (53, 'aliquam', 'excepturi', 8, '3', '8', 'qui');
INSERT INTO `game` (`game_id`, `game_type`, `game_name`, `population`, `landmark_posx`, `landmark_posy`, `socket_room_name`) VALUES (54, 'aperiam', 'natus', 7, '8', '8', 'quia');
INSERT INTO `game` (`game_id`, `game_type`, `game_name`, `population`, `landmark_posx`, `landmark_posy`, `socket_room_name`) VALUES (55, 'aut', 'pariatur', 4, '4', '', 'aliquid');
INSERT INTO `game` (`game_id`, `game_type`, `game_name`, `population`, `landmark_posx`, `landmark_posy`, `socket_room_name`) VALUES (56, 'rerum', 'laudantium', 9, '6', '7', 'nemo');
INSERT INTO `game` (`game_id`, `game_type`, `game_name`, `population`, `landmark_posx`, `landmark_posy`, `socket_room_name`) VALUES (57, 'et', 'ut', 0, '7', '8', 'consectetur');
INSERT INTO `game` (`game_id`, `game_type`, `game_name`, `population`, `landmark_posx`, `landmark_posy`, `socket_room_name`) VALUES (58, 'sit', 'possimus', 4, '3', '7', 'placeat');
INSERT INTO `game` (`game_id`, `game_type`, `game_name`, `population`, `landmark_posx`, `landmark_posy`, `socket_room_name`) VALUES (59, 'iste', 'animi', 7, '3', '3', 'eligendi');
INSERT INTO `game` (`game_id`, `game_type`, `game_name`, `population`, `landmark_posx`, `landmark_posy`, `socket_room_name`) VALUES (60, 'minus', 'et', 5, '', '9', 'sed');
INSERT INTO `game` (`game_id`, `game_type`, `game_name`, `population`, `landmark_posx`, `landmark_posy`, `socket_room_name`) VALUES (61, 'distinctio', 'tenetur', 2, '', '8', 'debitis');
INSERT INTO `game` (`game_id`, `game_type`, `game_name`, `population`, `landmark_posx`, `landmark_posy`, `socket_room_name`) VALUES (62, 'autem', 'omnis', 1, '7', '9', 'aut');
INSERT INTO `game` (`game_id`, `game_type`, `game_name`, `population`, `landmark_posx`, `landmark_posy`, `socket_room_name`) VALUES (63, 'id', 'dolorum', 5, '8', '', 'ipsam');
INSERT INTO `game` (`game_id`, `game_type`, `game_name`, `population`, `landmark_posx`, `landmark_posy`, `socket_room_name`) VALUES (64, 'non', 'deserunt', 3, '6', '7', 'veniam');
INSERT INTO `game` (`game_id`, `game_type`, `game_name`, `population`, `landmark_posx`, `landmark_posy`, `socket_room_name`) VALUES (65, 'aspernatur', 'enim', 5, '7', '3', 'ratione');
INSERT INTO `game` (`game_id`, `game_type`, `game_name`, `population`, `landmark_posx`, `landmark_posy`, `socket_room_name`) VALUES (66, 'et', 'alias', 1, '', '6', 'saepe');
INSERT INTO `game` (`game_id`, `game_type`, `game_name`, `population`, `landmark_posx`, `landmark_posy`, `socket_room_name`) VALUES (67, 'iste', 'sit', 9, '5', '4', 'qui');
INSERT INTO `game` (`game_id`, `game_type`, `game_name`, `population`, `landmark_posx`, `landmark_posy`, `socket_room_name`) VALUES (68, 'ut', 'ipsum', 3, '8', '3', 'quasi');
INSERT INTO `game` (`game_id`, `game_type`, `game_name`, `population`, `landmark_posx`, `landmark_posy`, `socket_room_name`) VALUES (69, 'nostrum', 'accusantium', 9, '6', '6', 'et');
INSERT INTO `game` (`game_id`, `game_type`, `game_name`, `population`, `landmark_posx`, `landmark_posy`, `socket_room_name`) VALUES (70, 'quia', 'consequatur', 5, '9', '4', 'deserunt');
INSERT INTO `game` (`game_id`, `game_type`, `game_name`, `population`, `landmark_posx`, `landmark_posy`, `socket_room_name`) VALUES (71, 'eius', 'laboriosam', 3, '6', '1', 'eaque');
INSERT INTO `game` (`game_id`, `game_type`, `game_name`, `population`, `landmark_posx`, `landmark_posy`, `socket_room_name`) VALUES (72, 'odio', 'sed', 2, '5', '1', 'velit');
INSERT INTO `game` (`game_id`, `game_type`, `game_name`, `population`, `landmark_posx`, `landmark_posy`, `socket_room_name`) VALUES (73, 'voluptas', 'recusandae', 0, '9', '', 'voluptas');
INSERT INTO `game` (`game_id`, `game_type`, `game_name`, `population`, `landmark_posx`, `landmark_posy`, `socket_room_name`) VALUES (74, 'consequatur', 'vel', 9, '3', '', 'non');
INSERT INTO `game` (`game_id`, `game_type`, `game_name`, `population`, `landmark_posx`, `landmark_posy`, `socket_room_name`) VALUES (75, 'placeat', 'illum', 0, '6', '6', 'velit');
INSERT INTO `game` (`game_id`, `game_type`, `game_name`, `population`, `landmark_posx`, `landmark_posy`, `socket_room_name`) VALUES (76, 'cupiditate', 'fuga', 8, '4', '9', 'doloribus');
INSERT INTO `game` (`game_id`, `game_type`, `game_name`, `population`, `landmark_posx`, `landmark_posy`, `socket_room_name`) VALUES (77, 'eum', 'sed', 9, '2', '8', 'autem');
INSERT INTO `game` (`game_id`, `game_type`, `game_name`, `population`, `landmark_posx`, `landmark_posy`, `socket_room_name`) VALUES (78, 'ea', 'molestias', 2, '4', '1', 'eum');
INSERT INTO `game` (`game_id`, `game_type`, `game_name`, `population`, `landmark_posx`, `landmark_posy`, `socket_room_name`) VALUES (79, 'debitis', 'vitae', 7, '', '3', 'illum');
INSERT INTO `game` (`game_id`, `game_type`, `game_name`, `population`, `landmark_posx`, `landmark_posy`, `socket_room_name`) VALUES (80, 'amet', 'accusamus', 8, '8', '7', 'nisi');
INSERT INTO `game` (`game_id`, `game_type`, `game_name`, `population`, `landmark_posx`, `landmark_posy`, `socket_room_name`) VALUES (81, 'qui', 'laboriosam', 8, '2', '', 'ipsam');
INSERT INTO `game` (`game_id`, `game_type`, `game_name`, `population`, `landmark_posx`, `landmark_posy`, `socket_room_name`) VALUES (82, 'distinctio', 'et', 0, '8', '9', 'qui');
INSERT INTO `game` (`game_id`, `game_type`, `game_name`, `population`, `landmark_posx`, `landmark_posy`, `socket_room_name`) VALUES (83, 'omnis', 'dolor', 6, '9', '8', 'animi');
INSERT INTO `game` (`game_id`, `game_type`, `game_name`, `population`, `landmark_posx`, `landmark_posy`, `socket_room_name`) VALUES (84, 'non', 'similique', 6, '6', '7', 'doloremque');
INSERT INTO `game` (`game_id`, `game_type`, `game_name`, `population`, `landmark_posx`, `landmark_posy`, `socket_room_name`) VALUES (85, 'quaerat', 'consequuntur', 5, '6', '7', 'ad');
INSERT INTO `game` (`game_id`, `game_type`, `game_name`, `population`, `landmark_posx`, `landmark_posy`, `socket_room_name`) VALUES (86, 'consequuntur', 'consequatur', 6, '3', '', 'natus');
INSERT INTO `game` (`game_id`, `game_type`, `game_name`, `population`, `landmark_posx`, `landmark_posy`, `socket_room_name`) VALUES (87, 'et', 'doloremque', 9, '', '6', 'eligendi');
INSERT INTO `game` (`game_id`, `game_type`, `game_name`, `population`, `landmark_posx`, `landmark_posy`, `socket_room_name`) VALUES (88, 'pariatur', 'fugiat', 3, '6', '6', 'inventore');
INSERT INTO `game` (`game_id`, `game_type`, `game_name`, `population`, `landmark_posx`, `landmark_posy`, `socket_room_name`) VALUES (89, 'in', 'sit', 4, '2', '4', 'vero');
INSERT INTO `game` (`game_id`, `game_type`, `game_name`, `population`, `landmark_posx`, `landmark_posy`, `socket_room_name`) VALUES (90, 'nisi', 'quo', 9, '1', '4', 'laboriosam');
INSERT INTO `game` (`game_id`, `game_type`, `game_name`, `population`, `landmark_posx`, `landmark_posy`, `socket_room_name`) VALUES (91, 'quia', 'eveniet', 3, '1', '8', 'saepe');
INSERT INTO `game` (`game_id`, `game_type`, `game_name`, `population`, `landmark_posx`, `landmark_posy`, `socket_room_name`) VALUES (92, 'qui', 'omnis', 6, '9', '4', 'quam');
INSERT INTO `game` (`game_id`, `game_type`, `game_name`, `population`, `landmark_posx`, `landmark_posy`, `socket_room_name`) VALUES (93, 'eos', 'iste', 2, '7', '8', 'et');
INSERT INTO `game` (`game_id`, `game_type`, `game_name`, `population`, `landmark_posx`, `landmark_posy`, `socket_room_name`) VALUES (94, 'omnis', 'eaque', 5, '9', '4', 'quisquam');
INSERT INTO `game` (`game_id`, `game_type`, `game_name`, `population`, `landmark_posx`, `landmark_posy`, `socket_room_name`) VALUES (95, 'dolorem', 'hic', 6, '7', '5', 'quas');
INSERT INTO `game` (`game_id`, `game_type`, `game_name`, `population`, `landmark_posx`, `landmark_posy`, `socket_room_name`) VALUES (96, 'ut', 'ullam', 3, '5', '3', 'voluptatibus');
INSERT INTO `game` (`game_id`, `game_type`, `game_name`, `population`, `landmark_posx`, `landmark_posy`, `socket_room_name`) VALUES (97, 'accusamus', 'autem', 3, '7', '5', 'aut');
INSERT INTO `game` (`game_id`, `game_type`, `game_name`, `population`, `landmark_posx`, `landmark_posy`, `socket_room_name`) VALUES (98, 'provident', 'facere', 7, '8', '3', 'cumque');
INSERT INTO `game` (`game_id`, `game_type`, `game_name`, `population`, `landmark_posx`, `landmark_posy`, `socket_room_name`) VALUES (99, 'repellendus', 'eius', 1, '1', '1', 'animi');
INSERT INTO `game` (`game_id`, `game_type`, `game_name`, `population`, `landmark_posx`, `landmark_posy`, `socket_room_name`) VALUES (100, 'ipsum', 'facilis', 0, '', '9', 'sapiente');


#
# TABLE STRUCTURE FOR: order
#

DROP TABLE IF EXISTS `order`;

CREATE TABLE `order` (
  `order_id` int(11) NOT NULL AUTO_INCREMENT,
  `store_name` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `mapx` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `mapy` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `detail` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `delegatorDelegatorId` int(11) DEFAULT NULL,
  PRIMARY KEY (`order_id`)
) ENGINE=InnoDB AUTO_INCREMENT=101 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

INSERT INTO `order` (`order_id`, `store_name`, `mapx`, `mapy`, `detail`, `delegatorDelegatorId`) VALUES (1, 'ut', '1', '4', 'qui', 70);
INSERT INTO `order` (`order_id`, `store_name`, `mapx`, `mapy`, `detail`, `delegatorDelegatorId`) VALUES (2, 'dolorem', '5', '9', 'eius', 29);
INSERT INTO `order` (`order_id`, `store_name`, `mapx`, `mapy`, `detail`, `delegatorDelegatorId`) VALUES (3, 'sequi', '8', '7', 'et', 67);
INSERT INTO `order` (`order_id`, `store_name`, `mapx`, `mapy`, `detail`, `delegatorDelegatorId`) VALUES (4, 'eius', '8', '4', 'ut', 18);
INSERT INTO `order` (`order_id`, `store_name`, `mapx`, `mapy`, `detail`, `delegatorDelegatorId`) VALUES (5, 'maxime', '7', '7', 'iure', 80);
INSERT INTO `order` (`order_id`, `store_name`, `mapx`, `mapy`, `detail`, `delegatorDelegatorId`) VALUES (6, 'voluptate', '4', '2', 'molestias', 32);
INSERT INTO `order` (`order_id`, `store_name`, `mapx`, `mapy`, `detail`, `delegatorDelegatorId`) VALUES (7, 'quaerat', '5', '', 'laudantium', 83);
INSERT INTO `order` (`order_id`, `store_name`, `mapx`, `mapy`, `detail`, `delegatorDelegatorId`) VALUES (8, 'voluptatem', '1', '9', 'in', 100);
INSERT INTO `order` (`order_id`, `store_name`, `mapx`, `mapy`, `detail`, `delegatorDelegatorId`) VALUES (9, 'veritatis', '3', '8', 'et', 76);
INSERT INTO `order` (`order_id`, `store_name`, `mapx`, `mapy`, `detail`, `delegatorDelegatorId`) VALUES (10, 'odio', '6', '7', 'est', 95);
INSERT INTO `order` (`order_id`, `store_name`, `mapx`, `mapy`, `detail`, `delegatorDelegatorId`) VALUES (11, 'aut', '4', '5', 'itaque', 32);
INSERT INTO `order` (`order_id`, `store_name`, `mapx`, `mapy`, `detail`, `delegatorDelegatorId`) VALUES (12, 'dolorem', '6', '3', 'quidem', 92);
INSERT INTO `order` (`order_id`, `store_name`, `mapx`, `mapy`, `detail`, `delegatorDelegatorId`) VALUES (13, 'voluptatibus', '5', '6', 'et', 24);
INSERT INTO `order` (`order_id`, `store_name`, `mapx`, `mapy`, `detail`, `delegatorDelegatorId`) VALUES (14, 'quo', '6', '4', 'eveniet', 32);
INSERT INTO `order` (`order_id`, `store_name`, `mapx`, `mapy`, `detail`, `delegatorDelegatorId`) VALUES (15, 'aut', '6', '8', 'ipsum', 70);
INSERT INTO `order` (`order_id`, `store_name`, `mapx`, `mapy`, `detail`, `delegatorDelegatorId`) VALUES (16, 'et', '6', '4', 'beatae', 4);
INSERT INTO `order` (`order_id`, `store_name`, `mapx`, `mapy`, `detail`, `delegatorDelegatorId`) VALUES (17, 'eius', '1', '5', 'et', 97);
INSERT INTO `order` (`order_id`, `store_name`, `mapx`, `mapy`, `detail`, `delegatorDelegatorId`) VALUES (18, 'sit', '4', '2', 'ut', 5);
INSERT INTO `order` (`order_id`, `store_name`, `mapx`, `mapy`, `detail`, `delegatorDelegatorId`) VALUES (19, 'adipisci', '6', '3', 'aut', 8);
INSERT INTO `order` (`order_id`, `store_name`, `mapx`, `mapy`, `detail`, `delegatorDelegatorId`) VALUES (20, 'consequatur', '8', '1', 'est', 11);
INSERT INTO `order` (`order_id`, `store_name`, `mapx`, `mapy`, `detail`, `delegatorDelegatorId`) VALUES (21, 'cupiditate', '4', '9', 'rerum', 81);
INSERT INTO `order` (`order_id`, `store_name`, `mapx`, `mapy`, `detail`, `delegatorDelegatorId`) VALUES (22, 'consequatur', '8', '9', 'qui', 56);
INSERT INTO `order` (`order_id`, `store_name`, `mapx`, `mapy`, `detail`, `delegatorDelegatorId`) VALUES (23, 'est', '', '', 'consequatur', 2);
INSERT INTO `order` (`order_id`, `store_name`, `mapx`, `mapy`, `detail`, `delegatorDelegatorId`) VALUES (24, 'provident', '5', '2', 'ab', 98);
INSERT INTO `order` (`order_id`, `store_name`, `mapx`, `mapy`, `detail`, `delegatorDelegatorId`) VALUES (25, 'animi', '8', '1', 'voluptas', 78);
INSERT INTO `order` (`order_id`, `store_name`, `mapx`, `mapy`, `detail`, `delegatorDelegatorId`) VALUES (26, 'eum', '8', '8', 'aut', 76);
INSERT INTO `order` (`order_id`, `store_name`, `mapx`, `mapy`, `detail`, `delegatorDelegatorId`) VALUES (27, 'tempora', '8', '7', 'temporibus', 24);
INSERT INTO `order` (`order_id`, `store_name`, `mapx`, `mapy`, `detail`, `delegatorDelegatorId`) VALUES (28, 'dolore', '9', '5', 'odit', 5);
INSERT INTO `order` (`order_id`, `store_name`, `mapx`, `mapy`, `detail`, `delegatorDelegatorId`) VALUES (29, 'harum', '3', '2', 'sapiente', 86);
INSERT INTO `order` (`order_id`, `store_name`, `mapx`, `mapy`, `detail`, `delegatorDelegatorId`) VALUES (30, 'ut', '7', '8', 'eius', 65);
INSERT INTO `order` (`order_id`, `store_name`, `mapx`, `mapy`, `detail`, `delegatorDelegatorId`) VALUES (31, 'dolores', '1', '6', 'molestias', 94);
INSERT INTO `order` (`order_id`, `store_name`, `mapx`, `mapy`, `detail`, `delegatorDelegatorId`) VALUES (32, 'consequatur', '7', '2', 'sint', 55);
INSERT INTO `order` (`order_id`, `store_name`, `mapx`, `mapy`, `detail`, `delegatorDelegatorId`) VALUES (33, 'asperiores', '2', '6', 'ut', 93);
INSERT INTO `order` (`order_id`, `store_name`, `mapx`, `mapy`, `detail`, `delegatorDelegatorId`) VALUES (34, 'magnam', '3', '6', 'quisquam', 61);
INSERT INTO `order` (`order_id`, `store_name`, `mapx`, `mapy`, `detail`, `delegatorDelegatorId`) VALUES (35, 'sint', '1', '2', 'esse', 73);
INSERT INTO `order` (`order_id`, `store_name`, `mapx`, `mapy`, `detail`, `delegatorDelegatorId`) VALUES (36, 'natus', '', '9', 'perferendis', 72);
INSERT INTO `order` (`order_id`, `store_name`, `mapx`, `mapy`, `detail`, `delegatorDelegatorId`) VALUES (37, 'laboriosam', '', '6', 'voluptate', 92);
INSERT INTO `order` (`order_id`, `store_name`, `mapx`, `mapy`, `detail`, `delegatorDelegatorId`) VALUES (38, 'aut', '5', '5', 'dolores', 56);
INSERT INTO `order` (`order_id`, `store_name`, `mapx`, `mapy`, `detail`, `delegatorDelegatorId`) VALUES (39, 'voluptas', '', '5', 'molestiae', 72);
INSERT INTO `order` (`order_id`, `store_name`, `mapx`, `mapy`, `detail`, `delegatorDelegatorId`) VALUES (40, 'quisquam', '', '2', 'necessitatibus', 68);
INSERT INTO `order` (`order_id`, `store_name`, `mapx`, `mapy`, `detail`, `delegatorDelegatorId`) VALUES (41, 'sunt', '5', '', 'sit', 50);
INSERT INTO `order` (`order_id`, `store_name`, `mapx`, `mapy`, `detail`, `delegatorDelegatorId`) VALUES (42, 'repudiandae', '7', '4', 'eos', 3);
INSERT INTO `order` (`order_id`, `store_name`, `mapx`, `mapy`, `detail`, `delegatorDelegatorId`) VALUES (43, 'magni', '7', '7', 'officia', 59);
INSERT INTO `order` (`order_id`, `store_name`, `mapx`, `mapy`, `detail`, `delegatorDelegatorId`) VALUES (44, 'omnis', '4', '', 'fuga', 73);
INSERT INTO `order` (`order_id`, `store_name`, `mapx`, `mapy`, `detail`, `delegatorDelegatorId`) VALUES (45, 'beatae', '8', '2', 'sed', 35);
INSERT INTO `order` (`order_id`, `store_name`, `mapx`, `mapy`, `detail`, `delegatorDelegatorId`) VALUES (46, 'voluptatibus', '4', '4', 'in', 28);
INSERT INTO `order` (`order_id`, `store_name`, `mapx`, `mapy`, `detail`, `delegatorDelegatorId`) VALUES (47, 'impedit', '', '9', 'facere', 77);
INSERT INTO `order` (`order_id`, `store_name`, `mapx`, `mapy`, `detail`, `delegatorDelegatorId`) VALUES (48, 'repellendus', '5', '1', 'qui', 31);
INSERT INTO `order` (`order_id`, `store_name`, `mapx`, `mapy`, `detail`, `delegatorDelegatorId`) VALUES (49, 'ratione', '8', '9', 'ea', 32);
INSERT INTO `order` (`order_id`, `store_name`, `mapx`, `mapy`, `detail`, `delegatorDelegatorId`) VALUES (50, 'a', '8', '3', 'ipsam', 84);
INSERT INTO `order` (`order_id`, `store_name`, `mapx`, `mapy`, `detail`, `delegatorDelegatorId`) VALUES (51, 'animi', '', '3', 'et', 41);
INSERT INTO `order` (`order_id`, `store_name`, `mapx`, `mapy`, `detail`, `delegatorDelegatorId`) VALUES (52, 'et', '8', '9', 'iure', 13);
INSERT INTO `order` (`order_id`, `store_name`, `mapx`, `mapy`, `detail`, `delegatorDelegatorId`) VALUES (53, 'asperiores', '', '7', 'est', 40);
INSERT INTO `order` (`order_id`, `store_name`, `mapx`, `mapy`, `detail`, `delegatorDelegatorId`) VALUES (54, 'et', '4', '7', 'aliquam', 42);
INSERT INTO `order` (`order_id`, `store_name`, `mapx`, `mapy`, `detail`, `delegatorDelegatorId`) VALUES (55, 'delectus', '4', '4', 'minus', 11);
INSERT INTO `order` (`order_id`, `store_name`, `mapx`, `mapy`, `detail`, `delegatorDelegatorId`) VALUES (56, 'inventore', '3', '2', 'et', 17);
INSERT INTO `order` (`order_id`, `store_name`, `mapx`, `mapy`, `detail`, `delegatorDelegatorId`) VALUES (57, 'magnam', '9', '3', 'culpa', 17);
INSERT INTO `order` (`order_id`, `store_name`, `mapx`, `mapy`, `detail`, `delegatorDelegatorId`) VALUES (58, 'inventore', '4', '9', 'illo', 34);
INSERT INTO `order` (`order_id`, `store_name`, `mapx`, `mapy`, `detail`, `delegatorDelegatorId`) VALUES (59, 'distinctio', '7', '9', 'eos', 22);
INSERT INTO `order` (`order_id`, `store_name`, `mapx`, `mapy`, `detail`, `delegatorDelegatorId`) VALUES (60, 'est', '4', '2', 'corrupti', 2);
INSERT INTO `order` (`order_id`, `store_name`, `mapx`, `mapy`, `detail`, `delegatorDelegatorId`) VALUES (61, 'ducimus', '1', '8', 'vel', 99);
INSERT INTO `order` (`order_id`, `store_name`, `mapx`, `mapy`, `detail`, `delegatorDelegatorId`) VALUES (62, 'quis', '6', '1', 'reprehenderit', 16);
INSERT INTO `order` (`order_id`, `store_name`, `mapx`, `mapy`, `detail`, `delegatorDelegatorId`) VALUES (63, 'vero', '9', '2', 'molestiae', 57);
INSERT INTO `order` (`order_id`, `store_name`, `mapx`, `mapy`, `detail`, `delegatorDelegatorId`) VALUES (64, 'neque', '8', '8', 'sunt', 91);
INSERT INTO `order` (`order_id`, `store_name`, `mapx`, `mapy`, `detail`, `delegatorDelegatorId`) VALUES (65, 'voluptatum', '3', '4', 'voluptatibus', 76);
INSERT INTO `order` (`order_id`, `store_name`, `mapx`, `mapy`, `detail`, `delegatorDelegatorId`) VALUES (66, 'ut', '3', '5', 'quibusdam', 30);
INSERT INTO `order` (`order_id`, `store_name`, `mapx`, `mapy`, `detail`, `delegatorDelegatorId`) VALUES (67, 'ut', '4', '5', 'sit', 63);
INSERT INTO `order` (`order_id`, `store_name`, `mapx`, `mapy`, `detail`, `delegatorDelegatorId`) VALUES (68, 'libero', '3', '5', 'est', 67);
INSERT INTO `order` (`order_id`, `store_name`, `mapx`, `mapy`, `detail`, `delegatorDelegatorId`) VALUES (69, 'soluta', '5', '', 'totam', 85);
INSERT INTO `order` (`order_id`, `store_name`, `mapx`, `mapy`, `detail`, `delegatorDelegatorId`) VALUES (70, 'ipsum', '9', '8', 'omnis', 34);
INSERT INTO `order` (`order_id`, `store_name`, `mapx`, `mapy`, `detail`, `delegatorDelegatorId`) VALUES (71, 'et', '9', '6', 'molestiae', 34);
INSERT INTO `order` (`order_id`, `store_name`, `mapx`, `mapy`, `detail`, `delegatorDelegatorId`) VALUES (72, 'voluptatem', '4', '2', 'eveniet', 35);
INSERT INTO `order` (`order_id`, `store_name`, `mapx`, `mapy`, `detail`, `delegatorDelegatorId`) VALUES (73, 'occaecati', '1', '3', 'non', 37);
INSERT INTO `order` (`order_id`, `store_name`, `mapx`, `mapy`, `detail`, `delegatorDelegatorId`) VALUES (74, 'rerum', '5', '2', 'sint', 93);
INSERT INTO `order` (`order_id`, `store_name`, `mapx`, `mapy`, `detail`, `delegatorDelegatorId`) VALUES (75, 'earum', '4', '4', 'voluptate', 7);
INSERT INTO `order` (`order_id`, `store_name`, `mapx`, `mapy`, `detail`, `delegatorDelegatorId`) VALUES (76, 'autem', '5', '1', 'numquam', 71);
INSERT INTO `order` (`order_id`, `store_name`, `mapx`, `mapy`, `detail`, `delegatorDelegatorId`) VALUES (77, 'at', '1', '2', 'neque', 20);
INSERT INTO `order` (`order_id`, `store_name`, `mapx`, `mapy`, `detail`, `delegatorDelegatorId`) VALUES (78, 'aut', '5', '', 'sint', 84);
INSERT INTO `order` (`order_id`, `store_name`, `mapx`, `mapy`, `detail`, `delegatorDelegatorId`) VALUES (79, 'natus', '', '2', 'ea', 1);
INSERT INTO `order` (`order_id`, `store_name`, `mapx`, `mapy`, `detail`, `delegatorDelegatorId`) VALUES (80, 'laboriosam', '5', '9', 'quis', 52);
INSERT INTO `order` (`order_id`, `store_name`, `mapx`, `mapy`, `detail`, `delegatorDelegatorId`) VALUES (81, 'quia', '', '8', 'a', 68);
INSERT INTO `order` (`order_id`, `store_name`, `mapx`, `mapy`, `detail`, `delegatorDelegatorId`) VALUES (82, 'natus', '8', '1', 'rem', 41);
INSERT INTO `order` (`order_id`, `store_name`, `mapx`, `mapy`, `detail`, `delegatorDelegatorId`) VALUES (83, 'facere', '', '2', 'ratione', 65);
INSERT INTO `order` (`order_id`, `store_name`, `mapx`, `mapy`, `detail`, `delegatorDelegatorId`) VALUES (84, 'cumque', '6', '6', 'consectetur', 7);
INSERT INTO `order` (`order_id`, `store_name`, `mapx`, `mapy`, `detail`, `delegatorDelegatorId`) VALUES (85, 'nemo', '2', '6', 'temporibus', 83);
INSERT INTO `order` (`order_id`, `store_name`, `mapx`, `mapy`, `detail`, `delegatorDelegatorId`) VALUES (86, 'voluptas', '8', '8', 'vel', 75);
INSERT INTO `order` (`order_id`, `store_name`, `mapx`, `mapy`, `detail`, `delegatorDelegatorId`) VALUES (87, 'necessitatibus', '3', '3', 'molestiae', 23);
INSERT INTO `order` (`order_id`, `store_name`, `mapx`, `mapy`, `detail`, `delegatorDelegatorId`) VALUES (88, 'in', '5', '1', 'nam', 99);
INSERT INTO `order` (`order_id`, `store_name`, `mapx`, `mapy`, `detail`, `delegatorDelegatorId`) VALUES (89, 'accusantium', '', '4', 'natus', 9);
INSERT INTO `order` (`order_id`, `store_name`, `mapx`, `mapy`, `detail`, `delegatorDelegatorId`) VALUES (90, 'amet', '2', '7', 'ipsam', 45);
INSERT INTO `order` (`order_id`, `store_name`, `mapx`, `mapy`, `detail`, `delegatorDelegatorId`) VALUES (91, 'aut', '5', '7', 'ullam', 1);
INSERT INTO `order` (`order_id`, `store_name`, `mapx`, `mapy`, `detail`, `delegatorDelegatorId`) VALUES (92, 'aut', '6', '4', 'et', 7);
INSERT INTO `order` (`order_id`, `store_name`, `mapx`, `mapy`, `detail`, `delegatorDelegatorId`) VALUES (93, 'et', '4', '7', 'eligendi', 60);
INSERT INTO `order` (`order_id`, `store_name`, `mapx`, `mapy`, `detail`, `delegatorDelegatorId`) VALUES (94, 'consequatur', '4', '6', 'mollitia', 57);
INSERT INTO `order` (`order_id`, `store_name`, `mapx`, `mapy`, `detail`, `delegatorDelegatorId`) VALUES (95, 'sunt', '9', '1', 'veniam', 98);
INSERT INTO `order` (`order_id`, `store_name`, `mapx`, `mapy`, `detail`, `delegatorDelegatorId`) VALUES (96, 'et', '9', '9', 'iste', 36);
INSERT INTO `order` (`order_id`, `store_name`, `mapx`, `mapy`, `detail`, `delegatorDelegatorId`) VALUES (97, 'vel', '3', '2', 'quo', 87);
INSERT INTO `order` (`order_id`, `store_name`, `mapx`, `mapy`, `detail`, `delegatorDelegatorId`) VALUES (98, 'adipisci', '9', '7', 'distinctio', 60);
INSERT INTO `order` (`order_id`, `store_name`, `mapx`, `mapy`, `detail`, `delegatorDelegatorId`) VALUES (99, 'laudantium', '6', '8', 'numquam', 2);
INSERT INTO `order` (`order_id`, `store_name`, `mapx`, `mapy`, `detail`, `delegatorDelegatorId`) VALUES (100, 'et', '3', '', 'ea', 71);


#
# TABLE STRUCTURE FOR: reciept
#

DROP TABLE IF EXISTS `reciept`;

CREATE TABLE `reciept` (
  `reciept_id` int(11) NOT NULL AUTO_INCREMENT,
  `anything` int(11) NOT NULL,
  PRIMARY KEY (`reciept_id`)
) ENGINE=InnoDB AUTO_INCREMENT=101 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

INSERT INTO `reciept` (`reciept_id`, `anything`) VALUES (1, 0);
INSERT INTO `reciept` (`reciept_id`, `anything`) VALUES (2, 0);
INSERT INTO `reciept` (`reciept_id`, `anything`) VALUES (3, 0);
INSERT INTO `reciept` (`reciept_id`, `anything`) VALUES (4, 0);
INSERT INTO `reciept` (`reciept_id`, `anything`) VALUES (5, 0);
INSERT INTO `reciept` (`reciept_id`, `anything`) VALUES (6, 0);
INSERT INTO `reciept` (`reciept_id`, `anything`) VALUES (7, 0);
INSERT INTO `reciept` (`reciept_id`, `anything`) VALUES (8, 0);
INSERT INTO `reciept` (`reciept_id`, `anything`) VALUES (9, 0);
INSERT INTO `reciept` (`reciept_id`, `anything`) VALUES (10, 0);
INSERT INTO `reciept` (`reciept_id`, `anything`) VALUES (11, 0);
INSERT INTO `reciept` (`reciept_id`, `anything`) VALUES (12, 0);
INSERT INTO `reciept` (`reciept_id`, `anything`) VALUES (13, 0);
INSERT INTO `reciept` (`reciept_id`, `anything`) VALUES (14, 0);
INSERT INTO `reciept` (`reciept_id`, `anything`) VALUES (15, 0);
INSERT INTO `reciept` (`reciept_id`, `anything`) VALUES (16, 0);
INSERT INTO `reciept` (`reciept_id`, `anything`) VALUES (17, 0);
INSERT INTO `reciept` (`reciept_id`, `anything`) VALUES (18, 0);
INSERT INTO `reciept` (`reciept_id`, `anything`) VALUES (19, 0);
INSERT INTO `reciept` (`reciept_id`, `anything`) VALUES (20, 0);
INSERT INTO `reciept` (`reciept_id`, `anything`) VALUES (21, 0);
INSERT INTO `reciept` (`reciept_id`, `anything`) VALUES (22, 0);
INSERT INTO `reciept` (`reciept_id`, `anything`) VALUES (23, 0);
INSERT INTO `reciept` (`reciept_id`, `anything`) VALUES (24, 0);
INSERT INTO `reciept` (`reciept_id`, `anything`) VALUES (25, 0);
INSERT INTO `reciept` (`reciept_id`, `anything`) VALUES (26, 0);
INSERT INTO `reciept` (`reciept_id`, `anything`) VALUES (27, 0);
INSERT INTO `reciept` (`reciept_id`, `anything`) VALUES (28, 0);
INSERT INTO `reciept` (`reciept_id`, `anything`) VALUES (29, 0);
INSERT INTO `reciept` (`reciept_id`, `anything`) VALUES (30, 0);
INSERT INTO `reciept` (`reciept_id`, `anything`) VALUES (31, 0);
INSERT INTO `reciept` (`reciept_id`, `anything`) VALUES (32, 0);
INSERT INTO `reciept` (`reciept_id`, `anything`) VALUES (33, 0);
INSERT INTO `reciept` (`reciept_id`, `anything`) VALUES (34, 0);
INSERT INTO `reciept` (`reciept_id`, `anything`) VALUES (35, 0);
INSERT INTO `reciept` (`reciept_id`, `anything`) VALUES (36, 0);
INSERT INTO `reciept` (`reciept_id`, `anything`) VALUES (37, 0);
INSERT INTO `reciept` (`reciept_id`, `anything`) VALUES (38, 0);
INSERT INTO `reciept` (`reciept_id`, `anything`) VALUES (39, 0);
INSERT INTO `reciept` (`reciept_id`, `anything`) VALUES (40, 0);
INSERT INTO `reciept` (`reciept_id`, `anything`) VALUES (41, 0);
INSERT INTO `reciept` (`reciept_id`, `anything`) VALUES (42, 0);
INSERT INTO `reciept` (`reciept_id`, `anything`) VALUES (43, 0);
INSERT INTO `reciept` (`reciept_id`, `anything`) VALUES (44, 0);
INSERT INTO `reciept` (`reciept_id`, `anything`) VALUES (45, 0);
INSERT INTO `reciept` (`reciept_id`, `anything`) VALUES (46, 0);
INSERT INTO `reciept` (`reciept_id`, `anything`) VALUES (47, 0);
INSERT INTO `reciept` (`reciept_id`, `anything`) VALUES (48, 0);
INSERT INTO `reciept` (`reciept_id`, `anything`) VALUES (49, 0);
INSERT INTO `reciept` (`reciept_id`, `anything`) VALUES (50, 0);
INSERT INTO `reciept` (`reciept_id`, `anything`) VALUES (51, 0);
INSERT INTO `reciept` (`reciept_id`, `anything`) VALUES (52, 0);
INSERT INTO `reciept` (`reciept_id`, `anything`) VALUES (53, 0);
INSERT INTO `reciept` (`reciept_id`, `anything`) VALUES (54, 0);
INSERT INTO `reciept` (`reciept_id`, `anything`) VALUES (55, 0);
INSERT INTO `reciept` (`reciept_id`, `anything`) VALUES (56, 0);
INSERT INTO `reciept` (`reciept_id`, `anything`) VALUES (57, 0);
INSERT INTO `reciept` (`reciept_id`, `anything`) VALUES (58, 0);
INSERT INTO `reciept` (`reciept_id`, `anything`) VALUES (59, 0);
INSERT INTO `reciept` (`reciept_id`, `anything`) VALUES (60, 0);
INSERT INTO `reciept` (`reciept_id`, `anything`) VALUES (61, 0);
INSERT INTO `reciept` (`reciept_id`, `anything`) VALUES (62, 0);
INSERT INTO `reciept` (`reciept_id`, `anything`) VALUES (63, 0);
INSERT INTO `reciept` (`reciept_id`, `anything`) VALUES (64, 0);
INSERT INTO `reciept` (`reciept_id`, `anything`) VALUES (65, 0);
INSERT INTO `reciept` (`reciept_id`, `anything`) VALUES (66, 0);
INSERT INTO `reciept` (`reciept_id`, `anything`) VALUES (67, 0);
INSERT INTO `reciept` (`reciept_id`, `anything`) VALUES (68, 0);
INSERT INTO `reciept` (`reciept_id`, `anything`) VALUES (69, 0);
INSERT INTO `reciept` (`reciept_id`, `anything`) VALUES (70, 0);
INSERT INTO `reciept` (`reciept_id`, `anything`) VALUES (71, 0);
INSERT INTO `reciept` (`reciept_id`, `anything`) VALUES (72, 0);
INSERT INTO `reciept` (`reciept_id`, `anything`) VALUES (73, 0);
INSERT INTO `reciept` (`reciept_id`, `anything`) VALUES (74, 0);
INSERT INTO `reciept` (`reciept_id`, `anything`) VALUES (75, 0);
INSERT INTO `reciept` (`reciept_id`, `anything`) VALUES (76, 0);
INSERT INTO `reciept` (`reciept_id`, `anything`) VALUES (77, 0);
INSERT INTO `reciept` (`reciept_id`, `anything`) VALUES (78, 0);
INSERT INTO `reciept` (`reciept_id`, `anything`) VALUES (79, 0);
INSERT INTO `reciept` (`reciept_id`, `anything`) VALUES (80, 0);
INSERT INTO `reciept` (`reciept_id`, `anything`) VALUES (81, 0);
INSERT INTO `reciept` (`reciept_id`, `anything`) VALUES (82, 0);
INSERT INTO `reciept` (`reciept_id`, `anything`) VALUES (83, 0);
INSERT INTO `reciept` (`reciept_id`, `anything`) VALUES (84, 0);
INSERT INTO `reciept` (`reciept_id`, `anything`) VALUES (85, 0);
INSERT INTO `reciept` (`reciept_id`, `anything`) VALUES (86, 0);
INSERT INTO `reciept` (`reciept_id`, `anything`) VALUES (87, 0);
INSERT INTO `reciept` (`reciept_id`, `anything`) VALUES (88, 0);
INSERT INTO `reciept` (`reciept_id`, `anything`) VALUES (89, 0);
INSERT INTO `reciept` (`reciept_id`, `anything`) VALUES (90, 0);
INSERT INTO `reciept` (`reciept_id`, `anything`) VALUES (91, 0);
INSERT INTO `reciept` (`reciept_id`, `anything`) VALUES (92, 0);
INSERT INTO `reciept` (`reciept_id`, `anything`) VALUES (93, 0);
INSERT INTO `reciept` (`reciept_id`, `anything`) VALUES (94, 0);
INSERT INTO `reciept` (`reciept_id`, `anything`) VALUES (95, 0);
INSERT INTO `reciept` (`reciept_id`, `anything`) VALUES (96, 0);
INSERT INTO `reciept` (`reciept_id`, `anything`) VALUES (97, 0);
INSERT INTO `reciept` (`reciept_id`, `anything`) VALUES (98, 0);
INSERT INTO `reciept` (`reciept_id`, `anything`) VALUES (99, 0);
INSERT INTO `reciept` (`reciept_id`, `anything`) VALUES (100, 0);


#
# TABLE STRUCTURE FOR: review
#

DROP TABLE IF EXISTS `review`;

CREATE TABLE `review` (
  `review_id` int(11) NOT NULL AUTO_INCREMENT,
  `content` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `storeStoreId` int(11) DEFAULT NULL,
  `userUserId` int(11) DEFAULT NULL,
  PRIMARY KEY (`review_id`)
) ENGINE=InnoDB AUTO_INCREMENT=101 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

INSERT INTO `review` (`review_id`, `content`, `storeStoreId`, `userUserId`) VALUES (1, 'Aut sit dolor voluptas repudiandae eum porro et. Autem atque qui iste quis et. At provident praesentium totam sit maiores laudantium. Hic sint veritatis voluptatem rerum.', 7, 38);
INSERT INTO `review` (`review_id`, `content`, `storeStoreId`, `userUserId`) VALUES (2, 'Perferendis beatae quo dolores nemo vel rerum quam. Dolores est qui non dolorem vel voluptatibus et. Minima id et et dolorem temporibus.', 91, 4);
INSERT INTO `review` (`review_id`, `content`, `storeStoreId`, `userUserId`) VALUES (3, 'Et velit distinctio impedit. Omnis itaque voluptatem consequatur pariatur voluptatem laboriosam. Nihil autem sed voluptas dolorem fugiat.', 68, 56);
INSERT INTO `review` (`review_id`, `content`, `storeStoreId`, `userUserId`) VALUES (4, 'Non pariatur qui dolorum eius illo. Voluptatibus quis dolores cupiditate sunt repudiandae qui sequi. Similique aut numquam consequuntur. Ut fugit id repudiandae minima porro facere.', 57, 36);
INSERT INTO `review` (`review_id`, `content`, `storeStoreId`, `userUserId`) VALUES (5, 'Exercitationem doloremque quod quis officiis provident. Voluptatem atque voluptatem sequi. Itaque ut omnis perferendis vel sit cumque qui. Voluptatem nesciunt id quis ea.', 1, 75);
INSERT INTO `review` (`review_id`, `content`, `storeStoreId`, `userUserId`) VALUES (6, 'Quos in vero ab doloribus ipsum numquam. Et consequuntur ea exercitationem atque veniam voluptas ducimus. Eos sequi et doloremque enim quisquam quam debitis. Id sed nostrum doloremque.', 68, 63);
INSERT INTO `review` (`review_id`, `content`, `storeStoreId`, `userUserId`) VALUES (7, 'Ipsa error molestiae dolorem ea saepe est. Nihil qui sint excepturi maxime.', 100, 33);
INSERT INTO `review` (`review_id`, `content`, `storeStoreId`, `userUserId`) VALUES (8, 'Odio reprehenderit quo ullam impedit. Amet autem dolore unde rerum debitis necessitatibus vitae dolorum. Nostrum porro ipsam sit deserunt. A quae eaque asperiores earum.', 62, 5);
INSERT INTO `review` (`review_id`, `content`, `storeStoreId`, `userUserId`) VALUES (9, 'Deserunt pariatur aliquid nihil ut sit molestiae. Quis similique sit rerum voluptatem enim voluptas at. Sed ad velit quisquam ut in. Veniam voluptatem officiis cum pariatur hic omnis vero eum.', 97, 1);
INSERT INTO `review` (`review_id`, `content`, `storeStoreId`, `userUserId`) VALUES (10, 'Consequatur est eveniet quibusdam amet. Odio dicta totam sapiente maxime. Labore et fugiat earum sit voluptatibus odio.', 76, 91);
INSERT INTO `review` (`review_id`, `content`, `storeStoreId`, `userUserId`) VALUES (11, 'Quasi laudantium explicabo vitae. Tenetur facilis consequuntur accusantium. Et et non illum. Et reprehenderit nisi ut eum eum illum.', 16, 97);
INSERT INTO `review` (`review_id`, `content`, `storeStoreId`, `userUserId`) VALUES (12, 'Rerum nihil eos molestiae in sit est reprehenderit. Corrupti omnis expedita possimus optio laborum aut consectetur. Qui architecto quasi assumenda culpa aut. Nemo deleniti veniam et.', 67, 88);
INSERT INTO `review` (`review_id`, `content`, `storeStoreId`, `userUserId`) VALUES (13, 'Sint ex et neque enim dignissimos id qui. Est eos commodi tempore dicta. Et odio quo deserunt et.', 91, 75);
INSERT INTO `review` (`review_id`, `content`, `storeStoreId`, `userUserId`) VALUES (14, 'Dolorum accusamus reiciendis in quibusdam sed. Omnis tenetur debitis ut magni. Velit accusamus aperiam tempore qui delectus id aut.', 26, 51);
INSERT INTO `review` (`review_id`, `content`, `storeStoreId`, `userUserId`) VALUES (15, 'Asperiores molestiae minima quo odit ad pariatur. Natus nemo aut in aut accusantium. Eveniet est occaecati dignissimos natus odio magni omnis.', 94, 25);
INSERT INTO `review` (`review_id`, `content`, `storeStoreId`, `userUserId`) VALUES (16, 'Est sequi esse earum voluptas minus. Et nihil quia nulla doloribus qui et. Magnam et veritatis laudantium consequatur commodi error in. Magni amet et ex itaque quo voluptatum.', 1, 100);
INSERT INTO `review` (`review_id`, `content`, `storeStoreId`, `userUserId`) VALUES (17, 'Explicabo aliquid qui assumenda voluptatem aut. Voluptate possimus qui laborum quam rem odit. Maiores ipsum aliquam est odio vero fugit.', 63, 91);
INSERT INTO `review` (`review_id`, `content`, `storeStoreId`, `userUserId`) VALUES (18, 'Excepturi optio error qui iusto. Ea vero quod omnis eaque. Ipsa maxime deserunt sed alias voluptas deserunt consequatur.', 4, 31);
INSERT INTO `review` (`review_id`, `content`, `storeStoreId`, `userUserId`) VALUES (19, 'Ut sit ut rerum autem. Quia voluptatem dolorum consequatur. Accusamus ut minima atque itaque ut est.', 46, 61);
INSERT INTO `review` (`review_id`, `content`, `storeStoreId`, `userUserId`) VALUES (20, 'Occaecati accusamus et eos rerum. Sapiente alias inventore sint voluptas ut. Et excepturi in aut. Fugiat tempora magnam quod labore eum commodi. Voluptatibus eius blanditiis aliquam dolores.', 66, 46);
INSERT INTO `review` (`review_id`, `content`, `storeStoreId`, `userUserId`) VALUES (21, 'Eligendi nemo minus consequatur quam exercitationem ut. A blanditiis cumque voluptatem qui ut aut. Tempore excepturi ut qui ut ducimus quis.', 35, 33);
INSERT INTO `review` (`review_id`, `content`, `storeStoreId`, `userUserId`) VALUES (22, 'Nemo doloremque qui eligendi atque aut. Repudiandae incidunt consectetur repellendus dicta ea et. Est repellendus eaque et.', 9, 35);
INSERT INTO `review` (`review_id`, `content`, `storeStoreId`, `userUserId`) VALUES (23, 'Sit consectetur quo dolores consequatur. Dolorem molestiae illum molestiae repudiandae quis nesciunt eum. Dolores libero veritatis ut tempora eaque voluptas id voluptatem.', 66, 71);
INSERT INTO `review` (`review_id`, `content`, `storeStoreId`, `userUserId`) VALUES (24, 'Veniam animi labore odio. Nam ut consequatur est corporis provident sunt doloremque. Ipsa nemo suscipit veritatis aut laborum. Dolorum ratione sunt assumenda et sed aut.', 39, 63);
INSERT INTO `review` (`review_id`, `content`, `storeStoreId`, `userUserId`) VALUES (25, 'Fugiat sed pariatur occaecati enim qui. Magnam libero id modi sint cumque dolores. Nostrum et similique explicabo exercitationem beatae culpa. Explicabo veritatis eos sed in ut deleniti deserunt.', 72, 15);
INSERT INTO `review` (`review_id`, `content`, `storeStoreId`, `userUserId`) VALUES (26, 'Officiis ea optio dolores doloremque eos a nisi. Ut quibusdam dolorum odio quo. Ex minima reprehenderit earum alias voluptatibus. Cum possimus molestias ipsa illum.', 53, 87);
INSERT INTO `review` (`review_id`, `content`, `storeStoreId`, `userUserId`) VALUES (27, 'Placeat dolor corporis omnis quia laborum expedita sunt quaerat. Iure iure inventore impedit laborum. Corporis veritatis molestiae est nihil ullam nihil.', 11, 20);
INSERT INTO `review` (`review_id`, `content`, `storeStoreId`, `userUserId`) VALUES (28, 'Officia qui vero rerum voluptas. Quo non possimus molestias autem. Nobis labore quam qui mollitia deleniti qui dolorem beatae.', 75, 2);
INSERT INTO `review` (`review_id`, `content`, `storeStoreId`, `userUserId`) VALUES (29, 'Officiis id in ut. Odio adipisci ut minus quo veritatis labore. Et veritatis magnam ad voluptas. Voluptas sit cupiditate provident eos in sit blanditiis vitae.', 94, 1);
INSERT INTO `review` (`review_id`, `content`, `storeStoreId`, `userUserId`) VALUES (30, 'Aliquam alias amet nihil qui adipisci nostrum autem eum. Ut reiciendis consequatur ut soluta.', 53, 87);
INSERT INTO `review` (`review_id`, `content`, `storeStoreId`, `userUserId`) VALUES (31, 'Architecto illo et sed unde voluptatum ad. Maiores sit sed laboriosam vitae iusto a alias. Consequuntur consequatur consequatur sint sit.', 26, 53);
INSERT INTO `review` (`review_id`, `content`, `storeStoreId`, `userUserId`) VALUES (32, 'Explicabo accusantium inventore optio est. Laboriosam enim hic pariatur officiis. Mollitia placeat minus quia cupiditate neque distinctio vel.', 87, 88);
INSERT INTO `review` (`review_id`, `content`, `storeStoreId`, `userUserId`) VALUES (33, 'Omnis quia voluptatem aut modi enim enim. Nemo nihil vel debitis aut iure saepe. Quam quisquam quo minus beatae mollitia odit ut. Aperiam et dolor consequatur veniam atque cum aut.', 43, 91);
INSERT INTO `review` (`review_id`, `content`, `storeStoreId`, `userUserId`) VALUES (34, 'Consectetur provident quia distinctio exercitationem. Beatae deleniti cupiditate quis aut est. Qui omnis quos adipisci deleniti quas.', 18, 89);
INSERT INTO `review` (`review_id`, `content`, `storeStoreId`, `userUserId`) VALUES (35, 'Sunt animi laboriosam temporibus amet et et quo dignissimos. Eveniet ducimus sit nesciunt. Debitis excepturi vel voluptatem tempora accusamus.', 52, 84);
INSERT INTO `review` (`review_id`, `content`, `storeStoreId`, `userUserId`) VALUES (36, 'Modi provident mollitia a nam sunt deserunt ad. Facere molestiae inventore rerum similique distinctio est. Qui laborum quidem accusamus iusto.', 35, 87);
INSERT INTO `review` (`review_id`, `content`, `storeStoreId`, `userUserId`) VALUES (37, 'Nulla sunt et dolore est sint. Velit nemo est temporibus consequatur qui quaerat. Eos facilis magnam veniam aliquid.', 16, 44);
INSERT INTO `review` (`review_id`, `content`, `storeStoreId`, `userUserId`) VALUES (38, 'Sit sed sint qui eos maiores qui et. Est voluptas qui nobis inventore veritatis placeat suscipit. Optio amet omnis vitae omnis. Illo expedita vitae beatae.', 21, 81);
INSERT INTO `review` (`review_id`, `content`, `storeStoreId`, `userUserId`) VALUES (39, 'Non sed est numquam nemo. Sint esse inventore laborum quis dolores. Eligendi aliquid distinctio magni.', 14, 59);
INSERT INTO `review` (`review_id`, `content`, `storeStoreId`, `userUserId`) VALUES (40, 'Amet hic quaerat nihil quas modi excepturi. Fugit aperiam magnam eveniet officiis cupiditate labore. Cumque enim deleniti quasi voluptas quo. Doloremque magnam ex fuga sit quo.', 44, 85);
INSERT INTO `review` (`review_id`, `content`, `storeStoreId`, `userUserId`) VALUES (41, 'Eius odit distinctio qui et laboriosam explicabo. Porro beatae iste in sequi cumque molestiae. Accusamus aliquid assumenda labore.', 74, 96);
INSERT INTO `review` (`review_id`, `content`, `storeStoreId`, `userUserId`) VALUES (42, 'Et pariatur odio in rerum saepe quae. Asperiores nemo iure et aliquam nihil optio pariatur. Voluptatem velit quos rerum quae maxime nihil iure quos. Corrupti numquam culpa nostrum.', 72, 85);
INSERT INTO `review` (`review_id`, `content`, `storeStoreId`, `userUserId`) VALUES (43, 'Maiores earum sit fugiat fugit. Reiciendis quia ratione aliquam nam. Voluptatem iure exercitationem quas cupiditate.', 15, 47);
INSERT INTO `review` (`review_id`, `content`, `storeStoreId`, `userUserId`) VALUES (44, 'Consectetur et magni adipisci nihil. Occaecati odit eum minima velit sint quos dicta. Cumque et enim id est repudiandae blanditiis est.', 86, 8);
INSERT INTO `review` (`review_id`, `content`, `storeStoreId`, `userUserId`) VALUES (45, 'Voluptatum ducimus possimus modi eligendi. Accusamus qui labore exercitationem nulla provident.', 48, 39);
INSERT INTO `review` (`review_id`, `content`, `storeStoreId`, `userUserId`) VALUES (46, 'Neque qui nesciunt eius et. Provident facere quis nobis quasi eum sunt possimus. Odit corrupti autem magni esse. Possimus iusto quas fugit non sapiente iste sed sit.', 95, 73);
INSERT INTO `review` (`review_id`, `content`, `storeStoreId`, `userUserId`) VALUES (47, 'Sequi occaecati veniam porro autem in. Ut iusto adipisci aut atque quaerat rerum sint. Et suscipit blanditiis natus et est consequatur.\nMinima dignissimos at aut ut. Corrupti ut a qui.', 91, 82);
INSERT INTO `review` (`review_id`, `content`, `storeStoreId`, `userUserId`) VALUES (48, 'Deserunt sunt id iure natus. Est itaque qui fuga quidem sit commodi. Quia alias autem dolorum ea. Rerum nesciunt officia vel nemo nobis enim et.', 61, 34);
INSERT INTO `review` (`review_id`, `content`, `storeStoreId`, `userUserId`) VALUES (49, 'Velit neque modi quod rerum quaerat. Aperiam et cum ullam. Modi esse dolor animi et in quo accusantium dolor. Hic officiis facilis nihil magni doloribus eum iure.', 73, 79);
INSERT INTO `review` (`review_id`, `content`, `storeStoreId`, `userUserId`) VALUES (50, 'Consectetur et iure consequuntur saepe dolores. Illo mollitia laudantium nihil sint. Veniam dolores occaecati rerum modi vitae. Et quia eveniet et illo hic laborum inventore et.', 23, 24);
INSERT INTO `review` (`review_id`, `content`, `storeStoreId`, `userUserId`) VALUES (51, 'At ut totam dolores officiis minus placeat quos. Odit sed ut debitis a animi. Enim cum accusamus aut omnis sit eos. Voluptas doloremque quis voluptatem qui officiis distinctio velit laboriosam.', 62, 57);
INSERT INTO `review` (`review_id`, `content`, `storeStoreId`, `userUserId`) VALUES (52, 'Aut sed ratione tempore et qui eius molestiae. Non odio dolorum adipisci dicta qui vitae occaecati. Ipsa voluptatem et in iure.', 10, 78);
INSERT INTO `review` (`review_id`, `content`, `storeStoreId`, `userUserId`) VALUES (53, 'Non voluptates quis dicta dolore. Hic autem beatae inventore nostrum. Libero veritatis amet qui aliquid.', 100, 30);
INSERT INTO `review` (`review_id`, `content`, `storeStoreId`, `userUserId`) VALUES (54, 'Eum animi voluptatum sit praesentium suscipit optio. Nam vitae quisquam velit ex inventore. Nesciunt harum aperiam mollitia recusandae.', 59, 14);
INSERT INTO `review` (`review_id`, `content`, `storeStoreId`, `userUserId`) VALUES (55, 'Beatae dicta itaque eaque aliquam. Sapiente saepe iusto cum in excepturi possimus quam.', 89, 2);
INSERT INTO `review` (`review_id`, `content`, `storeStoreId`, `userUserId`) VALUES (56, 'Dignissimos sit est eligendi. Corrupti animi vero saepe doloribus velit eligendi. Quia excepturi odit quasi veniam architecto quod quia. Aut saepe voluptatum ad.', 99, 62);
INSERT INTO `review` (`review_id`, `content`, `storeStoreId`, `userUserId`) VALUES (57, 'Error aut consequuntur quaerat aliquid maiores. Eos doloremque ducimus et sint quasi omnis delectus culpa. Harum maxime vitae et eum.', 97, 71);
INSERT INTO `review` (`review_id`, `content`, `storeStoreId`, `userUserId`) VALUES (58, 'Mollitia tenetur odio nemo omnis maiores voluptas in. Qui excepturi sit nesciunt quis tenetur reprehenderit quas. Qui omnis dolores distinctio tempore pariatur.', 46, 12);
INSERT INTO `review` (`review_id`, `content`, `storeStoreId`, `userUserId`) VALUES (59, 'Omnis doloremque quia eos molestiae ratione. Ad cumque consequatur deserunt rerum ut dolorem. Veritatis autem expedita qui.', 17, 32);
INSERT INTO `review` (`review_id`, `content`, `storeStoreId`, `userUserId`) VALUES (60, 'Harum officiis fugiat sit omnis iste. Pariatur rerum impedit debitis.', 19, 64);
INSERT INTO `review` (`review_id`, `content`, `storeStoreId`, `userUserId`) VALUES (61, 'Fugiat pariatur aut iste neque expedita voluptas quo. Facere reprehenderit omnis deserunt. Recusandae aspernatur quia dicta maiores incidunt blanditiis dignissimos voluptas.', 70, 14);
INSERT INTO `review` (`review_id`, `content`, `storeStoreId`, `userUserId`) VALUES (62, 'Autem aspernatur hic rerum nesciunt illo facere rerum. Eaque corrupti ut molestias sed. Labore reprehenderit voluptatem vero. Eos delectus impedit voluptatem qui atque optio ut eveniet.', 37, 61);
INSERT INTO `review` (`review_id`, `content`, `storeStoreId`, `userUserId`) VALUES (63, 'Quam nihil quo quasi recusandae quia rem laborum explicabo. Velit voluptas exercitationem et odit rerum a commodi laboriosam. Qui alias id perspiciatis laboriosam repellat voluptatem.', 96, 98);
INSERT INTO `review` (`review_id`, `content`, `storeStoreId`, `userUserId`) VALUES (64, 'Error pariatur quis natus excepturi in impedit quibusdam. Aliquam et omnis consequatur officia fugiat dolor adipisci expedita. Aperiam nesciunt vel ut fugit fuga.', 95, 68);
INSERT INTO `review` (`review_id`, `content`, `storeStoreId`, `userUserId`) VALUES (65, 'Enim voluptates dolorem a enim nam recusandae. Cum ipsam labore eos doloremque omnis et. Amet necessitatibus necessitatibus sed libero aliquid.', 76, 17);
INSERT INTO `review` (`review_id`, `content`, `storeStoreId`, `userUserId`) VALUES (66, 'Fugit sit iste amet illum non atque. Ut sit animi et eos.', 92, 37);
INSERT INTO `review` (`review_id`, `content`, `storeStoreId`, `userUserId`) VALUES (67, 'Est eveniet nihil rerum iste est sed. Quisquam fuga sapiente eligendi ut occaecati doloribus. Quas quia recusandae doloremque optio id rerum. Ad quae quia veritatis at.', 74, 1);
INSERT INTO `review` (`review_id`, `content`, `storeStoreId`, `userUserId`) VALUES (68, 'Ad commodi quasi in. Fuga vel consequatur voluptas sint. Maxime non non vel illum ut. Et ex voluptatem quia asperiores ut harum.', 14, 73);
INSERT INTO `review` (`review_id`, `content`, `storeStoreId`, `userUserId`) VALUES (69, 'Velit aperiam minima dolorum aliquid. In sunt id libero incidunt. Maiores quos blanditiis atque debitis nihil et quos adipisci.', 31, 72);
INSERT INTO `review` (`review_id`, `content`, `storeStoreId`, `userUserId`) VALUES (70, 'Vel minima ipsa est ratione. Dolorem est enim aut reiciendis ut quam. Quaerat et hic omnis dolore sed voluptatem. Qui veritatis rerum laudantium id suscipit.', 86, 19);
INSERT INTO `review` (`review_id`, `content`, `storeStoreId`, `userUserId`) VALUES (71, 'Perferendis et perferendis eum est. Reiciendis architecto itaque qui unde sunt quasi maxime. Iste molestiae possimus laborum esse quo et quae. Quaerat omnis aut consequatur quam similique voluptatem.', 74, 85);
INSERT INTO `review` (`review_id`, `content`, `storeStoreId`, `userUserId`) VALUES (72, 'Et officia et laudantium pariatur asperiores omnis. Tempore dolor ratione voluptatem est fuga sit tenetur. Est ipsam rerum dolor. Omnis quaerat eum ut voluptatibus ipsum.', 81, 70);
INSERT INTO `review` (`review_id`, `content`, `storeStoreId`, `userUserId`) VALUES (73, 'Maxime exercitationem ut qui fugiat et non neque. Delectus error officia et est numquam tempora.', 55, 27);
INSERT INTO `review` (`review_id`, `content`, `storeStoreId`, `userUserId`) VALUES (74, 'Corrupti dolorem voluptas repellat qui. Ratione mollitia rem qui. Enim ut quis accusantium qui nesciunt quas sit tempora. Molestiae sunt sint dolorum quia error hic.', 81, 71);
INSERT INTO `review` (`review_id`, `content`, `storeStoreId`, `userUserId`) VALUES (75, 'Quaerat nesciunt illum voluptatum aut atque enim. Blanditiis ut maiores ex eum inventore et sint. Magnam aut illum in rem distinctio.', 59, 100);
INSERT INTO `review` (`review_id`, `content`, `storeStoreId`, `userUserId`) VALUES (76, 'Temporibus inventore in ab. Omnis eveniet et quos. Iste in sed qui molestiae dolores blanditiis quo.', 35, 28);
INSERT INTO `review` (`review_id`, `content`, `storeStoreId`, `userUserId`) VALUES (77, 'Placeat itaque ducimus libero. Cumque quia asperiores dicta earum at temporibus. Incidunt perspiciatis id totam quis enim.', 14, 72);
INSERT INTO `review` (`review_id`, `content`, `storeStoreId`, `userUserId`) VALUES (78, 'Eum modi beatae aut vitae ex similique quae. Alias accusamus qui beatae enim. Ullam maxime velit praesentium corrupti. Beatae iste dignissimos aliquid porro.', 89, 9);
INSERT INTO `review` (`review_id`, `content`, `storeStoreId`, `userUserId`) VALUES (79, 'Similique quia nulla nobis recusandae aut alias. Consequatur earum velit ut minima consequatur. Non quo iure molestiae rerum. Deserunt architecto et vel illo et.', 69, 83);
INSERT INTO `review` (`review_id`, `content`, `storeStoreId`, `userUserId`) VALUES (80, 'Quia dolor voluptatem laudantium nisi ratione maiores libero. Vitae error rem dignissimos rerum. Eos ab rerum maxime dolorem. Harum numquam vel laboriosam.', 76, 45);
INSERT INTO `review` (`review_id`, `content`, `storeStoreId`, `userUserId`) VALUES (81, 'Veritatis occaecati optio asperiores. Atque delectus corrupti ut iusto possimus. Doloremque impedit maxime qui. Libero ipsum blanditiis aspernatur natus.', 100, 68);
INSERT INTO `review` (`review_id`, `content`, `storeStoreId`, `userUserId`) VALUES (82, 'Id similique qui et temporibus fugiat nisi. Est nulla veritatis cum. Molestiae omnis impedit dolorem consequatur. Qui qui est maiores ipsam quia incidunt odit.', 82, 73);
INSERT INTO `review` (`review_id`, `content`, `storeStoreId`, `userUserId`) VALUES (83, 'Natus ut molestias magni est quaerat nemo neque. Impedit officiis voluptas vel odit porro sed nisi porro. Inventore illum qui quo et quis et culpa sint. Vel illo odit ut porro sint qui.', 68, 96);
INSERT INTO `review` (`review_id`, `content`, `storeStoreId`, `userUserId`) VALUES (84, 'Corporis eos officia est nobis. Earum non id minima aut dolores rem aut. Numquam accusamus laborum id delectus. Dolores et dicta ab et saepe inventore.', 45, 98);
INSERT INTO `review` (`review_id`, `content`, `storeStoreId`, `userUserId`) VALUES (85, 'Corporis rerum minus ea quod. Iusto nihil explicabo consectetur eveniet velit nihil. Eligendi unde non error qui. Atque sit cum repudiandae assumenda accusantium atque neque.', 68, 31);
INSERT INTO `review` (`review_id`, `content`, `storeStoreId`, `userUserId`) VALUES (86, 'Hic vel occaecati dicta inventore distinctio quod quos. Aut asperiores expedita laboriosam quod et. Enim doloribus suscipit ut possimus. Non nihil dicta architecto recusandae possimus saepe.', 17, 41);
INSERT INTO `review` (`review_id`, `content`, `storeStoreId`, `userUserId`) VALUES (87, 'Eos est et porro sequi sint perferendis est. Libero autem quos sit doloribus.', 15, 98);
INSERT INTO `review` (`review_id`, `content`, `storeStoreId`, `userUserId`) VALUES (88, 'Hic iste dolore id facilis aut. Sit quibusdam sed alias omnis. Aspernatur occaecati ut ut assumenda doloribus. Architecto harum quia magni incidunt.', 10, 69);
INSERT INTO `review` (`review_id`, `content`, `storeStoreId`, `userUserId`) VALUES (89, 'Similique officiis ipsa nihil voluptatem minima. Assumenda quo sit accusamus iste et asperiores magni. Sit nulla molestias harum commodi autem cupiditate quam. Porro ipsa tempore et dolorum.', 24, 91);
INSERT INTO `review` (`review_id`, `content`, `storeStoreId`, `userUserId`) VALUES (90, 'Velit ut fuga possimus ut nam et. Recusandae sit velit minus quia voluptas. Repellendus voluptatem consectetur rem voluptatem quia qui. In sed labore expedita ad et.', 40, 83);
INSERT INTO `review` (`review_id`, `content`, `storeStoreId`, `userUserId`) VALUES (91, 'Et voluptatem quae iusto delectus tenetur iste. Provident et totam corrupti quisquam facilis.', 90, 75);
INSERT INTO `review` (`review_id`, `content`, `storeStoreId`, `userUserId`) VALUES (92, 'Perferendis et et earum aperiam doloremque nemo consequatur. Sunt inventore quae corrupti. Quia dolores atque consequatur quod mollitia ratione.', 10, 4);
INSERT INTO `review` (`review_id`, `content`, `storeStoreId`, `userUserId`) VALUES (93, 'Dolorem voluptatem doloremque facere fuga. Officiis aliquam eos veniam. Omnis cumque sint veritatis commodi omnis.', 46, 99);
INSERT INTO `review` (`review_id`, `content`, `storeStoreId`, `userUserId`) VALUES (94, 'Accusantium enim ratione unde veniam perferendis. Laudantium non eos occaecati est. Voluptas ad eius dignissimos assumenda mollitia accusantium quia est.', 12, 15);
INSERT INTO `review` (`review_id`, `content`, `storeStoreId`, `userUserId`) VALUES (95, 'Aut minus est qui amet qui non. Quasi voluptates est laboriosam distinctio magnam. Quia culpa non sit doloremque. Neque iste omnis consequatur quam delectus.', 81, 88);
INSERT INTO `review` (`review_id`, `content`, `storeStoreId`, `userUserId`) VALUES (96, 'Et asperiores ut asperiores nesciunt quis cum facilis. Quo aut odio consectetur assumenda sunt. Possimus repellat repellat laboriosam sunt assumenda perspiciatis laborum iusto.', 60, 81);
INSERT INTO `review` (`review_id`, `content`, `storeStoreId`, `userUserId`) VALUES (97, 'Voluptatem sed maxime ea dolore. Quas earum ab molestias sunt consequuntur quae. Itaque eos officiis eos non repellat consequatur. Amet et ducimus veritatis fugiat aperiam voluptates quia.', 55, 41);
INSERT INTO `review` (`review_id`, `content`, `storeStoreId`, `userUserId`) VALUES (98, 'Nesciunt impedit molestias officiis minus qui. A doloribus sint quo minima quo natus. Qui excepturi ut ut rerum dolorem deleniti. Sint est et labore eius qui laudantium dolores voluptas.', 53, 22);
INSERT INTO `review` (`review_id`, `content`, `storeStoreId`, `userUserId`) VALUES (99, 'Commodi ad atque voluptas accusantium nisi sit dolores. Sint praesentium perferendis mollitia rerum. Eos autem maiores quidem nesciunt ut est amet.', 37, 97);
INSERT INTO `review` (`review_id`, `content`, `storeStoreId`, `userUserId`) VALUES (100, 'Veniam soluta distinctio eaque voluptas architecto explicabo voluptatibus. Autem voluptates consequatur odit sint excepturi rerum esse.', 20, 4);


#
# TABLE STRUCTURE FOR: store
#

DROP TABLE IF EXISTS `store`;

CREATE TABLE `store` (
  `store_id` int(11) NOT NULL AUTO_INCREMENT,
  `store_name` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `store_posx` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `store_posy` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `store_address` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  PRIMARY KEY (`store_id`)
) ENGINE=InnoDB AUTO_INCREMENT=101 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

INSERT INTO `store` (`store_id`, `store_name`, `store_posx`, `store_posy`, `store_address`) VALUES (1, 'est', '3', '1', '93762 Alexandro Freeway Apt. 591\nSouth Laurel, SC 62330');
INSERT INTO `store` (`store_id`, `store_name`, `store_posx`, `store_posy`, `store_address`) VALUES (2, 'et', '7', '1', '7330 Konopelski Forks\nEffertzmouth, DE 35209');
INSERT INTO `store` (`store_id`, `store_name`, `store_posx`, `store_posy`, `store_address`) VALUES (3, 'et', '9', '7', '809 Mosciski Fort\nSouth Brayan, GA 54212');
INSERT INTO `store` (`store_id`, `store_name`, `store_posx`, `store_posy`, `store_address`) VALUES (4, 'voluptatibus', '8', '1', '3248 Ofelia Radial\nBrayanfort, NV 60565-2657');
INSERT INTO `store` (`store_id`, `store_name`, `store_posx`, `store_posy`, `store_address`) VALUES (5, 'similique', '9', '4', '60960 Lesch Summit Apt. 088\nChadborough, MA 05627');
INSERT INTO `store` (`store_id`, `store_name`, `store_posx`, `store_posy`, `store_address`) VALUES (6, 'voluptatem', '8', '4', '9320 Robel Coves\nSouth Danland, PA 03283');
INSERT INTO `store` (`store_id`, `store_name`, `store_posx`, `store_posy`, `store_address`) VALUES (7, 'ratione', '4', '4', '178 Jesse Hills Apt. 091\nAlvisside, IN 80527');
INSERT INTO `store` (`store_id`, `store_name`, `store_posx`, `store_posy`, `store_address`) VALUES (8, 'est', '2', '2', '30233 Bernier Mission Suite 783\nAndersonmouth, NY 63421');
INSERT INTO `store` (`store_id`, `store_name`, `store_posx`, `store_posy`, `store_address`) VALUES (9, 'vel', '7', '8', '5676 Arlie Skyway Apt. 704\nLindgrenside, IL 28008');
INSERT INTO `store` (`store_id`, `store_name`, `store_posx`, `store_posy`, `store_address`) VALUES (10, 'optio', '4', '', '12102 Dibbert Square\nEast Christinaland, WV 57564-1744');
INSERT INTO `store` (`store_id`, `store_name`, `store_posx`, `store_posy`, `store_address`) VALUES (11, 'quibusdam', '8', '5', '453 Tremblay Bypass Apt. 135\nNew Bell, AZ 97493');
INSERT INTO `store` (`store_id`, `store_name`, `store_posx`, `store_posy`, `store_address`) VALUES (12, 'sint', '2', '8', '773 Collins Mountains\nPort Joshbury, GA 55161-4928');
INSERT INTO `store` (`store_id`, `store_name`, `store_posx`, `store_posy`, `store_address`) VALUES (13, 'excepturi', '4', '1', '974 Maggio Forks Apt. 882\nSummerhaven, CA 61250');
INSERT INTO `store` (`store_id`, `store_name`, `store_posx`, `store_posy`, `store_address`) VALUES (14, 'natus', '2', '5', '53366 Dach Stravenue Apt. 832\nKieranton, RI 05370-5327');
INSERT INTO `store` (`store_id`, `store_name`, `store_posx`, `store_posy`, `store_address`) VALUES (15, 'aut', '9', '', '045 Ali Fork\nWaelchiburgh, SC 96518');
INSERT INTO `store` (`store_id`, `store_name`, `store_posx`, `store_posy`, `store_address`) VALUES (16, 'harum', '4', '9', '500 Madelyn View Suite 711\nMonahanview, MS 01081-7957');
INSERT INTO `store` (`store_id`, `store_name`, `store_posx`, `store_posy`, `store_address`) VALUES (17, 'consequatur', '', '6', '32689 Deangelo Rue Apt. 768\nNorth Kaelamouth, MT 02085-9092');
INSERT INTO `store` (`store_id`, `store_name`, `store_posx`, `store_posy`, `store_address`) VALUES (18, 'est', '6', '', '5684 Darwin Trace\nDejahport, FL 02964');
INSERT INTO `store` (`store_id`, `store_name`, `store_posx`, `store_posy`, `store_address`) VALUES (19, 'et', '', '4', '3967 Graham Plaza Suite 183\nMayertton, TX 02381');
INSERT INTO `store` (`store_id`, `store_name`, `store_posx`, `store_posy`, `store_address`) VALUES (20, 'ut', '1', '', '7247 Kihn Lake Apt. 063\nLilianaland, MI 26392-9366');
INSERT INTO `store` (`store_id`, `store_name`, `store_posx`, `store_posy`, `store_address`) VALUES (21, 'veniam', '8', '5', '783 Mia Fork\nBeiershire, MI 49011-5509');
INSERT INTO `store` (`store_id`, `store_name`, `store_posx`, `store_posy`, `store_address`) VALUES (22, 'reiciendis', '4', '2', '13705 Cristina Stravenue Apt. 532\nWest Aryanna, CT 69655-1263');
INSERT INTO `store` (`store_id`, `store_name`, `store_posx`, `store_posy`, `store_address`) VALUES (23, 'rerum', '1', '6', '0497 Casper Centers Suite 917\nCordellstad, SD 87520');
INSERT INTO `store` (`store_id`, `store_name`, `store_posx`, `store_posy`, `store_address`) VALUES (24, 'et', '8', '6', '0283 Maggio Ridges Suite 899\nWest Enricomouth, FL 86716');
INSERT INTO `store` (`store_id`, `store_name`, `store_posx`, `store_posy`, `store_address`) VALUES (25, 'eos', '3', '5', '449 Jordane Squares\nNew Abdullahmouth, NV 46666-6380');
INSERT INTO `store` (`store_id`, `store_name`, `store_posx`, `store_posy`, `store_address`) VALUES (26, 'optio', '', '4', '384 Malinda Way\nMargarettemouth, ME 91871-0971');
INSERT INTO `store` (`store_id`, `store_name`, `store_posx`, `store_posy`, `store_address`) VALUES (27, 'necessitatibus', '7', '6', '695 Toy Lakes Apt. 585\nGarfieldshire, ID 82058-0200');
INSERT INTO `store` (`store_id`, `store_name`, `store_posx`, `store_posy`, `store_address`) VALUES (28, 'aut', '7', '2', '03899 Wolff Walks Apt. 647\nNitzschestad, TX 06221-8249');
INSERT INTO `store` (`store_id`, `store_name`, `store_posx`, `store_posy`, `store_address`) VALUES (29, 'nostrum', '3', '', '806 Giovani Corner Apt. 715\nFlorinebury, CO 05807');
INSERT INTO `store` (`store_id`, `store_name`, `store_posx`, `store_posy`, `store_address`) VALUES (30, 'consequatur', '8', '8', '95759 Farrell Roads\nPort Blaze, VT 00708-5733');
INSERT INTO `store` (`store_id`, `store_name`, `store_posx`, `store_posy`, `store_address`) VALUES (31, 'voluptatem', '2', '2', '38958 Schultz Stream\nNorth Willowchester, IN 14230');
INSERT INTO `store` (`store_id`, `store_name`, `store_posx`, `store_posy`, `store_address`) VALUES (32, 'enim', '5', '4', '81165 Haag Street\nCletaton, MS 10724-0350');
INSERT INTO `store` (`store_id`, `store_name`, `store_posx`, `store_posy`, `store_address`) VALUES (33, 'quis', '2', '8', '00624 Kasandra Extensions Apt. 250\nSouth Alysha, OH 87052-9469');
INSERT INTO `store` (`store_id`, `store_name`, `store_posx`, `store_posy`, `store_address`) VALUES (34, 'et', '9', '3', '7339 Altenwerth Lights\nSouth Sheldon, IN 92081');
INSERT INTO `store` (`store_id`, `store_name`, `store_posx`, `store_posy`, `store_address`) VALUES (35, 'dolor', '3', '7', '685 Alva Via\nWatersland, ND 62857-1418');
INSERT INTO `store` (`store_id`, `store_name`, `store_posx`, `store_posy`, `store_address`) VALUES (36, 'odio', '6', '9', '304 Gutmann Lane\nWindlermouth, SD 95645-3068');
INSERT INTO `store` (`store_id`, `store_name`, `store_posx`, `store_posy`, `store_address`) VALUES (37, 'provident', '7', '7', '551 Halvorson Prairie Suite 374\nEldridgeberg, MN 49007-0161');
INSERT INTO `store` (`store_id`, `store_name`, `store_posx`, `store_posy`, `store_address`) VALUES (38, 'non', '8', '4', '55519 Novella Manors\nAnissaton, DC 71817-3816');
INSERT INTO `store` (`store_id`, `store_name`, `store_posx`, `store_posy`, `store_address`) VALUES (39, 'necessitatibus', '2', '7', '50503 Milo Hill Suite 897\nTrentchester, SD 75899-5733');
INSERT INTO `store` (`store_id`, `store_name`, `store_posx`, `store_posy`, `store_address`) VALUES (40, 'dolores', '5', '4', '537 Hackett Crest\nPort Shaniaborough, TX 72205');
INSERT INTO `store` (`store_id`, `store_name`, `store_posx`, `store_posy`, `store_address`) VALUES (41, 'distinctio', '9', '1', '71035 Kassulke Mews\nBoyerhaven, MD 31355');
INSERT INTO `store` (`store_id`, `store_name`, `store_posx`, `store_posy`, `store_address`) VALUES (42, 'magni', '4', '', '344 Amalia Junction Apt. 361\nSouth Leila, LA 58163');
INSERT INTO `store` (`store_id`, `store_name`, `store_posx`, `store_posy`, `store_address`) VALUES (43, 'iste', '8', '8', '2857 Aurelie Brooks\nOrloland, WV 81818-2199');
INSERT INTO `store` (`store_id`, `store_name`, `store_posx`, `store_posy`, `store_address`) VALUES (44, 'voluptates', '5', '9', '29789 Willard Junction\nKittymouth, MA 69751-7104');
INSERT INTO `store` (`store_id`, `store_name`, `store_posx`, `store_posy`, `store_address`) VALUES (45, 'ut', '4', '9', '0937 Vernice Landing Suite 293\nLake Raphaelberg, TN 30709');
INSERT INTO `store` (`store_id`, `store_name`, `store_posx`, `store_posy`, `store_address`) VALUES (46, 'quisquam', '9', '7', '57048 Gulgowski Green Suite 288\nEast Thoraport, WY 03491-3422');
INSERT INTO `store` (`store_id`, `store_name`, `store_posx`, `store_posy`, `store_address`) VALUES (47, 'rerum', '4', '9', '9695 Sanford Tunnel Apt. 137\nNew Winifred, ME 44666');
INSERT INTO `store` (`store_id`, `store_name`, `store_posx`, `store_posy`, `store_address`) VALUES (48, 'atque', '3', '3', '64761 Cartwright Fords\nWest Brittany, MS 17256');
INSERT INTO `store` (`store_id`, `store_name`, `store_posx`, `store_posy`, `store_address`) VALUES (49, 'neque', '7', '6', '757 Jermaine Spurs Apt. 101\nOlsonfurt, AZ 82476-8411');
INSERT INTO `store` (`store_id`, `store_name`, `store_posx`, `store_posy`, `store_address`) VALUES (50, 'eveniet', '7', '8', '189 Dickens Prairie\nLake Wellingtonshire, KY 76417-2764');
INSERT INTO `store` (`store_id`, `store_name`, `store_posx`, `store_posy`, `store_address`) VALUES (51, 'reprehenderit', '2', '7', '9840 Mayer Parks Suite 152\nWest Lucioside, NE 39001');
INSERT INTO `store` (`store_id`, `store_name`, `store_posx`, `store_posy`, `store_address`) VALUES (52, 'ipsa', '2', '9', '9922 Fausto Crest\nLake Sandrinebury, GA 13823');
INSERT INTO `store` (`store_id`, `store_name`, `store_posx`, `store_posy`, `store_address`) VALUES (53, 'aut', '2', '1', '2017 Sydney Village Suite 527\nAdanville, WI 49255-7418');
INSERT INTO `store` (`store_id`, `store_name`, `store_posx`, `store_posy`, `store_address`) VALUES (54, 'optio', '', '', '5407 Leonardo Hill\nSwiftport, NV 48514');
INSERT INTO `store` (`store_id`, `store_name`, `store_posx`, `store_posy`, `store_address`) VALUES (55, 'nemo', '5', '6', '040 Marks Trafficway Apt. 396\nNorth Lexuston, OR 09427');
INSERT INTO `store` (`store_id`, `store_name`, `store_posx`, `store_posy`, `store_address`) VALUES (56, 'ut', '8', '', '613 Oberbrunner Common\nLarsonstad, ND 29885-5088');
INSERT INTO `store` (`store_id`, `store_name`, `store_posx`, `store_posy`, `store_address`) VALUES (57, 'dicta', '7', '4', '0201 Ferne Prairie Apt. 120\nNorth Vidal, KY 64706');
INSERT INTO `store` (`store_id`, `store_name`, `store_posx`, `store_posy`, `store_address`) VALUES (58, 'vel', '5', '9', '48412 Walter Forest Suite 426\nAntoniaview, AR 85929');
INSERT INTO `store` (`store_id`, `store_name`, `store_posx`, `store_posy`, `store_address`) VALUES (59, 'eos', '3', '4', '547 Rhett Underpass\nFeestland, OK 53227');
INSERT INTO `store` (`store_id`, `store_name`, `store_posx`, `store_posy`, `store_address`) VALUES (60, 'aperiam', '9', '4', '660 Sallie Orchard\nMannmouth, IL 06220');
INSERT INTO `store` (`store_id`, `store_name`, `store_posx`, `store_posy`, `store_address`) VALUES (61, 'aut', '1', '9', '702 Ruben Valley\nPort Mallie, DC 49170');
INSERT INTO `store` (`store_id`, `store_name`, `store_posx`, `store_posy`, `store_address`) VALUES (62, 'quas', '2', '9', '12672 Trevor Springs Suite 131\nConnellyview, NE 75408');
INSERT INTO `store` (`store_id`, `store_name`, `store_posx`, `store_posy`, `store_address`) VALUES (63, 'soluta', '4', '5', '2639 Audrey Plains Apt. 857\nNew Arielle, WV 23657');
INSERT INTO `store` (`store_id`, `store_name`, `store_posx`, `store_posy`, `store_address`) VALUES (64, 'consequatur', '3', '3', '60766 Erin Isle\nNew Lorine, GA 29447-1331');
INSERT INTO `store` (`store_id`, `store_name`, `store_posx`, `store_posy`, `store_address`) VALUES (65, 'autem', '7', '3', '722 Alanna Estate Apt. 973\nDoyleland, MN 57706-2410');
INSERT INTO `store` (`store_id`, `store_name`, `store_posx`, `store_posy`, `store_address`) VALUES (66, 'harum', '2', '8', '31393 Turcotte Hill Apt. 365\nLake Kayaside, MO 07639');
INSERT INTO `store` (`store_id`, `store_name`, `store_posx`, `store_posy`, `store_address`) VALUES (67, 'laudantium', '1', '6', '1063 Malcolm Ramp Suite 455\nTonistad, NC 14593-5515');
INSERT INTO `store` (`store_id`, `store_name`, `store_posx`, `store_posy`, `store_address`) VALUES (68, 'quia', '', '4', '7435 Pfeffer Skyway\nEmiliaview, AR 84559');
INSERT INTO `store` (`store_id`, `store_name`, `store_posx`, `store_posy`, `store_address`) VALUES (69, 'veniam', '9', '3', '662 Bradtke Knoll Suite 589\nWilburnside, MT 87084');
INSERT INTO `store` (`store_id`, `store_name`, `store_posx`, `store_posy`, `store_address`) VALUES (70, 'consectetur', '', '5', '0778 Spinka Junctions\nGradyland, WA 97871-4794');
INSERT INTO `store` (`store_id`, `store_name`, `store_posx`, `store_posy`, `store_address`) VALUES (71, 'perferendis', '2', '6', '562 Magdalen Via Suite 600\nBetsyport, MT 58989-1378');
INSERT INTO `store` (`store_id`, `store_name`, `store_posx`, `store_posy`, `store_address`) VALUES (72, 'non', '8', '2', '7914 Travon Bridge\nAlfshire, CT 54487');
INSERT INTO `store` (`store_id`, `store_name`, `store_posx`, `store_posy`, `store_address`) VALUES (73, 'enim', '7', '2', '888 Boehm Vista\nNorth Willow, MO 79278');
INSERT INTO `store` (`store_id`, `store_name`, `store_posx`, `store_posy`, `store_address`) VALUES (74, 'voluptatum', '', '8', '70407 Hauck Meadows Suite 121\nWaelchimouth, IA 83415-6404');
INSERT INTO `store` (`store_id`, `store_name`, `store_posx`, `store_posy`, `store_address`) VALUES (75, 'sed', '3', '', '3016 Petra Throughway Apt. 800\nMullerside, NC 22206-9009');
INSERT INTO `store` (`store_id`, `store_name`, `store_posx`, `store_posy`, `store_address`) VALUES (76, 'eius', '7', '1', '686 Jewell Mill Apt. 370\nEast Garrickland, GA 27959');
INSERT INTO `store` (`store_id`, `store_name`, `store_posx`, `store_posy`, `store_address`) VALUES (77, 'iste', '', '1', '74296 Ericka Spurs Suite 288\nWest Florenceside, NH 01444-0824');
INSERT INTO `store` (`store_id`, `store_name`, `store_posx`, `store_posy`, `store_address`) VALUES (78, 'consequatur', '5', '2', '95695 Stephany Green Suite 162\nEast Abbigailberg, OH 78146-9886');
INSERT INTO `store` (`store_id`, `store_name`, `store_posx`, `store_posy`, `store_address`) VALUES (79, 'sit', '8', '6', '31303 Bahringer Forge Apt. 699\nEast Laurieview, WY 58109');
INSERT INTO `store` (`store_id`, `store_name`, `store_posx`, `store_posy`, `store_address`) VALUES (80, 'ad', '7', '8', '0543 Lazaro Stravenue Suite 751\nNew Douglasstad, AR 56878');
INSERT INTO `store` (`store_id`, `store_name`, `store_posx`, `store_posy`, `store_address`) VALUES (81, 'ab', '6', '', '632 Balistreri Ranch Apt. 539\nLake Josianestad, MS 14121-1072');
INSERT INTO `store` (`store_id`, `store_name`, `store_posx`, `store_posy`, `store_address`) VALUES (82, 'accusantium', '5', '3', '1682 Lela Circles Suite 819\nSouth Dixietown, NC 30039');
INSERT INTO `store` (`store_id`, `store_name`, `store_posx`, `store_posy`, `store_address`) VALUES (83, 'itaque', '6', '9', '8102 Gutkowski Curve\nEast Lizaburgh, NY 27554');
INSERT INTO `store` (`store_id`, `store_name`, `store_posx`, `store_posy`, `store_address`) VALUES (84, 'ut', '5', '6', '07615 Elton Points Apt. 824\nPfannerstillmouth, ND 37678-9631');
INSERT INTO `store` (`store_id`, `store_name`, `store_posx`, `store_posy`, `store_address`) VALUES (85, 'explicabo', '6', '3', '58929 Lind Mount Suite 855\nNew Alenafort, MO 64612-2079');
INSERT INTO `store` (`store_id`, `store_name`, `store_posx`, `store_posy`, `store_address`) VALUES (86, 'natus', '6', '8', '24424 Klein Grove Suite 633\nNorth Kurt, MI 50234');
INSERT INTO `store` (`store_id`, `store_name`, `store_posx`, `store_posy`, `store_address`) VALUES (87, 'natus', '2', '5', '7540 Christiansen Meadow Apt. 094\nBeierchester, AK 73365');
INSERT INTO `store` (`store_id`, `store_name`, `store_posx`, `store_posy`, `store_address`) VALUES (88, 'accusamus', '3', '2', '774 Jailyn Vista Suite 919\nSouth Carletonville, DE 15972-6685');
INSERT INTO `store` (`store_id`, `store_name`, `store_posx`, `store_posy`, `store_address`) VALUES (89, 'ut', '2', '', '372 Vinnie Extension\nPort Ezekiel, WI 46205-5606');
INSERT INTO `store` (`store_id`, `store_name`, `store_posx`, `store_posy`, `store_address`) VALUES (90, 'nam', '5', '5', '535 Thea Park Apt. 944\nNorth Tiarafurt, IN 49759');
INSERT INTO `store` (`store_id`, `store_name`, `store_posx`, `store_posy`, `store_address`) VALUES (91, 'repellat', '4', '2', '94833 Schmeler Motorway Apt. 340\nPort Vergieview, OH 20521-9809');
INSERT INTO `store` (`store_id`, `store_name`, `store_posx`, `store_posy`, `store_address`) VALUES (92, 'quis', '2', '9', '837 Filomena Inlet\nSchowalterton, WA 87208-5931');
INSERT INTO `store` (`store_id`, `store_name`, `store_posx`, `store_posy`, `store_address`) VALUES (93, 'qui', '5', '9', '58815 Jodie Street Suite 937\nWest Maci, TN 07089');
INSERT INTO `store` (`store_id`, `store_name`, `store_posx`, `store_posy`, `store_address`) VALUES (94, 'tenetur', '4', '3', '049 Mann Islands Apt. 282\nLake Ardenmouth, DC 92896');
INSERT INTO `store` (`store_id`, `store_name`, `store_posx`, `store_posy`, `store_address`) VALUES (95, 'consequatur', '3', '7', '365 Raina Path\nNorth Mayra, GA 52502-0593');
INSERT INTO `store` (`store_id`, `store_name`, `store_posx`, `store_posy`, `store_address`) VALUES (96, 'dolorem', '9', '4', '53106 Fahey Walks Suite 324\nNew Rosamondtown, MA 77753-0366');
INSERT INTO `store` (`store_id`, `store_name`, `store_posx`, `store_posy`, `store_address`) VALUES (97, 'cumque', '2', '1', '9285 Wolf Mountain\nForresttown, SC 24739-1843');
INSERT INTO `store` (`store_id`, `store_name`, `store_posx`, `store_posy`, `store_address`) VALUES (98, 'officia', '6', '1', '62900 Franecki Burgs\nLucaschester, WV 40789');
INSERT INTO `store` (`store_id`, `store_name`, `store_posx`, `store_posy`, `store_address`) VALUES (99, 'aliquid', '7', '1', '193 Sipes Village Apt. 166\nHansstad, KS 78194-7573');
INSERT INTO `store` (`store_id`, `store_name`, `store_posx`, `store_posy`, `store_address`) VALUES (100, 'recusandae', '5', '1', '5468 Lea Corner Apt. 753\nGleichnerville, IL 10770-9790');


#
# TABLE STRUCTURE FOR: thumb
#

DROP TABLE IF EXISTS `thumb`;

CREATE TABLE `thumb` (
  `thumb_id` int(11) NOT NULL AUTO_INCREMENT,
  `thumb_up` tinyint(4) NOT NULL,
  `thumb_down` tinyint(4) NOT NULL,
  `userUserId` int(11) DEFAULT NULL,
  `reviewReviewId` int(11) DEFAULT NULL,
  PRIMARY KEY (`thumb_id`)
) ENGINE=InnoDB AUTO_INCREMENT=101 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

INSERT INTO `thumb` (`thumb_id`, `thumb_up`, `thumb_down`, `userUserId`, `reviewReviewId`) VALUES (1, 1, 1, 94, 23);
INSERT INTO `thumb` (`thumb_id`, `thumb_up`, `thumb_down`, `userUserId`, `reviewReviewId`) VALUES (2, 0, 0, 77, 50);
INSERT INTO `thumb` (`thumb_id`, `thumb_up`, `thumb_down`, `userUserId`, `reviewReviewId`) VALUES (3, 1, 0, 48, 4);
INSERT INTO `thumb` (`thumb_id`, `thumb_up`, `thumb_down`, `userUserId`, `reviewReviewId`) VALUES (4, 0, 0, 3, 48);
INSERT INTO `thumb` (`thumb_id`, `thumb_up`, `thumb_down`, `userUserId`, `reviewReviewId`) VALUES (5, 0, 0, 50, 8);
INSERT INTO `thumb` (`thumb_id`, `thumb_up`, `thumb_down`, `userUserId`, `reviewReviewId`) VALUES (6, 1, 1, 41, 9);
INSERT INTO `thumb` (`thumb_id`, `thumb_up`, `thumb_down`, `userUserId`, `reviewReviewId`) VALUES (7, 1, 0, 55, 76);
INSERT INTO `thumb` (`thumb_id`, `thumb_up`, `thumb_down`, `userUserId`, `reviewReviewId`) VALUES (8, 0, 0, 43, 34);
INSERT INTO `thumb` (`thumb_id`, `thumb_up`, `thumb_down`, `userUserId`, `reviewReviewId`) VALUES (9, 1, 0, 85, 23);
INSERT INTO `thumb` (`thumb_id`, `thumb_up`, `thumb_down`, `userUserId`, `reviewReviewId`) VALUES (10, 1, 0, 81, 65);
INSERT INTO `thumb` (`thumb_id`, `thumb_up`, `thumb_down`, `userUserId`, `reviewReviewId`) VALUES (11, 0, 1, 8, 80);
INSERT INTO `thumb` (`thumb_id`, `thumb_up`, `thumb_down`, `userUserId`, `reviewReviewId`) VALUES (12, 0, 1, 96, 100);
INSERT INTO `thumb` (`thumb_id`, `thumb_up`, `thumb_down`, `userUserId`, `reviewReviewId`) VALUES (13, 1, 1, 40, 69);
INSERT INTO `thumb` (`thumb_id`, `thumb_up`, `thumb_down`, `userUserId`, `reviewReviewId`) VALUES (14, 1, 0, 11, 95);
INSERT INTO `thumb` (`thumb_id`, `thumb_up`, `thumb_down`, `userUserId`, `reviewReviewId`) VALUES (15, 0, 1, 5, 97);
INSERT INTO `thumb` (`thumb_id`, `thumb_up`, `thumb_down`, `userUserId`, `reviewReviewId`) VALUES (16, 1, 0, 43, 99);
INSERT INTO `thumb` (`thumb_id`, `thumb_up`, `thumb_down`, `userUserId`, `reviewReviewId`) VALUES (17, 1, 0, 20, 20);
INSERT INTO `thumb` (`thumb_id`, `thumb_up`, `thumb_down`, `userUserId`, `reviewReviewId`) VALUES (18, 0, 0, 48, 68);
INSERT INTO `thumb` (`thumb_id`, `thumb_up`, `thumb_down`, `userUserId`, `reviewReviewId`) VALUES (19, 0, 0, 23, 51);
INSERT INTO `thumb` (`thumb_id`, `thumb_up`, `thumb_down`, `userUserId`, `reviewReviewId`) VALUES (20, 1, 0, 15, 73);
INSERT INTO `thumb` (`thumb_id`, `thumb_up`, `thumb_down`, `userUserId`, `reviewReviewId`) VALUES (21, 0, 1, 59, 55);
INSERT INTO `thumb` (`thumb_id`, `thumb_up`, `thumb_down`, `userUserId`, `reviewReviewId`) VALUES (22, 0, 0, 81, 13);
INSERT INTO `thumb` (`thumb_id`, `thumb_up`, `thumb_down`, `userUserId`, `reviewReviewId`) VALUES (23, 1, 0, 31, 24);
INSERT INTO `thumb` (`thumb_id`, `thumb_up`, `thumb_down`, `userUserId`, `reviewReviewId`) VALUES (24, 0, 0, 46, 16);
INSERT INTO `thumb` (`thumb_id`, `thumb_up`, `thumb_down`, `userUserId`, `reviewReviewId`) VALUES (25, 0, 1, 46, 27);
INSERT INTO `thumb` (`thumb_id`, `thumb_up`, `thumb_down`, `userUserId`, `reviewReviewId`) VALUES (26, 0, 1, 80, 54);
INSERT INTO `thumb` (`thumb_id`, `thumb_up`, `thumb_down`, `userUserId`, `reviewReviewId`) VALUES (27, 1, 0, 6, 75);
INSERT INTO `thumb` (`thumb_id`, `thumb_up`, `thumb_down`, `userUserId`, `reviewReviewId`) VALUES (28, 0, 1, 53, 45);
INSERT INTO `thumb` (`thumb_id`, `thumb_up`, `thumb_down`, `userUserId`, `reviewReviewId`) VALUES (29, 0, 1, 44, 63);
INSERT INTO `thumb` (`thumb_id`, `thumb_up`, `thumb_down`, `userUserId`, `reviewReviewId`) VALUES (30, 1, 0, 39, 48);
INSERT INTO `thumb` (`thumb_id`, `thumb_up`, `thumb_down`, `userUserId`, `reviewReviewId`) VALUES (31, 0, 1, 60, 81);
INSERT INTO `thumb` (`thumb_id`, `thumb_up`, `thumb_down`, `userUserId`, `reviewReviewId`) VALUES (32, 1, 0, 46, 80);
INSERT INTO `thumb` (`thumb_id`, `thumb_up`, `thumb_down`, `userUserId`, `reviewReviewId`) VALUES (33, 1, 0, 1, 94);
INSERT INTO `thumb` (`thumb_id`, `thumb_up`, `thumb_down`, `userUserId`, `reviewReviewId`) VALUES (34, 1, 1, 47, 23);
INSERT INTO `thumb` (`thumb_id`, `thumb_up`, `thumb_down`, `userUserId`, `reviewReviewId`) VALUES (35, 0, 1, 44, 61);
INSERT INTO `thumb` (`thumb_id`, `thumb_up`, `thumb_down`, `userUserId`, `reviewReviewId`) VALUES (36, 0, 0, 96, 2);
INSERT INTO `thumb` (`thumb_id`, `thumb_up`, `thumb_down`, `userUserId`, `reviewReviewId`) VALUES (37, 1, 1, 16, 77);
INSERT INTO `thumb` (`thumb_id`, `thumb_up`, `thumb_down`, `userUserId`, `reviewReviewId`) VALUES (38, 1, 0, 14, 46);
INSERT INTO `thumb` (`thumb_id`, `thumb_up`, `thumb_down`, `userUserId`, `reviewReviewId`) VALUES (39, 1, 0, 100, 60);
INSERT INTO `thumb` (`thumb_id`, `thumb_up`, `thumb_down`, `userUserId`, `reviewReviewId`) VALUES (40, 1, 1, 61, 46);
INSERT INTO `thumb` (`thumb_id`, `thumb_up`, `thumb_down`, `userUserId`, `reviewReviewId`) VALUES (41, 1, 1, 86, 41);
INSERT INTO `thumb` (`thumb_id`, `thumb_up`, `thumb_down`, `userUserId`, `reviewReviewId`) VALUES (42, 0, 0, 99, 91);
INSERT INTO `thumb` (`thumb_id`, `thumb_up`, `thumb_down`, `userUserId`, `reviewReviewId`) VALUES (43, 1, 0, 16, 52);
INSERT INTO `thumb` (`thumb_id`, `thumb_up`, `thumb_down`, `userUserId`, `reviewReviewId`) VALUES (44, 1, 1, 35, 59);
INSERT INTO `thumb` (`thumb_id`, `thumb_up`, `thumb_down`, `userUserId`, `reviewReviewId`) VALUES (45, 0, 0, 14, 74);
INSERT INTO `thumb` (`thumb_id`, `thumb_up`, `thumb_down`, `userUserId`, `reviewReviewId`) VALUES (46, 1, 1, 6, 74);
INSERT INTO `thumb` (`thumb_id`, `thumb_up`, `thumb_down`, `userUserId`, `reviewReviewId`) VALUES (47, 1, 0, 55, 52);
INSERT INTO `thumb` (`thumb_id`, `thumb_up`, `thumb_down`, `userUserId`, `reviewReviewId`) VALUES (48, 1, 1, 53, 55);
INSERT INTO `thumb` (`thumb_id`, `thumb_up`, `thumb_down`, `userUserId`, `reviewReviewId`) VALUES (49, 1, 0, 45, 100);
INSERT INTO `thumb` (`thumb_id`, `thumb_up`, `thumb_down`, `userUserId`, `reviewReviewId`) VALUES (50, 1, 0, 78, 88);
INSERT INTO `thumb` (`thumb_id`, `thumb_up`, `thumb_down`, `userUserId`, `reviewReviewId`) VALUES (51, 0, 1, 60, 74);
INSERT INTO `thumb` (`thumb_id`, `thumb_up`, `thumb_down`, `userUserId`, `reviewReviewId`) VALUES (52, 1, 0, 90, 75);
INSERT INTO `thumb` (`thumb_id`, `thumb_up`, `thumb_down`, `userUserId`, `reviewReviewId`) VALUES (53, 0, 1, 50, 4);
INSERT INTO `thumb` (`thumb_id`, `thumb_up`, `thumb_down`, `userUserId`, `reviewReviewId`) VALUES (54, 1, 1, 21, 50);
INSERT INTO `thumb` (`thumb_id`, `thumb_up`, `thumb_down`, `userUserId`, `reviewReviewId`) VALUES (55, 0, 1, 63, 82);
INSERT INTO `thumb` (`thumb_id`, `thumb_up`, `thumb_down`, `userUserId`, `reviewReviewId`) VALUES (56, 0, 1, 95, 49);
INSERT INTO `thumb` (`thumb_id`, `thumb_up`, `thumb_down`, `userUserId`, `reviewReviewId`) VALUES (57, 0, 0, 22, 94);
INSERT INTO `thumb` (`thumb_id`, `thumb_up`, `thumb_down`, `userUserId`, `reviewReviewId`) VALUES (58, 1, 1, 39, 38);
INSERT INTO `thumb` (`thumb_id`, `thumb_up`, `thumb_down`, `userUserId`, `reviewReviewId`) VALUES (59, 1, 1, 45, 74);
INSERT INTO `thumb` (`thumb_id`, `thumb_up`, `thumb_down`, `userUserId`, `reviewReviewId`) VALUES (60, 0, 1, 96, 59);
INSERT INTO `thumb` (`thumb_id`, `thumb_up`, `thumb_down`, `userUserId`, `reviewReviewId`) VALUES (61, 0, 1, 48, 1);
INSERT INTO `thumb` (`thumb_id`, `thumb_up`, `thumb_down`, `userUserId`, `reviewReviewId`) VALUES (62, 1, 0, 33, 2);
INSERT INTO `thumb` (`thumb_id`, `thumb_up`, `thumb_down`, `userUserId`, `reviewReviewId`) VALUES (63, 0, 0, 53, 86);
INSERT INTO `thumb` (`thumb_id`, `thumb_up`, `thumb_down`, `userUserId`, `reviewReviewId`) VALUES (64, 1, 1, 57, 98);
INSERT INTO `thumb` (`thumb_id`, `thumb_up`, `thumb_down`, `userUserId`, `reviewReviewId`) VALUES (65, 0, 0, 85, 35);
INSERT INTO `thumb` (`thumb_id`, `thumb_up`, `thumb_down`, `userUserId`, `reviewReviewId`) VALUES (66, 1, 1, 86, 44);
INSERT INTO `thumb` (`thumb_id`, `thumb_up`, `thumb_down`, `userUserId`, `reviewReviewId`) VALUES (67, 0, 1, 8, 75);
INSERT INTO `thumb` (`thumb_id`, `thumb_up`, `thumb_down`, `userUserId`, `reviewReviewId`) VALUES (68, 1, 0, 19, 57);
INSERT INTO `thumb` (`thumb_id`, `thumb_up`, `thumb_down`, `userUserId`, `reviewReviewId`) VALUES (69, 1, 0, 78, 39);
INSERT INTO `thumb` (`thumb_id`, `thumb_up`, `thumb_down`, `userUserId`, `reviewReviewId`) VALUES (70, 1, 1, 7, 41);
INSERT INTO `thumb` (`thumb_id`, `thumb_up`, `thumb_down`, `userUserId`, `reviewReviewId`) VALUES (71, 0, 1, 21, 2);
INSERT INTO `thumb` (`thumb_id`, `thumb_up`, `thumb_down`, `userUserId`, `reviewReviewId`) VALUES (72, 0, 1, 89, 42);
INSERT INTO `thumb` (`thumb_id`, `thumb_up`, `thumb_down`, `userUserId`, `reviewReviewId`) VALUES (73, 0, 0, 95, 28);
INSERT INTO `thumb` (`thumb_id`, `thumb_up`, `thumb_down`, `userUserId`, `reviewReviewId`) VALUES (74, 1, 0, 79, 40);
INSERT INTO `thumb` (`thumb_id`, `thumb_up`, `thumb_down`, `userUserId`, `reviewReviewId`) VALUES (75, 1, 1, 1, 75);
INSERT INTO `thumb` (`thumb_id`, `thumb_up`, `thumb_down`, `userUserId`, `reviewReviewId`) VALUES (76, 0, 0, 99, 49);
INSERT INTO `thumb` (`thumb_id`, `thumb_up`, `thumb_down`, `userUserId`, `reviewReviewId`) VALUES (77, 1, 0, 76, 32);
INSERT INTO `thumb` (`thumb_id`, `thumb_up`, `thumb_down`, `userUserId`, `reviewReviewId`) VALUES (78, 0, 0, 50, 28);
INSERT INTO `thumb` (`thumb_id`, `thumb_up`, `thumb_down`, `userUserId`, `reviewReviewId`) VALUES (79, 1, 0, 17, 7);
INSERT INTO `thumb` (`thumb_id`, `thumb_up`, `thumb_down`, `userUserId`, `reviewReviewId`) VALUES (80, 0, 0, 25, 1);
INSERT INTO `thumb` (`thumb_id`, `thumb_up`, `thumb_down`, `userUserId`, `reviewReviewId`) VALUES (81, 1, 1, 41, 10);
INSERT INTO `thumb` (`thumb_id`, `thumb_up`, `thumb_down`, `userUserId`, `reviewReviewId`) VALUES (82, 1, 0, 45, 48);
INSERT INTO `thumb` (`thumb_id`, `thumb_up`, `thumb_down`, `userUserId`, `reviewReviewId`) VALUES (83, 0, 1, 85, 63);
INSERT INTO `thumb` (`thumb_id`, `thumb_up`, `thumb_down`, `userUserId`, `reviewReviewId`) VALUES (84, 1, 0, 5, 62);
INSERT INTO `thumb` (`thumb_id`, `thumb_up`, `thumb_down`, `userUserId`, `reviewReviewId`) VALUES (85, 0, 0, 2, 11);
INSERT INTO `thumb` (`thumb_id`, `thumb_up`, `thumb_down`, `userUserId`, `reviewReviewId`) VALUES (86, 1, 0, 3, 22);
INSERT INTO `thumb` (`thumb_id`, `thumb_up`, `thumb_down`, `userUserId`, `reviewReviewId`) VALUES (87, 0, 0, 12, 91);
INSERT INTO `thumb` (`thumb_id`, `thumb_up`, `thumb_down`, `userUserId`, `reviewReviewId`) VALUES (88, 0, 1, 64, 7);
INSERT INTO `thumb` (`thumb_id`, `thumb_up`, `thumb_down`, `userUserId`, `reviewReviewId`) VALUES (89, 1, 0, 18, 43);
INSERT INTO `thumb` (`thumb_id`, `thumb_up`, `thumb_down`, `userUserId`, `reviewReviewId`) VALUES (90, 1, 0, 47, 19);
INSERT INTO `thumb` (`thumb_id`, `thumb_up`, `thumb_down`, `userUserId`, `reviewReviewId`) VALUES (91, 0, 1, 17, 45);
INSERT INTO `thumb` (`thumb_id`, `thumb_up`, `thumb_down`, `userUserId`, `reviewReviewId`) VALUES (92, 0, 0, 67, 93);
INSERT INTO `thumb` (`thumb_id`, `thumb_up`, `thumb_down`, `userUserId`, `reviewReviewId`) VALUES (93, 0, 0, 76, 17);
INSERT INTO `thumb` (`thumb_id`, `thumb_up`, `thumb_down`, `userUserId`, `reviewReviewId`) VALUES (94, 1, 0, 20, 93);
INSERT INTO `thumb` (`thumb_id`, `thumb_up`, `thumb_down`, `userUserId`, `reviewReviewId`) VALUES (95, 1, 0, 23, 45);
INSERT INTO `thumb` (`thumb_id`, `thumb_up`, `thumb_down`, `userUserId`, `reviewReviewId`) VALUES (96, 1, 1, 94, 63);
INSERT INTO `thumb` (`thumb_id`, `thumb_up`, `thumb_down`, `userUserId`, `reviewReviewId`) VALUES (97, 1, 1, 55, 39);
INSERT INTO `thumb` (`thumb_id`, `thumb_up`, `thumb_down`, `userUserId`, `reviewReviewId`) VALUES (98, 1, 0, 11, 39);
INSERT INTO `thumb` (`thumb_id`, `thumb_up`, `thumb_down`, `userUserId`, `reviewReviewId`) VALUES (99, 1, 0, 1, 15);
INSERT INTO `thumb` (`thumb_id`, `thumb_up`, `thumb_down`, `userUserId`, `reviewReviewId`) VALUES (100, 0, 0, 1, 3);


#
# TABLE STRUCTURE FOR: user
#

DROP TABLE IF EXISTS `user`;

CREATE TABLE `user` (
  `user_id` int(11) NOT NULL AUTO_INCREMENT,
  `phone_number` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `password` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `nickname` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `self_posx` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `self_posy` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `exemption_count` int(11) NOT NULL,
  PRIMARY KEY (`user_id`)
) ENGINE=InnoDB AUTO_INCREMENT=101 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

INSERT INTO `user` (`user_id`, `phone_number`, `password`, `nickname`, `self_posx`, `self_posy`, `exemption_count`) VALUES (1, '08548143399', '4b6329347c537f59929994f4d773026db92ddb52', 'laudantium', '9', '4', 7573);
INSERT INTO `user` (`user_id`, `phone_number`, `password`, `nickname`, `self_posx`, `self_posy`, `exemption_count`) VALUES (2, '777.621.2586x04845', 'bc7da9f126b29dc907f8f0c1ec9b63d52dc17e16', 'molestiae', '2', '7', 0);
INSERT INTO `user` (`user_id`, `phone_number`, `password`, `nickname`, `self_posx`, `self_posy`, `exemption_count`) VALUES (3, '1-197-938-5303x56899', '46173d9fd95bbf2af835abbfa28ca7523847ae0d', 'beatae', '', '3', 491);
INSERT INTO `user` (`user_id`, `phone_number`, `password`, `nickname`, `self_posx`, `self_posy`, `exemption_count`) VALUES (4, '780-761-4667', '6f21a41555a097ea32ae92877292f6f4875a2480', 'ipsam', '2', '9', 922961);
INSERT INTO `user` (`user_id`, `phone_number`, `password`, `nickname`, `self_posx`, `self_posy`, `exemption_count`) VALUES (5, '863.837.7046x487', '28f443142cd3d28aeb5fd8a6afa93530b4d5bad9', 'sed', '4', '2', 795497895);
INSERT INTO `user` (`user_id`, `phone_number`, `password`, `nickname`, `self_posx`, `self_posy`, `exemption_count`) VALUES (6, '1-746-090-5493', '2885260df3c2733a9d139a065010eaeb5e1c0464', 'incidunt', '9', '8', 92269304);
INSERT INTO `user` (`user_id`, `phone_number`, `password`, `nickname`, `self_posx`, `self_posy`, `exemption_count`) VALUES (7, '917-920-6194x088', '8b6cf42db623dbc2e9b7ca010786693a4eec37a6', 'veritatis', '3', '', 8095868);
INSERT INTO `user` (`user_id`, `phone_number`, `password`, `nickname`, `self_posx`, `self_posy`, `exemption_count`) VALUES (8, '871-131-4297x69687', '5a542f2e8593615bf57dcf1820562171eb4d1d71', 'incidunt', '5', '9', 93928);
INSERT INTO `user` (`user_id`, `phone_number`, `password`, `nickname`, `self_posx`, `self_posy`, `exemption_count`) VALUES (9, '(148)316-9781', '400ea385efe8128036ccd6c67e2cc05aea175bab', 'laudantium', '5', '5', 253);
INSERT INTO `user` (`user_id`, `phone_number`, `password`, `nickname`, `self_posx`, `self_posy`, `exemption_count`) VALUES (10, '+60(0)1401235487', 'cb7344ccb7553f16431c90896fe7c3d8f425d2b0', 'fugiat', '', '', 0);
INSERT INTO `user` (`user_id`, `phone_number`, `password`, `nickname`, `self_posx`, `self_posy`, `exemption_count`) VALUES (11, '(061)569-5817', '6ae74a9e56c5adc7d2b6265f4662e5d0d31efc3a', 'laboriosam', '1', '9', 517);
INSERT INTO `user` (`user_id`, `phone_number`, `password`, `nickname`, `self_posx`, `self_posy`, `exemption_count`) VALUES (12, '615.454.2913', 'f6c23d7a811d7904cbeee89431df4d803cb536ad', 'et', '6', '3', 568456);
INSERT INTO `user` (`user_id`, `phone_number`, `password`, `nickname`, `self_posx`, `self_posy`, `exemption_count`) VALUES (13, '824.153.7746', 'f9776dcf86318d20d40f41f0b8c571b69c36fdb4', 'quidem', '', '7', 899);
INSERT INTO `user` (`user_id`, `phone_number`, `password`, `nickname`, `self_posx`, `self_posy`, `exemption_count`) VALUES (14, '07741640823', '11b0cf518a9100815d7b18cc157271ddaf95ed0a', 'et', '5', '4', 67204);
INSERT INTO `user` (`user_id`, `phone_number`, `password`, `nickname`, `self_posx`, `self_posy`, `exemption_count`) VALUES (15, '+62(3)6587070350', '71070f0873afa8e6f638778afbcf5028a22f5605', 'vero', '5', '', 0);
INSERT INTO `user` (`user_id`, `phone_number`, `password`, `nickname`, `self_posx`, `self_posy`, `exemption_count`) VALUES (16, '1-913-670-6489', 'a4e4c7c3a54216b04aefb2fccecd758ec15e2304', 'ipsum', '7', '1', 49676);
INSERT INTO `user` (`user_id`, `phone_number`, `password`, `nickname`, `self_posx`, `self_posy`, `exemption_count`) VALUES (17, '(970)983-8795', '710016c596e28af31c474a738b9761a54bfd06cd', 'totam', '4', '9', 3115831);
INSERT INTO `user` (`user_id`, `phone_number`, `password`, `nickname`, `self_posx`, `self_posy`, `exemption_count`) VALUES (18, '+06(3)0075709012', '46b9dff58ca7f710a23df70d6c36ca2c4d47f08f', 'atque', '5', '9', 344301);
INSERT INTO `user` (`user_id`, `phone_number`, `password`, `nickname`, `self_posx`, `self_posy`, `exemption_count`) VALUES (19, '(618)491-8987x40632', 'efc4d5c12121765c44cf7fcec4b014d5aadaa9fe', 'minus', '7', '1', 5472);
INSERT INTO `user` (`user_id`, `phone_number`, `password`, `nickname`, `self_posx`, `self_posy`, `exemption_count`) VALUES (20, '325-393-4612x09470', 'bcd33865e310c53929cd23d1f8e6f8e810b740ba', 'animi', '9', '7', 0);
INSERT INTO `user` (`user_id`, `phone_number`, `password`, `nickname`, `self_posx`, `self_posy`, `exemption_count`) VALUES (21, '00863457112', '57689d14f12b971a317c3501c9f54592f24b3344', 'quod', '7', '6', 314435);
INSERT INTO `user` (`user_id`, `phone_number`, `password`, `nickname`, `self_posx`, `self_posy`, `exemption_count`) VALUES (22, '007.561.5503x29915', '9ba20fa62bddd098558988b0aa11d60043195ca7', 'nulla', '7', '6', 883003687);
INSERT INTO `user` (`user_id`, `phone_number`, `password`, `nickname`, `self_posx`, `self_posy`, `exemption_count`) VALUES (23, '1-442-824-6289x729', '332254a08bb319b1ec8d3b211b529f4b7325e2c0', 'maxime', '1', '1', 73657935);
INSERT INTO `user` (`user_id`, `phone_number`, `password`, `nickname`, `self_posx`, `self_posy`, `exemption_count`) VALUES (24, '831-159-7167', 'b41a3a0e1994a9764d5e790898bd8fb087c6e9aa', 'qui', '2', '8', 135055170);
INSERT INTO `user` (`user_id`, `phone_number`, `password`, `nickname`, `self_posx`, `self_posy`, `exemption_count`) VALUES (25, '(815)441-0879x922', 'b49cf7e01c54d7f5d57a0bfc6a2024d6c9836544', 'dolorem', '5', '9', 7357);
INSERT INTO `user` (`user_id`, `phone_number`, `password`, `nickname`, `self_posx`, `self_posy`, `exemption_count`) VALUES (26, '474.715.4775x008', 'e28e6d634a1469a0a39c79ec83e864dad653c36c', 'laboriosam', '3', '8', 51858540);
INSERT INTO `user` (`user_id`, `phone_number`, `password`, `nickname`, `self_posx`, `self_posy`, `exemption_count`) VALUES (27, '(054)429-5042', '94d6dd614199aedba8d7e73a7e71c6d47164518d', 'blanditiis', '9', '3', 8859);
INSERT INTO `user` (`user_id`, `phone_number`, `password`, `nickname`, `self_posx`, `self_posy`, `exemption_count`) VALUES (28, '306-254-8140x45746', '82b2d394d6b1314721e4826bf0aeb34b6b92d3d2', 'odio', '8', '9', 823240);
INSERT INTO `user` (`user_id`, `phone_number`, `password`, `nickname`, `self_posx`, `self_posy`, `exemption_count`) VALUES (29, '1-069-085-3882x73581', '2842db96d8b1c657c23b063354d3658f3c3de3f5', 'minus', '5', '9', 2);
INSERT INTO `user` (`user_id`, `phone_number`, `password`, `nickname`, `self_posx`, `self_posy`, `exemption_count`) VALUES (30, '1-224-389-8367x021', 'ad291b1550b1f316c78fec3792fd7bae6c08fbe7', 'molestias', '', '4', 71571814);
INSERT INTO `user` (`user_id`, `phone_number`, `password`, `nickname`, `self_posx`, `self_posy`, `exemption_count`) VALUES (31, '507.249.7966x48580', 'e62c1336b73aff804d1d67024c29203fd0eb8020', 'labore', '8', '8', 4);
INSERT INTO `user` (`user_id`, `phone_number`, `password`, `nickname`, `self_posx`, `self_posy`, `exemption_count`) VALUES (32, '(675)001-9130', 'e605e266fbcdb453d1024ac7473ca29a3e3dd8b0', 'qui', '9', '2', 17827);
INSERT INTO `user` (`user_id`, `phone_number`, `password`, `nickname`, `self_posx`, `self_posy`, `exemption_count`) VALUES (33, '1-355-419-4150x590', 'b770addeb8464dbc327d5d91568f089a8a249602', 'unde', '7', '7', 86);
INSERT INTO `user` (`user_id`, `phone_number`, `password`, `nickname`, `self_posx`, `self_posy`, `exemption_count`) VALUES (34, '1-945-630-0261x358', 'a89cba9fb327ecb6a78c899f78f628a14349356d', 'esse', '6', '5', 6);
INSERT INTO `user` (`user_id`, `phone_number`, `password`, `nickname`, `self_posx`, `self_posy`, `exemption_count`) VALUES (35, '050.620.6516x79666', 'f0a146a960c7a8d2bf91a9846ff2d315ce3cb155', 'et', '3', '9', 82);
INSERT INTO `user` (`user_id`, `phone_number`, `password`, `nickname`, `self_posx`, `self_posy`, `exemption_count`) VALUES (36, '09961989632', '71444295f650c0671e984aaf192dfe7298802c86', 'voluptates', '3', '', 1595759);
INSERT INTO `user` (`user_id`, `phone_number`, `password`, `nickname`, `self_posx`, `self_posy`, `exemption_count`) VALUES (37, '430.241.2183x29614', '7cee993b30b03e262c757f26f2aa6d559e49e797', 'necessitatibus', '3', '7', 0);
INSERT INTO `user` (`user_id`, `phone_number`, `password`, `nickname`, `self_posx`, `self_posy`, `exemption_count`) VALUES (38, '1-460-268-4645', 'dd8a23057d976c2a5221cef33b3e2c410593b12d', 'magni', '', '4', 760056012);
INSERT INTO `user` (`user_id`, `phone_number`, `password`, `nickname`, `self_posx`, `self_posy`, `exemption_count`) VALUES (39, '(875)815-2612x005', '98131a8299c2ab811f62bc4e168bd92151211392', 'nulla', '6', '1', 779705);
INSERT INTO `user` (`user_id`, `phone_number`, `password`, `nickname`, `self_posx`, `self_posy`, `exemption_count`) VALUES (40, '(827)283-6397', '3b0dee851874b603d2e94a0c18abb61f103f2ceb', 'dignissimos', '9', '3', 709);
INSERT INTO `user` (`user_id`, `phone_number`, `password`, `nickname`, `self_posx`, `self_posy`, `exemption_count`) VALUES (41, '05874666278', '33cb50a310f25217c15e6d56141f6f067e70b767', 'quia', '', '7', 72267369);
INSERT INTO `user` (`user_id`, `phone_number`, `password`, `nickname`, `self_posx`, `self_posy`, `exemption_count`) VALUES (42, '+56(3)4258954182', '0d8b793c200629f73af2579e31b80b24aa14dad7', 'beatae', '9', '9', 4434609);
INSERT INTO `user` (`user_id`, `phone_number`, `password`, `nickname`, `self_posx`, `self_posy`, `exemption_count`) VALUES (43, '(496)998-3618', 'e78567d0ff0e7cfb3d1e60aea8f624f66d27fdd5', 'ipsam', '2', '4', 674621);
INSERT INTO `user` (`user_id`, `phone_number`, `password`, `nickname`, `self_posx`, `self_posy`, `exemption_count`) VALUES (44, '(482)266-6889x9461', 'd1cbc9f3671657c4c598672d1ebd9619d7ead6c0', 'minus', '2', '5', 28120482);
INSERT INTO `user` (`user_id`, `phone_number`, `password`, `nickname`, `self_posx`, `self_posy`, `exemption_count`) VALUES (45, '(462)320-5719x91406', '19d44fa5f5233db36c179010d41f08a24628d4af', 'placeat', '3', '3', 3689);
INSERT INTO `user` (`user_id`, `phone_number`, `password`, `nickname`, `self_posx`, `self_posy`, `exemption_count`) VALUES (46, '592-752-5008x58563', 'e498abb3fa669db3619dc5374b22a0bdaa32cd94', 'beatae', '6', '3', 3614604);
INSERT INTO `user` (`user_id`, `phone_number`, `password`, `nickname`, `self_posx`, `self_posy`, `exemption_count`) VALUES (47, '1-167-648-5058', '541a3920fce1a2f6a7870d625cc41824b1cf2b86', 'aliquam', '2', '2', 2709451);
INSERT INTO `user` (`user_id`, `phone_number`, `password`, `nickname`, `self_posx`, `self_posy`, `exemption_count`) VALUES (48, '606.763.7219', '3dede8077508335f179e8e2d0f0f8541955ed1cf', 'eius', '5', '7', 654);
INSERT INTO `user` (`user_id`, `phone_number`, `password`, `nickname`, `self_posx`, `self_posy`, `exemption_count`) VALUES (49, '989-036-0698x132', '7b69b63b3d952c91faec83f837eaee0d7da9a1c3', 'in', '8', '9', 29586);
INSERT INTO `user` (`user_id`, `phone_number`, `password`, `nickname`, `self_posx`, `self_posy`, `exemption_count`) VALUES (50, '735-847-6709', '2c12bb9d8f9e1f4fb0626afd511da35768884db4', 'dolores', '', '2', 4855);
INSERT INTO `user` (`user_id`, `phone_number`, `password`, `nickname`, `self_posx`, `self_posy`, `exemption_count`) VALUES (51, '208-828-6035x03375', 'de114c3b271b87a61961dfbe4eed784da54ed035', 'deserunt', '9', '9', 2273491);
INSERT INTO `user` (`user_id`, `phone_number`, `password`, `nickname`, `self_posx`, `self_posy`, `exemption_count`) VALUES (52, '05404201836', '95eebb7ce2a5102d0e054cefde908198c058d103', 'laborum', '7', '2', 534338368);
INSERT INTO `user` (`user_id`, `phone_number`, `password`, `nickname`, `self_posx`, `self_posy`, `exemption_count`) VALUES (53, '972-640-1344', '691dd879d1302c6d855db6d0e1478dabd9c7d5ad', 'architecto', '6', '3', 7301256);
INSERT INTO `user` (`user_id`, `phone_number`, `password`, `nickname`, `self_posx`, `self_posy`, `exemption_count`) VALUES (54, '+05(1)4512458835', 'f9e095f3e691f31e317d180d789ca443d0f8e178', 'vitae', '3', '9', 115953);
INSERT INTO `user` (`user_id`, `phone_number`, `password`, `nickname`, `self_posx`, `self_posy`, `exemption_count`) VALUES (55, '(193)521-5716x87423', '2a38956c4ae101874d59b549d90851c2c4d21171', 'et', '2', '', 131267);
INSERT INTO `user` (`user_id`, `phone_number`, `password`, `nickname`, `self_posx`, `self_posy`, `exemption_count`) VALUES (56, '317.608.3020x586', '3ec0b541ad6bfa183bfa87a7c5ece1ec1e6a1875', 'officiis', '9', '1', 64915469);
INSERT INTO `user` (`user_id`, `phone_number`, `password`, `nickname`, `self_posx`, `self_posy`, `exemption_count`) VALUES (57, '183.510.0372x358', 'd0eef27d5fd29b7c17cb9881e858718a0443c354', 'et', '4', '7', 869682080);
INSERT INTO `user` (`user_id`, `phone_number`, `password`, `nickname`, `self_posx`, `self_posy`, `exemption_count`) VALUES (58, '743-856-1971', '729e0d9110a014156d9eeaf7e6ae12db655574f3', 'ea', '9', '6', 825);
INSERT INTO `user` (`user_id`, `phone_number`, `password`, `nickname`, `self_posx`, `self_posy`, `exemption_count`) VALUES (59, '1-449-176-0327x355', '388c0f99f10c22ebe26f702bb6ae485d242195eb', 'repudiandae', '4', '3', 90232257);
INSERT INTO `user` (`user_id`, `phone_number`, `password`, `nickname`, `self_posx`, `self_posy`, `exemption_count`) VALUES (60, '128.871.0422x7165', 'cd389acec1d61b9cc60c819248938c6fe56339df', 'et', '9', '9', 0);
INSERT INTO `user` (`user_id`, `phone_number`, `password`, `nickname`, `self_posx`, `self_posy`, `exemption_count`) VALUES (61, '(015)113-1678', '1fdf78422d6aed5d946b2e0a069f43492c0c5908', 'aut', '', '8', 307445);
INSERT INTO `user` (`user_id`, `phone_number`, `password`, `nickname`, `self_posx`, `self_posy`, `exemption_count`) VALUES (62, '01108488463', '72c8fefbc17a4bc55ab8c830ac4854b1615a8bea', 'et', '3', '4', 0);
INSERT INTO `user` (`user_id`, `phone_number`, `password`, `nickname`, `self_posx`, `self_posy`, `exemption_count`) VALUES (63, '(811)531-8729x34679', '543fca32a2c22ff19c0bf932d5cacc62d8119b0f', 'neque', '1', '7', 369359);
INSERT INTO `user` (`user_id`, `phone_number`, `password`, `nickname`, `self_posx`, `self_posy`, `exemption_count`) VALUES (64, '1-016-963-5670x7331', '7a4d962f87dd013a5d4a32524c4590464719934b', 'sunt', '1', '8', 0);
INSERT INTO `user` (`user_id`, `phone_number`, `password`, `nickname`, `self_posx`, `self_posy`, `exemption_count`) VALUES (65, '809.213.2692x6019', '67a081e1ff83cc153b170e9474fa27aa55cc16e0', 'velit', '4', '1', 3);
INSERT INTO `user` (`user_id`, `phone_number`, `password`, `nickname`, `self_posx`, `self_posy`, `exemption_count`) VALUES (66, '904.808.8747x407', '0308f9631153c47ef660d4b415d3ff883eacb6db', 'consequuntur', '8', '2', 259307);
INSERT INTO `user` (`user_id`, `phone_number`, `password`, `nickname`, `self_posx`, `self_posy`, `exemption_count`) VALUES (67, '(697)595-0773', 'a1962dd9307360be73f999c1ed2fb6881542ca2b', 'impedit', '8', '6', 0);
INSERT INTO `user` (`user_id`, `phone_number`, `password`, `nickname`, `self_posx`, `self_posy`, `exemption_count`) VALUES (68, '892-019-0774', 'd7d4c83233d685f96a1e3e87c6f01e6738acfb58', 'et', '9', '5', 395384849);
INSERT INTO `user` (`user_id`, `phone_number`, `password`, `nickname`, `self_posx`, `self_posy`, `exemption_count`) VALUES (69, '339.300.7708x207', '98b44e89870db9d8e6cab28005350618dbf765b4', 'consequatur', '1', '6', 47717);
INSERT INTO `user` (`user_id`, `phone_number`, `password`, `nickname`, `self_posx`, `self_posy`, `exemption_count`) VALUES (70, '05818000930', '3254fcecd5bde8c876f87953989d7a99940637b0', 'accusamus', '3', '7', 290690502);
INSERT INTO `user` (`user_id`, `phone_number`, `password`, `nickname`, `self_posx`, `self_posy`, `exemption_count`) VALUES (71, '00703891537', 'a1c7e597e4c0116408ba1f63ba8ce3dbe39deb58', 'praesentium', '7', '4', 1411899);
INSERT INTO `user` (`user_id`, `phone_number`, `password`, `nickname`, `self_posx`, `self_posy`, `exemption_count`) VALUES (72, '+60(4)4509974214', '456f6406191ddf3b4adc816437845c7d7a7a6cf2', 'expedita', '8', '5', 63045);
INSERT INTO `user` (`user_id`, `phone_number`, `password`, `nickname`, `self_posx`, `self_posy`, `exemption_count`) VALUES (73, '217.071.7334x432', 'c53d66751db058ff91ba4fc3d20e282b27dcead2', 'sed', '8', '5', 677);
INSERT INTO `user` (`user_id`, `phone_number`, `password`, `nickname`, `self_posx`, `self_posy`, `exemption_count`) VALUES (74, '360.774.6724', '9a0356b5b01d52a41d8c82fc5003efb5d77142b1', 'dicta', '6', '1', 467828947);
INSERT INTO `user` (`user_id`, `phone_number`, `password`, `nickname`, `self_posx`, `self_posy`, `exemption_count`) VALUES (75, '142.728.9176', '5d8291ef3edf68f14230accddc32c431db5cbef2', 'animi', '5', '3', 89422562);
INSERT INTO `user` (`user_id`, `phone_number`, `password`, `nickname`, `self_posx`, `self_posy`, `exemption_count`) VALUES (76, '08819134369', '384d816b783b1ac556ef90872c25a730c55a98da', 'porro', '8', '3', 5175);
INSERT INTO `user` (`user_id`, `phone_number`, `password`, `nickname`, `self_posx`, `self_posy`, `exemption_count`) VALUES (77, '1-589-275-0051x943', '50527cd362650628204dc08b403955c7c4d3e1b0', 'fugit', '', '3', 7);
INSERT INTO `user` (`user_id`, `phone_number`, `password`, `nickname`, `self_posx`, `self_posy`, `exemption_count`) VALUES (78, '(221)137-9317x7542', '0b678a2ea000404d919aa8d1d510610db707e8cc', 'ipsam', '7', '8', 6161159);
INSERT INTO `user` (`user_id`, `phone_number`, `password`, `nickname`, `self_posx`, `self_posy`, `exemption_count`) VALUES (79, '1-522-665-7225', 'f741fd2c9da2b783ed961c6cba034be8b4dcbf2d', 'quo', '6', '7', 2773);
INSERT INTO `user` (`user_id`, `phone_number`, `password`, `nickname`, `self_posx`, `self_posy`, `exemption_count`) VALUES (80, '08858406193', '811258d7ee9fcb87e1aafa9594ca08de525643de', 'itaque', '2', '8', 1857643);
INSERT INTO `user` (`user_id`, `phone_number`, `password`, `nickname`, `self_posx`, `self_posy`, `exemption_count`) VALUES (81, '1-543-267-7673x71148', '249eaa860aaccc7c2e61b45609f635bfc4666755', 'quos', '5', '6', 56);
INSERT INTO `user` (`user_id`, `phone_number`, `password`, `nickname`, `self_posx`, `self_posy`, `exemption_count`) VALUES (82, '617-955-6437', 'eb5fdefeb162eb96b6c884a1e6a95ff29be45e1b', 'adipisci', '1', '2', 2311756);
INSERT INTO `user` (`user_id`, `phone_number`, `password`, `nickname`, `self_posx`, `self_posy`, `exemption_count`) VALUES (83, '05800750336', '5bccd72a4bc378992ccfdcbf7280cda24782732c', 'perspiciatis', '3', '4', 758394);
INSERT INTO `user` (`user_id`, `phone_number`, `password`, `nickname`, `self_posx`, `self_posy`, `exemption_count`) VALUES (84, '187.354.2361x3162', '6868e1ae9d91e19da6b6b5d60518837d1e3c3265', 'inventore', '4', '1', 8514);
INSERT INTO `user` (`user_id`, `phone_number`, `password`, `nickname`, `self_posx`, `self_posy`, `exemption_count`) VALUES (85, '872.096.0464x578', 'b06a7a63783c794c8331d4c19ab934f48a33b76d', 'eos', '3', '3', 9595871);
INSERT INTO `user` (`user_id`, `phone_number`, `password`, `nickname`, `self_posx`, `self_posy`, `exemption_count`) VALUES (86, '1-336-684-2933x2539', 'f1a10aceedc2b676c01863b7338074ba6b1e1c2f', 'iure', '2', '4', 7660);
INSERT INTO `user` (`user_id`, `phone_number`, `password`, `nickname`, `self_posx`, `self_posy`, `exemption_count`) VALUES (87, '262.032.3233x5428', 'c087bf7bc3e7581994cafc38cb411f78b3912f32', 'aliquid', '1', '3', 86567);
INSERT INTO `user` (`user_id`, `phone_number`, `password`, `nickname`, `self_posx`, `self_posy`, `exemption_count`) VALUES (88, '606.051.2947', 'e021028d6342979326fcf04f8147492d84f9cb3c', 'facere', '6', '1', 8729718);
INSERT INTO `user` (`user_id`, `phone_number`, `password`, `nickname`, `self_posx`, `self_posy`, `exemption_count`) VALUES (89, '03959599394', '64f73cc014bf51c9d08b53961736d26cc91c6002', 'illo', '', '5', 79105);
INSERT INTO `user` (`user_id`, `phone_number`, `password`, `nickname`, `self_posx`, `self_posy`, `exemption_count`) VALUES (90, '1-517-754-6620', '4b1b8a4b8f585f33454a2564b98ff4494837df8a', 'voluptatem', '6', '7', 7);
INSERT INTO `user` (`user_id`, `phone_number`, `password`, `nickname`, `self_posx`, `self_posy`, `exemption_count`) VALUES (91, '+46(5)0441804846', 'ca26810e9231ac3d559605ca0e86ee15ac5f1ea9', 'quo', '7', '8', 60);
INSERT INTO `user` (`user_id`, `phone_number`, `password`, `nickname`, `self_posx`, `self_posy`, `exemption_count`) VALUES (92, '009-613-5043x574', '83c57df7a97b5fd86bbc171649f0cee474477c0e', 'quas', '8', '5', 167842);
INSERT INTO `user` (`user_id`, `phone_number`, `password`, `nickname`, `self_posx`, `self_posy`, `exemption_count`) VALUES (93, '(640)676-7346', 'bfc7608ab206a77298c2900794442d7d2c0bb97f', 'excepturi', '4', '1', 44311);
INSERT INTO `user` (`user_id`, `phone_number`, `password`, `nickname`, `self_posx`, `self_posy`, `exemption_count`) VALUES (94, '1-265-017-7583', '324d675388f4bdd827e265abcbe7b5783513e20a', 'amet', '9', '1', 216);
INSERT INTO `user` (`user_id`, `phone_number`, `password`, `nickname`, `self_posx`, `self_posy`, `exemption_count`) VALUES (95, '(710)658-0891x2411', '1c36e1dd31c4531e7aee921ce327e4d702e86881', 'blanditiis', '7', '6', 0);
INSERT INTO `user` (`user_id`, `phone_number`, `password`, `nickname`, `self_posx`, `self_posy`, `exemption_count`) VALUES (96, '851.827.0260x81164', '8e6d6bcf8a8638885e189ce54794b37392d3bbb8', 'quia', '5', '4', 489222256);
INSERT INTO `user` (`user_id`, `phone_number`, `password`, `nickname`, `self_posx`, `self_posy`, `exemption_count`) VALUES (97, '123.307.6770x25417', '8ee0c724b0246395f900604fa96bc112d4e2b396', 'modi', '3', '', 0);
INSERT INTO `user` (`user_id`, `phone_number`, `password`, `nickname`, `self_posx`, `self_posy`, `exemption_count`) VALUES (98, '+80(0)2399131202', 'f0432d24737a951e60e8bf72c17ea31790c5e2fb', 'sit', '7', '2', 4511709);
INSERT INTO `user` (`user_id`, `phone_number`, `password`, `nickname`, `self_posx`, `self_posy`, `exemption_count`) VALUES (99, '096.628.7289x40019', 'f4ca6fae1ea1f546f75d522d24ea20bf71ba29c0', 'omnis', '2', '5', 68601558);
INSERT INTO `user` (`user_id`, `phone_number`, `password`, `nickname`, `self_posx`, `self_posy`, `exemption_count`) VALUES (100, '935.547.7543', 'a15f9a7c88efdaf59e5b4f8f919de25e31d08355', 'totam', '9', '6', 1378642);


