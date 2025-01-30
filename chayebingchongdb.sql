/*
 Navicat Premium Data Transfer

 Source Server         : mysql8
 Source Server Type    : MySQL
 Source Server Version : 80036 (8.0.36)
 Source Host           : localhost:3308
 Source Schema         : chayebingchongdb

 Target Server Type    : MySQL
 Target Server Version : 80036 (8.0.36)
 File Encoding         : 65001

 Date: 12/11/2024 19:40:53
*/

SET NAMES utf8mb4;
SET FOREIGN_KEY_CHECKS = 0;

-- ----------------------------
-- Table structure for auth_group
-- ----------------------------
DROP TABLE IF EXISTS `auth_group`;
CREATE TABLE `auth_group`  (
  `id` int NOT NULL AUTO_INCREMENT,
  `name` varchar(150) CHARACTER SET utf8mb3 COLLATE utf8mb3_general_ci NOT NULL,
  PRIMARY KEY (`id`) USING BTREE,
  UNIQUE INDEX `name`(`name` ASC) USING BTREE
) ENGINE = InnoDB AUTO_INCREMENT = 1 CHARACTER SET = utf8mb3 COLLATE = utf8mb3_general_ci ROW_FORMAT = Dynamic;

-- ----------------------------
-- Records of auth_group
-- ----------------------------

-- ----------------------------
-- Table structure for auth_group_permissions
-- ----------------------------
DROP TABLE IF EXISTS `auth_group_permissions`;
CREATE TABLE `auth_group_permissions`  (
  `id` bigint NOT NULL AUTO_INCREMENT,
  `group_id` int NOT NULL,
  `permission_id` int NOT NULL,
  PRIMARY KEY (`id`) USING BTREE,
  UNIQUE INDEX `auth_group_permissions_group_id_permission_id_0cd325b0_uniq`(`group_id` ASC, `permission_id` ASC) USING BTREE,
  INDEX `auth_group_permissio_permission_id_84c5c92e_fk_auth_perm`(`permission_id` ASC) USING BTREE,
  CONSTRAINT `auth_group_permissio_permission_id_84c5c92e_fk_auth_perm` FOREIGN KEY (`permission_id`) REFERENCES `auth_permission` (`id`) ON DELETE RESTRICT ON UPDATE RESTRICT,
  CONSTRAINT `auth_group_permissions_group_id_b120cbf9_fk_auth_group_id` FOREIGN KEY (`group_id`) REFERENCES `auth_group` (`id`) ON DELETE RESTRICT ON UPDATE RESTRICT
) ENGINE = InnoDB AUTO_INCREMENT = 1 CHARACTER SET = utf8mb3 COLLATE = utf8mb3_general_ci ROW_FORMAT = Dynamic;

-- ----------------------------
-- Records of auth_group_permissions
-- ----------------------------

-- ----------------------------
-- Table structure for auth_permission
-- ----------------------------
DROP TABLE IF EXISTS `auth_permission`;
CREATE TABLE `auth_permission`  (
  `id` int NOT NULL AUTO_INCREMENT,
  `name` varchar(255) CHARACTER SET utf8mb3 COLLATE utf8mb3_general_ci NOT NULL,
  `content_type_id` int NOT NULL,
  `codename` varchar(100) CHARACTER SET utf8mb3 COLLATE utf8mb3_general_ci NOT NULL,
  PRIMARY KEY (`id`) USING BTREE,
  UNIQUE INDEX `auth_permission_content_type_id_codename_01ab375a_uniq`(`content_type_id` ASC, `codename` ASC) USING BTREE,
  CONSTRAINT `auth_permission_content_type_id_2f476e4b_fk_django_co` FOREIGN KEY (`content_type_id`) REFERENCES `django_content_type` (`id`) ON DELETE RESTRICT ON UPDATE RESTRICT
) ENGINE = InnoDB AUTO_INCREMENT = 37 CHARACTER SET = utf8mb3 COLLATE = utf8mb3_general_ci ROW_FORMAT = Dynamic;

-- ----------------------------
-- Records of auth_permission
-- ----------------------------
INSERT INTO `auth_permission` VALUES (1, 'Can add log entry', 1, 'add_logentry');
INSERT INTO `auth_permission` VALUES (2, 'Can change log entry', 1, 'change_logentry');
INSERT INTO `auth_permission` VALUES (3, 'Can delete log entry', 1, 'delete_logentry');
INSERT INTO `auth_permission` VALUES (4, 'Can view log entry', 1, 'view_logentry');
INSERT INTO `auth_permission` VALUES (5, 'Can add permission', 2, 'add_permission');
INSERT INTO `auth_permission` VALUES (6, 'Can change permission', 2, 'change_permission');
INSERT INTO `auth_permission` VALUES (7, 'Can delete permission', 2, 'delete_permission');
INSERT INTO `auth_permission` VALUES (8, 'Can view permission', 2, 'view_permission');
INSERT INTO `auth_permission` VALUES (9, 'Can add group', 3, 'add_group');
INSERT INTO `auth_permission` VALUES (10, 'Can change group', 3, 'change_group');
INSERT INTO `auth_permission` VALUES (11, 'Can delete group', 3, 'delete_group');
INSERT INTO `auth_permission` VALUES (12, 'Can view group', 3, 'view_group');
INSERT INTO `auth_permission` VALUES (13, 'Can add content type', 4, 'add_contenttype');
INSERT INTO `auth_permission` VALUES (14, 'Can change content type', 4, 'change_contenttype');
INSERT INTO `auth_permission` VALUES (15, 'Can delete content type', 4, 'delete_contenttype');
INSERT INTO `auth_permission` VALUES (16, 'Can view content type', 4, 'view_contenttype');
INSERT INTO `auth_permission` VALUES (17, 'Can add session', 5, 'add_session');
INSERT INTO `auth_permission` VALUES (18, 'Can change session', 5, 'change_session');
INSERT INTO `auth_permission` VALUES (19, 'Can delete session', 5, 'delete_session');
INSERT INTO `auth_permission` VALUES (20, 'Can view session', 5, 'view_session');
INSERT INTO `auth_permission` VALUES (21, 'Can add 识别记录', 6, 'add_identifylog');
INSERT INTO `auth_permission` VALUES (22, 'Can change 识别记录', 6, 'change_identifylog');
INSERT INTO `auth_permission` VALUES (23, 'Can delete 识别记录', 6, 'delete_identifylog');
INSERT INTO `auth_permission` VALUES (24, 'Can view 识别记录', 6, 'view_identifylog');
INSERT INTO `auth_permission` VALUES (25, 'Can add 用户信息', 7, 'add_user');
INSERT INTO `auth_permission` VALUES (26, 'Can change 用户信息', 7, 'change_user');
INSERT INTO `auth_permission` VALUES (27, 'Can delete 用户信息', 7, 'delete_user');
INSERT INTO `auth_permission` VALUES (28, 'Can view 用户信息', 7, 'view_user');
INSERT INTO `auth_permission` VALUES (29, 'Can add captcha store', 8, 'add_captchastore');
INSERT INTO `auth_permission` VALUES (30, 'Can change captcha store', 8, 'change_captchastore');
INSERT INTO `auth_permission` VALUES (31, 'Can delete captcha store', 8, 'delete_captchastore');
INSERT INTO `auth_permission` VALUES (32, 'Can view captcha store', 8, 'view_captchastore');
INSERT INTO `auth_permission` VALUES (33, 'Can add yf', 9, 'add_yf');
INSERT INTO `auth_permission` VALUES (34, 'Can change yf', 9, 'change_yf');
INSERT INTO `auth_permission` VALUES (35, 'Can delete yf', 9, 'delete_yf');
INSERT INTO `auth_permission` VALUES (36, 'Can view yf', 9, 'view_yf');

