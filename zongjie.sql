/*
Navicat MySQL Data Transfer

Source Server         : 本地mysql
Source Server Version : 100125
Source Host           : localhost:3306
Source Database       : zongjie

Target Server Type    : MYSQL
Target Server Version : 100125
File Encoding         : 65001

Date: 2017-12-24 15:34:49
*/

SET FOREIGN_KEY_CHECKS=0;

-- ----------------------------
-- Table structure for auth_group
-- ----------------------------
DROP TABLE IF EXISTS `auth_group`;
CREATE TABLE `auth_group` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `name` varchar(80) NOT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `name` (`name`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of auth_group
-- ----------------------------

-- ----------------------------
-- Table structure for auth_group_permissions
-- ----------------------------
DROP TABLE IF EXISTS `auth_group_permissions`;
CREATE TABLE `auth_group_permissions` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `group_id` int(11) NOT NULL,
  `permission_id` int(11) NOT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `auth_group_permissions_group_id_0cd325b0_uniq` (`group_id`,`permission_id`),
  KEY `auth_group_permissi_permission_id_84c5c92e_fk_auth_permission_id` (`permission_id`),
  CONSTRAINT `auth_group_permissi_permission_id_84c5c92e_fk_auth_permission_id` FOREIGN KEY (`permission_id`) REFERENCES `auth_permission` (`id`),
  CONSTRAINT `auth_group_permissions_group_id_b120cbf9_fk_auth_group_id` FOREIGN KEY (`group_id`) REFERENCES `auth_group` (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of auth_group_permissions
-- ----------------------------

-- ----------------------------
-- Table structure for auth_permission
-- ----------------------------
DROP TABLE IF EXISTS `auth_permission`;
CREATE TABLE `auth_permission` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `name` varchar(255) NOT NULL,
  `content_type_id` int(11) NOT NULL,
  `codename` varchar(100) NOT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `auth_permission_content_type_id_01ab375a_uniq` (`content_type_id`,`codename`),
  CONSTRAINT `auth_permissi_content_type_id_2f476e4b_fk_django_content_type_id` FOREIGN KEY (`content_type_id`) REFERENCES `django_content_type` (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=76 DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of auth_permission
-- ----------------------------
INSERT INTO `auth_permission` VALUES ('1', 'Can add log entry', '1', 'add_logentry');
INSERT INTO `auth_permission` VALUES ('2', 'Can change log entry', '1', 'change_logentry');
INSERT INTO `auth_permission` VALUES ('3', 'Can delete log entry', '1', 'delete_logentry');
INSERT INTO `auth_permission` VALUES ('4', 'Can add permission', '2', 'add_permission');
INSERT INTO `auth_permission` VALUES ('5', 'Can change permission', '2', 'change_permission');
INSERT INTO `auth_permission` VALUES ('6', 'Can delete permission', '2', 'delete_permission');
INSERT INTO `auth_permission` VALUES ('7', 'Can add group', '3', 'add_group');
INSERT INTO `auth_permission` VALUES ('8', 'Can change group', '3', 'change_group');
INSERT INTO `auth_permission` VALUES ('9', 'Can delete group', '3', 'delete_group');
INSERT INTO `auth_permission` VALUES ('13', 'Can add content type', '5', 'add_contenttype');
INSERT INTO `auth_permission` VALUES ('14', 'Can change content type', '5', 'change_contenttype');
INSERT INTO `auth_permission` VALUES ('15', 'Can delete content type', '5', 'delete_contenttype');
INSERT INTO `auth_permission` VALUES ('16', 'Can add session', '6', 'add_session');
INSERT INTO `auth_permission` VALUES ('17', 'Can change session', '6', 'change_session');
INSERT INTO `auth_permission` VALUES ('18', 'Can delete session', '6', 'delete_session');
INSERT INTO `auth_permission` VALUES ('19', 'Can add 职工信息', '7', 'add_userprofile');
INSERT INTO `auth_permission` VALUES ('20', 'Can change 职工信息', '7', 'change_userprofile');
INSERT INTO `auth_permission` VALUES ('21', 'Can delete 职工信息', '7', 'delete_userprofile');
INSERT INTO `auth_permission` VALUES ('22', 'Can add 轮播图', '8', 'add_banner');
INSERT INTO `auth_permission` VALUES ('23', 'Can change 轮播图', '8', 'change_banner');
INSERT INTO `auth_permission` VALUES ('24', 'Can delete 轮播图', '8', 'delete_banner');
INSERT INTO `auth_permission` VALUES ('25', 'Can add 项目', '9', 'add_portproject');
INSERT INTO `auth_permission` VALUES ('26', 'Can change 项目', '9', 'change_portproject');
INSERT INTO `auth_permission` VALUES ('27', 'Can delete 项目', '9', 'delete_portproject');
INSERT INTO `auth_permission` VALUES ('28', 'Can add 标签', '10', 'add_tag');
INSERT INTO `auth_permission` VALUES ('29', 'Can change 标签', '10', 'change_tag');
INSERT INTO `auth_permission` VALUES ('30', 'Can delete 标签', '10', 'delete_tag');
INSERT INTO `auth_permission` VALUES ('31', 'Can add 项目资源', '11', 'add_projectresource');
INSERT INTO `auth_permission` VALUES ('32', 'Can change 项目资源', '11', 'change_projectresource');
INSERT INTO `auth_permission` VALUES ('33', 'Can delete 项目资源', '11', 'delete_projectresource');
INSERT INTO `auth_permission` VALUES ('34', 'Can add 项目建议', '12', 'add_portprojectcomments');
INSERT INTO `auth_permission` VALUES ('35', 'Can change 项目建议', '12', 'change_portprojectcomments');
INSERT INTO `auth_permission` VALUES ('36', 'Can delete 项目建议', '12', 'delete_portprojectcomments');
INSERT INTO `auth_permission` VALUES ('37', 'Can add 用户消息', '13', 'add_usermessage');
INSERT INTO `auth_permission` VALUES ('38', 'Can change 用户消息', '13', 'change_usermessage');
INSERT INTO `auth_permission` VALUES ('39', 'Can delete 用户消息', '13', 'delete_usermessage');
INSERT INTO `auth_permission` VALUES ('40', 'Can add 工作汇报', '14', 'add_report');
INSERT INTO `auth_permission` VALUES ('41', 'Can change 工作汇报', '14', 'change_report');
INSERT INTO `auth_permission` VALUES ('42', 'Can delete 工作汇报', '14', 'delete_report');
INSERT INTO `auth_permission` VALUES ('43', 'Can view log entry', '1', 'view_logentry');
INSERT INTO `auth_permission` VALUES ('44', 'Can view group', '3', 'view_group');
INSERT INTO `auth_permission` VALUES ('45', 'Can view permission', '2', 'view_permission');
INSERT INTO `auth_permission` VALUES ('46', 'Can view content type', '5', 'view_contenttype');
INSERT INTO `auth_permission` VALUES ('47', 'Can view 项目建议', '12', 'view_portprojectcomments');
INSERT INTO `auth_permission` VALUES ('48', 'Can view 工作汇报', '14', 'view_report');
INSERT INTO `auth_permission` VALUES ('49', 'Can view 用户消息', '13', 'view_usermessage');
INSERT INTO `auth_permission` VALUES ('50', 'Can view 项目', '9', 'view_portproject');
INSERT INTO `auth_permission` VALUES ('51', 'Can view 项目资源', '11', 'view_projectresource');
INSERT INTO `auth_permission` VALUES ('52', 'Can view 标签', '10', 'view_tag');
INSERT INTO `auth_permission` VALUES ('53', 'Can view session', '6', 'view_session');
INSERT INTO `auth_permission` VALUES ('54', 'Can view 轮播图', '8', 'view_banner');
INSERT INTO `auth_permission` VALUES ('55', 'Can view 职工信息', '7', 'view_userprofile');
INSERT INTO `auth_permission` VALUES ('56', 'Can add Bookmark', '15', 'add_bookmark');
INSERT INTO `auth_permission` VALUES ('57', 'Can change Bookmark', '15', 'change_bookmark');
INSERT INTO `auth_permission` VALUES ('58', 'Can delete Bookmark', '15', 'delete_bookmark');
INSERT INTO `auth_permission` VALUES ('59', 'Can add User Setting', '16', 'add_usersettings');
INSERT INTO `auth_permission` VALUES ('60', 'Can change User Setting', '16', 'change_usersettings');
INSERT INTO `auth_permission` VALUES ('61', 'Can delete User Setting', '16', 'delete_usersettings');
INSERT INTO `auth_permission` VALUES ('62', 'Can add User Widget', '17', 'add_userwidget');
INSERT INTO `auth_permission` VALUES ('63', 'Can change User Widget', '17', 'change_userwidget');
INSERT INTO `auth_permission` VALUES ('64', 'Can delete User Widget', '17', 'delete_userwidget');
INSERT INTO `auth_permission` VALUES ('65', 'Can add log entry', '18', 'add_log');
INSERT INTO `auth_permission` VALUES ('66', 'Can change log entry', '18', 'change_log');
INSERT INTO `auth_permission` VALUES ('67', 'Can delete log entry', '18', 'delete_log');
INSERT INTO `auth_permission` VALUES ('68', 'Can view Bookmark', '15', 'view_bookmark');
INSERT INTO `auth_permission` VALUES ('69', 'Can view log entry', '18', 'view_log');
INSERT INTO `auth_permission` VALUES ('70', 'Can view User Setting', '16', 'view_usersettings');
INSERT INTO `auth_permission` VALUES ('71', 'Can view User Widget', '17', 'view_userwidget');
INSERT INTO `auth_permission` VALUES ('72', 'Can add 首页项目', '9', 'add_bannerportproject');
INSERT INTO `auth_permission` VALUES ('73', 'Can change 首页项目', '9', 'change_bannerportproject');
INSERT INTO `auth_permission` VALUES ('74', 'Can delete 首页项目', '9', 'delete_bannerportproject');
INSERT INTO `auth_permission` VALUES ('75', 'Can view 首页项目', '19', 'view_bannerportproject');

-- ----------------------------
-- Table structure for auth_user
-- ----------------------------
DROP TABLE IF EXISTS `auth_user`;
CREATE TABLE `auth_user` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `password` varchar(128) NOT NULL,
  `last_login` datetime DEFAULT NULL,
  `is_superuser` tinyint(1) NOT NULL,
  `username` varchar(30) NOT NULL,
  `first_name` varchar(30) NOT NULL,
  `last_name` varchar(30) NOT NULL,
  `email` varchar(254) NOT NULL,
  `is_staff` tinyint(1) NOT NULL,
  `is_active` tinyint(1) NOT NULL,
  `date_joined` datetime NOT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `username` (`username`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of auth_user
-- ----------------------------

-- ----------------------------
-- Table structure for auth_user_groups
-- ----------------------------
DROP TABLE IF EXISTS `auth_user_groups`;
CREATE TABLE `auth_user_groups` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `user_id` int(11) NOT NULL,
  `group_id` int(11) NOT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `auth_user_groups_user_id_94350c0c_uniq` (`user_id`,`group_id`),
  KEY `auth_user_groups_group_id_97559544_fk_auth_group_id` (`group_id`),
  CONSTRAINT `auth_user_groups_group_id_97559544_fk_auth_group_id` FOREIGN KEY (`group_id`) REFERENCES `auth_group` (`id`),
  CONSTRAINT `auth_user_groups_user_id_6a12ed8b_fk_auth_user_id` FOREIGN KEY (`user_id`) REFERENCES `auth_user` (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of auth_user_groups
-- ----------------------------

-- ----------------------------
-- Table structure for auth_user_user_permissions
-- ----------------------------
DROP TABLE IF EXISTS `auth_user_user_permissions`;
CREATE TABLE `auth_user_user_permissions` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `user_id` int(11) NOT NULL,
  `permission_id` int(11) NOT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `auth_user_user_permissions_user_id_14a6b632_uniq` (`user_id`,`permission_id`),
  KEY `auth_user_user_perm_permission_id_1fbb5f2c_fk_auth_permission_id` (`permission_id`),
  CONSTRAINT `auth_user_user_perm_permission_id_1fbb5f2c_fk_auth_permission_id` FOREIGN KEY (`permission_id`) REFERENCES `auth_permission` (`id`),
  CONSTRAINT `auth_user_user_permissions_user_id_a95ead1b_fk_auth_user_id` FOREIGN KEY (`user_id`) REFERENCES `auth_user` (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of auth_user_user_permissions
-- ----------------------------

-- ----------------------------
-- Table structure for django_admin_log
-- ----------------------------
DROP TABLE IF EXISTS `django_admin_log`;
CREATE TABLE `django_admin_log` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `action_time` datetime NOT NULL,
  `object_id` longtext,
  `object_repr` varchar(200) NOT NULL,
  `action_flag` smallint(5) unsigned NOT NULL,
  `change_message` longtext NOT NULL,
  `content_type_id` int(11) DEFAULT NULL,
  `user_id` int(11) NOT NULL,
  PRIMARY KEY (`id`),
  KEY `django_admin__content_type_id_c4bce8eb_fk_django_content_type_id` (`content_type_id`),
  KEY `django_admin_log_user_id_c564eba6_fk_auth_user_id` (`user_id`),
  CONSTRAINT `django_admin__content_type_id_c4bce8eb_fk_django_content_type_id` FOREIGN KEY (`content_type_id`) REFERENCES `django_content_type` (`id`),
  CONSTRAINT `django_admin_log_user_id_c564eba6_fk_auth_user_id` FOREIGN KEY (`user_id`) REFERENCES `auth_user` (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of django_admin_log
-- ----------------------------

-- ----------------------------
-- Table structure for django_content_type
-- ----------------------------
DROP TABLE IF EXISTS `django_content_type`;
CREATE TABLE `django_content_type` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `app_label` varchar(100) NOT NULL,
  `model` varchar(100) NOT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `django_content_type_app_label_76bd3d3b_uniq` (`app_label`,`model`)
) ENGINE=InnoDB AUTO_INCREMENT=20 DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of django_content_type
-- ----------------------------
INSERT INTO `django_content_type` VALUES ('1', 'admin', 'logentry');
INSERT INTO `django_content_type` VALUES ('3', 'auth', 'group');
INSERT INTO `django_content_type` VALUES ('2', 'auth', 'permission');
INSERT INTO `django_content_type` VALUES ('5', 'contenttypes', 'contenttype');
INSERT INTO `django_content_type` VALUES ('12', 'operations', 'portprojectcomments');
INSERT INTO `django_content_type` VALUES ('14', 'operations', 'report');
INSERT INTO `django_content_type` VALUES ('13', 'operations', 'usermessage');
INSERT INTO `django_content_type` VALUES ('19', 'reports', 'bannerportproject');
INSERT INTO `django_content_type` VALUES ('9', 'reports', 'portproject');
INSERT INTO `django_content_type` VALUES ('11', 'reports', 'projectresource');
INSERT INTO `django_content_type` VALUES ('10', 'reports', 'tag');
INSERT INTO `django_content_type` VALUES ('6', 'sessions', 'session');
INSERT INTO `django_content_type` VALUES ('8', 'users', 'banner');
INSERT INTO `django_content_type` VALUES ('7', 'users', 'userprofile');
INSERT INTO `django_content_type` VALUES ('15', 'xadmin', 'bookmark');
INSERT INTO `django_content_type` VALUES ('18', 'xadmin', 'log');
INSERT INTO `django_content_type` VALUES ('16', 'xadmin', 'usersettings');
INSERT INTO `django_content_type` VALUES ('17', 'xadmin', 'userwidget');

-- ----------------------------
-- Table structure for django_migrations
-- ----------------------------
DROP TABLE IF EXISTS `django_migrations`;
CREATE TABLE `django_migrations` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `app` varchar(255) NOT NULL,
  `name` varchar(255) NOT NULL,
  `applied` datetime NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=23 DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of django_migrations
-- ----------------------------
INSERT INTO `django_migrations` VALUES ('1', 'contenttypes', '0001_initial', '2017-12-09 04:34:04');
INSERT INTO `django_migrations` VALUES ('2', 'auth', '0001_initial', '2017-12-09 04:34:19');
INSERT INTO `django_migrations` VALUES ('3', 'admin', '0001_initial', '2017-12-09 04:34:22');
INSERT INTO `django_migrations` VALUES ('4', 'admin', '0002_logentry_remove_auto_add', '2017-12-09 04:34:22');
INSERT INTO `django_migrations` VALUES ('5', 'contenttypes', '0002_remove_content_type_name', '2017-12-09 04:34:23');
INSERT INTO `django_migrations` VALUES ('6', 'auth', '0002_alter_permission_name_max_length', '2017-12-09 04:34:23');
INSERT INTO `django_migrations` VALUES ('7', 'auth', '0003_alter_user_email_max_length', '2017-12-09 04:34:24');
INSERT INTO `django_migrations` VALUES ('8', 'auth', '0004_alter_user_username_opts', '2017-12-09 04:34:24');
INSERT INTO `django_migrations` VALUES ('9', 'auth', '0005_alter_user_last_login_null', '2017-12-09 04:34:24');
INSERT INTO `django_migrations` VALUES ('10', 'auth', '0006_require_contenttypes_0002', '2017-12-09 04:34:25');
INSERT INTO `django_migrations` VALUES ('11', 'auth', '0007_alter_validators_add_error_messages', '2017-12-09 04:34:25');
INSERT INTO `django_migrations` VALUES ('12', 'sessions', '0001_initial', '2017-12-09 04:34:25');
INSERT INTO `django_migrations` VALUES ('13', 'users', '0001_initial', '2017-12-09 04:49:35');
INSERT INTO `django_migrations` VALUES ('14', 'users', '0002_banner', '2017-12-09 05:16:11');
INSERT INTO `django_migrations` VALUES ('15', 'reports', '0001_initial', '2017-12-09 09:12:54');
INSERT INTO `django_migrations` VALUES ('16', 'operations', '0001_initial', '2017-12-09 09:12:59');
INSERT INTO `django_migrations` VALUES ('17', 'xadmin', '0001_initial', '2017-12-09 17:59:22');
INSERT INTO `django_migrations` VALUES ('18', 'xadmin', '0002_log', '2017-12-09 17:59:23');
INSERT INTO `django_migrations` VALUES ('19', 'xadmin', '0003_auto_20160715_0100', '2017-12-09 17:59:24');
INSERT INTO `django_migrations` VALUES ('20', 'reports', '0002_auto_20171223_2050', '2017-12-23 20:50:41');
INSERT INTO `django_migrations` VALUES ('21', 'users', '0003_userprofile_employee_id', '2017-12-24 12:53:16');
INSERT INTO `django_migrations` VALUES ('22', 'users', '0004_auto_20171224_1528', '2017-12-24 15:28:34');

-- ----------------------------
-- Table structure for django_session
-- ----------------------------
DROP TABLE IF EXISTS `django_session`;
CREATE TABLE `django_session` (
  `session_key` varchar(40) NOT NULL,
  `session_data` longtext NOT NULL,
  `expire_date` datetime NOT NULL,
  PRIMARY KEY (`session_key`),
  KEY `django_session_de54fa62` (`expire_date`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of django_session
-- ----------------------------
INSERT INTO `django_session` VALUES ('mgwytpd5zftc6w5ub1bhnlm20mn577b1', 'ZTMwMTVlMjJmMWMxYzA5YWQ1YmFjODk5MDY5NDA0Njg2ODQxZDIyZDp7Il9hdXRoX3VzZXJfaWQiOiIxIiwiX2F1dGhfdXNlcl9iYWNrZW5kIjoidXNlcnMudmlld3MuQ3VzdG9tQmFja2VuZCIsIl9hdXRoX3VzZXJfaGFzaCI6IjhkOTQxZmNhNTJjODlmNzdiMTJjMDI0YTFkOTU4YTE0MjVjMDZlNGIiLCJMSVNUX1FVRVJZIjpbWyJyZXBvcnRzIiwiYmFubmVycG9ydHByb2plY3QiXSwiIl19', '2018-01-06 22:18:04');

-- ----------------------------
-- Table structure for operations_portprojectcomments
-- ----------------------------
DROP TABLE IF EXISTS `operations_portprojectcomments`;
CREATE TABLE `operations_portprojectcomments` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `comments` varchar(200) NOT NULL,
  `add_time` datetime NOT NULL,
  `PortProject_id` int(11) NOT NULL,
  `user_id` int(11) NOT NULL,
  PRIMARY KEY (`id`),
  KEY `operations_por_PortProject_id_2cacb85f_fk_reports_portproject_id` (`PortProject_id`),
  KEY `operations_portprojectc_user_id_9b79cdd0_fk_users_userprofile_id` (`user_id`),
  CONSTRAINT `operations_por_PortProject_id_2cacb85f_fk_reports_portproject_id` FOREIGN KEY (`PortProject_id`) REFERENCES `reports_portproject` (`id`),
  CONSTRAINT `operations_portprojectc_user_id_9b79cdd0_fk_users_userprofile_id` FOREIGN KEY (`user_id`) REFERENCES `users_userprofile` (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of operations_portprojectcomments
-- ----------------------------

-- ----------------------------
-- Table structure for operations_report
-- ----------------------------
DROP TABLE IF EXISTS `operations_report`;
CREATE TABLE `operations_report` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `title` varchar(50) NOT NULL,
  `detail` longtext NOT NULL,
  `add_time` datetime NOT NULL,
  `project_name_id` int(11) NOT NULL,
  `user_name_id` int(11) NOT NULL,
  PRIMARY KEY (`id`),
  KEY `operations_re_project_name_id_5560e9a6_fk_reports_portproject_id` (`project_name_id`),
  KEY `operations_report_user_name_id_b06e9975_fk_users_userprofile_id` (`user_name_id`),
  CONSTRAINT `operations_re_project_name_id_5560e9a6_fk_reports_portproject_id` FOREIGN KEY (`project_name_id`) REFERENCES `reports_portproject` (`id`),
  CONSTRAINT `operations_report_user_name_id_b06e9975_fk_users_userprofile_id` FOREIGN KEY (`user_name_id`) REFERENCES `users_userprofile` (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=2 DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of operations_report
-- ----------------------------
INSERT INTO `operations_report` VALUES ('1', 'mes刘报告', '思达佛挡杀佛速度跟', '2017-12-23 21:22:00', '1', '1');

-- ----------------------------
-- Table structure for operations_report_tag
-- ----------------------------
DROP TABLE IF EXISTS `operations_report_tag`;
CREATE TABLE `operations_report_tag` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `report_id` int(11) NOT NULL,
  `tag_id` int(11) NOT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `operations_report_Tag_report_id_eca0d5e8_uniq` (`report_id`,`tag_id`),
  KEY `operations_report_Tag_tag_id_ec318747_fk_reports_tag_id` (`tag_id`),
  CONSTRAINT `operations_report_Tag_report_id_7545fb91_fk_operations_report_id` FOREIGN KEY (`report_id`) REFERENCES `operations_report` (`id`),
  CONSTRAINT `operations_report_Tag_tag_id_ec318747_fk_reports_tag_id` FOREIGN KEY (`tag_id`) REFERENCES `reports_tag` (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=2 DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of operations_report_tag
-- ----------------------------
INSERT INTO `operations_report_tag` VALUES ('1', '1', '1');

-- ----------------------------
-- Table structure for operations_usermessage
-- ----------------------------
DROP TABLE IF EXISTS `operations_usermessage`;
CREATE TABLE `operations_usermessage` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `user` int(11) NOT NULL,
  `message` varchar(500) NOT NULL,
  `has_read` tinyint(1) NOT NULL,
  `add_time` datetime NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of operations_usermessage
-- ----------------------------

-- ----------------------------
-- Table structure for reports_portproject
-- ----------------------------
DROP TABLE IF EXISTS `reports_portproject`;
CREATE TABLE `reports_portproject` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `name` varchar(50) NOT NULL,
  `desc` varchar(100) NOT NULL,
  `detail` longtext NOT NULL,
  `progress` varchar(2) NOT NULL,
  `add_time` datetime NOT NULL,
  `is_banner` tinyint(1) NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=3 DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of reports_portproject
-- ----------------------------
INSERT INTO `reports_portproject` VALUES ('1', 'mes项目', 'mes2.0项目', 'mes2.0项目的部署,包括：\r\n1. 网络\r\n2. 硬件', 'js', '2017-12-09 19:56:00', '0');
INSERT INTO `reports_portproject` VALUES ('2', 'erp合同系统接口', 'erp与合同系统之间的接口', '总公司在11月份下达了关于合同系统接口的文件，可能涉及到考核，需要在12月之前完成\r\n负责人是：XX\\XX', 'yw', '2017-12-20 22:20:00', '1');

-- ----------------------------
-- Table structure for reports_projectresource
-- ----------------------------
DROP TABLE IF EXISTS `reports_projectresource`;
CREATE TABLE `reports_projectresource` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `name` varchar(100) NOT NULL,
  `download` varchar(100) NOT NULL,
  `add_time` datetime NOT NULL,
  `project_name_id` int(11) NOT NULL,
  PRIMARY KEY (`id`),
  KEY `reports_proje_project_name_id_1965f6c6_fk_reports_portproject_id` (`project_name_id`),
  CONSTRAINT `reports_proje_project_name_id_1965f6c6_fk_reports_portproject_id` FOREIGN KEY (`project_name_id`) REFERENCES `reports_portproject` (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=4 DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of reports_projectresource
-- ----------------------------
INSERT INTO `reports_projectresource` VALUES ('2', '文档资料', 'PortProject/resource/2017/12/新建文本文档_JLyfNq0.txt', '2017-12-09 19:57:00', '1');
INSERT INTO `reports_projectresource` VALUES ('3', 'erp相关资料', 'PortProject/resource/2017/12/像我这样的人.aac', '2017-12-20 22:35:00', '2');

-- ----------------------------
-- Table structure for reports_tag
-- ----------------------------
DROP TABLE IF EXISTS `reports_tag`;
CREATE TABLE `reports_tag` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `name` varchar(20) NOT NULL,
  `desc` varchar(100) NOT NULL,
  `add_time` datetime NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=4 DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of reports_tag
-- ----------------------------
INSERT INTO `reports_tag` VALUES ('1', '信息化', '信息化的项目', '2017-12-20 22:19:00');
INSERT INTO `reports_tag` VALUES ('2', '硬件', '硬件方面的项目', '2017-12-20 22:20:00');
INSERT INTO `reports_tag` VALUES ('3', '党务', '党务方面的项目', '2017-12-20 22:20:00');

-- ----------------------------
-- Table structure for users_banner
-- ----------------------------
DROP TABLE IF EXISTS `users_banner`;
CREATE TABLE `users_banner` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `title` varchar(100) NOT NULL,
  `image` varchar(100) NOT NULL,
  `url` varchar(200) NOT NULL,
  `index` int(11) NOT NULL,
  `add_time` datetime NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of users_banner
-- ----------------------------

-- ----------------------------
-- Table structure for users_userprofile
-- ----------------------------
DROP TABLE IF EXISTS `users_userprofile`;
CREATE TABLE `users_userprofile` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `password` varchar(128) NOT NULL,
  `last_login` datetime DEFAULT NULL,
  `is_superuser` tinyint(1) NOT NULL,
  `username` varchar(30) NOT NULL,
  `first_name` varchar(30) NOT NULL,
  `last_name` varchar(30) NOT NULL,
  `email` varchar(254) NOT NULL,
  `is_staff` tinyint(1) NOT NULL,
  `is_active` tinyint(1) NOT NULL,
  `date_joined` datetime NOT NULL,
  `nick_name` varchar(50) DEFAULT NULL,
  `birthday` date DEFAULT NULL,
  `employee_id` varchar(15),
  PRIMARY KEY (`id`),
  UNIQUE KEY `username` (`username`)
) ENGINE=InnoDB AUTO_INCREMENT=2 DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of users_userprofile
-- ----------------------------
INSERT INTO `users_userprofile` VALUES ('1', 'pbkdf2_sha256$24000$jSutiXve3RFb$oVhpavxcZMmPbJA54jztvLHMisbaPiq715VI0ydK2Mc=', '2017-12-20 20:33:40', '1', 'asa', '', '', '123@qq.com', '1', '1', '2017-12-09 17:27:36', '', null, null);

-- ----------------------------
-- Table structure for users_userprofile_groups
-- ----------------------------
DROP TABLE IF EXISTS `users_userprofile_groups`;
CREATE TABLE `users_userprofile_groups` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `userprofile_id` int(11) NOT NULL,
  `group_id` int(11) NOT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `users_userprofile_groups_userprofile_id_823cf2fc_uniq` (`userprofile_id`,`group_id`),
  KEY `users_userprofile_groups_group_id_3de53dbf_fk_auth_group_id` (`group_id`),
  CONSTRAINT `users_userprofil_userprofile_id_a4496a80_fk_users_userprofile_id` FOREIGN KEY (`userprofile_id`) REFERENCES `users_userprofile` (`id`),
  CONSTRAINT `users_userprofile_groups_group_id_3de53dbf_fk_auth_group_id` FOREIGN KEY (`group_id`) REFERENCES `auth_group` (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of users_userprofile_groups
-- ----------------------------

-- ----------------------------
-- Table structure for users_userprofile_user_permissions
-- ----------------------------
DROP TABLE IF EXISTS `users_userprofile_user_permissions`;
CREATE TABLE `users_userprofile_user_permissions` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `userprofile_id` int(11) NOT NULL,
  `permission_id` int(11) NOT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `users_userprofile_user_permissions_userprofile_id_d0215190_uniq` (`userprofile_id`,`permission_id`),
  KEY `users_userprofile_u_permission_id_393136b6_fk_auth_permission_id` (`permission_id`),
  CONSTRAINT `users_userprofil_userprofile_id_34544737_fk_users_userprofile_id` FOREIGN KEY (`userprofile_id`) REFERENCES `users_userprofile` (`id`),
  CONSTRAINT `users_userprofile_u_permission_id_393136b6_fk_auth_permission_id` FOREIGN KEY (`permission_id`) REFERENCES `auth_permission` (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of users_userprofile_user_permissions
-- ----------------------------

-- ----------------------------
-- Table structure for xadmin_bookmark
-- ----------------------------
DROP TABLE IF EXISTS `xadmin_bookmark`;
CREATE TABLE `xadmin_bookmark` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `title` varchar(128) NOT NULL,
  `url_name` varchar(64) NOT NULL,
  `query` varchar(1000) NOT NULL,
  `is_share` tinyint(1) NOT NULL,
  `content_type_id` int(11) NOT NULL,
  `user_id` int(11) DEFAULT NULL,
  PRIMARY KEY (`id`),
  KEY `xadmin_bookma_content_type_id_60941679_fk_django_content_type_id` (`content_type_id`),
  KEY `xadmin_bookmark_user_id_42d307fc_fk_users_userprofile_id` (`user_id`),
  CONSTRAINT `xadmin_bookma_content_type_id_60941679_fk_django_content_type_id` FOREIGN KEY (`content_type_id`) REFERENCES `django_content_type` (`id`),
  CONSTRAINT `xadmin_bookmark_user_id_42d307fc_fk_users_userprofile_id` FOREIGN KEY (`user_id`) REFERENCES `users_userprofile` (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of xadmin_bookmark
-- ----------------------------

-- ----------------------------
-- Table structure for xadmin_log
-- ----------------------------
DROP TABLE IF EXISTS `xadmin_log`;
CREATE TABLE `xadmin_log` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `action_time` datetime NOT NULL,
  `ip_addr` char(39) DEFAULT NULL,
  `object_id` longtext,
  `object_repr` varchar(200) NOT NULL,
  `action_flag` varchar(32) NOT NULL,
  `message` longtext NOT NULL,
  `content_type_id` int(11) DEFAULT NULL,
  `user_id` int(11) NOT NULL,
  PRIMARY KEY (`id`),
  KEY `xadmin_log_content_type_id_2a6cb852_fk_django_content_type_id` (`content_type_id`),
  KEY `xadmin_log_user_id_bb16a176_fk_users_userprofile_id` (`user_id`),
  CONSTRAINT `xadmin_log_content_type_id_2a6cb852_fk_django_content_type_id` FOREIGN KEY (`content_type_id`) REFERENCES `django_content_type` (`id`),
  CONSTRAINT `xadmin_log_user_id_bb16a176_fk_users_userprofile_id` FOREIGN KEY (`user_id`) REFERENCES `users_userprofile` (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=12 DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of xadmin_log
-- ----------------------------
INSERT INTO `xadmin_log` VALUES ('1', '2017-12-09 19:56:52', '127.0.0.1', '1', 'mes项目', 'create', '已添加', '9', '1');
INSERT INTO `xadmin_log` VALUES ('2', '2017-12-09 19:59:16', '127.0.0.1', '2', '文档资料', 'create', '已添加', '11', '1');
INSERT INTO `xadmin_log` VALUES ('3', '2017-12-20 22:20:01', '127.0.0.1', '1', '信息化', 'create', '已添加', '10', '1');
INSERT INTO `xadmin_log` VALUES ('4', '2017-12-20 22:20:16', '127.0.0.1', '2', '硬件', 'create', '已添加', '10', '1');
INSERT INTO `xadmin_log` VALUES ('5', '2017-12-20 22:20:24', '127.0.0.1', '3', '党务', 'create', '已添加', '10', '1');
INSERT INTO `xadmin_log` VALUES ('6', '2017-12-20 22:22:16', '127.0.0.1', '2', 'erp合同系统接口', 'create', '已添加', '9', '1');
INSERT INTO `xadmin_log` VALUES ('7', '2017-12-20 22:35:09', '127.0.0.1', '2', '文档资料', 'change', '没有字段被修改。', '11', '1');
INSERT INTO `xadmin_log` VALUES ('8', '2017-12-20 22:35:45', '127.0.0.1', '3', 'erp相关资料', 'create', '已添加', '11', '1');
INSERT INTO `xadmin_log` VALUES ('9', '2017-12-23 20:56:57', '127.0.0.1', '2', 'erp合同系统接口', 'change', '已修改 is_banner 。', '9', '1');
INSERT INTO `xadmin_log` VALUES ('10', '2017-12-23 21:23:05', '127.0.0.1', '1', 'Report object', 'create', '已添加', '14', '1');
INSERT INTO `xadmin_log` VALUES ('11', '2017-12-23 21:23:28', '127.0.0.1', '1', 'Report object', 'change', '已修改 project_name 。', '14', '1');

-- ----------------------------
-- Table structure for xadmin_usersettings
-- ----------------------------
DROP TABLE IF EXISTS `xadmin_usersettings`;
CREATE TABLE `xadmin_usersettings` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `key` varchar(256) NOT NULL,
  `value` longtext NOT NULL,
  `user_id` int(11) NOT NULL,
  PRIMARY KEY (`id`),
  KEY `xadmin_usersettings_user_id_edeabe4a_fk_users_userprofile_id` (`user_id`),
  CONSTRAINT `xadmin_usersettings_user_id_edeabe4a_fk_users_userprofile_id` FOREIGN KEY (`user_id`) REFERENCES `users_userprofile` (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=2 DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of xadmin_usersettings
-- ----------------------------
INSERT INTO `xadmin_usersettings` VALUES ('1', 'dashboard:home:pos', '', '1');

-- ----------------------------
-- Table structure for xadmin_userwidget
-- ----------------------------
DROP TABLE IF EXISTS `xadmin_userwidget`;
CREATE TABLE `xadmin_userwidget` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `page_id` varchar(256) NOT NULL,
  `widget_type` varchar(50) NOT NULL,
  `value` longtext NOT NULL,
  `user_id` int(11) NOT NULL,
  PRIMARY KEY (`id`),
  KEY `xadmin_userwidget_user_id_c159233a_fk_users_userprofile_id` (`user_id`),
  CONSTRAINT `xadmin_userwidget_user_id_c159233a_fk_users_userprofile_id` FOREIGN KEY (`user_id`) REFERENCES `users_userprofile` (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of xadmin_userwidget
-- ----------------------------
