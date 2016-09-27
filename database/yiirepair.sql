/*
Navicat MySQL Data Transfer

Source Server         : localhost
Source Server Version : 50525
Source Host           : localhost:3306
Source Database       : yiirepair

Target Server Type    : MYSQL
Target Server Version : 50525
File Encoding         : 65001

Date: 2016-09-27 20:13:53
*/

SET FOREIGN_KEY_CHECKS=0;

-- ----------------------------
-- Table structure for account
-- ----------------------------
DROP TABLE IF EXISTS `account`;
CREATE TABLE `account` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `user_id` int(11) DEFAULT NULL,
  `provider` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `client_id` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `properties` text COLLATE utf8_unicode_ci,
  PRIMARY KEY (`id`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

-- ----------------------------
-- Records of account
-- ----------------------------

-- ----------------------------
-- Table structure for auth_assignment
-- ----------------------------
DROP TABLE IF EXISTS `auth_assignment`;
CREATE TABLE `auth_assignment` (
  `item_name` varchar(64) COLLATE utf8_unicode_ci NOT NULL,
  `user_id` varchar(64) COLLATE utf8_unicode_ci NOT NULL,
  `created_at` int(11) DEFAULT NULL,
  PRIMARY KEY (`item_name`,`user_id`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

-- ----------------------------
-- Records of auth_assignment
-- ----------------------------
INSERT INTO `auth_assignment` VALUES ('user', '3', '1474902889');
INSERT INTO `auth_assignment` VALUES ('engineer', '2', '1474902913');
INSERT INTO `auth_assignment` VALUES ('superengineer', '2', '1474902917');
INSERT INTO `auth_assignment` VALUES ('administrator', '1', '1474902937');

-- ----------------------------
-- Table structure for auth_item
-- ----------------------------
DROP TABLE IF EXISTS `auth_item`;
CREATE TABLE `auth_item` (
  `name` varchar(64) COLLATE utf8_unicode_ci NOT NULL,
  `type` int(11) NOT NULL,
  `description` text COLLATE utf8_unicode_ci,
  `rule_name` varchar(64) COLLATE utf8_unicode_ci DEFAULT NULL,
  `data` text COLLATE utf8_unicode_ci,
  `created_at` int(11) DEFAULT NULL,
  `updated_at` int(11) DEFAULT NULL,
  PRIMARY KEY (`name`),
  KEY `rule_name` (`rule_name`) USING BTREE,
  KEY `idx-auth_item-type` (`type`) USING BTREE
) ENGINE=MyISAM DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

-- ----------------------------
-- Records of auth_item
-- ----------------------------
INSERT INTO `auth_item` VALUES ('/user/admin/index', '2', null, null, null, '1474901893', '1474901893');
INSERT INTO `auth_item` VALUES ('/user/admin/create', '2', null, null, null, '1474901894', '1474901894');
INSERT INTO `auth_item` VALUES ('/user/admin/update', '2', null, null, null, '1474901894', '1474901894');
INSERT INTO `auth_item` VALUES ('/user/admin/update-profile', '2', null, null, null, '1474901894', '1474901894');
INSERT INTO `auth_item` VALUES ('/user/admin/info', '2', null, null, null, '1474901894', '1474901894');
INSERT INTO `auth_item` VALUES ('/user/admin/assignments', '2', null, null, null, '1474901894', '1474901894');
INSERT INTO `auth_item` VALUES ('/user/admin/confirm', '2', null, null, null, '1474901894', '1474901894');
INSERT INTO `auth_item` VALUES ('/user/admin/delete', '2', null, null, null, '1474901894', '1474901894');
INSERT INTO `auth_item` VALUES ('/user/admin/block', '2', null, null, null, '1474901894', '1474901894');
INSERT INTO `auth_item` VALUES ('/user/admin/*', '2', null, null, null, '1474901894', '1474901894');
INSERT INTO `auth_item` VALUES ('/user/profile/index', '2', null, null, null, '1474901894', '1474901894');
INSERT INTO `auth_item` VALUES ('/user/profile/show', '2', null, null, null, '1474901894', '1474901894');
INSERT INTO `auth_item` VALUES ('/user/profile/*', '2', null, null, null, '1474901894', '1474901894');
INSERT INTO `auth_item` VALUES ('/user/recovery/request', '2', null, null, null, '1474901894', '1474901894');
INSERT INTO `auth_item` VALUES ('/user/recovery/reset', '2', null, null, null, '1474901894', '1474901894');
INSERT INTO `auth_item` VALUES ('/user/recovery/*', '2', null, null, null, '1474901894', '1474901894');
INSERT INTO `auth_item` VALUES ('/user/registration/register', '2', null, null, null, '1474901894', '1474901894');
INSERT INTO `auth_item` VALUES ('/user/registration/connect', '2', null, null, null, '1474901894', '1474901894');
INSERT INTO `auth_item` VALUES ('/user/registration/confirm', '2', null, null, null, '1474901894', '1474901894');
INSERT INTO `auth_item` VALUES ('/user/registration/resend', '2', null, null, null, '1474901894', '1474901894');
INSERT INTO `auth_item` VALUES ('/user/registration/*', '2', null, null, null, '1474901894', '1474901894');
INSERT INTO `auth_item` VALUES ('/user/security/auth', '2', null, null, null, '1474901894', '1474901894');
INSERT INTO `auth_item` VALUES ('/user/security/login', '2', null, null, null, '1474901894', '1474901894');
INSERT INTO `auth_item` VALUES ('/user/security/logout', '2', null, null, null, '1474901894', '1474901894');
INSERT INTO `auth_item` VALUES ('/user/security/*', '2', null, null, null, '1474901894', '1474901894');
INSERT INTO `auth_item` VALUES ('/user/settings/profile', '2', null, null, null, '1474901894', '1474901894');
INSERT INTO `auth_item` VALUES ('/user/settings/account', '2', null, null, null, '1474901894', '1474901894');
INSERT INTO `auth_item` VALUES ('/user/settings/accountadmin', '2', null, null, null, '1474901894', '1474901894');
INSERT INTO `auth_item` VALUES ('/user/settings/confirm', '2', null, null, null, '1474901894', '1474901894');
INSERT INTO `auth_item` VALUES ('/user/settings/networks', '2', null, null, null, '1474901894', '1474901894');
INSERT INTO `auth_item` VALUES ('/user/settings/disconnect', '2', null, null, null, '1474901894', '1474901894');
INSERT INTO `auth_item` VALUES ('/user/settings/delete', '2', null, null, null, '1474901894', '1474901894');
INSERT INTO `auth_item` VALUES ('/user/settings/*', '2', null, null, null, '1474901894', '1474901894');
INSERT INTO `auth_item` VALUES ('/user/*', '2', null, null, null, '1474901894', '1474901894');
INSERT INTO `auth_item` VALUES ('/gridview/export/download', '2', null, null, null, '1474901894', '1474901894');
INSERT INTO `auth_item` VALUES ('/gridview/export/*', '2', null, null, null, '1474901894', '1474901894');
INSERT INTO `auth_item` VALUES ('/gridview/*', '2', null, null, null, '1474901894', '1474901894');
INSERT INTO `auth_item` VALUES ('/rbac/assignment/assign', '2', null, null, null, '1474901894', '1474901894');
INSERT INTO `auth_item` VALUES ('/rbac/assignment/*', '2', null, null, null, '1474901894', '1474901894');
INSERT INTO `auth_item` VALUES ('/rbac/permission/index', '2', null, null, null, '1474901894', '1474901894');
INSERT INTO `auth_item` VALUES ('/rbac/permission/create', '2', null, null, null, '1474901894', '1474901894');
INSERT INTO `auth_item` VALUES ('/rbac/permission/update', '2', null, null, null, '1474901894', '1474901894');
INSERT INTO `auth_item` VALUES ('/rbac/permission/delete', '2', null, null, null, '1474901894', '1474901894');
INSERT INTO `auth_item` VALUES ('/rbac/permission/*', '2', null, null, null, '1474901894', '1474901894');
INSERT INTO `auth_item` VALUES ('/rbac/role/index', '2', null, null, null, '1474901894', '1474901894');
INSERT INTO `auth_item` VALUES ('/rbac/role/create', '2', null, null, null, '1474901894', '1474901894');
INSERT INTO `auth_item` VALUES ('/rbac/role/update', '2', null, null, null, '1474901894', '1474901894');
INSERT INTO `auth_item` VALUES ('/rbac/role/delete', '2', null, null, null, '1474901894', '1474901894');
INSERT INTO `auth_item` VALUES ('/rbac/role/*', '2', null, null, null, '1474901894', '1474901894');
INSERT INTO `auth_item` VALUES ('/rbac/rule/index', '2', null, null, null, '1474901894', '1474901894');
INSERT INTO `auth_item` VALUES ('/rbac/rule/create', '2', null, null, null, '1474901894', '1474901894');
INSERT INTO `auth_item` VALUES ('/rbac/rule/update', '2', null, null, null, '1474901894', '1474901894');
INSERT INTO `auth_item` VALUES ('/rbac/rule/delete', '2', null, null, null, '1474901894', '1474901894');
INSERT INTO `auth_item` VALUES ('/rbac/rule/search', '2', null, null, null, '1474901894', '1474901894');
INSERT INTO `auth_item` VALUES ('/rbac/rule/*', '2', null, null, null, '1474901894', '1474901894');
INSERT INTO `auth_item` VALUES ('/rbac/*', '2', null, null, null, '1474901894', '1474901894');
INSERT INTO `auth_item` VALUES ('/admin/assignment/index', '2', null, null, null, '1474901894', '1474901894');
INSERT INTO `auth_item` VALUES ('/admin/assignment/view', '2', null, null, null, '1474901894', '1474901894');
INSERT INTO `auth_item` VALUES ('/admin/assignment/assign', '2', null, null, null, '1474901894', '1474901894');
INSERT INTO `auth_item` VALUES ('/admin/assignment/revoke', '2', null, null, null, '1474901894', '1474901894');
INSERT INTO `auth_item` VALUES ('/admin/assignment/*', '2', null, null, null, '1474901894', '1474901894');
INSERT INTO `auth_item` VALUES ('/admin/default/index', '2', null, null, null, '1474901894', '1474901894');
INSERT INTO `auth_item` VALUES ('/admin/default/*', '2', null, null, null, '1474901894', '1474901894');
INSERT INTO `auth_item` VALUES ('/admin/menu/index', '2', null, null, null, '1474901894', '1474901894');
INSERT INTO `auth_item` VALUES ('/admin/menu/view', '2', null, null, null, '1474901894', '1474901894');
INSERT INTO `auth_item` VALUES ('/admin/menu/create', '2', null, null, null, '1474901894', '1474901894');
INSERT INTO `auth_item` VALUES ('/admin/menu/update', '2', null, null, null, '1474901894', '1474901894');
INSERT INTO `auth_item` VALUES ('/admin/menu/delete', '2', null, null, null, '1474901894', '1474901894');
INSERT INTO `auth_item` VALUES ('/admin/menu/*', '2', null, null, null, '1474901894', '1474901894');
INSERT INTO `auth_item` VALUES ('/admin/permission/index', '2', null, null, null, '1474901894', '1474901894');
INSERT INTO `auth_item` VALUES ('/admin/permission/view', '2', null, null, null, '1474901894', '1474901894');
INSERT INTO `auth_item` VALUES ('/admin/permission/create', '2', null, null, null, '1474901894', '1474901894');
INSERT INTO `auth_item` VALUES ('/admin/permission/update', '2', null, null, null, '1474901894', '1474901894');
INSERT INTO `auth_item` VALUES ('/admin/permission/delete', '2', null, null, null, '1474901894', '1474901894');
INSERT INTO `auth_item` VALUES ('/admin/permission/assign', '2', null, null, null, '1474901894', '1474901894');
INSERT INTO `auth_item` VALUES ('/admin/permission/remove', '2', null, null, null, '1474901894', '1474901894');
INSERT INTO `auth_item` VALUES ('/admin/permission/*', '2', null, null, null, '1474901894', '1474901894');
INSERT INTO `auth_item` VALUES ('/admin/role/index', '2', null, null, null, '1474901894', '1474901894');
INSERT INTO `auth_item` VALUES ('/admin/role/view', '2', null, null, null, '1474901894', '1474901894');
INSERT INTO `auth_item` VALUES ('/admin/role/create', '2', null, null, null, '1474901894', '1474901894');
INSERT INTO `auth_item` VALUES ('/admin/role/update', '2', null, null, null, '1474901894', '1474901894');
INSERT INTO `auth_item` VALUES ('/admin/role/delete', '2', null, null, null, '1474901894', '1474901894');
INSERT INTO `auth_item` VALUES ('/admin/role/assign', '2', null, null, null, '1474901894', '1474901894');
INSERT INTO `auth_item` VALUES ('/admin/role/remove', '2', null, null, null, '1474901894', '1474901894');
INSERT INTO `auth_item` VALUES ('/admin/role/*', '2', null, null, null, '1474901894', '1474901894');
INSERT INTO `auth_item` VALUES ('/admin/route/index', '2', null, null, null, '1474901894', '1474901894');
INSERT INTO `auth_item` VALUES ('/admin/route/create', '2', null, null, null, '1474901894', '1474901894');
INSERT INTO `auth_item` VALUES ('/admin/route/assign', '2', null, null, null, '1474901894', '1474901894');
INSERT INTO `auth_item` VALUES ('/admin/route/remove', '2', null, null, null, '1474901894', '1474901894');
INSERT INTO `auth_item` VALUES ('/admin/route/refresh', '2', null, null, null, '1474901894', '1474901894');
INSERT INTO `auth_item` VALUES ('/admin/route/*', '2', null, null, null, '1474901894', '1474901894');
INSERT INTO `auth_item` VALUES ('/admin/rule/index', '2', null, null, null, '1474901894', '1474901894');
INSERT INTO `auth_item` VALUES ('/admin/rule/view', '2', null, null, null, '1474901894', '1474901894');
INSERT INTO `auth_item` VALUES ('/admin/rule/create', '2', null, null, null, '1474901894', '1474901894');
INSERT INTO `auth_item` VALUES ('/admin/rule/update', '2', null, null, null, '1474901894', '1474901894');
INSERT INTO `auth_item` VALUES ('/admin/rule/delete', '2', null, null, null, '1474901894', '1474901894');
INSERT INTO `auth_item` VALUES ('/admin/rule/*', '2', null, null, null, '1474901894', '1474901894');
INSERT INTO `auth_item` VALUES ('/admin/user/index', '2', null, null, null, '1474901894', '1474901894');
INSERT INTO `auth_item` VALUES ('/admin/user/view', '2', null, null, null, '1474901894', '1474901894');
INSERT INTO `auth_item` VALUES ('/admin/user/delete', '2', null, null, null, '1474901894', '1474901894');
INSERT INTO `auth_item` VALUES ('/admin/user/login', '2', null, null, null, '1474901894', '1474901894');
INSERT INTO `auth_item` VALUES ('/admin/user/logout', '2', null, null, null, '1474901894', '1474901894');
INSERT INTO `auth_item` VALUES ('/admin/user/signup', '2', null, null, null, '1474901894', '1474901894');
INSERT INTO `auth_item` VALUES ('/admin/user/request-password-reset', '2', null, null, null, '1474901894', '1474901894');
INSERT INTO `auth_item` VALUES ('/admin/user/reset-password', '2', null, null, null, '1474901894', '1474901894');
INSERT INTO `auth_item` VALUES ('/admin/user/change-password', '2', null, null, null, '1474901894', '1474901894');
INSERT INTO `auth_item` VALUES ('/admin/user/activate', '2', null, null, null, '1474901894', '1474901894');
INSERT INTO `auth_item` VALUES ('/admin/user/*', '2', null, null, null, '1474901894', '1474901894');
INSERT INTO `auth_item` VALUES ('/admin/*', '2', null, null, null, '1474901894', '1474901894');
INSERT INTO `auth_item` VALUES ('/debug/default/db-explain', '2', null, null, null, '1474901894', '1474901894');
INSERT INTO `auth_item` VALUES ('/debug/default/index', '2', null, null, null, '1474901894', '1474901894');
INSERT INTO `auth_item` VALUES ('/debug/default/view', '2', null, null, null, '1474901894', '1474901894');
INSERT INTO `auth_item` VALUES ('/debug/default/toolbar', '2', null, null, null, '1474901894', '1474901894');
INSERT INTO `auth_item` VALUES ('/debug/default/download-mail', '2', null, null, null, '1474901894', '1474901894');
INSERT INTO `auth_item` VALUES ('/debug/default/*', '2', null, null, null, '1474901894', '1474901894');
INSERT INTO `auth_item` VALUES ('/debug/*', '2', null, null, null, '1474901894', '1474901894');
INSERT INTO `auth_item` VALUES ('/gii/default/index', '2', null, null, null, '1474901894', '1474901894');
INSERT INTO `auth_item` VALUES ('/gii/default/view', '2', null, null, null, '1474901894', '1474901894');
INSERT INTO `auth_item` VALUES ('/gii/default/preview', '2', null, null, null, '1474901894', '1474901894');
INSERT INTO `auth_item` VALUES ('/gii/default/diff', '2', null, null, null, '1474901894', '1474901894');
INSERT INTO `auth_item` VALUES ('/gii/default/action', '2', null, null, null, '1474901894', '1474901894');
INSERT INTO `auth_item` VALUES ('/gii/default/*', '2', null, null, null, '1474901894', '1474901894');
INSERT INTO `auth_item` VALUES ('/gii/*', '2', null, null, null, '1474901894', '1474901894');
INSERT INTO `auth_item` VALUES ('/departments/index', '2', null, null, null, '1474901894', '1474901894');
INSERT INTO `auth_item` VALUES ('/departments/view', '2', null, null, null, '1474901894', '1474901894');
INSERT INTO `auth_item` VALUES ('/departments/create', '2', null, null, null, '1474901894', '1474901894');
INSERT INTO `auth_item` VALUES ('/departments/update', '2', null, null, null, '1474901894', '1474901894');
INSERT INTO `auth_item` VALUES ('/departments/delete', '2', null, null, null, '1474901894', '1474901894');
INSERT INTO `auth_item` VALUES ('/departments/*', '2', null, null, null, '1474901894', '1474901894');
INSERT INTO `auth_item` VALUES ('/engineers/index', '2', null, null, null, '1474901894', '1474901894');
INSERT INTO `auth_item` VALUES ('/engineers/view', '2', null, null, null, '1474901894', '1474901894');
INSERT INTO `auth_item` VALUES ('/engineers/create', '2', null, null, null, '1474901894', '1474901894');
INSERT INTO `auth_item` VALUES ('/engineers/update', '2', null, null, null, '1474901894', '1474901894');
INSERT INTO `auth_item` VALUES ('/engineers/delete', '2', null, null, null, '1474901894', '1474901894');
INSERT INTO `auth_item` VALUES ('/engineers/*', '2', null, null, null, '1474901894', '1474901894');
INSERT INTO `auth_item` VALUES ('/repairs/index', '2', null, null, null, '1474901894', '1474901894');
INSERT INTO `auth_item` VALUES ('/repairs/indexall', '2', null, null, null, '1474901894', '1474901894');
INSERT INTO `auth_item` VALUES ('/repairs/indexengineer', '2', null, null, null, '1474901894', '1474901894');
INSERT INTO `auth_item` VALUES ('/repairs/indexdep', '2', null, null, null, '1474901894', '1474901894');
INSERT INTO `auth_item` VALUES ('/repairs/view', '2', null, null, null, '1474901894', '1474901894');
INSERT INTO `auth_item` VALUES ('/repairs/create', '2', null, null, null, '1474901894', '1474901894');
INSERT INTO `auth_item` VALUES ('/repairs/createuser', '2', null, null, null, '1474901894', '1474901894');
INSERT INTO `auth_item` VALUES ('/repairs/update', '2', null, null, null, '1474901894', '1474901894');
INSERT INTO `auth_item` VALUES ('/repairs/delete', '2', null, null, null, '1474901894', '1474901894');
INSERT INTO `auth_item` VALUES ('/repairs/get-tool', '2', null, null, null, '1474901894', '1474901894');
INSERT INTO `auth_item` VALUES ('/repairs/report1', '2', null, null, null, '1474901894', '1474901894');
INSERT INTO `auth_item` VALUES ('/repairs/report2', '2', null, null, null, '1474901894', '1474901894');
INSERT INTO `auth_item` VALUES ('/repairs/*', '2', null, null, null, '1474901894', '1474901894');
INSERT INTO `auth_item` VALUES ('/site/error', '2', null, null, null, '1474901894', '1474901894');
INSERT INTO `auth_item` VALUES ('/site/captcha', '2', null, null, null, '1474901894', '1474901894');
INSERT INTO `auth_item` VALUES ('/site/index', '2', null, null, null, '1474901894', '1474901894');
INSERT INTO `auth_item` VALUES ('/site/login', '2', null, null, null, '1474901894', '1474901894');
INSERT INTO `auth_item` VALUES ('/site/logout', '2', null, null, null, '1474901894', '1474901894');
INSERT INTO `auth_item` VALUES ('/site/contact', '2', null, null, null, '1474901894', '1474901894');
INSERT INTO `auth_item` VALUES ('/site/about', '2', null, null, null, '1474901894', '1474901894');
INSERT INTO `auth_item` VALUES ('/site/*', '2', null, null, null, '1474901894', '1474901894');
INSERT INTO `auth_item` VALUES ('/tools/index', '2', null, null, null, '1474901894', '1474901894');
INSERT INTO `auth_item` VALUES ('/tools/view', '2', null, null, null, '1474901894', '1474901894');
INSERT INTO `auth_item` VALUES ('/tools/create', '2', null, null, null, '1474901894', '1474901894');
INSERT INTO `auth_item` VALUES ('/tools/update', '2', null, null, null, '1474901894', '1474901894');
INSERT INTO `auth_item` VALUES ('/tools/delete', '2', null, null, null, '1474901894', '1474901894');
INSERT INTO `auth_item` VALUES ('/tools/*', '2', null, null, null, '1474901894', '1474901894');
INSERT INTO `auth_item` VALUES ('/tooltypes/index', '2', null, null, null, '1474901894', '1474901894');
INSERT INTO `auth_item` VALUES ('/tooltypes/view', '2', null, null, null, '1474901894', '1474901894');
INSERT INTO `auth_item` VALUES ('/tooltypes/create', '2', null, null, null, '1474901894', '1474901894');
INSERT INTO `auth_item` VALUES ('/tooltypes/update', '2', null, null, null, '1474901894', '1474901894');
INSERT INTO `auth_item` VALUES ('/tooltypes/delete', '2', null, null, null, '1474901894', '1474901894');
INSERT INTO `auth_item` VALUES ('/tooltypes/*', '2', null, null, null, '1474901894', '1474901894');
INSERT INTO `auth_item` VALUES ('/users/index', '2', null, null, null, '1474901894', '1474901894');
INSERT INTO `auth_item` VALUES ('/users/indexuser', '2', null, null, null, '1474901894', '1474901894');
INSERT INTO `auth_item` VALUES ('/users/view', '2', null, null, null, '1474901894', '1474901894');
INSERT INTO `auth_item` VALUES ('/users/create', '2', null, null, null, '1474901894', '1474901894');
INSERT INTO `auth_item` VALUES ('/users/update', '2', null, null, null, '1474901894', '1474901894');
INSERT INTO `auth_item` VALUES ('/users/delete', '2', null, null, null, '1474901894', '1474901894');
INSERT INTO `auth_item` VALUES ('/users/*', '2', null, null, null, '1474901894', '1474901894');
INSERT INTO `auth_item` VALUES ('/*', '2', null, null, null, '1474901894', '1474901894');
INSERT INTO `auth_item` VALUES ('ผู้ใช้งานทั่วไป', '2', null, null, null, '1474901943', '1474901943');
INSERT INTO `auth_item` VALUES ('ช่างซ่อมบำรุง', '2', null, null, null, '1474902297', '1474902650');
INSERT INTO `auth_item` VALUES ('ผู้ดูแลระบบ', '2', null, null, null, '1474902476', '1474954121');
INSERT INTO `auth_item` VALUES ('หัวหน้าช่าง', '2', null, null, null, '1474902541', '1474902541');
INSERT INTO `auth_item` VALUES ('user', '1', null, null, null, '1474902735', '1474902735');
INSERT INTO `auth_item` VALUES ('engineer', '1', null, null, null, '1474902776', '1474902776');
INSERT INTO `auth_item` VALUES ('superengineer', '1', null, null, null, '1474902815', '1474902815');
INSERT INTO `auth_item` VALUES ('administrator', '1', null, null, null, '1474902845', '1474954182');

-- ----------------------------
-- Table structure for auth_item_child
-- ----------------------------
DROP TABLE IF EXISTS `auth_item_child`;
CREATE TABLE `auth_item_child` (
  `parent` varchar(64) COLLATE utf8_unicode_ci NOT NULL,
  `child` varchar(64) COLLATE utf8_unicode_ci NOT NULL,
  PRIMARY KEY (`parent`,`child`),
  KEY `child` (`child`) USING BTREE
) ENGINE=MyISAM DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

-- ----------------------------
-- Records of auth_item_child
-- ----------------------------
INSERT INTO `auth_item_child` VALUES ('engineer', 'ช่างซ่อมบำรุง');
INSERT INTO `auth_item_child` VALUES ('superengineer', 'หัวหน้าช่าง');
INSERT INTO `auth_item_child` VALUES ('user', 'ผู้ใช้งานทั่วไป');
INSERT INTO `auth_item_child` VALUES ('ช่างซ่อมบำรุง', '/repairs/delete');
INSERT INTO `auth_item_child` VALUES ('ช่างซ่อมบำรุง', '/repairs/index');
INSERT INTO `auth_item_child` VALUES ('ช่างซ่อมบำรุง', '/repairs/indexall');
INSERT INTO `auth_item_child` VALUES ('ช่างซ่อมบำรุง', '/repairs/indexengineer');
INSERT INTO `auth_item_child` VALUES ('ช่างซ่อมบำรุง', '/repairs/report1');
INSERT INTO `auth_item_child` VALUES ('ช่างซ่อมบำรุง', '/repairs/report2');
INSERT INTO `auth_item_child` VALUES ('ช่างซ่อมบำรุง', '/site/index');
INSERT INTO `auth_item_child` VALUES ('ช่างซ่อมบำรุง', '/user/profile/*');
INSERT INTO `auth_item_child` VALUES ('ช่างซ่อมบำรุง', '/user/profile/index');
INSERT INTO `auth_item_child` VALUES ('ช่างซ่อมบำรุง', '/user/profile/show');
INSERT INTO `auth_item_child` VALUES ('ช่างซ่อมบำรุง', '/user/recovery/*');
INSERT INTO `auth_item_child` VALUES ('ช่างซ่อมบำรุง', '/user/recovery/request');
INSERT INTO `auth_item_child` VALUES ('ช่างซ่อมบำรุง', '/user/recovery/reset');
INSERT INTO `auth_item_child` VALUES ('ช่างซ่อมบำรุง', '/user/registration/*');
INSERT INTO `auth_item_child` VALUES ('ช่างซ่อมบำรุง', '/user/registration/confirm');
INSERT INTO `auth_item_child` VALUES ('ช่างซ่อมบำรุง', '/user/registration/connect');
INSERT INTO `auth_item_child` VALUES ('ช่างซ่อมบำรุง', '/user/registration/register');
INSERT INTO `auth_item_child` VALUES ('ช่างซ่อมบำรุง', '/user/registration/resend');
INSERT INTO `auth_item_child` VALUES ('ช่างซ่อมบำรุง', '/user/security/*');
INSERT INTO `auth_item_child` VALUES ('ช่างซ่อมบำรุง', '/user/security/auth');
INSERT INTO `auth_item_child` VALUES ('ช่างซ่อมบำรุง', '/user/security/login');
INSERT INTO `auth_item_child` VALUES ('ช่างซ่อมบำรุง', '/user/security/logout');
INSERT INTO `auth_item_child` VALUES ('ช่างซ่อมบำรุง', '/user/settings/*');
INSERT INTO `auth_item_child` VALUES ('ช่างซ่อมบำรุง', '/user/settings/account');
INSERT INTO `auth_item_child` VALUES ('ช่างซ่อมบำรุง', '/user/settings/accountadmin');
INSERT INTO `auth_item_child` VALUES ('ช่างซ่อมบำรุง', '/user/settings/confirm');
INSERT INTO `auth_item_child` VALUES ('ช่างซ่อมบำรุง', '/user/settings/delete');
INSERT INTO `auth_item_child` VALUES ('ช่างซ่อมบำรุง', '/user/settings/disconnect');
INSERT INTO `auth_item_child` VALUES ('ช่างซ่อมบำรุง', '/user/settings/networks');
INSERT INTO `auth_item_child` VALUES ('ช่างซ่อมบำรุง', '/user/settings/profile');
INSERT INTO `auth_item_child` VALUES ('ช่างซ่อมบำรุง', '/users/indexuser');
INSERT INTO `auth_item_child` VALUES ('ช่างซ่อมบำรุง', '/users/update');
INSERT INTO `auth_item_child` VALUES ('ผู้ดูแลระบบ', '/*');
INSERT INTO `auth_item_child` VALUES ('ผู้ดูแลระบบ', '/admin/*');
INSERT INTO `auth_item_child` VALUES ('ผู้ดูแลระบบ', '/admin/assignment/*');
INSERT INTO `auth_item_child` VALUES ('ผู้ดูแลระบบ', '/admin/assignment/assign');
INSERT INTO `auth_item_child` VALUES ('ผู้ดูแลระบบ', '/admin/assignment/index');
INSERT INTO `auth_item_child` VALUES ('ผู้ดูแลระบบ', '/admin/assignment/revoke');
INSERT INTO `auth_item_child` VALUES ('ผู้ดูแลระบบ', '/admin/assignment/view');
INSERT INTO `auth_item_child` VALUES ('ผู้ดูแลระบบ', '/admin/default/*');
INSERT INTO `auth_item_child` VALUES ('ผู้ดูแลระบบ', '/admin/default/index');
INSERT INTO `auth_item_child` VALUES ('ผู้ดูแลระบบ', '/admin/menu/*');
INSERT INTO `auth_item_child` VALUES ('ผู้ดูแลระบบ', '/admin/menu/create');
INSERT INTO `auth_item_child` VALUES ('ผู้ดูแลระบบ', '/admin/menu/delete');
INSERT INTO `auth_item_child` VALUES ('ผู้ดูแลระบบ', '/admin/menu/index');
INSERT INTO `auth_item_child` VALUES ('ผู้ดูแลระบบ', '/admin/menu/update');
INSERT INTO `auth_item_child` VALUES ('ผู้ดูแลระบบ', '/admin/menu/view');
INSERT INTO `auth_item_child` VALUES ('ผู้ดูแลระบบ', '/admin/permission/*');
INSERT INTO `auth_item_child` VALUES ('ผู้ดูแลระบบ', '/admin/permission/assign');
INSERT INTO `auth_item_child` VALUES ('ผู้ดูแลระบบ', '/admin/permission/create');
INSERT INTO `auth_item_child` VALUES ('ผู้ดูแลระบบ', '/admin/permission/delete');
INSERT INTO `auth_item_child` VALUES ('ผู้ดูแลระบบ', '/admin/permission/index');
INSERT INTO `auth_item_child` VALUES ('ผู้ดูแลระบบ', '/admin/permission/remove');
INSERT INTO `auth_item_child` VALUES ('ผู้ดูแลระบบ', '/admin/permission/update');
INSERT INTO `auth_item_child` VALUES ('ผู้ดูแลระบบ', '/admin/permission/view');
INSERT INTO `auth_item_child` VALUES ('ผู้ดูแลระบบ', '/admin/role/*');
INSERT INTO `auth_item_child` VALUES ('ผู้ดูแลระบบ', '/admin/role/assign');
INSERT INTO `auth_item_child` VALUES ('ผู้ดูแลระบบ', '/admin/role/create');
INSERT INTO `auth_item_child` VALUES ('ผู้ดูแลระบบ', '/admin/role/delete');
INSERT INTO `auth_item_child` VALUES ('ผู้ดูแลระบบ', '/admin/role/index');
INSERT INTO `auth_item_child` VALUES ('ผู้ดูแลระบบ', '/admin/role/remove');
INSERT INTO `auth_item_child` VALUES ('ผู้ดูแลระบบ', '/admin/role/update');
INSERT INTO `auth_item_child` VALUES ('ผู้ดูแลระบบ', '/admin/role/view');
INSERT INTO `auth_item_child` VALUES ('ผู้ดูแลระบบ', '/admin/route/*');
INSERT INTO `auth_item_child` VALUES ('ผู้ดูแลระบบ', '/admin/route/assign');
INSERT INTO `auth_item_child` VALUES ('ผู้ดูแลระบบ', '/admin/route/create');
INSERT INTO `auth_item_child` VALUES ('ผู้ดูแลระบบ', '/admin/route/index');
INSERT INTO `auth_item_child` VALUES ('ผู้ดูแลระบบ', '/admin/route/refresh');
INSERT INTO `auth_item_child` VALUES ('ผู้ดูแลระบบ', '/admin/route/remove');
INSERT INTO `auth_item_child` VALUES ('ผู้ดูแลระบบ', '/admin/rule/*');
INSERT INTO `auth_item_child` VALUES ('ผู้ดูแลระบบ', '/admin/rule/create');
INSERT INTO `auth_item_child` VALUES ('ผู้ดูแลระบบ', '/admin/rule/delete');
INSERT INTO `auth_item_child` VALUES ('ผู้ดูแลระบบ', '/admin/rule/index');
INSERT INTO `auth_item_child` VALUES ('ผู้ดูแลระบบ', '/admin/rule/update');
INSERT INTO `auth_item_child` VALUES ('ผู้ดูแลระบบ', '/admin/rule/view');
INSERT INTO `auth_item_child` VALUES ('ผู้ดูแลระบบ', '/admin/user/*');
INSERT INTO `auth_item_child` VALUES ('ผู้ดูแลระบบ', '/admin/user/activate');
INSERT INTO `auth_item_child` VALUES ('ผู้ดูแลระบบ', '/admin/user/change-password');
INSERT INTO `auth_item_child` VALUES ('ผู้ดูแลระบบ', '/admin/user/delete');
INSERT INTO `auth_item_child` VALUES ('ผู้ดูแลระบบ', '/admin/user/index');
INSERT INTO `auth_item_child` VALUES ('ผู้ดูแลระบบ', '/admin/user/login');
INSERT INTO `auth_item_child` VALUES ('ผู้ดูแลระบบ', '/admin/user/logout');
INSERT INTO `auth_item_child` VALUES ('ผู้ดูแลระบบ', '/admin/user/request-password-reset');
INSERT INTO `auth_item_child` VALUES ('ผู้ดูแลระบบ', '/admin/user/reset-password');
INSERT INTO `auth_item_child` VALUES ('ผู้ดูแลระบบ', '/admin/user/signup');
INSERT INTO `auth_item_child` VALUES ('ผู้ดูแลระบบ', '/admin/user/view');
INSERT INTO `auth_item_child` VALUES ('ผู้ดูแลระบบ', '/debug/*');
INSERT INTO `auth_item_child` VALUES ('ผู้ดูแลระบบ', '/debug/default/*');
INSERT INTO `auth_item_child` VALUES ('ผู้ดูแลระบบ', '/debug/default/db-explain');
INSERT INTO `auth_item_child` VALUES ('ผู้ดูแลระบบ', '/debug/default/download-mail');
INSERT INTO `auth_item_child` VALUES ('ผู้ดูแลระบบ', '/debug/default/index');
INSERT INTO `auth_item_child` VALUES ('ผู้ดูแลระบบ', '/debug/default/toolbar');
INSERT INTO `auth_item_child` VALUES ('ผู้ดูแลระบบ', '/debug/default/view');
INSERT INTO `auth_item_child` VALUES ('ผู้ดูแลระบบ', '/departments/*');
INSERT INTO `auth_item_child` VALUES ('ผู้ดูแลระบบ', '/departments/create');
INSERT INTO `auth_item_child` VALUES ('ผู้ดูแลระบบ', '/departments/delete');
INSERT INTO `auth_item_child` VALUES ('ผู้ดูแลระบบ', '/departments/index');
INSERT INTO `auth_item_child` VALUES ('ผู้ดูแลระบบ', '/departments/update');
INSERT INTO `auth_item_child` VALUES ('ผู้ดูแลระบบ', '/departments/view');
INSERT INTO `auth_item_child` VALUES ('ผู้ดูแลระบบ', '/engineers/*');
INSERT INTO `auth_item_child` VALUES ('ผู้ดูแลระบบ', '/engineers/create');
INSERT INTO `auth_item_child` VALUES ('ผู้ดูแลระบบ', '/engineers/delete');
INSERT INTO `auth_item_child` VALUES ('ผู้ดูแลระบบ', '/engineers/index');
INSERT INTO `auth_item_child` VALUES ('ผู้ดูแลระบบ', '/engineers/update');
INSERT INTO `auth_item_child` VALUES ('ผู้ดูแลระบบ', '/engineers/view');
INSERT INTO `auth_item_child` VALUES ('ผู้ดูแลระบบ', '/gii/*');
INSERT INTO `auth_item_child` VALUES ('ผู้ดูแลระบบ', '/gii/default/*');
INSERT INTO `auth_item_child` VALUES ('ผู้ดูแลระบบ', '/gii/default/action');
INSERT INTO `auth_item_child` VALUES ('ผู้ดูแลระบบ', '/gii/default/diff');
INSERT INTO `auth_item_child` VALUES ('ผู้ดูแลระบบ', '/gii/default/index');
INSERT INTO `auth_item_child` VALUES ('ผู้ดูแลระบบ', '/gii/default/preview');
INSERT INTO `auth_item_child` VALUES ('ผู้ดูแลระบบ', '/gii/default/view');
INSERT INTO `auth_item_child` VALUES ('ผู้ดูแลระบบ', '/gridview/*');
INSERT INTO `auth_item_child` VALUES ('ผู้ดูแลระบบ', '/gridview/export/*');
INSERT INTO `auth_item_child` VALUES ('ผู้ดูแลระบบ', '/gridview/export/download');
INSERT INTO `auth_item_child` VALUES ('ผู้ดูแลระบบ', '/rbac/*');
INSERT INTO `auth_item_child` VALUES ('ผู้ดูแลระบบ', '/rbac/assignment/*');
INSERT INTO `auth_item_child` VALUES ('ผู้ดูแลระบบ', '/rbac/assignment/assign');
INSERT INTO `auth_item_child` VALUES ('ผู้ดูแลระบบ', '/rbac/permission/*');
INSERT INTO `auth_item_child` VALUES ('ผู้ดูแลระบบ', '/rbac/permission/create');
INSERT INTO `auth_item_child` VALUES ('ผู้ดูแลระบบ', '/rbac/permission/delete');
INSERT INTO `auth_item_child` VALUES ('ผู้ดูแลระบบ', '/rbac/permission/index');
INSERT INTO `auth_item_child` VALUES ('ผู้ดูแลระบบ', '/rbac/permission/update');
INSERT INTO `auth_item_child` VALUES ('ผู้ดูแลระบบ', '/rbac/role/*');
INSERT INTO `auth_item_child` VALUES ('ผู้ดูแลระบบ', '/rbac/role/create');
INSERT INTO `auth_item_child` VALUES ('ผู้ดูแลระบบ', '/rbac/role/delete');
INSERT INTO `auth_item_child` VALUES ('ผู้ดูแลระบบ', '/rbac/role/index');
INSERT INTO `auth_item_child` VALUES ('ผู้ดูแลระบบ', '/rbac/role/update');
INSERT INTO `auth_item_child` VALUES ('ผู้ดูแลระบบ', '/rbac/rule/*');
INSERT INTO `auth_item_child` VALUES ('ผู้ดูแลระบบ', '/rbac/rule/create');
INSERT INTO `auth_item_child` VALUES ('ผู้ดูแลระบบ', '/rbac/rule/delete');
INSERT INTO `auth_item_child` VALUES ('ผู้ดูแลระบบ', '/rbac/rule/index');
INSERT INTO `auth_item_child` VALUES ('ผู้ดูแลระบบ', '/rbac/rule/search');
INSERT INTO `auth_item_child` VALUES ('ผู้ดูแลระบบ', '/rbac/rule/update');
INSERT INTO `auth_item_child` VALUES ('ผู้ดูแลระบบ', '/repairs/*');
INSERT INTO `auth_item_child` VALUES ('ผู้ดูแลระบบ', '/repairs/create');
INSERT INTO `auth_item_child` VALUES ('ผู้ดูแลระบบ', '/repairs/createuser');
INSERT INTO `auth_item_child` VALUES ('ผู้ดูแลระบบ', '/repairs/delete');
INSERT INTO `auth_item_child` VALUES ('ผู้ดูแลระบบ', '/repairs/get-tool');
INSERT INTO `auth_item_child` VALUES ('ผู้ดูแลระบบ', '/repairs/index');
INSERT INTO `auth_item_child` VALUES ('ผู้ดูแลระบบ', '/repairs/indexall');
INSERT INTO `auth_item_child` VALUES ('ผู้ดูแลระบบ', '/repairs/indexdep');
INSERT INTO `auth_item_child` VALUES ('ผู้ดูแลระบบ', '/repairs/indexengineer');
INSERT INTO `auth_item_child` VALUES ('ผู้ดูแลระบบ', '/repairs/report1');
INSERT INTO `auth_item_child` VALUES ('ผู้ดูแลระบบ', '/repairs/report2');
INSERT INTO `auth_item_child` VALUES ('ผู้ดูแลระบบ', '/repairs/update');
INSERT INTO `auth_item_child` VALUES ('ผู้ดูแลระบบ', '/repairs/view');
INSERT INTO `auth_item_child` VALUES ('ผู้ดูแลระบบ', '/site/*');
INSERT INTO `auth_item_child` VALUES ('ผู้ดูแลระบบ', '/site/about');
INSERT INTO `auth_item_child` VALUES ('ผู้ดูแลระบบ', '/site/captcha');
INSERT INTO `auth_item_child` VALUES ('ผู้ดูแลระบบ', '/site/contact');
INSERT INTO `auth_item_child` VALUES ('ผู้ดูแลระบบ', '/site/error');
INSERT INTO `auth_item_child` VALUES ('ผู้ดูแลระบบ', '/site/index');
INSERT INTO `auth_item_child` VALUES ('ผู้ดูแลระบบ', '/site/login');
INSERT INTO `auth_item_child` VALUES ('ผู้ดูแลระบบ', '/site/logout');
INSERT INTO `auth_item_child` VALUES ('ผู้ดูแลระบบ', '/tools/*');
INSERT INTO `auth_item_child` VALUES ('ผู้ดูแลระบบ', '/tools/create');
INSERT INTO `auth_item_child` VALUES ('ผู้ดูแลระบบ', '/tools/delete');
INSERT INTO `auth_item_child` VALUES ('ผู้ดูแลระบบ', '/tools/index');
INSERT INTO `auth_item_child` VALUES ('ผู้ดูแลระบบ', '/tools/update');
INSERT INTO `auth_item_child` VALUES ('ผู้ดูแลระบบ', '/tools/view');
INSERT INTO `auth_item_child` VALUES ('ผู้ดูแลระบบ', '/tooltypes/*');
INSERT INTO `auth_item_child` VALUES ('ผู้ดูแลระบบ', '/tooltypes/create');
INSERT INTO `auth_item_child` VALUES ('ผู้ดูแลระบบ', '/tooltypes/delete');
INSERT INTO `auth_item_child` VALUES ('ผู้ดูแลระบบ', '/tooltypes/index');
INSERT INTO `auth_item_child` VALUES ('ผู้ดูแลระบบ', '/tooltypes/update');
INSERT INTO `auth_item_child` VALUES ('ผู้ดูแลระบบ', '/tooltypes/view');
INSERT INTO `auth_item_child` VALUES ('ผู้ดูแลระบบ', '/user/*');
INSERT INTO `auth_item_child` VALUES ('ผู้ดูแลระบบ', '/user/admin/*');
INSERT INTO `auth_item_child` VALUES ('ผู้ดูแลระบบ', '/user/admin/assignments');
INSERT INTO `auth_item_child` VALUES ('ผู้ดูแลระบบ', '/user/admin/block');
INSERT INTO `auth_item_child` VALUES ('ผู้ดูแลระบบ', '/user/admin/confirm');
INSERT INTO `auth_item_child` VALUES ('ผู้ดูแลระบบ', '/user/admin/create');
INSERT INTO `auth_item_child` VALUES ('ผู้ดูแลระบบ', '/user/admin/delete');
INSERT INTO `auth_item_child` VALUES ('ผู้ดูแลระบบ', '/user/admin/index');
INSERT INTO `auth_item_child` VALUES ('ผู้ดูแลระบบ', '/user/admin/info');
INSERT INTO `auth_item_child` VALUES ('ผู้ดูแลระบบ', '/user/admin/update');
INSERT INTO `auth_item_child` VALUES ('ผู้ดูแลระบบ', '/user/admin/update-profile');
INSERT INTO `auth_item_child` VALUES ('ผู้ดูแลระบบ', '/user/profile/*');
INSERT INTO `auth_item_child` VALUES ('ผู้ดูแลระบบ', '/user/profile/index');
INSERT INTO `auth_item_child` VALUES ('ผู้ดูแลระบบ', '/user/profile/show');
INSERT INTO `auth_item_child` VALUES ('ผู้ดูแลระบบ', '/user/recovery/*');
INSERT INTO `auth_item_child` VALUES ('ผู้ดูแลระบบ', '/user/recovery/request');
INSERT INTO `auth_item_child` VALUES ('ผู้ดูแลระบบ', '/user/recovery/reset');
INSERT INTO `auth_item_child` VALUES ('ผู้ดูแลระบบ', '/user/registration/*');
INSERT INTO `auth_item_child` VALUES ('ผู้ดูแลระบบ', '/user/registration/confirm');
INSERT INTO `auth_item_child` VALUES ('ผู้ดูแลระบบ', '/user/registration/connect');
INSERT INTO `auth_item_child` VALUES ('ผู้ดูแลระบบ', '/user/registration/register');
INSERT INTO `auth_item_child` VALUES ('ผู้ดูแลระบบ', '/user/registration/resend');
INSERT INTO `auth_item_child` VALUES ('ผู้ดูแลระบบ', '/user/security/*');
INSERT INTO `auth_item_child` VALUES ('ผู้ดูแลระบบ', '/user/security/auth');
INSERT INTO `auth_item_child` VALUES ('ผู้ดูแลระบบ', '/user/security/login');
INSERT INTO `auth_item_child` VALUES ('ผู้ดูแลระบบ', '/user/security/logout');
INSERT INTO `auth_item_child` VALUES ('ผู้ดูแลระบบ', '/user/settings/*');
INSERT INTO `auth_item_child` VALUES ('ผู้ดูแลระบบ', '/user/settings/account');
INSERT INTO `auth_item_child` VALUES ('ผู้ดูแลระบบ', '/user/settings/accountadmin');
INSERT INTO `auth_item_child` VALUES ('ผู้ดูแลระบบ', '/user/settings/confirm');
INSERT INTO `auth_item_child` VALUES ('ผู้ดูแลระบบ', '/user/settings/delete');
INSERT INTO `auth_item_child` VALUES ('ผู้ดูแลระบบ', '/user/settings/disconnect');
INSERT INTO `auth_item_child` VALUES ('ผู้ดูแลระบบ', '/user/settings/networks');
INSERT INTO `auth_item_child` VALUES ('ผู้ดูแลระบบ', '/user/settings/profile');
INSERT INTO `auth_item_child` VALUES ('ผู้ดูแลระบบ', '/users/*');
INSERT INTO `auth_item_child` VALUES ('ผู้ดูแลระบบ', '/users/create');
INSERT INTO `auth_item_child` VALUES ('ผู้ดูแลระบบ', '/users/delete');
INSERT INTO `auth_item_child` VALUES ('ผู้ดูแลระบบ', '/users/index');
INSERT INTO `auth_item_child` VALUES ('ผู้ดูแลระบบ', '/users/indexuser');
INSERT INTO `auth_item_child` VALUES ('ผู้ดูแลระบบ', '/users/update');
INSERT INTO `auth_item_child` VALUES ('ผู้ดูแลระบบ', '/users/view');
INSERT INTO `auth_item_child` VALUES ('ผู้ใช้งานทั่วไป', '/repairs/createuser');
INSERT INTO `auth_item_child` VALUES ('ผู้ใช้งานทั่วไป', '/repairs/get-tool');
INSERT INTO `auth_item_child` VALUES ('ผู้ใช้งานทั่วไป', '/repairs/indexdep');
INSERT INTO `auth_item_child` VALUES ('ผู้ใช้งานทั่วไป', '/site/index');
INSERT INTO `auth_item_child` VALUES ('ผู้ใช้งานทั่วไป', '/user/profile/*');
INSERT INTO `auth_item_child` VALUES ('ผู้ใช้งานทั่วไป', '/user/profile/index');
INSERT INTO `auth_item_child` VALUES ('ผู้ใช้งานทั่วไป', '/user/profile/show');
INSERT INTO `auth_item_child` VALUES ('ผู้ใช้งานทั่วไป', '/user/recovery/*');
INSERT INTO `auth_item_child` VALUES ('ผู้ใช้งานทั่วไป', '/user/recovery/request');
INSERT INTO `auth_item_child` VALUES ('ผู้ใช้งานทั่วไป', '/user/recovery/reset');
INSERT INTO `auth_item_child` VALUES ('ผู้ใช้งานทั่วไป', '/user/registration/*');
INSERT INTO `auth_item_child` VALUES ('ผู้ใช้งานทั่วไป', '/user/registration/confirm');
INSERT INTO `auth_item_child` VALUES ('ผู้ใช้งานทั่วไป', '/user/registration/connect');
INSERT INTO `auth_item_child` VALUES ('ผู้ใช้งานทั่วไป', '/user/registration/register');
INSERT INTO `auth_item_child` VALUES ('ผู้ใช้งานทั่วไป', '/user/registration/resend');
INSERT INTO `auth_item_child` VALUES ('ผู้ใช้งานทั่วไป', '/user/security/*');
INSERT INTO `auth_item_child` VALUES ('ผู้ใช้งานทั่วไป', '/user/security/auth');
INSERT INTO `auth_item_child` VALUES ('ผู้ใช้งานทั่วไป', '/user/security/login');
INSERT INTO `auth_item_child` VALUES ('ผู้ใช้งานทั่วไป', '/user/security/logout');
INSERT INTO `auth_item_child` VALUES ('ผู้ใช้งานทั่วไป', '/user/settings/*');
INSERT INTO `auth_item_child` VALUES ('ผู้ใช้งานทั่วไป', '/user/settings/account');
INSERT INTO `auth_item_child` VALUES ('ผู้ใช้งานทั่วไป', '/user/settings/accountadmin');
INSERT INTO `auth_item_child` VALUES ('ผู้ใช้งานทั่วไป', '/user/settings/confirm');
INSERT INTO `auth_item_child` VALUES ('ผู้ใช้งานทั่วไป', '/user/settings/delete');
INSERT INTO `auth_item_child` VALUES ('ผู้ใช้งานทั่วไป', '/user/settings/disconnect');
INSERT INTO `auth_item_child` VALUES ('ผู้ใช้งานทั่วไป', '/user/settings/networks');
INSERT INTO `auth_item_child` VALUES ('ผู้ใช้งานทั่วไป', '/user/settings/profile');
INSERT INTO `auth_item_child` VALUES ('ผู้ใช้งานทั่วไป', '/users/indexuser');
INSERT INTO `auth_item_child` VALUES ('ผู้ใช้งานทั่วไป', '/users/update');
INSERT INTO `auth_item_child` VALUES ('หัวหน้าช่าง', '/engineers/*');
INSERT INTO `auth_item_child` VALUES ('หัวหน้าช่าง', '/engineers/create');
INSERT INTO `auth_item_child` VALUES ('หัวหน้าช่าง', '/engineers/delete');
INSERT INTO `auth_item_child` VALUES ('หัวหน้าช่าง', '/engineers/index');
INSERT INTO `auth_item_child` VALUES ('หัวหน้าช่าง', '/engineers/update');
INSERT INTO `auth_item_child` VALUES ('หัวหน้าช่าง', '/engineers/view');
INSERT INTO `auth_item_child` VALUES ('หัวหน้าช่าง', '/repairs/*');
INSERT INTO `auth_item_child` VALUES ('หัวหน้าช่าง', '/repairs/create');
INSERT INTO `auth_item_child` VALUES ('หัวหน้าช่าง', '/repairs/createuser');
INSERT INTO `auth_item_child` VALUES ('หัวหน้าช่าง', '/repairs/delete');
INSERT INTO `auth_item_child` VALUES ('หัวหน้าช่าง', '/repairs/get-tool');
INSERT INTO `auth_item_child` VALUES ('หัวหน้าช่าง', '/repairs/index');
INSERT INTO `auth_item_child` VALUES ('หัวหน้าช่าง', '/repairs/indexall');
INSERT INTO `auth_item_child` VALUES ('หัวหน้าช่าง', '/repairs/indexdep');
INSERT INTO `auth_item_child` VALUES ('หัวหน้าช่าง', '/repairs/indexengineer');
INSERT INTO `auth_item_child` VALUES ('หัวหน้าช่าง', '/repairs/report1');
INSERT INTO `auth_item_child` VALUES ('หัวหน้าช่าง', '/repairs/report2');
INSERT INTO `auth_item_child` VALUES ('หัวหน้าช่าง', '/repairs/update');
INSERT INTO `auth_item_child` VALUES ('หัวหน้าช่าง', '/repairs/view');
INSERT INTO `auth_item_child` VALUES ('หัวหน้าช่าง', '/site/index');
INSERT INTO `auth_item_child` VALUES ('หัวหน้าช่าง', '/tools/*');
INSERT INTO `auth_item_child` VALUES ('หัวหน้าช่าง', '/tools/create');
INSERT INTO `auth_item_child` VALUES ('หัวหน้าช่าง', '/tools/delete');
INSERT INTO `auth_item_child` VALUES ('หัวหน้าช่าง', '/tools/index');
INSERT INTO `auth_item_child` VALUES ('หัวหน้าช่าง', '/tools/update');
INSERT INTO `auth_item_child` VALUES ('หัวหน้าช่าง', '/tools/view');
INSERT INTO `auth_item_child` VALUES ('หัวหน้าช่าง', '/tooltypes/*');
INSERT INTO `auth_item_child` VALUES ('หัวหน้าช่าง', '/tooltypes/create');
INSERT INTO `auth_item_child` VALUES ('หัวหน้าช่าง', '/tooltypes/delete');
INSERT INTO `auth_item_child` VALUES ('หัวหน้าช่าง', '/tooltypes/index');
INSERT INTO `auth_item_child` VALUES ('หัวหน้าช่าง', '/tooltypes/update');
INSERT INTO `auth_item_child` VALUES ('หัวหน้าช่าง', '/tooltypes/view');
INSERT INTO `auth_item_child` VALUES ('หัวหน้าช่าง', '/user/profile/*');
INSERT INTO `auth_item_child` VALUES ('หัวหน้าช่าง', '/user/profile/index');
INSERT INTO `auth_item_child` VALUES ('หัวหน้าช่าง', '/user/profile/show');
INSERT INTO `auth_item_child` VALUES ('หัวหน้าช่าง', '/user/recovery/*');
INSERT INTO `auth_item_child` VALUES ('หัวหน้าช่าง', '/user/recovery/request');
INSERT INTO `auth_item_child` VALUES ('หัวหน้าช่าง', '/user/recovery/reset');
INSERT INTO `auth_item_child` VALUES ('หัวหน้าช่าง', '/user/registration/*');
INSERT INTO `auth_item_child` VALUES ('หัวหน้าช่าง', '/user/registration/confirm');
INSERT INTO `auth_item_child` VALUES ('หัวหน้าช่าง', '/user/registration/connect');
INSERT INTO `auth_item_child` VALUES ('หัวหน้าช่าง', '/user/registration/register');
INSERT INTO `auth_item_child` VALUES ('หัวหน้าช่าง', '/user/registration/resend');
INSERT INTO `auth_item_child` VALUES ('หัวหน้าช่าง', '/user/security/*');
INSERT INTO `auth_item_child` VALUES ('หัวหน้าช่าง', '/user/security/auth');
INSERT INTO `auth_item_child` VALUES ('หัวหน้าช่าง', '/user/security/login');
INSERT INTO `auth_item_child` VALUES ('หัวหน้าช่าง', '/user/security/logout');
INSERT INTO `auth_item_child` VALUES ('หัวหน้าช่าง', '/user/settings/*');
INSERT INTO `auth_item_child` VALUES ('หัวหน้าช่าง', '/user/settings/account');
INSERT INTO `auth_item_child` VALUES ('หัวหน้าช่าง', '/user/settings/accountadmin');
INSERT INTO `auth_item_child` VALUES ('หัวหน้าช่าง', '/user/settings/confirm');
INSERT INTO `auth_item_child` VALUES ('หัวหน้าช่าง', '/user/settings/delete');
INSERT INTO `auth_item_child` VALUES ('หัวหน้าช่าง', '/user/settings/disconnect');
INSERT INTO `auth_item_child` VALUES ('หัวหน้าช่าง', '/user/settings/networks');
INSERT INTO `auth_item_child` VALUES ('หัวหน้าช่าง', '/user/settings/profile');
INSERT INTO `auth_item_child` VALUES ('หัวหน้าช่าง', '/users/indexuser');
INSERT INTO `auth_item_child` VALUES ('หัวหน้าช่าง', '/users/update');

-- ----------------------------
-- Table structure for auth_rule
-- ----------------------------
DROP TABLE IF EXISTS `auth_rule`;
CREATE TABLE `auth_rule` (
  `name` varchar(64) COLLATE utf8_unicode_ci NOT NULL,
  `data` text COLLATE utf8_unicode_ci,
  `created_at` int(11) DEFAULT NULL,
  `updated_at` int(11) DEFAULT NULL,
  PRIMARY KEY (`name`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

-- ----------------------------
-- Records of auth_rule
-- ----------------------------

-- ----------------------------
-- Table structure for departments
-- ----------------------------
DROP TABLE IF EXISTS `departments`;
CREATE TABLE `departments` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `name` varchar(255) DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=MyISAM AUTO_INCREMENT=4 DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of departments
-- ----------------------------
INSERT INTO `departments` VALUES ('1', 'งานบริหารทั่วไป');
INSERT INTO `departments` VALUES ('2', 'งานบริการผู้ป่วยนอก');
INSERT INTO `departments` VALUES ('3', 'เภสัชกรรม');

-- ----------------------------
-- Table structure for engineers
-- ----------------------------
DROP TABLE IF EXISTS `engineers`;
CREATE TABLE `engineers` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `user_id` int(11) DEFAULT NULL COMMENT 'ช่าง',
  `speciallist` varchar(255) DEFAULT NULL COMMENT 'ประเภทช่าง',
  PRIMARY KEY (`id`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of engineers
-- ----------------------------

-- ----------------------------
-- Table structure for migration
-- ----------------------------
DROP TABLE IF EXISTS `migration`;
CREATE TABLE `migration` (
  `version` varchar(180) NOT NULL,
  `apply_time` int(11) DEFAULT NULL,
  PRIMARY KEY (`version`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of migration
-- ----------------------------

-- ----------------------------
-- Table structure for profile
-- ----------------------------
DROP TABLE IF EXISTS `profile`;
CREATE TABLE `profile` (
  `user_id` int(11) NOT NULL,
  `name` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `public_email` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `gravatar_email` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `gravatar_id` varchar(32) COLLATE utf8_unicode_ci DEFAULT NULL,
  `location` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `website` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `bio` text COLLATE utf8_unicode_ci,
  PRIMARY KEY (`user_id`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

-- ----------------------------
-- Records of profile
-- ----------------------------
INSERT INTO `profile` VALUES ('1', null, null, null, null, null, null, null);
INSERT INTO `profile` VALUES ('2', null, null, null, null, null, null, null);
INSERT INTO `profile` VALUES ('3', null, null, null, null, null, null, null);

-- ----------------------------
-- Table structure for repairs
-- ----------------------------
DROP TABLE IF EXISTS `repairs`;
CREATE TABLE `repairs` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `department_id` int(11) NOT NULL COMMENT 'ฝ่าย/งาน',
  `datenotuse` date DEFAULT NULL COMMENT 'วันที่อุปกรณ์เสีย',
  `tool_id` int(11) DEFAULT NULL COMMENT 'อุปกรณ์',
  `problem` mediumtext NOT NULL COMMENT 'ปัญหาที่ซ่อม',
  `stage` enum('รอได้ภายใน 3 วัน','รอได้ภายใน 7 วัน','รอได้ภายใน 1 วัน') DEFAULT 'รอได้ภายใน 3 วัน' COMMENT 'ระยะรอคอย',
  `startdate` date DEFAULT NULL COMMENT 'วันที่รับซ่อม',
  `satatus` enum('รอรับงาน','รับงานแล้ว') DEFAULT 'รอรับงาน' COMMENT 'สถานะการแจ้ง',
  `dateplan` date DEFAULT NULL COMMENT 'กำหนดเสร็จภายในวันที่',
  `remark` mediumtext COMMENT 'ช่างอธิบาย',
  `answer` enum('รอซ่อม','กำลังซ่อม','ซ่อมเสร็จแล้ว','ซ่อมไม่ได้') DEFAULT 'รอซ่อม' COMMENT 'ช่างสรุปงาน',
  `engineer_id` int(11) DEFAULT NULL COMMENT 'ช่าง',
  `enddate` date DEFAULT NULL COMMENT 'วันซ่อมเสร็จ',
  `user_id` int(11) NOT NULL COMMENT 'ผู้บันทึก',
  `createDate` date DEFAULT NULL COMMENT 'วันส่งซ่อม',
  `updateDate` timestamp NULL DEFAULT NULL ON UPDATE CURRENT_TIMESTAMP,
  `approve` enum('อนุมัติ-ซ่อมเอง','อนุมัติ-เคลม','อนุมัติ-ช่างนอก','ไม่อนุมัติ','รอพิจารณา') DEFAULT 'รอพิจารณา' COMMENT 'ความเห็นหัวหน้า',
  PRIMARY KEY (`id`),
  KEY `fk_repairs_engineers1_idx1` (`engineer_id`) USING BTREE,
  KEY `fk_repairs_tools1_idx1` (`tool_id`) USING BTREE,
  KEY `fk_repairs_departments1_idx` (`department_id`) USING BTREE
) ENGINE=MyISAM AUTO_INCREMENT=10 DEFAULT CHARSET=utf8 COMMENT='ซ่อมบำรุง';

-- ----------------------------
-- Records of repairs
-- ----------------------------
INSERT INTO `repairs` VALUES ('1', '2', '2016-02-01', '2', 'ffddll', 'รอได้ภายใน 3 วัน', null, 'รับงานแล้ว', null, '', 'ซ่อมเสร็จแล้ว', null, null, '1', '2016-09-25', '2016-09-26 18:41:25', 'อนุมัติ-ซ่อมเอง');
INSERT INTO `repairs` VALUES ('2', '3', '2016-02-03', '3', 'ss', 'รอได้ภายใน 3 วัน', '2016-09-25', 'รับงานแล้ว', '2016-09-30', 'rrrrr', 'ซ่อมเสร็จแล้ว', null, '2016-09-30', '1', '2016-09-25', '2016-09-26 18:41:10', 'อนุมัติ-ซ่อมเอง');
INSERT INTO `repairs` VALUES ('3', '3', '2016-09-05', '2', 'ghgh', 'รอได้ภายใน 7 วัน', null, 'รับงานแล้ว', null, '', 'รอซ่อม', null, null, '1', '2016-09-25', '2016-09-26 18:45:20', 'อนุมัติ-ซ่อมเอง');
INSERT INTO `repairs` VALUES ('4', '2', '2016-09-01', '1', '122', 'รอได้ภายใน 7 วัน', '2016-09-26', 'รับงานแล้ว', '2016-09-26', 'tytytyty', 'ซ่อมเสร็จแล้ว', null, '2016-09-26', '3', '2016-09-26', '2016-09-26 21:13:42', 'อนุมัติ-ซ่อมเอง');
INSERT INTO `repairs` VALUES ('5', '2', '2016-09-07', '1', '5656', 'รอได้ภายใน 7 วัน', null, 'รอรับงาน', null, null, 'รอซ่อม', null, null, '3', '2016-09-26', '2016-09-26 18:40:46', 'รอพิจารณา');
INSERT INTO `repairs` VALUES ('6', '3', '2016-09-14', '3', 'uuuu', 'รอได้ภายใน 7 วัน', null, 'รอรับงาน', null, null, 'รอซ่อม', null, null, '1', '2016-09-26', null, 'รอพิจารณา');
INSERT INTO `repairs` VALUES ('7', '3', '2016-09-06', '2', 'pppp', 'รอได้ภายใน 7 วัน', null, 'รอรับงาน', null, null, 'รอซ่อม', null, null, '1', '2016-09-26', null, 'รอพิจารณา');
INSERT INTO `repairs` VALUES ('8', '2', '2016-09-21', '1', 'kkkk', 'รอได้ภายใน 7 วัน', null, 'รอรับงาน', null, null, 'รอซ่อม', null, null, '3', '2016-09-26', null, 'รอพิจารณา');
INSERT INTO `repairs` VALUES ('9', '2', '2016-09-14', '1', 'uuuuu', 'รอได้ภายใน 7 วัน', null, 'รอรับงาน', null, null, 'รอซ่อม', null, null, '3', '2016-09-26', null, 'รอพิจารณา');

-- ----------------------------
-- Table structure for social_account
-- ----------------------------
DROP TABLE IF EXISTS `social_account`;
CREATE TABLE `social_account` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `user_id` int(11) DEFAULT NULL,
  `provider` varchar(255) NOT NULL,
  `client_id` varchar(255) NOT NULL,
  `data` text,
  `code` varchar(32) DEFAULT NULL,
  `created_at` int(11) DEFAULT NULL,
  `email` varchar(255) DEFAULT NULL,
  `username` varchar(255) DEFAULT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `account_unique` (`provider`,`client_id`) USING BTREE,
  UNIQUE KEY `account_unique_code` (`code`) USING BTREE,
  KEY `fk_user_account` (`user_id`) USING BTREE
) ENGINE=MyISAM DEFAULT CHARSET=tis620;

-- ----------------------------
-- Records of social_account
-- ----------------------------

-- ----------------------------
-- Table structure for token
-- ----------------------------
DROP TABLE IF EXISTS `token`;
CREATE TABLE `token` (
  `user_id` int(11) NOT NULL,
  `code` varchar(32) COLLATE utf8_unicode_ci NOT NULL,
  `created_at` int(11) NOT NULL,
  `type` smallint(6) NOT NULL,
  UNIQUE KEY `token_unique` (`user_id`,`code`,`type`) USING BTREE
) ENGINE=MyISAM DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

-- ----------------------------
-- Records of token
-- ----------------------------
INSERT INTO `token` VALUES ('1', '4yCNPbyy3HFDnZlcXVgQbIbgh69wJOr6', '1474698799', '0');
INSERT INTO `token` VALUES ('2', 'MFQF-jmeZRavTqDgUKkU7V6i63JX_I1G', '1474698836', '0');
INSERT INTO `token` VALUES ('3', 'q2qHIlpAtJaSi5qO3EJtryqVVltCkcw0', '1474698859', '0');

-- ----------------------------
-- Table structure for tools
-- ----------------------------
DROP TABLE IF EXISTS `tools`;
CREATE TABLE `tools` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `name` varchar(255) DEFAULT NULL COMMENT 'รายการอุปกรณ์',
  `tooltype_id` int(11) DEFAULT NULL COMMENT 'ประเภทอุปกรณ์',
  `department_id` int(11) DEFAULT NULL COMMENT 'แผนก',
  `price` decimal(10,2) DEFAULT NULL COMMENT 'ราคา',
  `datebuy` date DEFAULT NULL COMMENT 'วันที่ซื้อ',
  `use` smallint(6) DEFAULT NULL COMMENT 'ใช้/ไม่ใช้',
  PRIMARY KEY (`id`)
) ENGINE=MyISAM AUTO_INCREMENT=4 DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of tools
-- ----------------------------
INSERT INTO `tools` VALUES ('1', 'ตู้เย็น 5.5คิว', '1', '2', '12500.75', '2016-09-24', '0');
INSERT INTO `tools` VALUES ('2', 'ปรินเตอร็เลเซอร์', '3', '3', '5600.00', '2015-09-01', '1');
INSERT INTO `tools` VALUES ('3', 'เครื่องปรับอากาศ 8000btu', '1', '3', '19500.00', '2016-07-13', '1');

-- ----------------------------
-- Table structure for tooltypes
-- ----------------------------
DROP TABLE IF EXISTS `tooltypes`;
CREATE TABLE `tooltypes` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `name` varchar(255) DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=MyISAM AUTO_INCREMENT=4 DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of tooltypes
-- ----------------------------
INSERT INTO `tooltypes` VALUES ('1', 'ครุภัณฑ์ไฟฟ้า');
INSERT INTO `tooltypes` VALUES ('2', 'ครุภัณฑ์สำนักงาน');
INSERT INTO `tooltypes` VALUES ('3', 'ครุภัณฑ์คอมพิวเตอร์');

-- ----------------------------
-- Table structure for user
-- ----------------------------
DROP TABLE IF EXISTS `user`;
CREATE TABLE `user` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `username` varchar(25) COLLATE utf8_unicode_ci NOT NULL,
  `email` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `password_hash` varchar(60) COLLATE utf8_unicode_ci NOT NULL,
  `auth_key` varchar(32) COLLATE utf8_unicode_ci NOT NULL,
  `confirmation_token` varchar(32) COLLATE utf8_unicode_ci DEFAULT NULL,
  `confirmation_sent_at` int(11) DEFAULT NULL,
  `confirmed_at` int(11) DEFAULT NULL,
  `unconfirmed_email` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `recovery_token` varchar(32) COLLATE utf8_unicode_ci DEFAULT NULL,
  `recovery_sent_at` int(11) DEFAULT NULL,
  `blocked_at` int(11) DEFAULT NULL,
  `registered_from` int(11) DEFAULT NULL,
  `logged_in_from` int(11) DEFAULT NULL,
  `logged_in_at` int(11) DEFAULT NULL,
  `created_at` int(11) NOT NULL,
  `updated_at` int(11) NOT NULL,
  `registration_ip` varchar(45) COLLATE utf8_unicode_ci DEFAULT NULL,
  `status` varchar(45) COLLATE utf8_unicode_ci DEFAULT NULL,
  `password_reset_token` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `department_id` int(11) DEFAULT NULL COMMENT 'แผนก',
  `role` int(11) DEFAULT NULL,
  `name` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL COMMENT 'ชื่อ-สกุล',
  `depname` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL COMMENT 'ชื่อแผนก',
  `avatar` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL COMMENT 'รูปประจำตัว',
  PRIMARY KEY (`id`),
  UNIQUE KEY `user_unique_username` (`username`) USING BTREE,
  UNIQUE KEY `user_unique_email` (`email`) USING BTREE,
  UNIQUE KEY `user_confirmation` (`id`,`confirmation_token`) USING BTREE,
  UNIQUE KEY `user_recovery` (`id`,`recovery_token`) USING BTREE
) ENGINE=MyISAM AUTO_INCREMENT=4 DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

-- ----------------------------
-- Records of user
-- ----------------------------
INSERT INTO `user` VALUES ('1', 'admin', 'admin@localhost.com', '$2y$12$3RZLe4TTFPKZghnnNQwMJuGyLZj2xIfCi4eqjBk9oED7Qz8LsTx/O', 'srx85C12Z33WecHEkHGXzLE4Gq0tBuSd', '', null, null, '', '', null, null, null, null, null, '1474698798', '1474698798', '::1', '', '', '3', null, 'ไอน้ำ เรืองโพน', 'เภสัชกรรม', '155.jpg');
INSERT INTO `user` VALUES ('2', 'manager', 'manager@localhost.com', '$2y$12$/A9Fb4BjkQn6BUlv1ooHieS9r/KO6Wkgh1Qn36Nh4V5oZvMaOedjG', 'cuQFGynw0vAljeISrDRowraiEuXGz274', null, null, null, null, null, null, null, null, null, null, '1474698836', '1474698836', '::1', null, null, null, null, null, null, null);
INSERT INTO `user` VALUES ('3', 'user', 'user@localhost.com', '$2y$12$NfLunHMqzvWNV0gGgWhCw./NLHwNXqdwDIJHmh8MxjTnnJGkbw/pa', 'Z7gGzNqQ69s4LaEUqq4hoVlNjMke-r0I', null, null, null, null, null, null, null, null, null, null, '1474698859', '1474698859', '::1', null, null, '2', null, 'User user', 'งานบริการผู้ป่วยนอก', '13342907_1290618020953034_8039928569101102205_n.jpg');