-- ----------------------------
-- Table structure for captcha_captchastore
-- ----------------------------
DROP TABLE IF EXISTS `captcha_captchastore`;
CREATE TABLE `captcha_captchastore`  (
  `id` int NOT NULL AUTO_INCREMENT,
  `challenge` varchar(32) CHARACTER SET utf8mb3 COLLATE utf8mb3_general_ci NOT NULL,
  `response` varchar(32) CHARACTER SET utf8mb3 COLLATE utf8mb3_general_ci NOT NULL,
  `hashkey` varchar(40) CHARACTER SET utf8mb3 COLLATE utf8mb3_general_ci NOT NULL,
  `expiration` datetime(6) NOT NULL,
  PRIMARY KEY (`id`) USING BTREE,
  UNIQUE INDEX `hashkey`(`hashkey` ASC) USING BTREE
) ENGINE = InnoDB AUTO_INCREMENT = 19 CHARACTER SET = utf8mb3 COLLATE = utf8mb3_general_ci ROW_FORMAT = Dynamic;

-- ----------------------------
-- Records of captcha_captchastore
-- ----------------------------
INSERT INTO `captcha_captchastore` VALUES (18, 'TZHR', 'tzhr', 'a5a6f7a05f2ace7702ed48847b6b4c07b8d42494', '2024-10-13 06:42:41.082016');

-- ----------------------------
-- Table structure for django_admin_log
-- ----------------------------
DROP TABLE IF EXISTS `django_admin_log`;
CREATE TABLE `django_admin_log`  (
  `id` int NOT NULL AUTO_INCREMENT,
  `action_time` datetime(6) NOT NULL,
  `object_id` longtext CHARACTER SET utf8mb3 COLLATE utf8mb3_general_ci NULL,
  `object_repr` varchar(200) CHARACTER SET utf8mb3 COLLATE utf8mb3_general_ci NOT NULL,
  `action_flag` smallint UNSIGNED NOT NULL,
  `change_message` longtext CHARACTER SET utf8mb3 COLLATE utf8mb3_general_ci NOT NULL,
  `content_type_id` int NULL DEFAULT NULL,
  `user_id` bigint NOT NULL,
  PRIMARY KEY (`id`) USING BTREE,
  INDEX `django_admin_log_content_type_id_c4bce8eb_fk_django_co`(`content_type_id` ASC) USING BTREE,
  INDEX `django_admin_log_user_id_c564eba6_fk_user_id`(`user_id` ASC) USING BTREE,
  CONSTRAINT `django_admin_log_content_type_id_c4bce8eb_fk_django_co` FOREIGN KEY (`content_type_id`) REFERENCES `django_content_type` (`id`) ON DELETE RESTRICT ON UPDATE RESTRICT,
  CONSTRAINT `django_admin_log_user_id_c564eba6_fk_user_id` FOREIGN KEY (`user_id`) REFERENCES `user` (`id`) ON DELETE RESTRICT ON UPDATE RESTRICT,
  CONSTRAINT `django_admin_log_chk_1` CHECK (`action_flag` >= 0)
) ENGINE = InnoDB AUTO_INCREMENT = 26 CHARACTER SET = utf8mb3 COLLATE = utf8mb3_general_ci ROW_FORMAT = Dynamic;

-- ----------------------------
-- Records of django_admin_log
-- ----------------------------
INSERT INTO `django_admin_log` VALUES (13, '2024-08-30 11:29:42.671102', '12', '删除了“删除了“起火”。”。', 3, '', 1, 3);
INSERT INTO `django_admin_log` VALUES (14, '2024-08-30 11:29:42.675316', '11', '删除了“删除了“起火”。”。', 3, '', 1, 3);
INSERT INTO `django_admin_log` VALUES (15, '2024-08-30 11:29:42.681820', '10', '删除了“删除了“车祸”。”。', 3, '', 1, 3);
INSERT INTO `django_admin_log` VALUES (16, '2024-08-30 11:29:42.690828', '9', '删除了“删除了“车祸”。”。', 3, '', 1, 3);
INSERT INTO `django_admin_log` VALUES (17, '2024-08-30 11:29:42.695335', '8', '删除了“删除了“起火”。”。', 3, '', 1, 3);
INSERT INTO `django_admin_log` VALUES (18, '2024-08-30 11:29:42.699335', '7', '删除了“删除了“起火”。”。', 3, '', 1, 3);
INSERT INTO `django_admin_log` VALUES (19, '2024-09-24 03:24:48.069029', '1', 'Yf object (1)', 1, '[{\"added\": {}}]', 9, 3);
INSERT INTO `django_admin_log` VALUES (20, '2024-09-24 03:24:57.271254', '2', 'Yf object (2)', 1, '[{\"added\": {}}]', 9, 3);
INSERT INTO `django_admin_log` VALUES (21, '2024-09-24 03:25:05.542801', '3', 'Yf object (3)', 1, '[{\"added\": {}}]', 9, 3);
INSERT INTO `django_admin_log` VALUES (22, '2024-09-24 03:25:13.778528', '4', 'Yf object (4)', 1, '[{\"added\": {}}]', 9, 3);
INSERT INTO `django_admin_log` VALUES (23, '2024-09-24 03:25:21.028962', '5', 'Yf object (5)', 1, '[{\"added\": {}}]', 9, 3);
INSERT INTO `django_admin_log` VALUES (24, '2024-09-24 03:25:27.825982', '6', 'Yf object (6)', 1, '[{\"added\": {}}]', 9, 3);
INSERT INTO `django_admin_log` VALUES (25, '2024-09-24 03:25:35.099012', '7', 'Yf object (7)', 1, '[{\"added\": {}}]', 9, 3);

-- ----------------------------
-- Table structure for django_content_type
-- ----------------------------
DROP TABLE IF EXISTS `django_content_type`;
CREATE TABLE `django_content_type`  (
  `id` int NOT NULL AUTO_INCREMENT,
  `app_label` varchar(100) CHARACTER SET utf8mb3 COLLATE utf8mb3_general_ci NOT NULL,
  `model` varchar(100) CHARACTER SET utf8mb3 COLLATE utf8mb3_general_ci NOT NULL,
  PRIMARY KEY (`id`) USING BTREE,
  UNIQUE INDEX `django_content_type_app_label_model_76bd3d3b_uniq`(`app_label` ASC, `model` ASC) USING BTREE
) ENGINE = InnoDB AUTO_INCREMENT = 10 CHARACTER SET = utf8mb3 COLLATE = utf8mb3_general_ci ROW_FORMAT = Dynamic;

-- ----------------------------
-- Records of django_content_type
-- ----------------------------
INSERT INTO `django_content_type` VALUES (1, 'admin', 'logentry');
INSERT INTO `django_content_type` VALUES (3, 'auth', 'group');
INSERT INTO `django_content_type` VALUES (2, 'auth', 'permission');
INSERT INTO `django_content_type` VALUES (8, 'captcha', 'captchastore');
INSERT INTO `django_content_type` VALUES (4, 'contenttypes', 'contenttype');
INSERT INTO `django_content_type` VALUES (5, 'sessions', 'session');
INSERT INTO `django_content_type` VALUES (6, 'sysuser', 'identifylog');
INSERT INTO `django_content_type` VALUES (7, 'sysuser', 'user');
INSERT INTO `django_content_type` VALUES (9, 'sysuser', 'yf');

-- ----------------------------
-- Table structure for django_migrations
-- ----------------------------
DROP TABLE IF EXISTS `django_migrations`;
CREATE TABLE `django_migrations`  (
  `id` bigint NOT NULL AUTO_INCREMENT,
  `app` varchar(255) CHARACTER SET utf8mb3 COLLATE utf8mb3_general_ci NOT NULL,
  `name` varchar(255) CHARACTER SET utf8mb3 COLLATE utf8mb3_general_ci NOT NULL,
  `applied` datetime(6) NOT NULL,
  PRIMARY KEY (`id`) USING BTREE
) ENGINE = InnoDB AUTO_INCREMENT = 23 CHARACTER SET = utf8mb3 COLLATE = utf8mb3_general_ci ROW_FORMAT = Dynamic;

-- ----------------------------
-- Records of django_migrations
-- ----------------------------
INSERT INTO `django_migrations` VALUES (1, 'contenttypes', '0001_initial', '2024-08-22 04:46:09.103598');
INSERT INTO `django_migrations` VALUES (2, 'contenttypes', '0002_remove_content_type_name', '2024-08-22 04:46:09.171260');
INSERT INTO `django_migrations` VALUES (3, 'auth', '0001_initial', '2024-08-22 04:46:09.554926');
INSERT INTO `django_migrations` VALUES (4, 'auth', '0002_alter_permission_name_max_length', '2024-08-22 04:46:09.614445');
INSERT INTO `django_migrations` VALUES (5, 'auth', '0003_alter_user_email_max_length', '2024-08-22 04:46:09.621451');
INSERT INTO `django_migrations` VALUES (6, 'auth', '0004_alter_user_username_opts', '2024-08-22 04:46:09.626995');
INSERT INTO `django_migrations` VALUES (7, 'auth', '0005_alter_user_last_login_null', '2024-08-22 04:46:09.633553');
INSERT INTO `django_migrations` VALUES (8, 'auth', '0006_require_contenttypes_0002', '2024-08-22 04:46:09.637633');
INSERT INTO `django_migrations` VALUES (9, 'auth', '0007_alter_validators_add_error_messages', '2024-08-22 04:46:09.711064');
INSERT INTO `django_migrations` VALUES (10, 'auth', '0008_alter_user_username_max_length', '2024-08-22 04:46:09.717838');
INSERT INTO `django_migrations` VALUES (11, 'auth', '0009_alter_user_last_name_max_length', '2024-08-22 04:46:09.722834');
INSERT INTO `django_migrations` VALUES (12, 'auth', '0010_alter_group_name_max_length', '2024-08-22 04:46:09.779303');
INSERT INTO `django_migrations` VALUES (13, 'auth', '0011_update_proxy_permissions', '2024-08-22 04:46:09.786823');
INSERT INTO `django_migrations` VALUES (14, 'auth', '0012_alter_user_first_name_max_length', '2024-08-22 04:46:09.792822');
INSERT INTO `django_migrations` VALUES (15, 'sysuser', '0001_initial', '2024-08-22 04:46:10.155819');
INSERT INTO `django_migrations` VALUES (16, 'admin', '0001_initial', '2024-08-22 04:46:10.353899');
INSERT INTO `django_migrations` VALUES (17, 'admin', '0002_logentry_remove_auto_add', '2024-08-22 04:46:10.361901');
INSERT INTO `django_migrations` VALUES (18, 'admin', '0003_logentry_add_action_flag_choices', '2024-08-22 04:46:10.368944');
INSERT INTO `django_migrations` VALUES (19, 'captcha', '0001_initial', '2024-08-22 04:46:10.397058');
INSERT INTO `django_migrations` VALUES (20, 'captcha', '0002_alter_captchastore_id', '2024-08-22 04:46:10.401058');
INSERT INTO `django_migrations` VALUES (21, 'sessions', '0001_initial', '2024-08-22 04:46:10.443738');
INSERT INTO `django_migrations` VALUES (22, 'sysuser', '0002_yf', '2024-09-24 03:18:46.705705');

-- ----------------------------
-- Table structure for django_session
-- ----------------------------
DROP TABLE IF EXISTS `django_session`;
CREATE TABLE `django_session`  (
  `session_key` varchar(40) CHARACTER SET utf8mb3 COLLATE utf8mb3_general_ci NOT NULL,
  `session_data` longtext CHARACTER SET utf8mb3 COLLATE utf8mb3_general_ci NOT NULL,
  `expire_date` datetime(6) NOT NULL,
  PRIMARY KEY (`session_key`) USING BTREE,
  INDEX `django_session_expire_date_a5c62663`(`expire_date` ASC) USING BTREE
) ENGINE = InnoDB CHARACTER SET = utf8mb3 COLLATE = utf8mb3_general_ci ROW_FORMAT = Dynamic;

-- ----------------------------
-- Records of django_session
-- ----------------------------
INSERT INTO `django_session` VALUES ('0tonoww51ovyohwkjbi2ifkay98ubkyt', '.eJxVjDsOwyAQBe9CHSE-xrAp0_sMaIElOIlAMnYV5e6xJRdJ-2bmvZnHbS1-67T4ObEr0-zyuwWMT6oHSA-s98Zjq-syB34o_KSdTy3R63a6fwcFe9lriirmIQM5iYApRKNsCqg1BelENmACCJl3RclBRQvSmnF0BKQziJzY5wsN0Th5:1t1Gqh:Va6eExz4tz0cd7LWLo7PP9JrKd7Ta9ODuEPBBBEVN7c', '2024-10-31 03:06:51.275549');
INSERT INTO `django_session` VALUES ('3w83c2eoc3qjszbe5tp5sbd7qhu0a7v5', '.eJzFVkuPmzAQ_isR5zwwYAx7bM899lSqyI9xQssjsuEQrfLfa0NWSr2wEFhpLxjPjD_PfJ_H8qt3pG1zPrYa1DEX3osXettHG6P8L1TWIf7Q6lTveV01Kmd7G7K_e_X-Ry2g-HaP_Q_gTPXZrAYecBnJFBJEUyoYxwERjIYhMJT4EqeYpT6SJiRAUcBJigiO4wRSCGXqyw60hKrVBuvXa-ZVtITMe9lk3nd6afiZZt7WTHKTXm-WVG0k3fFc8QJ6Z2mT1NY9iLDRTa1AzwBqVdH7DlSUeXXgPcDb2OEc-lAqxM850SbuvoIpoIKrtmTjqU7keNtulhd4-23dkAvrRb4fuAbkwmdZG0lEzZAwIVYI8TSQK4QGrfO60m8_4yK8i5wpwFMpriLKpT1yDeEAPEYJtgNjqRkIJ8zOSMLWqbIG9l2zmAsEqqa5XkA_Tj5omLEV8zVbWsAnUuzKF7sGPLAZwUFihjgIiT08EAi7meThOj0dWAnIzvxYjl0O9iofabmrts5D9xlvt8eo-bItLX-aybkluyIlA9AJ47HNKwhYN2N-lyXGS26wO1G5MIc8l9eiPk2z-hj8JeQuZcBlN3UNZEhJRq12JPLjdV0QY-g6WQqyWrf-awQwSqjruGRO3BNqza56gLKllTpyIOQa_MHDQKP-TNiEcZRwm0GYdIeNRAPHS9s99TmHQuxo0UwLZ1GyNo2xv0Qq8zY9XECV-cQbwQ2cL9YnUDCk4uyyXZmGngoEeDSSh71U9I7Xpw8IPKm6vUxw18d8NW3zCnUpc59byLyDvds_MAIk5w:1sjxge:ed6BGJ67C1CSH669SYGg4EAKqiPzZNMJXLKVL48mxmw', '2024-09-13 09:12:56.193331');
INSERT INTO `django_session` VALUES ('4u9b747w1tj0d22idxox6z8k9sefsttv', '.eJxVjDsOwyAQBe9CHSE-xrAp0_sMaIElOIlAMnYV5e6xJRdJ-2bmvZnHbS1-67T4ObEr0-zyuwWMT6oHSA-s98Zjq-syB34o_KSdTy3R63a6fwcFe9lriirmIQM5iYApRKNsCqg1BelENmACCJl3RclBRQvSmnF0BKQziJzY5wsN0Th5:1ssvBa:pZnKxFsULMU8LgHH913G6J_QhsrOt6Ud9pvKiyuPqpQ', '2024-10-08 02:21:54.307918');
INSERT INTO `django_session` VALUES ('59f95ywq9u7trhk9wfux4tlv8ut9vczy', '.eJxVjDsOwyAQBe9CHSE-xrAp0_sMaIElOIlAMnYV5e6xJRdJ-2bmvZnHbS1-67T4ObEr0-zyuwWMT6oHSA-s98Zjq-syB34o_KSdTy3R63a6fwcFe9lriirmIQM5iYApRKNsCqg1BelENmACCJl3RclBRQvSmnF0BKQziJzY5wsN0Th5:1t2b7p:lqoEbmCsDev9pRl6QcbFgBr3mX5Kmf73n-V38MOIxg8', '2024-11-03 18:58:01.388588');
INSERT INTO `django_session` VALUES ('5e2pxxib4rzy0vhg6ucwmvtb3qdhrk0x', '.eJzFVkuPmzAQ_isR5zwwYAx7bM899lSqyI9xQssjsuEQrfLfa0NWSr2wEFhpLxjPjD_PfJ_H8qt3pG1zPrYa1DEX3osXettHG6P8L1TWIf7Q6lTveV01Kmd7G7K_e_X-Ry2g-HaP_Q_gTPXZrAYecBnJFBJEUyoYxwERjIYhMJT4EqeYpT6SJiRAUcBJigiO4wRSCGXqyw60hKrVBuvXa-ZVtITMe9lk3nd6afiZZt7WTHKTXm-WVG0k3fFc8QJ6Z2mT1NY9iLDRTa1AzwBqVdH7DlSUeXXgPcDb2OEc-lAqxM850SbuvoIpoIKrtmTjqU7keNtulhd4-23dkAvrRb4fuAbkwmdZG0lEzZAwIVYI8TSQK4QGrfO60m8_4yK8i5wpwFMpriLKpT1yDeEAPEYJtgNjqRkIJ8zOSMLWqbIG9l2zmAsEqqa5XkA_Tj5omLEV8zVbWsAnUuzKF7sGPLAZwUFihjgIiT08EAi7meThOj0dWAnIzvxYjl0O9iofabmrts5D9xlvt8eo-bItLX-aybkluyIlA9AJ47HNKwhYN2N-lyXGS26wO1G5MIc8l9eiPk2z-hj8JeQuZcBlN3UNZEhJRq12JPLjdV0QY-g6WQqyWrf-awQwSqjruGRO3BNqza56gLKllTpyIOQa_MHDQKP-TNiEcZRwm0GYdIeNRAPHS9s99TmHQuxo0UwLZ1GyNo2xv0Qq8zY9XECV-cQbwQ2cL9YnUDCk4uyyXZmGngoEeDSSh71U9I7Xpw8IPKm6vUxw18d8NW3zCnUpc59byLyDvds_MAIk5w:1szsEd:Ff60wKF2dhXqlzjms3nmU2tNP3mky9LoSgTepaMInQ4', '2024-10-27 06:37:47.765560');
INSERT INTO `django_session` VALUES ('6vg5awoelco4rii8qdyponalkfcdx643', '.eJytVNuOmzAQ_ZWI5yRgg7G9j33vF5RV5GtwkwDCoAqt8u-1cbYJgewmUl8Y7BnPOXM8no9ox_qu3PVWtTsjo7cojda3e5yJg6q8Q_5m1b7eirrqWsO3PmR78drtz1qq449L7CRByWzpTisBhc40VQQwyiQXCGLJWZoqDkiiEUWcJkC7EAgyKDAFGOU5UVSlmiZ6THpSVW9drl8fRVSxkyqit1URFUWfI5x4k-bKGcwZ8CZL8iJauwjjOIdYzVaabbpyczS2C86TZ269e5aWcJE7gyDk44p7EKQRCif79hhCYyZPportYH3FsZGq6owejvU-fkCA2YMNLmWk94Akgef16p4BJSTzJk_hWB9jY7Vcfs1g0K8Ap-d3v7H7o8y-7PxmMg0AC8wwgsRzgSn-n5JP0yIIvCEkJ18XPH5eKBnNSgbTgCyUzJom5PL9HJJMGw9n6Xg_KPlOBevJeJ4bWxp1lN9K8ULumcL_dPK8431b9018rwGeaQCnAfmdBhexF2TAQvsXgpXUT8kg6v3X5VtlrXGHnqn7er-z7ghZ7OfPTAK60Ng5Umh85vK5xn4MH75uCrhx0A734CBZAEeAjOCc01FW7GVFmPBlBD-LXfJuaJS9XTx4Ctf-uLJYetuUERHG31g7ScADeNZ0omSf1nZ1-wj6oIZ75KV5d9vzy5r6fm5UezK3N_oE2nzIpdNeIOf36PwXA64pYw:1stk77:KYyJW_3ZfrmTAUfXKk8fVuwnLozvgA012e-Bweodl9M', '2024-10-10 08:44:41.789531');
INSERT INTO `django_session` VALUES ('9f1q4e2jj1c4yqloddbix65lhhrhgrfn', '.eJxVjDsOwjAQBe_iGllZ48-Gkp4zWOtdBwdQLMVJhbg7iZQC2jcz760irUuJa8tzHEVdFKjT75aIn3nagTxoulfNdVrmMeld0Qdt-lYlv66H-3dQqJWtTuQDoCAEjwjcm9wBsumCJC9sOThvEAceAI0lB4QWnD9Lj8ibBOrzBcZdNvQ:1sizy5:IREmFK-WrLt_tut3ut7PTGAstZtjX9TVf2tC8G-O25I', '2024-09-10 17:26:57.861862');
INSERT INTO `django_session` VALUES ('9j93opj2u47i6fak3xwzsnnldgozurrx', '.eJxVjDsOwyAQBe9CHSE-xrAp0_sMaIElOIlAMnYV5e6xJRdJ-2bmvZnHbS1-67T4ObEr0-zyuwWMT6oHSA-s98Zjq-syB34o_KSdTy3R63a6fwcFe9lriirmIQM5iYApRKNsCqg1BelENmACCJl3RclBRQvSmnF0BKQziJzY5wsN0Th5:1szDnC:FXFLdycgKazoRLiSOoz-OlMYxUSh16xLLnDycgEQOYY', '2024-10-25 11:26:46.276924');
INSERT INTO `django_session` VALUES ('bnj2wkyoenlxfr7cj409sosbu3wd1a13', '.eJxVjDsOwyAQBe9CHSE-xrAp0_sMaIElOIlAMnYV5e6xJRdJ-2bmvZnHbS1-67T4ObEr0-zyuwWMT6oHSA-s98Zjq-syB34o_KSdTy3R63a6fwcFe9lriirmIQM5iYApRKNsCqg1BelENmACCJl3RclBRQvSmnF0BKQziJzY5wsN0Th5:1slSxe:D3fqWIs4aKcdYU2TkaFhBOaDVUqao7meeo2gxw2KT38', '2024-09-17 12:48:42.971192');
INSERT INTO `django_session` VALUES ('c6lfde26yf7c0q8lxc3myfivv2hg4j9r', '.eJxVjDsOwjAQBe_iGllZ48-Gkp4zWOtdBwdQLMVJhbg7iZQC2jcz760irUuJa8tzHEVdFKjT75aIn3nagTxoulfNdVrmMeld0Qdt-lYlv66H-3dQqJWtTuQDoCAEjwjcm9wBsumCJC9sOThvEAceAI0lB4QWnD9Lj8ibBOrzBcZdNvQ:1sgzly:XNh4skpqV3mpjqiL8MkXrh40C4rYzOV-yTEXjiXzsD8', '2024-09-05 04:50:10.422988');
INSERT INTO `django_session` VALUES ('calupcw32fpuhehzdavpr0tsj6rwdpgs', '.eJytVNuOmzAQ_ZWI5yRgg7G9j33vF5RV5GtwkwDCoAqt8u-1cbYJgewmUl8Y7BnPOXM8no9ox_qu3PVWtTsjo7cojda3e5yJg6q8Q_5m1b7eirrqWsO3PmR78drtz1qq449L7CRByWzpTisBhc40VQQwyiQXCGLJWZoqDkiiEUWcJkC7EAgyKDAFGOU5UVSlmiZ6THpSVW9drl8fRVSxkyqit1URFUWfI5x4k-bKGcwZ8CZL8iJauwjjOIdYzVaabbpyczS2C86TZ269e5aWcJE7gyDk44p7EKQRCif79hhCYyZPportYH3FsZGq6owejvU-fkCA2YMNLmWk94Akgef16p4BJSTzJk_hWB9jY7Vcfs1g0K8Ap-d3v7H7o8y-7PxmMg0AC8wwgsRzgSn-n5JP0yIIvCEkJ18XPH5eKBnNSgbTgCyUzJom5PL9HJJMGw9n6Xg_KPlOBevJeJ4bWxp1lN9K8ULumcL_dPK8431b9018rwGeaQCnAfmdBhexF2TAQvsXgpXUT8kg6v3X5VtlrXGHnqn7er-z7ghZ7OfPTAK60Ng5Umh85vK5xn4MH75uCrhx0A734CBZAEeAjOCc01FW7GVFmPBlBD-LXfJuaJS9XTx4Ctf-uLJYetuUERHG31g7ScADeNZ0omSf1nZ1-wj6oIZ75KV5d9vzy5r6fm5UezK3N_oE2nzIpdNeIOf36PwXA64pYw:1sswAD:xx_N5wcM8xv1LbDucL0uwG73UtIw58zL27P0OELnP5Y', '2024-10-08 03:24:33.497238');
INSERT INTO `django_session` VALUES ('d1y2assex1a497jxgodbrr65rfia5rwe', '.eJxVjDsOwjAQBe_iGllZ48-Gkp4zWOtdBwdQLMVJhbg7iZQC2jcz760irUuJa8tzHEVdFKjT75aIn3nagTxoulfNdVrmMeld0Qdt-lYlv66H-3dQqJWtTuQDoCAEjwjcm9wBsumCJC9sOThvEAceAI0lB4QWnD9Lj8ibBOrzBcZdNvQ:1sgziX:ceObyNRfRr43up_TlN2R-IewI5cSzuNyexrxHvh6570', '2024-09-05 04:46:37.878306');
INSERT INTO `django_session` VALUES ('dfy621mra3wqpoje082e9iko8jugtamn', '.eJxVjDsOwyAQBe9CHSE-xrAp0_sMaIElOIlAMnYV5e6xJRdJ-2bmvZnHbS1-67T4ObEr0-zyuwWMT6oHSA-s98Zjq-syB34o_KSdTy3R63a6fwcFe9lriirmIQM5iYApRKNsCqg1BelENmACCJl3RclBRQvSmnF0BKQziJzY5wsN0Th5:1t2b61:ki2L2ZuLUdHJSmROUjQH6XwOWG-5h7xTVYOXvm7VbkY', '2024-11-03 18:56:09.597538');
INSERT INTO `django_session` VALUES ('hc3usyte7rn5aqsqtqj5e5mrsf5wa2dr', '.eJxVjDsOwjAQBe_iGllZ48-Gkp4zWOtdBwdQLMVJhbg7iZQC2jcz760irUuJa8tzHEVdFKjT75aIn3nagTxoulfNdVrmMeld0Qdt-lYlv66H-3dQqJWtTuQDoCAEjwjcm9wBsumCJC9sOThvEAceAI0lB4QWnD9Lj8ibBOrzBcZdNvQ:1ssg18:zKQPtIT6qo2WAlVMtIDdLJA6hqxguhDJnKy3UKZca8s', '2024-10-07 10:10:06.255243');
INSERT INTO `django_session` VALUES ('k2mzgz3wp24qmij5unkkwkxo9d1ans1c', '.eJytVNuOmzAQ_ZWI5yRgg7G9j33vF5RV5GtwkwDCoAqt8u-1cbYJgewmUl8Y7BnPOXM8no9ox_qu3PVWtTsjo7cojda3e5yJg6q8Q_5m1b7eirrqWsO3PmR78drtz1qq449L7CRByWzpTisBhc40VQQwyiQXCGLJWZoqDkiiEUWcJkC7EAgyKDAFGOU5UVSlmiZ6THpSVW9drl8fRVSxkyqit1URFUWfI5x4k-bKGcwZ8CZL8iJauwjjOIdYzVaabbpyczS2C86TZ269e5aWcJE7gyDk44p7EKQRCif79hhCYyZPportYH3FsZGq6owejvU-fkCA2YMNLmWk94Akgef16p4BJSTzJk_hWB9jY7Vcfs1g0K8Ap-d3v7H7o8y-7PxmMg0AC8wwgsRzgSn-n5JP0yIIvCEkJ18XPH5eKBnNSgbTgCyUzJom5PL9HJJMGw9n6Xg_KPlOBevJeJ4bWxp1lN9K8ULumcL_dPK8431b9018rwGeaQCnAfmdBhexF2TAQvsXgpXUT8kg6v3X5VtlrXGHnqn7er-z7ghZ7OfPTAK60Ng5Umh85vK5xn4MH75uCrhx0A734CBZAEeAjOCc01FW7GVFmPBlBD-LXfJuaJS9XTx4Ctf-uLJYetuUERHG31g7ScADeNZ0omSf1nZ1-wj6oIZ75KV5d9vzy5r6fm5UezK3N_oE2nzIpdNeIOf36PwXA64pYw:1sszFI:UP0nfkPNTNuhWDa7mYWWEnm_4yJJ9cs3kaZ762qPHlQ', '2024-10-08 06:42:00.965164');
INSERT INTO `django_session` VALUES ('lg3sr4ony3vyr010eq33qfj6p4mudgdm', '.eJxVjDsOwjAQBe_iGllZ48-Gkp4zWOtdBwdQLMVJhbg7iZQC2jcz760irUuJa8tzHEVdFKjT75aIn3nagTxoulfNdVrmMeld0Qdt-lYlv66H-3dQqJWtTuQDoCAEjwjcm9wBsumCJC9sOThvEAceAI0lB4QWnD9Lj8ibBOrzBcZdNvQ:1sizJY:EP0hoApy9Aknk5GX42wrcl_cbMyMHfEZJfIRUNGmqOc', '2024-09-10 16:45:04.058089');
INSERT INTO `django_session` VALUES ('mmrtqaxlfve3i64u2neo96ioklvx0b7t', '.eJxVjDsOwyAQBe9CHSE-xrAp0_sMaIElOIlAMnYV5e6xJRdJ-2bmvZnHbS1-67T4ObEr0-zyuwWMT6oHSA-s98Zjq-syB34o_KSdTy3R63a6fwcFe9lriirmIQM5iYApRKNsCqg1BelENmACCJl3RclBRQvSmnF0BKQziJzY5wsN0Th5:1t1UQX:KbifjQtDv6CaRSTJWI3_27A5HQAZIIiT4NFkZumZDcU', '2024-10-31 17:36:45.518129');
INSERT INTO `django_session` VALUES ('ox6s4i0qg3uheq32qwn8d9desrnw7veq', '.eJytVNuOmzAQ_ZWI5yRgg7G9j33vF5RV5GtwkwDCoAqt8u-1cbYJgewmUl8Y7BnPOXM8no9ox_qu3PVWtTsjo7cojda3e5yJg6q8Q_5m1b7eirrqWsO3PmR78drtz1qq449L7CRByWzpTisBhc40VQQwyiQXCGLJWZoqDkiiEUWcJkC7EAgyKDAFGOU5UVSlmiZ6THpSVW9drl8fRVSxkyqit1URFUWfI5x4k-bKGcwZ8CZL8iJauwjjOIdYzVaabbpyczS2C86TZ269e5aWcJE7gyDk44p7EKQRCif79hhCYyZPportYH3FsZGq6owejvU-fkCA2YMNLmWk94Akgef16p4BJSTzJk_hWB9jY7Vcfs1g0K8Ap-d3v7H7o8y-7PxmMg0AC8wwgsRzgSn-n5JP0yIIvCEkJ18XPH5eKBnNSgbTgCyUzJom5PL9HJJMGw9n6Xg_KPlOBevJeJ4bWxp1lN9K8ULumcL_dPK8431b9018rwGeaQCnAfmdBhexF2TAQvsXgpXUT8kg6v3X5VtlrXGHnqn7er-z7ghZ7OfPTAK60Ng5Umh85vK5xn4MH75uCrhx0A734CBZAEeAjOCc01FW7GVFmPBlBD-LXfJuaJS9XTx4Ctf-uLJYetuUERHG31g7ScADeNZ0omSf1nZ1-wj6oIZ75KV5d9vzy5r6fm5UezK3N_oE2nzIpdNeIOf36PwXA64pYw:1stk36:bXFy1-YvLwP4UNrOdT4cwg6YGoDjI3uIQAJRW8DEbYQ', '2024-10-10 08:40:32.973469');
INSERT INTO `django_session` VALUES ('rg01q8ur38qzz8q3w6s8xzlsdrih05wc', '.eJxVjDsOwyAQBe9CHSE-xrAp0_sMaIElOIlAMnYV5e6xJRdJ-2bmvZnHbS1-67T4ObEr0-zyuwWMT6oHSA-s98Zjq-syB34o_KSdTy3R63a6fwcFe9lriirmIQM5iYApRKNsCqg1BelENmACCJl3RclBRQvSmnF0BKQziJzY5wsN0Th5:1szDW7:NB2aeN8E8m4iLeStW_M0Un7wV7V_K1k3fVvXD7yRepM', '2024-10-25 11:09:07.256288');
INSERT INTO `django_session` VALUES ('tbl1bx39ieke26x20lxh2ih7w9q4du9x', '.eJxVjDsOwyAQBe9CHSE-xrAp0_sMaIElOIlAMnYV5e6xJRdJ-2bmvZnHbS1-67T4ObEr0-zyuwWMT6oHSA-s98Zjq-syB34o_KSdTy3R63a6fwcFe9lriirmIQM5iYApRKNsCqg1BelENmACCJl3RclBRQvSmnF0BKQziJzY5wsN0Th5:1slK9t:vP516bbGWab1u44KHmTFcIbGqmCus0M2NxV69cDjHjA', '2024-09-17 03:24:45.570454');
INSERT INTO `django_session` VALUES ('udz42eh6pkcobe30uayh1t3ou5719lpq', '.eJytVNuOmzAQ_ZWI5yRgg7G9j33vF5RV5GtwkwDCoAqt8u-1cbYJgewmUl8Y7BnPOXM8no9ox_qu3PVWtTsjo7cojda3e5yJg6q8Q_5m1b7eirrqWsO3PmR78drtz1qq449L7CRByWzpTisBhc40VQQwyiQXCGLJWZoqDkiiEUWcJkC7EAgyKDAFGOU5UVSlmiZ6THpSVW9drl8fRVSxkyqit1URFUWfI5x4k-bKGcwZ8CZL8iJauwjjOIdYzVaabbpyczS2C86TZ269e5aWcJE7gyDk44p7EKQRCif79hhCYyZPportYH3FsZGq6owejvU-fkCA2YMNLmWk94Akgef16p4BJSTzJk_hWB9jY7Vcfs1g0K8Ap-d3v7H7o8y-7PxmMg0AC8wwgsRzgSn-n5JP0yIIvCEkJ18XPH5eKBnNSgbTgCyUzJom5PL9HJJMGw9n6Xg_KPlOBevJeJ4bWxp1lN9K8ULumcL_dPK8431b9018rwGeaQCnAfmdBhexF2TAQvsXgpXUT8kg6v3X5VtlrXGHnqn7er-z7ghZ7OfPTAK60Ng5Umh85vK5xn4MH75uCrhx0A734CBZAEeAjOCc01FW7GVFmPBlBD-LXfJuaJS9XTx4Ctf-uLJYetuUERHG31g7ScADeNZ0omSf1nZ1-wj6oIZ75KV5d9vzy5r6fm5UezK3N_oE2nzIpdNeIOf36PwXA64pYw:1ssyvE:3lNaZdi6MZTLe5DfoXucOmA9aV2ri4qqR8GnLkAO9l8', '2024-10-08 06:21:16.206510');
INSERT INTO `django_session` VALUES ('vt6obvvq59oifti0gfjf998oopcbqpz6', '.eJzFVkuPmzAQ_isR5zwwYAx7bM899lSqyI9xQssjsuEQrfLfa0NWSr2wEFhpLxjPjD_PfJ_H8qt3pG1zPrYa1DEX3osXettHG6P8L1TWIf7Q6lTveV01Kmd7G7K_e_X-Ry2g-HaP_Q_gTPXZrAYecBnJFBJEUyoYxwERjIYhMJT4EqeYpT6SJiRAUcBJigiO4wRSCGXqyw60hKrVBuvXa-ZVtITMe9lk3nd6afiZZt7WTHKTXm-WVG0k3fFc8QJ6Z2mT1NY9iLDRTa1AzwBqVdH7DlSUeXXgPcDb2OEc-lAqxM850SbuvoIpoIKrtmTjqU7keNtulhd4-23dkAvrRb4fuAbkwmdZG0lEzZAwIVYI8TSQK4QGrfO60m8_4yK8i5wpwFMpriLKpT1yDeEAPEYJtgNjqRkIJ8zOSMLWqbIG9l2zmAsEqqa5XkA_Tj5omLEV8zVbWsAnUuzKF7sGPLAZwUFihjgIiT08EAi7meThOj0dWAnIzvxYjl0O9iofabmrts5D9xlvt8eo-bItLX-aybkluyIlA9AJ47HNKwhYN2N-lyXGS26wO1G5MIc8l9eiPk2z-hj8JeQuZcBlN3UNZEhJRq12JPLjdV0QY-g6WQqyWrf-awQwSqjruGRO3BNqza56gLKllTpyIOQa_MHDQKP-TNiEcZRwm0GYdIeNRAPHS9s99TmHQuxo0UwLZ1GyNo2xv0Qq8zY9XECV-cQbwQ2cL9YnUDCk4uyyXZmGngoEeDSSh71U9I7Xpw8IPKm6vUxw18d8NW3zCnUpc59byLyDvds_MAIk5w:1sjzp9:CeLvq_VJo1O1mgewqQzfyGyn7XMckN1Z8qyYfvoAQHU', '2024-09-13 11:29:51.548429');
INSERT INTO `django_session` VALUES ('xm138eqk36lovblwkpwgjap5fzooz3ub', '.eJxVjDsOwyAQBe9CHSE-xrAp0_sMaIElOIlAMnYV5e6xJRdJ-2bmvZnHbS1-67T4ObEr0-zyuwWMT6oHSA-s98Zjq-syB34o_KSdTy3R63a6fwcFe9lriirmIQM5iYApRKNsCqg1BelENmACCJl3RclBRQvSmnF0BKQziJzY5wsN0Th5:1syvOi:3MDR0ZmL8X9ziMBLCECyfGp9O6Hx0vuK6i6pQZ07FIY', '2024-10-24 15:48:16.935625');
INSERT INTO `django_session` VALUES ('yo71iesjhe2ftxzx9qb1jtd0dmfvp0yh', '.eJytVNuOmzAQ_ZWI5yRgg7G9j33vF5RV5GtwkwDCoAqt8u-1cbYJgewmUl8Y7BnPOXM8no9ox_qu3PVWtTsjo7cojda3e5yJg6q8Q_5m1b7eirrqWsO3PmR78drtz1qq449L7CRByWzpTisBhc40VQQwyiQXCGLJWZoqDkiiEUWcJkC7EAgyKDAFGOU5UVSlmiZ6THpSVW9drl8fRVSxkyqit1URFUWfI5x4k-bKGcwZ8CZL8iJauwjjOIdYzVaabbpyczS2C86TZ269e5aWcJE7gyDk44p7EKQRCif79hhCYyZPportYH3FsZGq6owejvU-fkCA2YMNLmWk94Akgef16p4BJSTzJk_hWB9jY7Vcfs1g0K8Ap-d3v7H7o8y-7PxmMg0AC8wwgsRzgSn-n5JP0yIIvCEkJ18XPH5eKBnNSgbTgCyUzJom5PL9HJJMGw9n6Xg_KPlOBevJeJ4bWxp1lN9K8ULumcL_dPK8431b9018rwGeaQCnAfmdBhexF2TAQvsXgpXUT8kg6v3X5VtlrXGHnqn7er-z7ghZ7OfPTAK60Ng5Umh85vK5xn4MH75uCrhx0A734CBZAEeAjOCc01FW7GVFmPBlBD-LXfJuaJS9XTx4Ctf-uLJYetuUERHG31g7ScADeNZ0omSf1nZ1-wj6oIZ75KV5d9vzy5r6fm5UezK3N_oE2nzIpdNeIOf36PwXA64pYw:1sxoI0:1FojXSfyIuy7qFZ6RIMXeRgwHHt6l0dVS9gfG_wG56M', '2024-10-21 14:00:44.434675');
INSERT INTO `django_session` VALUES ('z8jglbia9agjprwv0nssf3jl3dls11y6', '.eJzFVkuPmzAQ_isR5zwwYAx7bM899lSqyI9xQssjsuEQrfLfa0NWSr2wEFhpLxjPjD_PfJ_H8qt3pG1zPrYa1DEX3osXettHG6P8L1TWIf7Q6lTveV01Kmd7G7K_e_X-Ry2g-HaP_Q_gTPXZrAYecBnJFBJEUyoYxwERjIYhMJT4EqeYpT6SJiRAUcBJigiO4wRSCGXqyw60hKrVBuvXa-ZVtITMe9lk3nd6afiZZt7WTHKTXm-WVG0k3fFc8QJ6Z2mT1NY9iLDRTa1AzwBqVdH7DlSUeXXgPcDb2OEc-lAqxM850SbuvoIpoIKrtmTjqU7keNtulhd4-23dkAvrRb4fuAbkwmdZG0lEzZAwIVYI8TSQK4QGrfO60m8_4yK8i5wpwFMpriLKpT1yDeEAPEYJtgNjqRkIJ8zOSMLWqbIG9l2zmAsEqqa5XkA_Tj5omLEV8zVbWsAnUuzKF7sGPLAZwUFihjgIiT08EAi7meThOj0dWAnIzvxYjl0O9iofabmrts5D9xlvt8eo-bItLX-aybkluyIlA9AJ47HNKwhYN2N-lyXGS26wO1G5MIc8l9eiPk2z-hj8JeQuZcBlN3UNZEhJRq12JPLjdV0QY-g6WQqyWrf-awQwSqjruGRO3BNqza56gLKllTpyIOQa_MHDQKP-TNiEcZRwm0GYdIeNRAPHS9s99TmHQuxo0UwLZ1GyNo2xv0Qq8zY9XECV-cQbwQ2cL9YnUDCk4uyyXZmGngoEeDSSh71U9I7Xpw8IPKm6vUxw18d8NW3zCnUpc59byLyDvds_MAIk5w:1sxcdI:NQQa8pRWijZ3BFvDOr8oGRbaMrovJH_OzyMe9Blqjww', '2024-10-21 01:33:56.654763');

-- ----------------------------
-- Table structure for identifylog
-- ----------------------------
DROP TABLE IF EXISTS `identifylog`;
CREATE TABLE `identifylog`  (
  `id` bigint NOT NULL AUTO_INCREMENT,
  `name` varchar(255) CHARACTER SET utf8mb3 COLLATE utf8mb3_general_ci NULL DEFAULT NULL,
  `time` varchar(255) CHARACTER SET utf8mb3 COLLATE utf8mb3_general_ci NULL DEFAULT NULL,
  `result` varchar(255) CHARACTER SET utf8mb3 COLLATE utf8mb3_general_ci NULL DEFAULT NULL,
  `result_real` varchar(255) CHARACTER SET utf8mb3 COLLATE utf8mb3_general_ci NULL DEFAULT NULL,
  `image` varchar(100) CHARACTER SET utf8mb3 COLLATE utf8mb3_general_ci NULL DEFAULT NULL,
  PRIMARY KEY (`id`) USING BTREE
) ENGINE = InnoDB AUTO_INCREMENT = 22 CHARACTER SET = utf8mb3 COLLATE = utf8mb3_general_ci ROW_FORMAT = Dynamic;

-- ----------------------------
-- Records of identifylog
-- ----------------------------
INSERT INTO `identifylog` VALUES (7, 'UNADJUSTEDNONRAW_thumb_1a2024-09-24 11-01-48.jpg', '2024-09-24 11-01-48', '炭疽病', NULL, 'identify_log/UNADJUSTEDNONRAW_thumb_1a2024-09-24 11-01-48.jpg');
INSERT INTO `identifylog` VALUES (8, 'UNADJUSTEDNONRAW_thumb_3c2024-09-24 14-41-38.jpg', '2024-09-24 14-41-38', '炭疽病', '对', 'identify_log/UNADJUSTEDNONRAW_thumb_3c2024-09-24 14-41-38.jpg');
INSERT INTO `identifylog` VALUES (9, '293272024-10-11 19-12-24.jpg', '2024-10-11 19-12-24', '炭疽病', NULL, 'identify_log/293272024-10-11 19-12-24.jpg');
INSERT INTO `identifylog` VALUES (10, '293672024-10-11 19-13-11.jpg', '2024-10-11 19-13-11', '炭疽病', NULL, 'identify_log/293672024-10-11 19-13-11.jpg');
INSERT INTO `identifylog` VALUES (11, '293672024-10-11 19-13-30.jpg', '2024-10-11 19-13-30', '炭疽病', NULL, 'identify_log/293672024-10-11 19-13-30.jpg');
INSERT INTO `identifylog` VALUES (12, '293672024-10-11 19-14-45.jpg', '2024-10-11 19-14-45', '炭疽病', NULL, 'identify_log/293672024-10-11 19-14-45.jpg');
INSERT INTO `identifylog` VALUES (13, '293672024-10-11 19-15-05.jpg', '2024-10-11 19-15-05', '炭疽病', NULL, 'identify_log/293672024-10-11 19-15-05.jpg');
INSERT INTO `identifylog` VALUES (14, '293672024-10-11 19-16-11.jpg', '2024-10-11 19-16-11', '炭疽病', NULL, 'identify_log/293672024-10-11 19-16-11.jpg');
INSERT INTO `identifylog` VALUES (15, '293672024-10-11 19-16-33.jpg', '2024-10-11 19-16-33', '炭疽病', NULL, 'identify_log/293672024-10-11 19-16-33.jpg');
INSERT INTO `identifylog` VALUES (16, '293672024-10-11 19-22-28.jpg', '2024-10-11 19-22-28', '炭疽病', NULL, 'identify_log/293672024-10-11 19-22-28.jpg');
INSERT INTO `identifylog` VALUES (17, '295272024-10-11 19-23-19.jpg', '2024-10-11 19-23-19', '炭疽病', NULL, 'identify_log/295272024-10-11 19-23-19.jpg');
INSERT INTO `identifylog` VALUES (18, '295272024-10-11 19-25-05.jpg', '2024-10-11 19-25-05', '炭疽病', NULL, 'identify_log/295272024-10-11 19-25-05.jpg');
INSERT INTO `identifylog` VALUES (19, '288152024-10-11 19-26-32.jpg', '2024-10-11 19-26-32', '炭疽病', NULL, 'identify_log/288152024-10-11 19-26-32.jpg');
INSERT INTO `identifylog` VALUES (20, '293272024-10-11 19-26-52.jpg', '2024-10-11 19-26-52', '炭疽病', NULL, 'identify_log/293272024-10-11 19-26-52.jpg');
INSERT INTO `identifylog` VALUES (21, '293272024-10-11 19-27-20.jpg', '2024-10-11 19-27-20', '炭疽病', NULL, 'identify_log/293272024-10-11 19-27-20.jpg');

-- ----------------------------
-- Table structure for sysuser_yf
-- ----------------------------
DROP TABLE IF EXISTS `sysuser_yf`;
CREATE TABLE `sysuser_yf`  (
  `id` bigint NOT NULL AUTO_INCREMENT,
  `name` varchar(255) CHARACTER SET utf8mb3 COLLATE utf8mb3_general_ci NULL DEFAULT NULL,
  `defend` varchar(255) CHARACTER SET utf8mb3 COLLATE utf8mb3_general_ci NULL DEFAULT NULL,
  PRIMARY KEY (`id`) USING BTREE
) ENGINE = InnoDB AUTO_INCREMENT = 8 CHARACTER SET = utf8mb3 COLLATE = utf8mb3_general_ci ROW_FORMAT = Dynamic;

-- ----------------------------
-- Records of sysuser_yf
-- ----------------------------
INSERT INTO `sysuser_yf` VALUES (1, 'Algal Leaf (藻类叶斑病)', '提高茶园通风透光条件，减少叶片潮湿时间。 在发病初期喷洒铜制剂或含硫杀菌剂，如波尔多液。');
INSERT INTO `sysuser_yf` VALUES (2, 'Anthracnose (炭疽病)', '加强茶树养护，保持茶园清洁，及时清除病叶。 发病时喷洒多菌灵或甲基硫菌灵等杀菌剂。');
INSERT INTO `sysuser_yf` VALUES (3, 'Bird Eye Spot (鸟眼斑病)', '加强茶树管理，保持茶树健壮。 及时喷洒代森锰锌或苯醚甲环唑等药剂，预防感染。');
INSERT INTO `sysuser_yf` VALUES (4, 'Brown Blight (褐斑病)', '避免过度施肥，尤其是氮肥，注意茶园排水。 发病时使用苯醚甲环唑、嘧菌酯等广谱杀菌剂。');
INSERT INTO `sysuser_yf` VALUES (5, 'Gray Light (灰斑病)', '定期修剪茶树，促进通风透光，减少湿度积聚。 在病害初期使用代森锰锌或其他杀菌剂。');
INSERT INTO `sysuser_yf` VALUES (6, 'Red Leaf Spot (红叶斑病)', '保持良好的田间管理，注意茶树生长环境。 使用波尔多液或铜制剂进行防治。');
INSERT INTO `sysuser_yf` VALUES (7, 'White Spot (白斑病)', '及时清除病叶，保持茶园清洁。 发病时喷洒甲基托布津等杀菌剂。');

-- ----------------------------
-- Table structure for user
-- ----------------------------
DROP TABLE IF EXISTS `user`;
CREATE TABLE `user`  (
  `id` bigint NOT NULL AUTO_INCREMENT,
  `password` varchar(128) CHARACTER SET utf8mb3 COLLATE utf8mb3_general_ci NOT NULL,
  `last_login` datetime(6) NULL DEFAULT NULL,
  `is_superuser` tinyint(1) NOT NULL,
  `username` varchar(150) CHARACTER SET utf8mb3 COLLATE utf8mb3_general_ci NOT NULL,
  `first_name` varchar(150) CHARACTER SET utf8mb3 COLLATE utf8mb3_general_ci NOT NULL,
  `last_name` varchar(150) CHARACTER SET utf8mb3 COLLATE utf8mb3_general_ci NOT NULL,
  `is_staff` tinyint(1) NOT NULL,
  `is_active` tinyint(1) NOT NULL,
  `date_joined` datetime(6) NOT NULL,
  `email` varchar(254) CHARACTER SET utf8mb3 COLLATE utf8mb3_general_ci NULL DEFAULT NULL,
  `xingming` varchar(20) CHARACTER SET utf8mb3 COLLATE utf8mb3_general_ci NULL DEFAULT NULL,
  `dianhua` varchar(20) CHARACTER SET utf8mb3 COLLATE utf8mb3_general_ci NULL DEFAULT NULL,
  `dizhi` longtext CHARACTER SET utf8mb3 COLLATE utf8mb3_general_ci NULL,
  `xingbie` varchar(20) CHARACTER SET utf8mb3 COLLATE utf8mb3_general_ci NULL DEFAULT NULL,
  `shengri` date NULL DEFAULT NULL,
  `touxiang` varchar(100) CHARACTER SET utf8mb3 COLLATE utf8mb3_general_ci NULL DEFAULT NULL,
  PRIMARY KEY (`id`) USING BTREE,
  UNIQUE INDEX `username`(`username` ASC) USING BTREE
) ENGINE = InnoDB AUTO_INCREMENT = 6 CHARACTER SET = utf8mb3 COLLATE = utf8mb3_general_ci ROW_FORMAT = Dynamic;

-- ----------------------------
-- Records of user
-- ----------------------------
INSERT INTO `user` VALUES (1, 'pbkdf2_sha256$720000$fKBj4Sq0qrOgaKthutR93B$n2C1u5NohakekZCrIqGagUPO6uuoRcduMnyQzPK10U8=', '2024-10-13 06:33:49.773840', 0, '123', '', '', 0, 1, '2024-08-22 04:46:29.947630', '123@qq.com', NULL, NULL, NULL, NULL, NULL, '');
INSERT INTO `user` VALUES (2, 'pbkdf2_sha256$720000$az1DEXrjYIANBD9aqBQIAT$ekAYfhuDzmVroohocCfZB8f7Y6oFXRIAqrS5E7oIRNk=', '2024-08-30 09:09:34.959281', 0, '123456789', '', '', 0, 1, '2024-08-30 09:09:25.110928', '123456789@qq.com', 'None', NULL, NULL, NULL, NULL, 'user_2/images_006.jpg');
INSERT INTO `user` VALUES (3, 'pbkdf2_sha256$720000$VuHmWLJF9szZfvgGnuoorv$9TNBz+uZ+664bIa1KZd6zSdadh8BF16+/Jye/ATzhrE=', '2024-10-20 18:58:01.383955', 1, '123456', '', '', 1, 1, '2024-08-30 09:10:51.624261', '123456@qq.com', NULL, NULL, NULL, NULL, NULL, '');
INSERT INTO `user` VALUES (4, 'pbkdf2_sha256$720000$78o9NDTHtd1ATP0avGXixx$1NL9ubi7zXfRycCLhJ4iuq5w/K4uzGOhV5iE94iHJOo=', '2024-08-30 09:12:17.514670', 0, '12345', '', '', 0, 1, '2024-08-30 09:12:08.807766', '12345@qq.com', NULL, NULL, NULL, NULL, NULL, '');
INSERT INTO `user` VALUES (5, 'pbkdf2_sha256$720000$Wwru515gLYh4BL8uoobQjH$edBeEeWPz+uihwMxbCEefv+ZrjnGULbEAXkw657g30k=', '2024-09-24 06:41:30.852359', 0, '001', '', '', 0, 1, '2024-09-24 06:41:19.894361', '001@qq.com', NULL, NULL, NULL, NULL, NULL, '');

-- ----------------------------
-- Table structure for user_groups
-- ----------------------------
DROP TABLE IF EXISTS `user_groups`;
CREATE TABLE `user_groups`  (
  `id` bigint NOT NULL AUTO_INCREMENT,
  `user_id` bigint NOT NULL,
  `group_id` int NOT NULL,
  PRIMARY KEY (`id`) USING BTREE,
  UNIQUE INDEX `user_groups_user_id_group_id_40beef00_uniq`(`user_id` ASC, `group_id` ASC) USING BTREE,
  INDEX `user_groups_group_id_b76f8aba_fk_auth_group_id`(`group_id` ASC) USING BTREE,
  CONSTRAINT `user_groups_group_id_b76f8aba_fk_auth_group_id` FOREIGN KEY (`group_id`) REFERENCES `auth_group` (`id`) ON DELETE RESTRICT ON UPDATE RESTRICT,
  CONSTRAINT `user_groups_user_id_abaea130_fk_user_id` FOREIGN KEY (`user_id`) REFERENCES `user` (`id`) ON DELETE RESTRICT ON UPDATE RESTRICT
) ENGINE = InnoDB AUTO_INCREMENT = 1 CHARACTER SET = utf8mb3 COLLATE = utf8mb3_general_ci ROW_FORMAT = Dynamic;

-- ----------------------------
-- Records of user_groups
-- ----------------------------

-- ----------------------------
-- Table structure for user_user_permissions
-- ----------------------------
DROP TABLE IF EXISTS `user_user_permissions`;
CREATE TABLE `user_user_permissions`  (
  `id` bigint NOT NULL AUTO_INCREMENT,
  `user_id` bigint NOT NULL,
  `permission_id` int NOT NULL,
  PRIMARY KEY (`id`) USING BTREE,
  UNIQUE INDEX `user_user_permissions_user_id_permission_id_7dc6e2e0_uniq`(`user_id` ASC, `permission_id` ASC) USING BTREE,
  INDEX `user_user_permission_permission_id_9deb68a3_fk_auth_perm`(`permission_id` ASC) USING BTREE,
  CONSTRAINT `user_user_permission_permission_id_9deb68a3_fk_auth_perm` FOREIGN KEY (`permission_id`) REFERENCES `auth_permission` (`id`) ON DELETE RESTRICT ON UPDATE RESTRICT,
  CONSTRAINT `user_user_permissions_user_id_ed4a47ea_fk_user_id` FOREIGN KEY (`user_id`) REFERENCES `user` (`id`) ON DELETE RESTRICT ON UPDATE RESTRICT
) ENGINE = InnoDB AUTO_INCREMENT = 1 CHARACTER SET = utf8mb3 COLLATE = utf8mb3_general_ci ROW_FORMAT = Dynamic;

-- ----------------------------
-- Records of user_user_permissions
-- ----------------------------

SET FOREIGN_KEY_CHECKS = 1;
