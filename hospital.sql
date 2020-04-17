/*
Navicat MySQL Data Transfer

Source Server         : 本地MySQL数据库
Source Server Version : 50726
Source Host           : localhost:3306
Source Database       : hospital

Target Server Type    : MYSQL
Target Server Version : 50726
File Encoding         : 65001

Date: 2020-04-17 10:07:46
*/

SET FOREIGN_KEY_CHECKS=0;

-- ----------------------------
-- Table structure for ob_ad
-- ----------------------------
DROP TABLE IF EXISTS `ob_ad`;
CREATE TABLE `ob_ad` (
  `id` int(11) unsigned NOT NULL AUTO_INCREMENT,
  `category` varchar(32) NOT NULL DEFAULT '0' COMMENT '分类',
  `name` varchar(255) NOT NULL DEFAULT '' COMMENT '分类名称',
  `description` varchar(255) DEFAULT '' COMMENT '描述',
  `url` varchar(255) DEFAULT '' COMMENT '链接',
  `target` varchar(10) DEFAULT '' COMMENT '打开方式',
  `image` varchar(255) DEFAULT '' COMMENT '图片',
  `sort_order` int(11) unsigned NOT NULL DEFAULT '0' COMMENT '排序',
  `status` tinyint(1) NOT NULL DEFAULT '1' COMMENT '状态',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 ROW_FORMAT=COMPACT COMMENT='广告';

-- ----------------------------
-- Records of ob_ad
-- ----------------------------

-- ----------------------------
-- Table structure for ob_admin
-- ----------------------------
DROP TABLE IF EXISTS `ob_admin`;
CREATE TABLE `ob_admin` (
  `id` smallint(5) unsigned NOT NULL AUTO_INCREMENT,
  `username` varchar(32) NOT NULL DEFAULT '' COMMENT '管理员用户名',
  `password` varchar(32) NOT NULL DEFAULT '' COMMENT '管理员密码',
  `last_login_time` int(10) unsigned NOT NULL DEFAULT '0' COMMENT '上次登录时间',
  `last_login_ip` varchar(16) NOT NULL DEFAULT '' COMMENT '上次登录IP',
  `login_count` int(11) unsigned NOT NULL DEFAULT '0' COMMENT '登录次数',
  `create_time` int(10) unsigned NOT NULL DEFAULT '0' COMMENT '创建时间',
  `update_time` int(10) unsigned NOT NULL DEFAULT '0' COMMENT '更新时间',
  `status_rule` varchar(255) DEFAULT NULL COMMENT '0管理/1医生护士/2患者',
  `status` varchar(255) DEFAULT NULL,
  `phone` varchar(255) DEFAULT NULL COMMENT '手机号用户',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=10 DEFAULT CHARSET=utf8 ROW_FORMAT=COMPACT COMMENT='所用用户表';

-- ----------------------------
-- Records of ob_admin
-- ----------------------------
INSERT INTO `ob_admin` VALUES ('2', 'demo', 'e10adc3949ba59abbe56e057f20f883e', '1587087866', '127.0.0.1', '4', '1539076102', '1587087866', '0', '1', null);
INSERT INTO `ob_admin` VALUES ('3', 'test', 'e10adc3949ba59abbe56e057f20f883e', '1586873191', '127.0.0.1', '1', '0', '1586873191', '1', '1', null);
INSERT INTO `ob_admin` VALUES ('4', 'admin', 'e10adc3949ba59abbe56e057f20f883e', '1587087761', '127.0.0.1', '43', '0', '1587087761', '1', '1', null);
INSERT INTO `ob_admin` VALUES ('5', '罗犇', 'a9b7ba70783b617e9998dc4dd82eb3c5', '0', '127.0.0.1', '0', '1587040281', '0', '1', '1', '1000');
INSERT INTO `ob_admin` VALUES ('6', '链路聚合', '4abbedd62b6f1a99d4153bcb3f691b96', '0', '127.0.0.1', '0', '1587040440', '0', '1', '1', '1500000');
INSERT INTO `ob_admin` VALUES ('7', '了激', '4abbedd62b6f1a99d4153bcb3f691b96', '1587088021', '127.0.0.1', '1', '1587040561', '1587088021', '2', '1', '150000');
INSERT INTO `ob_admin` VALUES ('8', '刘俊豪', 'c4ca4238a0b923820dcc509a6f75849b', '0', '127.0.0.1', '0', '1587040934', '0', '1', '1', '1');
INSERT INTO `ob_admin` VALUES ('9', '李哈哈', '70a85400f71d5fcbb5fc7bb30ab2418f', '0', '127.0.0.1', '0', '1587042097', '0', '1', '1', '1783236');

-- ----------------------------
-- Table structure for ob_admin_log
-- ----------------------------
DROP TABLE IF EXISTS `ob_admin_log`;
CREATE TABLE `ob_admin_log` (
  `id` int(11) unsigned NOT NULL AUTO_INCREMENT,
  `admin_id` smallint(5) unsigned NOT NULL DEFAULT '0' COMMENT '管理员id',
  `username` varchar(32) NOT NULL DEFAULT '' COMMENT '管理员用户名',
  `useragent` varchar(255) NOT NULL DEFAULT '' COMMENT 'User-Agent',
  `ip` varchar(16) NOT NULL DEFAULT '' COMMENT 'ip地址',
  `url` varchar(255) NOT NULL DEFAULT '' COMMENT '请求链接',
  `method` varchar(32) NOT NULL DEFAULT '' COMMENT '请求类型',
  `type` varchar(32) NOT NULL DEFAULT '' COMMENT '资源类型',
  `param` text NOT NULL COMMENT '请求参数',
  `remark` varchar(255) NOT NULL DEFAULT '' COMMENT '日志备注',
  `create_time` int(10) unsigned NOT NULL DEFAULT '0' COMMENT '创建时间',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=103 DEFAULT CHARSET=utf8 ROW_FORMAT=COMPACT COMMENT='管理员日志';

-- ----------------------------
-- Records of ob_admin_log
-- ----------------------------
INSERT INTO `ob_admin_log` VALUES ('1', '1', 'admin', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/68.0.3440.106 Safari/537.36', '127.0.0.1', 'http://www.openbms.com/admin/database/del/time/1552277088.html', 'POST', 'json', '{\"time\":\"1552277088\"}', '删除了数据', '1552277146');
INSERT INTO `ob_admin_log` VALUES ('2', '1', 'admin', 'Mozilla/5.0 (Windows NT 10.0; WOW64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/74.0.3729.169 Safari/537.36', '127.0.0.1', 'http://www.qinxue.com/admin.html', 'POST', 'json', '{\"username\":\"admin\",\"password\":\"123456\",\"captcha\":\"3e8q\"}', '登录了后台系统', '1586596387');
INSERT INTO `ob_admin_log` VALUES ('3', '1', 'admin', 'Mozilla/5.0 (Windows NT 10.0; WOW64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/74.0.3729.169 Safari/537.36', '127.0.0.1', 'http://www.qinxue.com/admin/config/setting.html', 'POST', 'json', '{\"lejRej\":\"\\/upload\\/image\\/20200411\\/83798ea1a2d0ab7cdcd777f54f5945b4.jpg\",\"mbk5ez\":\"OpenBMS\",\"nel5aK\":\"OpenBMS \\u5f00\\u6e90\\u540e\\u53f0\\u7ba1\\u7406\\u7cfb\\u7edf\",\"vbmOeY\":\"OpenBMS,\\u5f00\\u6e90\\u540e\\u53f0\\u7ba1\\u7406\\u7cfb\\u7edf\",\"penRe7\":\"OpenBMS,\\u5f00\\u6e90\\u540e\\u53f0\\u7ba1\\u7406\\u7cfb\\u7edf,Open Background Management System \\u5f00\\u6e90\\u540e\\u53f0\\u7ba1\\u7406\\u7cfb\\u7edf\",\"xbojag\":\"\",\"mep2bM\":\"\",\"zbq2dp\":\"\"}', '更新基本设置', '1586596403');
INSERT INTO `ob_admin_log` VALUES ('4', '1', 'admin', 'Mozilla/5.0 (Windows NT 10.0; WOW64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/74.0.3729.169 Safari/537.36', '127.0.0.1', 'http://www.qinxue.com/admin/index/clear.html', 'POST', 'json', '[]', '清除了系统缓存', '1586596407');
INSERT INTO `ob_admin_log` VALUES ('5', '1', 'admin', 'Mozilla/5.0 (Windows NT 10.0; WOW64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/74.0.3729.169 Safari/537.36', '127.0.0.1', 'http://www.qinxue.com/admin/index/clear.html', 'POST', 'json', '[]', '清除了系统缓存', '1586596534');
INSERT INTO `ob_admin_log` VALUES ('6', '1', 'admin', 'Mozilla/5.0 (Windows NT 10.0; WOW64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/74.0.3729.169 Safari/537.36', '127.0.0.1', 'http://www.qinxue.com/admin.html', 'POST', 'json', '{\"username\":\"admin\",\"password\":\"123456\",\"captcha\":\"urcf\"}', '登录了后台系统', '1586597954');
INSERT INTO `ob_admin_log` VALUES ('7', '1', 'admin', 'Mozilla/5.0 (Windows NT 10.0; WOW64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/74.0.3729.169 Safari/537.36', '127.0.0.1', 'http://www.qinxue.com/admin/auth/editrule.html?id=2', 'POST', 'json', '{\"id\":\"2\",\"name\":\"\\u7528\\u6237\",\"url\":\"\",\"icon\":\"fa fa-users\",\"type\":\"nav\",\"index\":\"0\",\"sort_order\":\"3\",\"pid\":\"0\"}', '修改了权限规则', '1586604743');
INSERT INTO `ob_admin_log` VALUES ('8', '1', 'admin', 'Mozilla/5.0 (Windows NT 10.0; WOW64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/74.0.3729.169 Safari/537.36', '127.0.0.1', 'http://www.qinxue.com/admin/auth/editrule.html?id=9', 'POST', 'json', '{\"id\":\"9\",\"name\":\"\\u7528\\u6237\\u7ba1\\u7406\",\"url\":\"admin\\/user\\/index\",\"icon\":\"fa fa-users\",\"type\":\"nav\",\"index\":\"1\",\"sort_order\":\"0\",\"pid\":\"2\"}', '修改了权限规则', '1586604752');
INSERT INTO `ob_admin_log` VALUES ('9', '1', 'admin', 'Mozilla/5.0 (Windows NT 10.0; WOW64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/74.0.3729.169 Safari/537.36', '127.0.0.1', 'http://www.qinxue.com/admin/auth/editrule.html?id=10', 'POST', 'json', '{\"id\":\"10\",\"name\":\"\\u4f1a\\u5458\\u65e5\\u5fd7\",\"url\":\"admin\\/user\\/log\",\"icon\":\"fa fa-clock-o\",\"type\":\"auth\",\"index\":\"1\",\"sort_order\":\"0\",\"pid\":\"2\"}', '修改了权限规则', '1586604777');
INSERT INTO `ob_admin_log` VALUES ('10', '1', 'admin', 'Mozilla/5.0 (Windows NT 10.0; WOW64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/74.0.3729.169 Safari/537.36', '127.0.0.1', 'http://www.qinxue.com/admin/user/del/id/2014.html', 'POST', 'json', '{\"id\":\"2014\"}', '删除了用户', '1586604848');
INSERT INTO `ob_admin_log` VALUES ('11', '1', 'admin', 'Mozilla/5.0 (Windows NT 10.0; WOW64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/74.0.3729.169 Safari/537.36', '127.0.0.1', 'http://www.qinxue.com/admin/auth/addrule.html?id=0', 'POST', 'json', '{\"id\":\"\",\"name\":\"\\u66f2\\u79cd\\u7ba1\\u7406\",\"url\":\"admin\\/Song\\/index\",\"icon\":\"fa fa-bell-o cc_pointer\",\"type\":\"nav\",\"index\":\"0\",\"sort_order\":\"0\",\"pid\":\"0\"}', '添加了权限规则', '1586605125');
INSERT INTO `ob_admin_log` VALUES ('12', '1', 'admin', 'Mozilla/5.0 (Windows NT 10.0; WOW64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/74.0.3729.169 Safari/537.36', '127.0.0.1', 'http://www.qinxue.com/admin/auth/addrule.html?id=56', 'POST', 'json', '{\"id\":\"\",\"name\":\"\\u589e\\u52a0\\u5206\\u7c7b\",\"url\":\"admin\\/Song\\/add\",\"icon\":\"\",\"type\":\"nav\",\"index\":\"0\",\"sort_order\":\"0\",\"pid\":\"56\"}', '添加了权限规则', '1586605168');
INSERT INTO `ob_admin_log` VALUES ('13', '1', 'admin', 'Mozilla/5.0 (Windows NT 10.0; WOW64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/74.0.3729.169 Safari/537.36', '127.0.0.1', 'http://www.qinxue.com/admin/auth/addrule.html?id=0', 'POST', 'json', '{\"id\":\"\",\"name\":\"\\u620f\\u66f2\",\"url\":\"admin\\/Play\\/index\",\"icon\":\"fa fa-female cc_pointer\",\"type\":\"nav\",\"index\":\"0\",\"sort_order\":\"0\",\"pid\":\"0\"}', '添加了权限规则', '1586605325');
INSERT INTO `ob_admin_log` VALUES ('14', '1', 'admin', 'Mozilla/5.0 (Windows NT 10.0; WOW64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/74.0.3729.169 Safari/537.36', '127.0.0.1', 'http://www.qinxue.com/admin/auth/addrule.html?id=58', 'POST', 'json', '{\"id\":\"\",\"name\":\"\\u589e\\u52a0\\u620f\\u66f2\",\"url\":\"admin\\/Play\\/add\",\"icon\":\"\",\"type\":\"nav\",\"index\":\"0\",\"sort_order\":\"0\",\"pid\":\"58\"}', '添加了权限规则', '1586605352');
INSERT INTO `ob_admin_log` VALUES ('15', '1', 'admin', 'Mozilla/5.0 (Windows NT 10.0; WOW64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/74.0.3729.169 Safari/537.36', '127.0.0.1', 'http://www.qinxue.com/admin/auth/addrule.html?id=56', 'POST', 'json', '{\"id\":\"\",\"name\":\"\\u66f2\\u79cd\\u7ba1\\u7406\",\"url\":\"admin\\/Song\\/index\",\"icon\":\"\",\"type\":\"nav\",\"index\":\"0\",\"sort_order\":\"0\",\"pid\":\"56\"}', '添加了权限规则', '1586605756');
INSERT INTO `ob_admin_log` VALUES ('16', '1', 'admin', 'Mozilla/5.0 (Windows NT 10.0; WOW64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/74.0.3729.169 Safari/537.36', '127.0.0.1', 'http://www.qinxue.com/admin/auth/editrule.html?id=57', 'POST', 'json', '{\"id\":\"57\",\"name\":\"\\u589e\\u52a0\\u5206\\u7c7b\",\"url\":\"admin\\/Song\\/add\",\"icon\":\"\",\"type\":\"auth\",\"index\":\"0\",\"sort_order\":\"0\",\"pid\":\"56\"}', '修改了权限规则', '1586605802');
INSERT INTO `ob_admin_log` VALUES ('17', '1', 'admin', 'Mozilla/5.0 (Windows NT 10.0; WOW64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/74.0.3729.169 Safari/537.36', '127.0.0.1', 'http://www.qinxue.com/admin/auth/addrule.html?id=58', 'POST', 'json', '{\"id\":\"\",\"name\":\"\\u620f\\u66f2\\u5217\\u8868\",\"url\":\"admin\\/Play\\/index\",\"icon\":\"\",\"type\":\"nav\",\"index\":\"0\",\"sort_order\":\"0\",\"pid\":\"58\"}', '添加了权限规则', '1586605831');
INSERT INTO `ob_admin_log` VALUES ('18', '1', 'admin', 'Mozilla/5.0 (Windows NT 10.0; WOW64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/74.0.3729.169 Safari/537.36', '127.0.0.1', 'http://www.qinxue.com/admin/auth/editrule.html?id=59', 'POST', 'json', '{\"id\":\"59\",\"name\":\"\\u589e\\u52a0\\u620f\\u66f2\",\"url\":\"admin\\/Play\\/add\",\"icon\":\"\",\"type\":\"auth\",\"index\":\"0\",\"sort_order\":\"0\",\"pid\":\"58\"}', '修改了权限规则', '1586605837');
INSERT INTO `ob_admin_log` VALUES ('19', '1', 'admin', 'Mozilla/5.0 (Windows NT 10.0; WOW64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/74.0.3729.169 Safari/537.36', '127.0.0.1', 'http://www.qinxue.com/admin/play/del/id/1.html', 'POST', 'json', '{\"id\":\"1\"}', '删除了用户', '1586609614');
INSERT INTO `ob_admin_log` VALUES ('20', '1', 'admin', 'Mozilla/5.0 (Windows NT 10.0; WOW64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/74.0.3729.169 Safari/537.36', '127.0.0.1', 'http://www.qinxue.com/admin.html', 'POST', 'json', '{\"username\":\"admin\",\"password\":\"123456\",\"captcha\":\"rxvj\"}', '登录了后台系统', '1586672555');
INSERT INTO `ob_admin_log` VALUES ('21', '1', 'admin', 'Mozilla/5.0 (Windows NT 10.0; WOW64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/74.0.3729.169 Safari/537.36', '127.0.0.1', 'http://www.qinxue.com/admin/auth/editrule.html?id=1', 'POST', 'json', '{\"id\":\"1\",\"name\":\"\\u6587\\u7ae0\",\"url\":\"\",\"icon\":\"fa fa-book\",\"type\":\"auth\",\"index\":\"0\",\"sort_order\":\"2\",\"pid\":\"0\"}', '修改了权限规则', '1586682729');
INSERT INTO `ob_admin_log` VALUES ('22', '1', 'admin', 'Mozilla/5.0 (Windows NT 10.0; WOW64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/74.0.3729.169 Safari/537.36', '127.0.0.1', 'http://www.qinxue.com/admin/auth/editrule.html?id=3', 'POST', 'json', '{\"id\":\"3\",\"name\":\"\\u6269\\u5c55\",\"url\":\"\",\"icon\":\"fa fa-puzzle-piece\",\"type\":\"auth\",\"index\":\"0\",\"sort_order\":\"4\",\"pid\":\"0\"}', '修改了权限规则', '1586682737');
INSERT INTO `ob_admin_log` VALUES ('23', '1', 'admin', 'Mozilla/5.0 (Windows NT 10.0; WOW64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/74.0.3729.169 Safari/537.36', '127.0.0.1', 'http://www.qinxue.com/admin/auth/editrule.html?id=4', 'POST', 'json', '{\"id\":\"4\",\"name\":\"\\u8bbe\\u7f6e\",\"url\":\"\",\"icon\":\"fa fa-gear\",\"type\":\"auth\",\"index\":\"0\",\"sort_order\":\"5\",\"pid\":\"0\"}', '修改了权限规则', '1586682741');
INSERT INTO `ob_admin_log` VALUES ('24', '1', 'admin', 'Mozilla/5.0 (Windows NT 10.0; WOW64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/74.0.3729.169 Safari/537.36', '127.0.0.1', 'http://www.qinxue.com/admin.html', 'POST', 'json', '{\"username\":\"admin\",\"password\":\"123456\",\"captcha\":\"yrby\"}', '登录了后台系统', '1586855510');
INSERT INTO `ob_admin_log` VALUES ('25', '1', 'admin', 'Mozilla/5.0 (Windows NT 6.1; WOW64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/74.0.3729.169 Safari/537.36', '127.0.0.1', 'http://www.yiyuan.com/admin.html', 'POST', 'json', '{\"username\":\"admin\",\"password\":\"123456\",\"captcha\":\"tdck\"}', '登录了后台系统', '1586863793');
INSERT INTO `ob_admin_log` VALUES ('26', '1', 'admin', 'Mozilla/5.0 (Windows NT 6.1; WOW64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/74.0.3729.169 Safari/537.36', '127.0.0.1', 'http://www.yiyuan.com/admin/auth/editrule.html?id=58', 'POST', 'json', '{\"id\":\"58\",\"name\":\"\\u533b\\u62a4\\u4fe1\\u606f\",\"url\":\"admin\\/Play\\/index\",\"icon\":\"fa fa-female cc_pointer\",\"type\":\"nav\",\"index\":\"0\",\"sort_order\":\"0\",\"pid\":\"0\"}', '修改了权限规则', '1586865031');
INSERT INTO `ob_admin_log` VALUES ('27', '1', 'admin', 'Mozilla/5.0 (Windows NT 6.1; WOW64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/74.0.3729.169 Safari/537.36', '127.0.0.1', 'http://www.yiyuan.com/admin/auth/editrule.html?id=59', 'POST', 'json', '{\"id\":\"59\",\"name\":\"\\u589e\\u52a0\\u533b\\u62a4\\u4fe1\\u606f\",\"url\":\"admin\\/Play\\/add\",\"icon\":\"\",\"type\":\"auth\",\"index\":\"0\",\"sort_order\":\"0\",\"pid\":\"58\"}', '修改了权限规则', '1586865045');
INSERT INTO `ob_admin_log` VALUES ('28', '1', 'admin', 'Mozilla/5.0 (Windows NT 6.1; WOW64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/74.0.3729.169 Safari/537.36', '127.0.0.1', 'http://www.yiyuan.com/admin/auth/editrule.html?id=61', 'POST', 'json', '{\"id\":\"61\",\"name\":\"\\u533b\\u62a4\\u4fe1\\u606f\\u5217\\u8868\",\"url\":\"admin\\/Play\\/index\",\"icon\":\"\",\"type\":\"nav\",\"index\":\"0\",\"sort_order\":\"0\",\"pid\":\"58\"}', '修改了权限规则', '1586865092');
INSERT INTO `ob_admin_log` VALUES ('29', '1', 'admin', 'Mozilla/5.0 (Windows NT 6.1; WOW64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/74.0.3729.169 Safari/537.36', '127.0.0.1', 'http://www.yiyuan.com/admin/auth/editrule.html?id=56', 'POST', 'json', '{\"id\":\"56\",\"name\":\"\\u673a\\u6784\",\"url\":\"admin\\/Song\\/index\",\"icon\":\"fa fa-bell-o cc_pointer\",\"type\":\"nav\",\"index\":\"0\",\"sort_order\":\"0\",\"pid\":\"0\"}', '修改了权限规则', '1586865105');
INSERT INTO `ob_admin_log` VALUES ('30', '1', 'admin', 'Mozilla/5.0 (Windows NT 6.1; WOW64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/74.0.3729.169 Safari/537.36', '127.0.0.1', 'http://www.yiyuan.com/admin/auth/editrule.html?id=58', 'POST', 'json', '{\"id\":\"58\",\"name\":\"\\u836f\\u5e93\",\"url\":\"admin\\/Play\\/index\",\"icon\":\"fa fa-female cc_pointer\",\"type\":\"nav\",\"index\":\"0\",\"sort_order\":\"0\",\"pid\":\"0\"}', '修改了权限规则', '1586865234');
INSERT INTO `ob_admin_log` VALUES ('31', '1', 'admin', 'Mozilla/5.0 (Windows NT 6.1; WOW64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/74.0.3729.169 Safari/537.36', '127.0.0.1', 'http://www.yiyuan.com/admin/auth/editrule.html?id=59', 'POST', 'json', '{\"id\":\"59\",\"name\":\"\\u589e\\u52a0\\u836f\",\"url\":\"admin\\/Play\\/add\",\"icon\":\"\",\"type\":\"auth\",\"index\":\"0\",\"sort_order\":\"0\",\"pid\":\"58\"}', '修改了权限规则', '1586865244');
INSERT INTO `ob_admin_log` VALUES ('32', '1', 'admin', 'Mozilla/5.0 (Windows NT 6.1; WOW64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/74.0.3729.169 Safari/537.36', '127.0.0.1', 'http://www.yiyuan.com/admin/auth/editrule.html?id=61', 'POST', 'json', '{\"id\":\"61\",\"name\":\"\\u836f\\u5217\\u8868\",\"url\":\"admin\\/Play\\/index\",\"icon\":\"\",\"type\":\"nav\",\"index\":\"0\",\"sort_order\":\"0\",\"pid\":\"58\"}', '修改了权限规则', '1586865263');
INSERT INTO `ob_admin_log` VALUES ('33', '1', 'admin', 'Mozilla/5.0 (Windows NT 6.1; WOW64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/74.0.3729.169 Safari/537.36', '127.0.0.1', 'http://www.yiyuan.com/admin/auth/editrule.html?id=57', 'POST', 'json', '{\"id\":\"57\",\"name\":\"\\u589e\\u52a0\\u673a\\u6784\",\"url\":\"admin\\/Song\\/add\",\"icon\":\"\",\"type\":\"auth\",\"index\":\"0\",\"sort_order\":\"0\",\"pid\":\"56\"}', '修改了权限规则', '1586865299');
INSERT INTO `ob_admin_log` VALUES ('34', '1', 'admin', 'Mozilla/5.0 (Windows NT 6.1; WOW64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/74.0.3729.169 Safari/537.36', '127.0.0.1', 'http://www.yiyuan.com/admin/auth/editrule.html?id=60', 'POST', 'json', '{\"id\":\"60\",\"name\":\"\\u673a\\u6784\\u7ba1\\u7406\",\"url\":\"admin\\/Song\\/index\",\"icon\":\"\",\"type\":\"nav\",\"index\":\"0\",\"sort_order\":\"0\",\"pid\":\"56\"}', '修改了权限规则', '1586865340');
INSERT INTO `ob_admin_log` VALUES ('35', '1', 'admin', 'Mozilla/5.0 (Windows NT 6.1; WOW64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/74.0.3729.169 Safari/537.36', '127.0.0.1', 'http://www.yiyuan.com/admin/auth/editrule.html?id=1', 'POST', 'json', '{\"id\":\"1\",\"name\":\"\\u533b\\u62a4\\u4fe1\\u606f\",\"url\":\"\",\"icon\":\"fa fa-book\",\"type\":\"auth\",\"index\":\"0\",\"sort_order\":\"2\",\"pid\":\"0\"}', '修改了权限规则', '1586865381');
INSERT INTO `ob_admin_log` VALUES ('36', '1', 'admin', 'Mozilla/5.0 (Windows NT 6.1; WOW64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/74.0.3729.169 Safari/537.36', '127.0.0.1', 'http://www.yiyuan.com/admin/auth/editrule.html?id=8', 'POST', 'json', '{\"id\":\"8\",\"name\":\"\\u533b\\u62a4\\u5217\\u8868\",\"url\":\"admin\\/article\\/index\",\"icon\":\"fa fa-book\",\"type\":\"nav\",\"index\":\"1\",\"sort_order\":\"1\",\"pid\":\"1\"}', '修改了权限规则', '1586865407');
INSERT INTO `ob_admin_log` VALUES ('37', '1', 'admin', 'Mozilla/5.0 (Windows NT 6.1; WOW64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/74.0.3729.169 Safari/537.36', '127.0.0.1', 'http://www.yiyuan.com/admin/auth/editrule.html?id=7', 'POST', 'json', '{\"id\":\"7\",\"name\":\"\\u533b\\u62a4\\u4fe1\\u606f\\u589e\\u52a0\",\"url\":\"admin\\/category\\/index\",\"icon\":\"fa fa-navicon\",\"type\":\"nav\",\"index\":\"1\",\"sort_order\":\"2\",\"pid\":\"1\"}', '修改了权限规则', '1586865433');
INSERT INTO `ob_admin_log` VALUES ('38', '1', 'admin', 'Mozilla/5.0 (Windows NT 6.1; WOW64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/74.0.3729.169 Safari/537.36', '127.0.0.1', 'http://www.yiyuan.com/admin/auth/addrule.html?id=56', 'POST', 'json', '{\"id\":\"\",\"name\":\"\\u53d6\\u836f\\u8ba2\\u5355\",\"url\":\"admin\\/Order\\/index\",\"icon\":\"\",\"type\":\"nav\",\"index\":\"0\",\"sort_order\":\"0\",\"pid\":\"56\"}', '添加了权限规则', '1586865494');
INSERT INTO `ob_admin_log` VALUES ('39', '1', 'admin', 'Mozilla/5.0 (Windows NT 6.1; WOW64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/74.0.3729.169 Safari/537.36', '127.0.0.1', 'http://www.yiyuan.com/admin/auth/delrule.html?id=62', 'POST', 'json', '{\"id\":\"62\"}', '删除了权限规则', '1586865534');
INSERT INTO `ob_admin_log` VALUES ('40', '1', 'admin', 'Mozilla/5.0 (Windows NT 6.1; WOW64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/74.0.3729.169 Safari/537.36', '127.0.0.1', 'http://www.yiyuan.com/admin/auth/addrule.html?id=0', 'POST', 'json', '{\"id\":\"\",\"name\":\"\\u53d6\\u836f\\u8ba2\\u5355\",\"url\":\"admin\\/Order\\/index\",\"icon\":\"\",\"type\":\"nav\",\"index\":\"0\",\"sort_order\":\"0\",\"pid\":\"0\"}', '添加了权限规则', '1586865551');
INSERT INTO `ob_admin_log` VALUES ('41', '1', 'admin', 'Mozilla/5.0 (Windows NT 6.1; WOW64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/74.0.3729.169 Safari/537.36', '127.0.0.1', 'http://www.yiyuan.com/admin/auth/addrule.html?id=63', 'POST', 'json', '{\"id\":\"\",\"name\":\"\\u53d6\\u836f\\u5217\\u8868\",\"url\":\"admin\\/Order\\/del\",\"icon\":\"\",\"type\":\"nav\",\"index\":\"0\",\"sort_order\":\"0\",\"pid\":\"63\"}', '添加了权限规则', '1586865580');
INSERT INTO `ob_admin_log` VALUES ('42', '1', 'admin', 'Mozilla/5.0 (Windows NT 6.1; WOW64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/74.0.3729.169 Safari/537.36', '127.0.0.1', 'http://www.yiyuan.com/admin/auth/editrule.html?id=64', 'POST', 'json', '{\"id\":\"64\",\"name\":\"\\u53d6\\u836f\\u5217\\u8868\",\"url\":\"admin\\/Order\\/det\",\"icon\":\"\",\"type\":\"nav\",\"index\":\"0\",\"sort_order\":\"0\",\"pid\":\"63\"}', '修改了权限规则', '1586865594');
INSERT INTO `ob_admin_log` VALUES ('43', '1', 'admin', 'Mozilla/5.0 (Windows NT 6.1; WOW64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/74.0.3729.169 Safari/537.36', '127.0.0.1', 'http://www.yiyuan.com/admin/auth/addrule.html?id=0', 'POST', 'json', '{\"id\":\"\",\"name\":\"\\u60a3\\u8005\",\"url\":\"\",\"icon\":\"\",\"type\":\"nav\",\"index\":\"0\",\"sort_order\":\"0\",\"pid\":\"0\"}', '添加了权限规则', '1586865622');
INSERT INTO `ob_admin_log` VALUES ('44', '1', 'admin', 'Mozilla/5.0 (Windows NT 6.1; WOW64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/74.0.3729.169 Safari/537.36', '127.0.0.1', 'http://www.yiyuan.com/admin/auth/addrule.html?id=0', 'POST', 'json', '{\"id\":\"\",\"name\":\"\\u60a3\\u8005\",\"url\":\"admin\\/Sick\\/index\",\"icon\":\"\",\"type\":\"nav\",\"index\":\"0\",\"sort_order\":\"0\",\"pid\":\"0\"}', '添加了权限规则', '1586865695');
INSERT INTO `ob_admin_log` VALUES ('45', '1', 'admin', 'Mozilla/5.0 (Windows NT 6.1; WOW64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/74.0.3729.169 Safari/537.36', '127.0.0.1', 'http://www.yiyuan.com/admin/auth/delrule.html?id=66', 'POST', 'json', '{\"id\":\"66\"}', '删除了权限规则', '1586865708');
INSERT INTO `ob_admin_log` VALUES ('46', '1', 'admin', 'Mozilla/5.0 (Windows NT 6.1; WOW64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/74.0.3729.169 Safari/537.36', '127.0.0.1', 'http://www.yiyuan.com/admin/auth/addrule.html?id=0', 'POST', 'json', '{\"id\":\"\",\"name\":\"\\u60a3\\u8005\",\"url\":\"admin\\/Sick\\/index\",\"icon\":\"\",\"type\":\"nav\",\"index\":\"0\",\"sort_order\":\"0\",\"pid\":\"0\"}', '添加了权限规则', '1586865719');
INSERT INTO `ob_admin_log` VALUES ('47', '1', 'admin', 'Mozilla/5.0 (Windows NT 6.1; WOW64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/74.0.3729.169 Safari/537.36', '127.0.0.1', 'http://www.yiyuan.com/admin/auth/addrule.html?id=67', 'POST', 'json', '{\"id\":\"\",\"name\":\"\\u60a3\\u8005\\u589e\\u52a0\",\"url\":\"admin\\/Sick\\/add\",\"icon\":\"\",\"type\":\"nav\",\"index\":\"0\",\"sort_order\":\"0\",\"pid\":\"67\"}', '添加了权限规则', '1586865761');
INSERT INTO `ob_admin_log` VALUES ('48', '1', 'admin', 'Mozilla/5.0 (Windows NT 6.1; WOW64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/74.0.3729.169 Safari/537.36', '127.0.0.1', 'http://www.yiyuan.com/admin/auth/addrule.html?id=67', 'POST', 'json', '{\"id\":\"\",\"name\":\"\\u60a3\\u8005\\u7f16\\u8f91\",\"url\":\"admin\\/Sick\\/edit\",\"icon\":\"\",\"type\":\"nav\",\"index\":\"0\",\"sort_order\":\"0\",\"pid\":\"67\"}', '添加了权限规则', '1586865778');
INSERT INTO `ob_admin_log` VALUES ('49', '1', 'admin', 'Mozilla/5.0 (Windows NT 6.1; WOW64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/74.0.3729.169 Safari/537.36', '127.0.0.1', 'http://www.yiyuan.com/admin/auth/addrule.html?id=67', 'POST', 'json', '{\"id\":\"\",\"name\":\"\\u60a3\\u8005\\u5217\\u8868\",\"url\":\"admin\\/Sick\\/sist\",\"icon\":\"\",\"type\":\"nav\",\"index\":\"0\",\"sort_order\":\"0\",\"pid\":\"67\"}', '添加了权限规则', '1586865822');
INSERT INTO `ob_admin_log` VALUES ('50', '1', 'admin', 'Mozilla/5.0 (Windows NT 6.1; WOW64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/74.0.3729.169 Safari/537.36', '127.0.0.1', 'http://www.yiyuan.com/admin/auth/delrule.html?id=69', 'POST', 'json', '{\"id\":\"69\"}', '删除了权限规则', '1586865837');
INSERT INTO `ob_admin_log` VALUES ('51', '1', 'admin', 'Mozilla/5.0 (Windows NT 6.1; WOW64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/74.0.3729.169 Safari/537.36', '127.0.0.1', 'http://www.yiyuan.com/admin/auth/addrule.html?id=0', 'POST', 'json', '{\"id\":\"\",\"name\":\"\\u533b\\u751f\\u5de5\\u4f5c\\u53f0\",\"url\":\"admin\\/doctor\\/index\",\"icon\":\"\",\"type\":\"nav\",\"index\":\"0\",\"sort_order\":\"0\",\"pid\":\"0\"}', '添加了权限规则', '1586866346');
INSERT INTO `ob_admin_log` VALUES ('52', '1', 'admin', 'Mozilla/5.0 (Windows NT 10.0; WOW64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/74.0.3729.169 Safari/537.36', '127.0.0.1', 'http://www.hospital.com/admin/admin/edit/id/2.html', 'POST', 'json', '{\"status\":\"0\",\"_verify\":\"0\",\"id\":\"2\"}', '修改了管理员', '1586872123');
INSERT INTO `ob_admin_log` VALUES ('53', '1', 'admin', 'Mozilla/5.0 (Windows NT 10.0; WOW64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/74.0.3729.169 Safari/537.36', '127.0.0.1', 'http://www.hospital.com/admin/admin/edit/id/2.html', 'POST', 'json', '{\"status\":\"1\",\"_verify\":\"0\",\"id\":\"2\"}', '修改了管理员', '1586872125');
INSERT INTO `ob_admin_log` VALUES ('54', '1', 'admin', 'Mozilla/5.0 (Windows NT 10.0; WOW64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/74.0.3729.169 Safari/537.36', '127.0.0.1', 'http://www.hospital.com/admin/admin/edit/id/2.html', 'POST', 'json', '{\"status\":\"0\",\"_verify\":\"0\",\"id\":\"2\"}', '修改了管理员', '1586872130');
INSERT INTO `ob_admin_log` VALUES ('55', '1', 'admin', 'Mozilla/5.0 (Windows NT 10.0; WOW64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/74.0.3729.169 Safari/537.36', '127.0.0.1', 'http://www.hospital.com/admin/admin/edit/id/2.html', 'POST', 'json', '{\"status\":\"1\",\"_verify\":\"0\",\"id\":\"2\"}', '修改了管理员', '1586872131');
INSERT INTO `ob_admin_log` VALUES ('56', '1', 'admin', 'Mozilla/5.0 (Windows NT 10.0; WOW64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/74.0.3729.169 Safari/537.36', '127.0.0.1', 'http://www.hospital.com/admin/index/logout.html', 'GET', 'xml', '[]', '退出了后台系统', '1586872653');
INSERT INTO `ob_admin_log` VALUES ('57', '2', 'demo', 'Mozilla/5.0 (Windows NT 10.0; WOW64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/74.0.3729.169 Safari/537.36', '127.0.0.1', 'http://www.hospital.com/admin.html', 'POST', 'json', '{\"username\":\"demo\",\"password\":\"123456\",\"captcha\":\"b8jj\"}', '登录了后台系统', '1586872678');
INSERT INTO `ob_admin_log` VALUES ('58', '2', 'demo', 'Mozilla/5.0 (Windows NT 10.0; WOW64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/74.0.3729.169 Safari/537.36', '127.0.0.1', 'http://www.hospital.com/admin/index/logout.html', 'GET', 'xml', '[]', '退出了后台系统', '1586872754');
INSERT INTO `ob_admin_log` VALUES ('59', '1', 'admin', 'Mozilla/5.0 (Windows NT 10.0; WOW64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/74.0.3729.169 Safari/537.36', '127.0.0.1', 'http://www.hospital.com/admin.html', 'POST', 'json', '{\"username\":\"admin\",\"password\":\"123456\",\"captcha\":\"xvn4\"}', '登录了后台系统', '1586872769');
INSERT INTO `ob_admin_log` VALUES ('60', '1', 'admin', 'Mozilla/5.0 (Windows NT 10.0; WOW64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/74.0.3729.169 Safari/537.36', '127.0.0.1', 'http://www.hospital.com/admin/index/logout.html', 'GET', 'xml', '[]', '退出了后台系统', '1586873183');
INSERT INTO `ob_admin_log` VALUES ('61', '3', 'test', 'Mozilla/5.0 (Windows NT 10.0; WOW64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/74.0.3729.169 Safari/537.36', '127.0.0.1', 'http://www.hospital.com/admin.html', 'POST', 'json', '{\"username\":\"test\",\"password\":\"123456\",\"captcha\":\"xim4\"}', '登录了后台系统', '1586873191');
INSERT INTO `ob_admin_log` VALUES ('62', '3', 'test', 'Mozilla/5.0 (Windows NT 10.0; WOW64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/74.0.3729.169 Safari/537.36', '127.0.0.1', 'http://www.hospital.com/admin/index/logout.html', 'GET', 'xml', '[]', '退出了后台系统', '1586873277');
INSERT INTO `ob_admin_log` VALUES ('63', '1', 'admin', 'Mozilla/5.0 (Windows NT 10.0; WOW64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/74.0.3729.169 Safari/537.36', '127.0.0.1', 'http://www.hospital.com/admin.html', 'POST', 'json', '{\"username\":\"admin\",\"password\":\"123456\",\"captcha\":\"kj8n\"}', '登录了后台系统', '1586873285');
INSERT INTO `ob_admin_log` VALUES ('64', '1', 'admin', 'Mozilla/5.0 (Windows NT 10.0; WOW64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/74.0.3729.169 Safari/537.36', '127.0.0.1', 'http://www.hospital.com/admin/index/logout.html', 'GET', 'xml', '[]', '退出了后台系统', '1586873316');
INSERT INTO `ob_admin_log` VALUES ('65', '4', 'admins', 'Mozilla/5.0 (Windows NT 10.0; WOW64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/74.0.3729.169 Safari/537.36', '127.0.0.1', 'http://www.hospital.com/admin.html', 'POST', 'json', '{\"username\":\"admins\",\"password\":\"123456\",\"captcha\":\"rpxs\"}', '登录了后台系统', '1586873325');
INSERT INTO `ob_admin_log` VALUES ('66', '4', 'admins', 'Mozilla/5.0 (Windows NT 10.0; WOW64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/74.0.3729.169 Safari/537.36', '127.0.0.1', 'http://www.hospital.com/admin/index/logout.html', 'GET', 'xml', '[]', '退出了后台系统', '1586873857');
INSERT INTO `ob_admin_log` VALUES ('67', '4', 'admin', 'Mozilla/5.0 (Windows NT 10.0; WOW64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/74.0.3729.169 Safari/537.36', '127.0.0.1', 'http://www.hospital.com/admin.html', 'POST', 'json', '{\"username\":\"admin\",\"password\":\"123456\",\"captcha\":\"5ye3\"}', '登录了后台系统', '1586873877');
INSERT INTO `ob_admin_log` VALUES ('68', '4', 'admin', 'Mozilla/5.0 (Windows NT 10.0; WOW64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/74.0.3729.169 Safari/537.36', '127.0.0.1', 'http://www.hospital.com/admin.html', 'POST', 'json', '{\"username\":\"admin\",\"password\":\"123456\",\"captcha\":\"zahp\"}', '登录了后台系统', '1586951133');
INSERT INTO `ob_admin_log` VALUES ('69', '4', 'admin', 'Mozilla/5.0 (Windows NT 10.0; WOW64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/74.0.3729.169 Safari/537.36', '127.0.0.1', 'http://www.hospital.com/admin.html', 'POST', 'json', '{\"username\":\"admin\",\"password\":\"123456\",\"captcha\":\"khqc\"}', '登录了后台系统', '1586953875');
INSERT INTO `ob_admin_log` VALUES ('70', '4', 'admin', 'Mozilla/5.0 (Windows NT 10.0; WOW64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/74.0.3729.169 Safari/537.36', '127.0.0.1', 'http://www.hospital.com/admin/auth/editrule.html?id=56', 'POST', 'json', '{\"id\":\"56\",\"name\":\"\\u836f\\u5e93\",\"url\":\"admin\\/Song\\/index\",\"icon\":\"\",\"type\":\"nav\",\"index\":\"0\",\"sort_order\":\"0\",\"pid\":\"0\"}', '修改了权限规则', '1586955143');
INSERT INTO `ob_admin_log` VALUES ('71', '4', 'admin', 'Mozilla/5.0 (Windows NT 10.0; WOW64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/74.0.3729.169 Safari/537.36', '127.0.0.1', 'http://www.hospital.com/admin/auth/editrule.html?id=57', 'POST', 'json', '{\"id\":\"57\",\"name\":\"\\u589e\\u52a0\\u836f\\u7269\",\"url\":\"admin\\/Song\\/add\",\"icon\":\"\",\"type\":\"auth\",\"index\":\"0\",\"sort_order\":\"0\",\"pid\":\"56\"}', '修改了权限规则', '1586955152');
INSERT INTO `ob_admin_log` VALUES ('72', '4', 'admin', 'Mozilla/5.0 (Windows NT 10.0; WOW64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/74.0.3729.169 Safari/537.36', '127.0.0.1', 'http://www.hospital.com/admin/auth/editrule.html?id=60', 'POST', 'json', '{\"id\":\"60\",\"name\":\"\\u836f\\u7269\\u7ba1\\u7406\",\"url\":\"admin\\/Song\\/index\",\"icon\":\"\",\"type\":\"nav\",\"index\":\"0\",\"sort_order\":\"0\",\"pid\":\"56\"}', '修改了权限规则', '1586955162');
INSERT INTO `ob_admin_log` VALUES ('73', '4', 'admin', 'Mozilla/5.0 (Windows NT 10.0; WOW64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/74.0.3729.169 Safari/537.36', '127.0.0.1', 'http://www.hospital.com/admin/auth/editrule.html?id=58', 'POST', 'json', '{\"id\":\"58\",\"name\":\"\\u673a\\u6784\",\"url\":\"admin\\/Play\\/index\",\"icon\":\"\",\"type\":\"nav\",\"index\":\"0\",\"sort_order\":\"0\",\"pid\":\"0\"}', '修改了权限规则', '1586955169');
INSERT INTO `ob_admin_log` VALUES ('74', '4', 'admin', 'Mozilla/5.0 (Windows NT 10.0; WOW64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/74.0.3729.169 Safari/537.36', '127.0.0.1', 'http://www.hospital.com/admin/auth/editrule.html?id=59', 'POST', 'json', '{\"id\":\"59\",\"name\":\"\\u589e\\u52a0\\u673a\\u6784\",\"url\":\"admin\\/Play\\/add\",\"icon\":\"\",\"type\":\"auth\",\"index\":\"0\",\"sort_order\":\"0\",\"pid\":\"58\"}', '修改了权限规则', '1586955174');
INSERT INTO `ob_admin_log` VALUES ('75', '4', 'admin', 'Mozilla/5.0 (Windows NT 10.0; WOW64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/74.0.3729.169 Safari/537.36', '127.0.0.1', 'http://www.hospital.com/admin/auth/editrule.html?id=61', 'POST', 'json', '{\"id\":\"61\",\"name\":\"\\u673a\\u6784\\u5217\\u8868\",\"url\":\"admin\\/Play\\/index\",\"icon\":\"\",\"type\":\"nav\",\"index\":\"0\",\"sort_order\":\"0\",\"pid\":\"58\"}', '修改了权限规则', '1586955182');
INSERT INTO `ob_admin_log` VALUES ('76', '4', 'admin', 'Mozilla/5.0 (Windows NT 10.0; WOW64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/74.0.3729.169 Safari/537.36', '127.0.0.1', 'http://www.hospital.com/admin.html', 'POST', 'json', '{\"username\":\"admin\",\"password\":\"123456\",\"captcha\":\"xxeq\"}', '登录了后台系统', '1586997392');
INSERT INTO `ob_admin_log` VALUES ('77', '4', 'admin', 'Mozilla/5.0 (Windows NT 10.0; WOW64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/74.0.3729.169 Safari/537.36', '127.0.0.1', 'http://www.hospital.com/admin.html', 'POST', 'json', '{\"username\":\"admin\",\"password\":\"123456\",\"captcha\":\"tjd2\"}', '登录了后台系统', '1587014932');
INSERT INTO `ob_admin_log` VALUES ('78', '4', 'admin', 'Mozilla/5.0 (Windows NT 10.0; WOW64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/74.0.3729.169 Safari/537.36', '127.0.0.1', 'http://www.hospital.com/admin.html', 'POST', 'json', '{\"username\":\"admin\",\"password\":\"123456\",\"captcha\":\"5nny\"}', '登录了后台系统', '1587035277');
INSERT INTO `ob_admin_log` VALUES ('79', '4', 'admin', 'Mozilla/5.0 (Windows NT 10.0; WOW64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/74.0.3729.169 Safari/537.36', '127.0.0.1', 'http://www.hospital.com/admin/auth/editrule.html?id=64', 'POST', 'json', '{\"id\":\"64\",\"name\":\"\\u53d6\\u836f\\u5217\\u8868\",\"url\":\"admin\\/Order\\/index\",\"icon\":\"\",\"type\":\"nav\",\"index\":\"0\",\"sort_order\":\"0\",\"pid\":\"63\"}', '修改了权限规则', '1587040832');
INSERT INTO `ob_admin_log` VALUES ('80', '4', 'admin', 'Mozilla/5.0 (Windows NT 10.0; WOW64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/74.0.3729.169 Safari/537.36', '127.0.0.1', 'http://www.hospital.com/admin/auth/editrule.html?id=70', 'POST', 'json', '{\"id\":\"70\",\"name\":\"\\u60a3\\u8005\\u5217\\u8868\",\"url\":\"admin\\/Sick\\/index\",\"icon\":\"\",\"type\":\"nav\",\"index\":\"0\",\"sort_order\":\"0\",\"pid\":\"67\"}', '修改了权限规则', '1587041004');
INSERT INTO `ob_admin_log` VALUES ('81', '4', 'admin', 'Mozilla/5.0 (Windows NT 10.0; WOW64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/74.0.3729.169 Safari/537.36', '127.0.0.1', 'http://www.hospital.com/admin/auth/editrule.html?id=68', 'POST', 'json', '{\"id\":\"68\",\"name\":\"\\u60a3\\u8005\\u589e\\u52a0\",\"url\":\"admin\\/Sick\\/add\",\"icon\":\"\",\"type\":\"nav\",\"index\":\"0\",\"sort_order\":\"2\",\"pid\":\"67\"}', '修改了权限规则', '1587041026');
INSERT INTO `ob_admin_log` VALUES ('82', '4', 'admin', 'Mozilla/5.0 (Windows NT 10.0; WOW64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/74.0.3729.169 Safari/537.36', '127.0.0.1', 'http://www.hospital.com/admin.html', 'POST', 'json', '{\"username\":\"admin\",\"password\":\"123456\",\"captcha\":\"ufds\"}', '登录了后台系统', '1587042124');
INSERT INTO `ob_admin_log` VALUES ('83', '4', 'admin', 'Mozilla/5.0 (Windows NT 10.0; WOW64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/74.0.3729.169 Safari/537.36', '127.0.0.1', 'http://www.hospital.com/admin/auth/editrule.html?id=3', 'POST', 'json', '{\"id\":\"3\",\"name\":\"\\u6269\\u5c55\",\"url\":\"\",\"icon\":\"\",\"type\":\"nav\",\"index\":\"0\",\"sort_order\":\"4\",\"pid\":\"0\"}', '修改了权限规则', '1587047540');
INSERT INTO `ob_admin_log` VALUES ('84', '4', 'admin', 'Mozilla/5.0 (Windows NT 10.0; WOW64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/74.0.3729.169 Safari/537.36', '127.0.0.1', 'http://www.hospital.com/admin/auth/editrule.html?id=3', 'POST', 'json', '{\"id\":\"3\",\"name\":\"\\u6269\\u5c55\",\"url\":\"\",\"icon\":\"\",\"type\":\"auth\",\"index\":\"0\",\"sort_order\":\"4\",\"pid\":\"0\"}', '修改了权限规则', '1587047563');
INSERT INTO `ob_admin_log` VALUES ('85', '4', 'admin', 'Mozilla/5.0 (Windows NT 10.0; WOW64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/74.0.3729.169 Safari/537.36', '127.0.0.1', 'http://www.hospital.com/admin/auth/addrule.html?id=67', 'POST', 'json', '{\"id\":\"\",\"name\":\"\\u589e\\u52a0\\u7597\\u7a0b\",\"url\":\"admin\\/Sick\\/adds\",\"icon\":\"\",\"type\":\"nav\",\"index\":\"0\",\"sort_order\":\"2\",\"pid\":\"67\"}', '添加了权限规则', '1587049300');
INSERT INTO `ob_admin_log` VALUES ('86', '4', 'admin', 'Mozilla/5.0 (Windows NT 10.0; WOW64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/74.0.3729.169 Safari/537.36', '127.0.0.1', 'http://www.hospital.com/admin/auth/addrule.html?id=67', 'POST', 'json', '{\"id\":\"\",\"name\":\"\\u4fe1\\u606f\\u56de\\u9988\",\"url\":\"admin\\/Sick\\/feedback\",\"icon\":\"\",\"type\":\"nav\",\"index\":\"0\",\"sort_order\":\"6\",\"pid\":\"67\"}', '添加了权限规则', '1587050490');
INSERT INTO `ob_admin_log` VALUES ('87', '4', 'admin', 'Mozilla/5.0 (Windows NT 10.0; WOW64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/74.0.3729.169 Safari/537.36', '127.0.0.1', 'http://www.hospital.com/admin.html', 'POST', 'json', '{\"username\":\"admin\",\"password\":\"123456\",\"captcha\":\"ckfs\"}', '登录了后台系统', '1587083989');
INSERT INTO `ob_admin_log` VALUES ('88', '4', 'admin', 'Mozilla/5.0 (Windows NT 10.0; WOW64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/74.0.3729.169 Safari/537.36', '127.0.0.1', 'http://www.lbxiangmu.com/admin.html', 'POST', 'json', '{\"username\":\"admin\",\"password\":\"123456\",\"captcha\":\"himz\"}', '登录了后台系统', '1587085025');
INSERT INTO `ob_admin_log` VALUES ('89', '4', 'admin', 'Mozilla/5.0 (Windows NT 10.0; WOW64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/74.0.3729.169 Safari/537.36', '127.0.0.1', 'http://www.hospital.com/admin/auth/addrule.html?id=63', 'POST', 'json', '{\"id\":\"\",\"name\":\"\\u589e\\u52a0\\u8ba2\\u5355\",\"url\":\"admin\\/Sick\\/sist\",\"icon\":\"\",\"type\":\"nav\",\"index\":\"0\",\"sort_order\":\"0\",\"pid\":\"63\"}', '添加了权限规则', '1587086024');
INSERT INTO `ob_admin_log` VALUES ('90', '4', 'admin', 'Mozilla/5.0 (Windows NT 10.0; WOW64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/74.0.3729.169 Safari/537.36', '127.0.0.1', 'http://www.hospital.com/admin/auth/delrule.html?id=76', 'POST', 'json', '{\"id\":\"76\"}', '删除了权限规则', '1587086070');
INSERT INTO `ob_admin_log` VALUES ('91', '4', 'admin', 'Mozilla/5.0 (Windows NT 10.0; WOW64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/74.0.3729.169 Safari/537.36', '127.0.0.1', 'http://www.hospital.com/admin/auth/editrule.html?id=70', 'POST', 'json', '{\"id\":\"70\",\"name\":\"\\u60a3\\u8005\\u5217\\u8868\",\"url\":\"admin\\/Sick\\/index\",\"icon\":\"\",\"type\":\"nav\",\"index\":\"0\",\"sort_order\":\"0\",\"pid\":\"67\"}', '修改了权限规则', '1587086103');
INSERT INTO `ob_admin_log` VALUES ('92', '4', 'admin', 'Mozilla/5.0 (Windows NT 10.0; WOW64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/74.0.3729.169 Safari/537.36', '127.0.0.1', 'http://www.hospital.com/admin/auth/editrule.html?id=64', 'POST', 'json', '{\"id\":\"64\",\"name\":\"\\u53d6\\u836f\\u5217\\u8868\",\"url\":\"admin\\/Order\\/index\",\"icon\":\"\",\"type\":\"nav\",\"index\":\"0\",\"sort_order\":\"0\",\"pid\":\"63\"}', '修改了权限规则', '1587086121');
INSERT INTO `ob_admin_log` VALUES ('93', '4', 'admin', 'Mozilla/5.0 (Windows NT 10.0; WOW64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/74.0.3729.169 Safari/537.36', '127.0.0.1', 'http://www.hospital.com/admin/auth/addrule.html?id=67', 'POST', 'json', '{\"id\":\"\",\"name\":\"\\u589e\\u52a0\\u7597\\u7a0b\",\"url\":\"admin\\/Sick\\/adds\",\"icon\":\"\",\"type\":\"nav\",\"index\":\"0\",\"sort_order\":\"0\",\"pid\":\"67\"}', '添加了权限规则', '1587086180');
INSERT INTO `ob_admin_log` VALUES ('94', '4', 'admin', 'Mozilla/5.0 (Windows NT 10.0; WOW64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/74.0.3729.169 Safari/537.36', '127.0.0.1', 'http://www.hospital.com/admin/auth/addrule.html?id=67', 'POST', 'json', '{\"id\":\"\",\"name\":\"\\u7528\\u6237\\u53cd\\u9988\",\"url\":\"admin\\/Sick\\/feedback\",\"icon\":\"\",\"type\":\"nav\",\"index\":\"0\",\"sort_order\":\"0\",\"pid\":\"67\"}', '添加了权限规则', '1587087039');
INSERT INTO `ob_admin_log` VALUES ('95', '4', 'admin', 'Mozilla/5.0 (Windows NT 10.0; WOW64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/74.0.3729.169 Safari/537.36', '127.0.0.1', 'http://www.lbxiangmu.com/admin/index/logout.html', 'GET', 'xml', '[]', '退出了后台系统', '1587087324');
INSERT INTO `ob_admin_log` VALUES ('96', '4', 'admin', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/81.0.4044.92 Safari/537.36', '127.0.0.1', 'http://www.lbxiangmu.com/admin.html', 'POST', 'json', '{\"username\":\"admin\",\"password\":\"123456\",\"captcha\":\"p4bx\"}', '登录了后台系统', '1587087572');
INSERT INTO `ob_admin_log` VALUES ('97', '4', 'admin', 'Mozilla/5.0 (Windows NT 10.0; WOW64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/74.0.3729.169 Safari/537.36', '127.0.0.1', 'http://www.hospital.com/admin/index/logout.html', 'GET', 'xml', '[]', '退出了后台系统', '1587087749');
INSERT INTO `ob_admin_log` VALUES ('98', '4', 'admin', 'Mozilla/5.0 (Windows NT 10.0; WOW64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/74.0.3729.169 Safari/537.36', '127.0.0.1', 'http://www.hospital.com/admin.html', 'POST', 'json', '{\"username\":\"admin\",\"password\":\"123456\",\"captcha\":\"ybyn\"}', '登录了后台系统', '1587087761');
INSERT INTO `ob_admin_log` VALUES ('99', '4', 'admin', 'Mozilla/5.0 (Windows NT 10.0; WOW64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/74.0.3729.169 Safari/537.36', '127.0.0.1', 'http://www.hospital.com/admin/index/logout.html', 'GET', 'xml', '[]', '退出了后台系统', '1587087805');
INSERT INTO `ob_admin_log` VALUES ('100', '2', 'demo', 'Mozilla/5.0 (Windows NT 10.0; WOW64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/74.0.3729.169 Safari/537.36', '127.0.0.1', 'http://www.hospital.com/admin.html', 'POST', 'json', '{\"username\":\"demo\",\"password\":\"123456\",\"captcha\":\"drnr\"}', '登录了后台系统', '1587087866');
INSERT INTO `ob_admin_log` VALUES ('101', '2', 'demo', 'Mozilla/5.0 (Windows NT 10.0; WOW64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/74.0.3729.169 Safari/537.36', '127.0.0.1', 'http://www.hospital.com/admin/index/logout.html', 'GET', 'xml', '[]', '退出了后台系统', '1587087946');
INSERT INTO `ob_admin_log` VALUES ('102', '7', '了激', 'Mozilla/5.0 (Windows NT 10.0; WOW64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/74.0.3729.169 Safari/537.36', '127.0.0.1', 'http://www.hospital.com/admin.html', 'POST', 'json', '{\"username\":\"\\u4e86\\u6fc0\",\"password\":\"150000\",\"captcha\":\"bnf5\"}', '登录了后台系统', '1587088021');

-- ----------------------------
-- Table structure for ob_article
-- ----------------------------
DROP TABLE IF EXISTS `ob_article`;
CREATE TABLE `ob_article` (
  `id` int(11) unsigned NOT NULL AUTO_INCREMENT,
  `cid` smallint(5) unsigned NOT NULL DEFAULT '0' COMMENT '分类ID',
  `title` varchar(255) NOT NULL DEFAULT '' COMMENT '标题',
  `image` varchar(255) DEFAULT '' COMMENT '图片',
  `author` varchar(255) DEFAULT '' COMMENT '作者',
  `summary` text COMMENT '简介',
  `photo` text COMMENT '相册',
  `content` longtext COMMENT '内容',
  `view` int(11) unsigned NOT NULL DEFAULT '0' COMMENT '点击量',
  `is_top` tinyint(1) NOT NULL DEFAULT '0' COMMENT '是否置顶',
  `is_hot` tinyint(1) NOT NULL DEFAULT '0' COMMENT '是否推荐',
  `status` tinyint(1) NOT NULL DEFAULT '1' COMMENT '状态',
  `sort_order` int(11) NOT NULL DEFAULT '100' COMMENT '排序',
  `keywords` varchar(255) DEFAULT '' COMMENT '关键字',
  `description` varchar(255) DEFAULT '' COMMENT '描述',
  `create_time` int(10) unsigned NOT NULL DEFAULT '0' COMMENT '创建时间',
  `update_time` int(10) unsigned NOT NULL DEFAULT '0' COMMENT '更新时间',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=17 DEFAULT CHARSET=utf8 ROW_FORMAT=COMPACT COMMENT='文章';

-- ----------------------------
-- Records of ob_article
-- ----------------------------
INSERT INTO `ob_article` VALUES ('1', '1', '初识模块化开发工具', '', '', '初识模块化开发工具：git 是分布式代码管理工具，管理代码的npm 是包管理工具，管理插件、工具啊，是个转换器，他是哪来的了，他是伴随node下载下来的，版本也是伴随node变化；node 是个后台的环境；首先安装node，然后用命令安装browserify：npm install -g brows ...', '', '', '0', '0', '0', '1', '100', '', '', '1541840580', '1541840580');
INSERT INTO `ob_article` VALUES ('2', '1', 'window.open方法被浏览器拦截的处理方式', '', '', '问题现象 当我们在一个 ajax 回调中执行 window.open 方法时，新页面会被浏览器拦截。 原因 在 Chrome 的安全机制里，非用户直接触发的 window.open 方法，是会被拦截的。 处理 $(\'#jump-btn\').on(\'click\', function () { // 打 ...', '', '', '0', '0', '0', '1', '100', '', '', '1541840601', '1541840601');
INSERT INTO `ob_article` VALUES ('3', '1', '理解JavaScript中的柯里化', '', '', '函数式编程是一种编程风格，这种编程风格就是试图将传递函数作为参数（即将作为回调函数）和返回一个函数，但没有函数副作用（函数副作用即会改变程序的状态）。 有很多语言采用这种编程风格，其中包括JavaScript、Haskell、Clojure、Erlang和Scala等一些很流行的编程语言。 ...', '', '', '0', '0', '0', '1', '100', '', '', '1541840625', '1541840625');
INSERT INTO `ob_article` VALUES ('4', '1', '小程序开发框架', '', '', '小程序开发框架，支持百度小程序、微信小程序、支付宝小程序 ...', '', '', '0', '0', '0', '1', '100', '', '', '1541840645', '1541840645');
INSERT INTO `ob_article` VALUES ('5', '1', 'JavaScript异步、事件循环与消息队列、微任务与宏任务', '', '', '关于JavaScript异步、事件循环与消息队、微任务与宏任务的总结 ...', '', '', '0', '0', '0', '1', '100', '', '', '1541840663', '1541840663');
INSERT INTO `ob_article` VALUES ('6', '1', '关于Array中的srot()方法和compare()方法', '', '', 'Array中的srot()方法 sort()方法是用来重排序的方法。在默认情况下，sort()方法按升序排列数组项 即最小的值位于最前面，最大的值排在最后面。 我们看看官方是怎么说的： arrayObj.srot(sortFunction) 参数 arrayObj 必选项。任意Array对象 sor ...', '', '', '0', '0', '0', '1', '100', '', '', '1541840681', '1541840681');
INSERT INTO `ob_article` VALUES ('7', '1', '使用Arcgis进行画面(线)并计算大小(长度)', '', '', '在使用Arcgis API for JavaScript进行做地图开发的过程中，在地图进行画线、画面是经常使用的功能。本文主要介绍这一功能。 本文适用Arcgis API版本：Arcgis API for JS 4.x以上。 方案分析： 方案分析： 首先要初始化&nbsp;map&nbsp;和&nbsp;mapView（2D m ...', '', '', '0', '0', '0', '1', '100', '', '', '1541840700', '1541840700');
INSERT INTO `ob_article` VALUES ('8', '1', 'sass使用中出现的问题', '', '', '问题一：ruby按照官方文档安装后更换gem源时，报错Error fetching https://gems.ruby-china.org/: bad response Not Found 404 (https://gems.ruby-china.org/specs.4.8.gz)；不知就里，在网上 ...', '', '', '0', '0', '0', '1', '100', '', '', '1541840718', '1541840718');
INSERT INTO `ob_article` VALUES ('9', '1', 'xss 跨站脚本攻击', '', '', '攻击原理 XSS（cross-site scripting跨域脚本攻击）攻击是最常见的Web攻击，它允许恶意web用户将代码植入到提供给其它用户使用的页面中。 xss 与其他的攻击方式相比缺点明显，如下： 1、耗时间 2、有一定几率不成功 3、没有相应的软件来完成自动化攻击 4、前期需要基本的htm ...', '', '', '0', '0', '0', '1', '100', '', '', '1541840736', '1541840736');
INSERT INTO `ob_article` VALUES ('10', '2', 'JSON解析', '', '', '以下为网络上搜集的关于JSON的资料，整合为随笔记录，供以后回顾。 百度：https://baike.baidu.com/item/JSON/2462549?fr=aladdin 一. 数据格式 1.数组方式： [ {\"key1\": \"value1\"}, {\"key2\": \"value2\"} ] 2 ...', '', '', '0', '0', '0', '1', '100', '', '', '1541840756', '1541840756');
INSERT INTO `ob_article` VALUES ('11', '1', 'visual studio2017 创建Vue项目', '', '', '1:打开Visual studio 2017后 按图片操作新建项目 也可以使用快捷键Ctrl+Shift+N 进入创建项目页面 2:选择JavaScript 里的Node.js创建对应的Vue项目 如果没有javaScript对应的node.js选项 打开最下面的visual studio安装程序  ...', '', '', '0', '0', '0', '1', '100', '', '', '1541840778', '1541840778');
INSERT INTO `ob_article` VALUES ('12', '1', 'javascript  数组 常用方法', '', '', '前言 学学忘忘 闲来做个笔记 整理下数组常用方法。 Array 数组常用方法 创建数组的基本方式有两种 1.第一种是使用Array构造函数， var arr = new Array(); 使用构造函数方式的话&nbsp;var arr = new Array(20),则表示创建了一个lenght值为20的数组 ...', '', '', '0', '0', '0', '1', '100', '', '', '1541840793', '1541840793');
INSERT INTO `ob_article` VALUES ('13', '1', '学了两天 react，乱讲一下学习思路，顺便弄了一个脚手架', '', '', '之前一直用 vue 做一些小项目，最近接触了一个项目是用 react 做前端，虽然本身是做后端开发的，但是前端还是要了解一点的。 现在的项目基本上都是前后端分离的，后端就先不提了。前端的框架也是层出不穷，使用最多的就是 angular、vue、react 。angular 是前几年用的比较多，最近好 ...', '', '', '0', '0', '0', '1', '100', '', '', '1541840808', '1541840808');
INSERT INTO `ob_article` VALUES ('14', '2', 'PHP 中的CURL 模拟表单的post提交', '', '', '废话不多说啦，直接上代码： 这里需要注意的是： 要想以 x-www-form-urlencoded 方式发送，最关键是发送的数据格式。 方式from-data试发送的数据用的是array格式，而方式为 x-www-form-urlencoded 时需要用key=value&key=value的格式发 ...', '', '', '0', '0', '0', '1', '100', '', '', '1541840846', '1541840846');
INSERT INTO `ob_article` VALUES ('15', '2', ' PHP解决跨域问题', '', '', '在做项目的过程中经常需要跨域访问。这里主要介绍一下 PHP 中怎么解决跨域问题。 1、允许所有域名访问 2、允许单个域名访问 3、允许多个域名访问 在实际项目中最好指定能跨域访问的域名，增加安全性。可以写在一个公共类里面，封装一个方法调用。 ...', '', '', '0', '0', '0', '1', '100', '', '', '1541840863', '1541840863');
INSERT INTO `ob_article` VALUES ('16', '1', '接口技术的实现:规范用户类的成员与类型', '', '', '', '', '', '0', '0', '0', '1', '100', '', '', '1541840882', '1546139921');

-- ----------------------------
-- Table structure for ob_auth_group
-- ----------------------------
DROP TABLE IF EXISTS `ob_auth_group`;
CREATE TABLE `ob_auth_group` (
  `id` smallint(5) unsigned NOT NULL AUTO_INCREMENT,
  `name` varchar(64) NOT NULL DEFAULT '',
  `description` varchar(255) NOT NULL DEFAULT '',
  `status` tinyint(1) NOT NULL DEFAULT '1',
  `rules` text NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=4 DEFAULT CHARSET=utf8 COMMENT='权限组';

-- ----------------------------
-- Records of ob_auth_group
-- ----------------------------
INSERT INTO `ob_auth_group` VALUES ('3', '超级管理员', '', '1', '6,44,43,1,8,34,35,36,7,2,9,28,29,30,10,54,3,11,25,26,27,46,4,12,14,13,45,55,5,16,17,15,18');

-- ----------------------------
-- Table structure for ob_auth_group_access
-- ----------------------------
DROP TABLE IF EXISTS `ob_auth_group_access`;
CREATE TABLE `ob_auth_group_access` (
  `uid` smallint(5) unsigned NOT NULL DEFAULT '0',
  `group_id` smallint(5) unsigned NOT NULL DEFAULT '0'
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COMMENT='权限授权';

-- ----------------------------
-- Records of ob_auth_group_access
-- ----------------------------
INSERT INTO `ob_auth_group_access` VALUES ('1', '1');
INSERT INTO `ob_auth_group_access` VALUES ('2', '1');

-- ----------------------------
-- Table structure for ob_auth_rule
-- ----------------------------
DROP TABLE IF EXISTS `ob_auth_rule`;
CREATE TABLE `ob_auth_rule` (
  `id` int(11) unsigned NOT NULL AUTO_INCREMENT,
  `pid` int(11) unsigned NOT NULL DEFAULT '0',
  `name` varchar(255) NOT NULL DEFAULT '',
  `url` varchar(255) NOT NULL DEFAULT '',
  `icon` varchar(64) NOT NULL DEFAULT '',
  `sort_order` int(11) NOT NULL DEFAULT '0' COMMENT '排序',
  `type` char(4) NOT NULL DEFAULT '' COMMENT 'nav,auth',
  `index` tinyint(1) NOT NULL DEFAULT '0' COMMENT '快捷导航',
  `status` tinyint(1) NOT NULL DEFAULT '1',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=79 DEFAULT CHARSET=utf8 COMMENT='权限规则';

-- ----------------------------
-- Records of ob_auth_rule
-- ----------------------------
INSERT INTO `ob_auth_rule` VALUES ('1', '0', '医护信息', '', '', '2', 'auth', '0', '1');
INSERT INTO `ob_auth_rule` VALUES ('2', '0', '用户', '', '', '3', 'nav', '0', '1');
INSERT INTO `ob_auth_rule` VALUES ('5', '0', '权限', '', '', '6', 'nav', '0', '1');
INSERT INTO `ob_auth_rule` VALUES ('6', '0', '控制台', 'admin/index/index', '', '1', 'auth', '0', '1');
INSERT INTO `ob_auth_rule` VALUES ('7', '1', '医护信息增加', 'admin/Category/index', '', '2', 'nav', '1', '1');
INSERT INTO `ob_auth_rule` VALUES ('8', '1', '医护列表', 'admin/article/index', '', '1', 'nav', '1', '1');
INSERT INTO `ob_auth_rule` VALUES ('9', '2', '用户管理', 'admin/user/index', '', '0', 'nav', '1', '1');
INSERT INTO `ob_auth_rule` VALUES ('10', '2', '会员日志', 'admin/user/log', '', '0', 'auth', '1', '1');
INSERT INTO `ob_auth_rule` VALUES ('15', '5', '权限规则', 'admin/auth/rule', '', '3', 'nav', '0', '1');
INSERT INTO `ob_auth_rule` VALUES ('16', '5', '管理员', 'admin/admin/index', '', '0', 'nav', '0', '1');
INSERT INTO `ob_auth_rule` VALUES ('17', '5', '权限组', 'admin/auth/group', '', '1', 'nav', '0', '1');
INSERT INTO `ob_auth_rule` VALUES ('18', '5', '管理员日志', 'admin/admin/log', '', '5', 'nav', '0', '1');
INSERT INTO `ob_auth_rule` VALUES ('43', '6', '修改密码', 'admin/index/editPassword', '', '2', 'auth', '0', '1');
INSERT INTO `ob_auth_rule` VALUES ('44', '6', '清除缓存', 'admin/index/clear', '', '1', 'auth', '0', '1');
INSERT INTO `ob_auth_rule` VALUES ('47', '46', '还原', 'admin/database/import', '', '0', 'auth', '0', '1');
INSERT INTO `ob_auth_rule` VALUES ('48', '46', '备份', 'admin/database/backup', '', '0', 'auth', '0', '1');
INSERT INTO `ob_auth_rule` VALUES ('49', '46', '优化', 'admin/database/optimize', '', '0', 'auth', '0', '1');
INSERT INTO `ob_auth_rule` VALUES ('50', '46', '修复', 'admin/database/repair', '', '0', 'auth', '0', '1');
INSERT INTO `ob_auth_rule` VALUES ('51', '46', '下载', 'admin/database/download', '', '0', 'auth', '0', '1');
INSERT INTO `ob_auth_rule` VALUES ('52', '46', '删除', 'admin/database/del', '', '0', 'auth', '0', '1');
INSERT INTO `ob_auth_rule` VALUES ('53', '18', '一键清空', 'admin/admin/truncate', '', '0', 'auth', '0', '1');
INSERT INTO `ob_auth_rule` VALUES ('54', '10', '一键清空', 'admin/user/truncate', '', '0', 'auth', '0', '1');
INSERT INTO `ob_auth_rule` VALUES ('56', '0', '药库', 'admin/Song/index', '', '0', 'nav', '0', '1');
INSERT INTO `ob_auth_rule` VALUES ('57', '56', '增加药物', 'admin/Song/add', '', '0', 'auth', '0', '1');
INSERT INTO `ob_auth_rule` VALUES ('58', '0', '机构', 'admin/Play/index', '', '0', 'nav', '0', '1');
INSERT INTO `ob_auth_rule` VALUES ('59', '58', '增加机构', 'admin/Play/add', '', '0', 'auth', '0', '1');
INSERT INTO `ob_auth_rule` VALUES ('60', '56', '药物管理', 'admin/Song/index', '', '0', 'nav', '0', '1');
INSERT INTO `ob_auth_rule` VALUES ('61', '58', '机构列表', 'admin/Play/index', '', '0', 'nav', '0', '1');
INSERT INTO `ob_auth_rule` VALUES ('63', '0', '取药订单', 'admin/Order/index', '', '0', 'nav', '0', '1');
INSERT INTO `ob_auth_rule` VALUES ('64', '63', '取药列表', 'admin/Order/index', '', '0', 'nav', '0', '1');
INSERT INTO `ob_auth_rule` VALUES ('67', '0', '患者', 'admin/Sick/index', '', '0', 'nav', '0', '1');
INSERT INTO `ob_auth_rule` VALUES ('68', '67', '患者增加', 'admin/Sick/add', '', '0', 'nav', '0', '1');
INSERT INTO `ob_auth_rule` VALUES ('70', '67', '患者列表', 'admin/Sick/index', '', '0', 'nav', '0', '1');
INSERT INTO `ob_auth_rule` VALUES ('71', '0', '医生工作台', 'admin/Coctor/index', '', '0', 'nav', '0', '1');
INSERT INTO `ob_auth_rule` VALUES ('72', '71', '住出院信息', 'admin/Coctor/out', '', '0', 'nav', '0', '1');
INSERT INTO `ob_auth_rule` VALUES ('73', '71', '住出院增加', 'admin/Coctor/add', '', '0', 'nav', '0', '1');
INSERT INTO `ob_auth_rule` VALUES ('74', '71', '慢病评估', 'admin/Coctor/ass', '', '0', 'nav', '0', '1');
INSERT INTO `ob_auth_rule` VALUES ('75', '71', '慢病评论', 'admin/Coctor/ins', '', '0', 'nav', '0', '1');
INSERT INTO `ob_auth_rule` VALUES ('77', '67', '增加疗程', 'admin/Sick/adds', '', '0', 'nav', '0', '1');
INSERT INTO `ob_auth_rule` VALUES ('78', '67', '用户反馈', 'admin/Sick/feedback', '', '0', 'nav', '0', '1');

-- ----------------------------
-- Table structure for ob_category
-- ----------------------------
DROP TABLE IF EXISTS `ob_category`;
CREATE TABLE `ob_category` (
  `id` smallint(5) unsigned NOT NULL AUTO_INCREMENT COMMENT 'ID',
  `pid` smallint(5) unsigned NOT NULL DEFAULT '0' COMMENT '上级分类ID',
  `category_name` varchar(255) NOT NULL DEFAULT '' COMMENT '标题',
  `sort_order` int(11) NOT NULL DEFAULT '100' COMMENT '排序',
  `keywords` varchar(255) DEFAULT '' COMMENT '关键字',
  `description` varchar(255) DEFAULT '' COMMENT '描述',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=5 DEFAULT CHARSET=utf8 ROW_FORMAT=COMPACT COMMENT='分类';

-- ----------------------------
-- Records of ob_category
-- ----------------------------
INSERT INTO `ob_category` VALUES ('1', '0', '前端开发', '100', '', '');
INSERT INTO `ob_category` VALUES ('2', '0', '后端开发', '100', '', '');
INSERT INTO `ob_category` VALUES ('3', '0', '移动互联', '100', '', '');
INSERT INTO `ob_category` VALUES ('4', '0', '人工智能', '100', '', '');

-- ----------------------------
-- Table structure for ob_config
-- ----------------------------
DROP TABLE IF EXISTS `ob_config`;
CREATE TABLE `ob_config` (
  `id` int(11) unsigned NOT NULL AUTO_INCREMENT,
  `group` varchar(32) NOT NULL DEFAULT '' COMMENT '配置分组',
  `title` varchar(255) NOT NULL DEFAULT '' COMMENT '配置标题',
  `name` varchar(255) NOT NULL DEFAULT '' COMMENT '配置标识',
  `type` varchar(32) NOT NULL DEFAULT '' COMMENT '配置类型',
  `value` text NOT NULL COMMENT '默认值',
  `options` text COMMENT '选项值',
  `sort_order` int(11) NOT NULL DEFAULT '100' COMMENT '排序',
  `status` tinyint(1) NOT NULL DEFAULT '1' COMMENT '状态',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=13 DEFAULT CHARSET=utf8 ROW_FORMAT=COMPACT COMMENT='配置';

-- ----------------------------
-- Records of ob_config
-- ----------------------------
INSERT INTO `ob_config` VALUES ('1', 'website', '网站logo', 'logo', 'image', '/upload/image/20200411/83798ea1a2d0ab7cdcd777f54f5945b4.jpg', '', '100', '1');
INSERT INTO `ob_config` VALUES ('2', 'website', '网站名称', 'site_name', 'input', 'OpenBMS', '', '100', '1');
INSERT INTO `ob_config` VALUES ('3', 'website', '网站标题', 'site_title', 'input', 'OpenBMS 开源后台管理系统', '', '100', '1');
INSERT INTO `ob_config` VALUES ('4', 'website', '网站关键字', 'site_keywords', 'input', 'OpenBMS,开源后台管理系统', '', '100', '1');
INSERT INTO `ob_config` VALUES ('5', 'website', '网站描述', 'site_description', 'textarea', 'OpenBMS,开源后台管理系统,Open Background Management System 开源后台管理系统', '', '100', '1');
INSERT INTO `ob_config` VALUES ('6', 'website', '版权信息', 'site_copyright', 'input', '', '', '100', '1');
INSERT INTO `ob_config` VALUES ('7', 'website', 'ICP备案号', 'site_icp', 'input', '', '', '100', '1');
INSERT INTO `ob_config` VALUES ('8', 'website', '统计代码', 'site_code', 'textarea', '', '', '100', '1');
INSERT INTO `ob_config` VALUES ('9', 'contact', '公司名称', 'company', 'input', '', '', '100', '1');
INSERT INTO `ob_config` VALUES ('10', 'contact', '公司地址', 'address', 'input', '', '', '100', '1');
INSERT INTO `ob_config` VALUES ('11', 'contact', '联系电话', 'tel', 'input', '', '', '100', '1');
INSERT INTO `ob_config` VALUES ('12', 'contact', '联系邮箱', 'email', 'input', '', '', '100', '1');

-- ----------------------------
-- Table structure for ob_discuss
-- ----------------------------
DROP TABLE IF EXISTS `ob_discuss`;
CREATE TABLE `ob_discuss` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `user_id` int(11) DEFAULT NULL COMMENT '用户id',
  `p_user_id` int(11) DEFAULT NULL COMMENT '谁评论的id',
  `content` varchar(255) DEFAULT NULL COMMENT '评论内容',
  `play_id` int(11) DEFAULT NULL COMMENT '那个视频的评论',
  PRIMARY KEY (`id`)
) ENGINE=MyISAM AUTO_INCREMENT=7 DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of ob_discuss
-- ----------------------------
INSERT INTO `ob_discuss` VALUES ('1', '3', null, '哈哈哈哈', null);
INSERT INTO `ob_discuss` VALUES ('2', '3', null, '哈哈哈哈', '4');
INSERT INTO `ob_discuss` VALUES ('3', '5', null, '爱了爱了', '4');
INSERT INTO `ob_discuss` VALUES ('4', '3', null, '张杰挨', '1');
INSERT INTO `ob_discuss` VALUES ('5', '3', null, '我们会深情拥抱，我们会一直到老\n\n只要能够爱着你就好，如果这就是爱情我都知道\n\n只要真心贴真心就能遇到，慢慢的看着你皱纹爬上眼角\n\n我都不觉得无聊，如果这就是爱情里的长跑\n\n磕磕绊绊其实也难免不了，简单的生活平淡也是种调料', '2');
INSERT INTO `ob_discuss` VALUES ('6', '3', null, '我们会深情拥抱，我们会一直到老\n\n只要能够爱着你就好，如果这就是爱情我都知道\n\n只要真心贴真心就能遇到，慢慢的看着你皱纹爬上眼角\n\n我都不觉得无聊，如果这就是爱情里的长跑\n\n磕磕绊绊其实也难免不了，简单的生活平淡也是种调料', '2');

-- ----------------------------
-- Table structure for ob_nav
-- ----------------------------
DROP TABLE IF EXISTS `ob_nav`;
CREATE TABLE `ob_nav` (
  `id` int(11) NOT NULL AUTO_INCREMENT COMMENT '自增id',
  `status` int(11) DEFAULT NULL COMMENT '0医生,1护士,2,患者',
  `nav_id` varchar(255) DEFAULT NULL COMMENT '导航id',
  PRIMARY KEY (`id`)
) ENGINE=MyISAM AUTO_INCREMENT=4 DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of ob_nav
-- ----------------------------
INSERT INTO `ob_nav` VALUES ('1', '0', '6,44,43,1,7,8,58,59,61,5,15,17,18');
INSERT INTO `ob_nav` VALUES ('2', '1', '56,57,60,67,68,70,71,72,73,74,75,77');
INSERT INTO `ob_nav` VALUES ('3', '2', '70,63,78,67');

-- ----------------------------
-- Table structure for ob_order
-- ----------------------------
DROP TABLE IF EXISTS `ob_order`;
CREATE TABLE `ob_order` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `user_id` int(11) DEFAULT NULL COMMENT '用户id',
  `song_id` int(11) DEFAULT NULL COMMENT '药物id',
  `song_number` int(11) DEFAULT NULL COMMENT '药的数量',
  `time` varchar(255) DEFAULT NULL COMMENT '住院时间',
  `order` bigint(50) DEFAULT NULL COMMENT '订单',
  `order_status` varchar(255) DEFAULT '0' COMMENT '住出院信息/0为住院/1为出院',
  PRIMARY KEY (`id`)
) ENGINE=MyISAM AUTO_INCREMENT=10 DEFAULT CHARSET=utf8 COMMENT='订单表';

-- ----------------------------
-- Records of ob_order
-- ----------------------------
INSERT INTO `ob_order` VALUES ('4', '6', '30', '20', '2020-04-16 08:34:00', '84775607720526', '0');
INSERT INTO `ob_order` VALUES ('3', '5', '29', '50', '2020-04-16 08:31:21', '13807601335063', '0');
INSERT INTO `ob_order` VALUES ('5', '7', '31', '60', '2020-04-16 08:36:01', '19441394164120', '0');
INSERT INTO `ob_order` VALUES ('6', '8', '30', '30', '2020-04-16 08:42:14', '77295943274640', '0');
INSERT INTO `ob_order` VALUES ('7', '9', '33', '20', '2020-04-16 09:01:37', '26278936992972', '0');
INSERT INTO `ob_order` VALUES ('9', '8', '30', '3', '2020-04-16 11:17:30', '77295943274640', '0');

-- ----------------------------
-- Table structure for ob_play
-- ----------------------------
DROP TABLE IF EXISTS `ob_play`;
CREATE TABLE `ob_play` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `play_name` varchar(255) DEFAULT NULL COMMENT '药名',
  `song_id` int(11) DEFAULT NULL COMMENT '选择机构/机构的id',
  `particular` text COMMENT '按时吃药',
  PRIMARY KEY (`id`)
) ENGINE=MyISAM AUTO_INCREMENT=18 DEFAULT CHARSET=utf8 COMMENT='药物表';

-- ----------------------------
-- Records of ob_play
-- ----------------------------
INSERT INTO `ob_play` VALUES ('13', '前天性智障', '29', '智力障碍（MR）又称智力缺陷，一般指的是由于大脑受到器质性的损害或是由于脑发育不完全从而造成认识活动的持续障碍以及整个心理活动的障碍。 由于遗传变异、感...');
INSERT INTO `ob_play` VALUES ('14', '心脑血冠病药物', '32', '简介：心脑血管疾病是心脏血管和脑血管疾病的统称，泛指由于高脂血症、血液黏稠、动脉粥样硬化、高血压等所导致的心脏、大脑及全身组织发生的缺血性或出血性疾病。心脑血管疾病是一种严重威胁人类，特别是50岁以上中老年人健康的常见病，具有高患病率、高致残率和高死亡率的特点，即使应用目前最先进、完善的...');
INSERT INTO `ob_play` VALUES ('15', '糖尿病', '31', '糖尿病是一组以高血糖为特征的代谢性疾病。高血糖则是由于胰岛素分泌缺陷或其生物作用受损，或两者兼有引起。糖尿病时长期存在的高血糖，导致各种组织，特别是眼、肾、心脏、血管、神经的慢性损害、功能障碍。');
INSERT INTO `ob_play` VALUES ('16', '哈哈哈沙雕', '30', '\r\n2019年2月15日 - 高中的时候发现大腿内侧有两片淡紫色,像花纹一样,以为得了皮肤病,急着跑去医院看皮肤科。 医生:亲亲,这边的建议是冬天热水袋不要夹在两腿间呢。 天*** 室友...');

-- ----------------------------
-- Table structure for ob_song
-- ----------------------------
DROP TABLE IF EXISTS `ob_song`;
CREATE TABLE `ob_song` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `number` bigint(50) DEFAULT '999999' COMMENT '药的数量',
  `song_name` varchar(255) DEFAULT NULL COMMENT '机构名字',
  `introduce` varchar(255) DEFAULT NULL COMMENT '机构的介绍',
  PRIMARY KEY (`id`)
) ENGINE=MyISAM AUTO_INCREMENT=34 DEFAULT CHARSET=utf8 COMMENT='机制表';

-- ----------------------------
-- Records of ob_song
-- ----------------------------
INSERT INTO `ob_song` VALUES ('29', '99977', '智障病药物', '早上：\r\n8:00一次一片\r\n中午：\r\n12:00一次二片\r\n晚上\r\n18:00一次三片');
INSERT INTO `ob_song` VALUES ('30', '99959', '哈哈哈药物', '早上：\r\n8:00一次一片\r\n中午：\r\n12:00一次二片\r\n晚上\r\n18:00一次三片');
INSERT INTO `ob_song` VALUES ('31', '99999', '糖尿病药物', '早上：\r\n8:00一次一片\r\n中午：\r\n12:00一次二片\r\n晚上\r\n18:00一次三片');
INSERT INTO `ob_song` VALUES ('32', '99999', '心脑血管病药物', '早上：\r\n8:00一次一片\r\n中午：\r\n12:00一次二片\r\n晚上\r\n18:00一次三片');
INSERT INTO `ob_song` VALUES ('33', '99979', '心脏病药物', '早上：\r\n8:00一次一片\r\n中午：\r\n12:00一次二片\r\n晚上\r\n18:00一次三片');

-- ----------------------------
-- Table structure for ob_survey
-- ----------------------------
DROP TABLE IF EXISTS `ob_survey`;
CREATE TABLE `ob_survey` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `user_id` int(11) DEFAULT NULL COMMENT '用户id',
  `user_name` varchar(255) DEFAULT NULL COMMENT '用户名',
  `content` text COMMENT '回馈内容',
  PRIMARY KEY (`id`)
) ENGINE=MyISAM AUTO_INCREMENT=2 DEFAULT CHARSET=utf8 COMMENT='反馈信息表';

-- ----------------------------
-- Records of ob_survey
-- ----------------------------
INSERT INTO `ob_survey` VALUES ('1', '1', 'ceshi', '6666666666666');

-- ----------------------------
-- Table structure for ob_system
-- ----------------------------
DROP TABLE IF EXISTS `ob_system`;
CREATE TABLE `ob_system` (
  `name` varchar(255) NOT NULL DEFAULT '',
  `value` text NOT NULL,
  PRIMARY KEY (`name`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 ROW_FORMAT=COMPACT COMMENT='系统配置';

-- ----------------------------
-- Records of ob_system
-- ----------------------------
INSERT INTO `ob_system` VALUES ('administrator', 'admin');
INSERT INTO `ob_system` VALUES ('colse_explain', '');
INSERT INTO `ob_system` VALUES ('default_editor', 'ueditor');
INSERT INTO `ob_system` VALUES ('email_server', 'a:7:{s:4:\"host\";s:0:\"\";s:6:\"secure\";s:3:\"tls\";s:4:\"port\";s:0:\"\";s:8:\"username\";s:0:\"\";s:8:\"password\";s:0:\"\";s:8:\"fromname\";s:0:\"\";s:5:\"email\";s:0:\"\";}');
INSERT INTO `ob_system` VALUES ('page_number', '10');
INSERT INTO `ob_system` VALUES ('upload_image', 'a:15:{s:8:\"is_thumb\";s:1:\"1\";s:9:\"max_width\";s:4:\"1200\";s:10:\"max_height\";s:4:\"3600\";s:8:\"is_water\";s:1:\"0\";s:12:\"water_source\";s:0:\"\";s:12:\"water_locate\";s:1:\"1\";s:11:\"water_alpha\";s:0:\"\";s:7:\"is_text\";s:1:\"0\";s:4:\"text\";s:0:\"\";s:9:\"text_font\";s:0:\"\";s:11:\"text_locate\";s:1:\"1\";s:9:\"text_size\";s:0:\"\";s:10:\"text_color\";s:0:\"\";s:11:\"text_offset\";s:0:\"\";s:10:\"text_angle\";s:0:\"\";}');
INSERT INTO `ob_system` VALUES ('website_status', '1');

-- ----------------------------
-- Table structure for ob_user_log
-- ----------------------------
DROP TABLE IF EXISTS `ob_user_log`;
CREATE TABLE `ob_user_log` (
  `id` int(11) unsigned NOT NULL AUTO_INCREMENT,
  `user_id` smallint(5) unsigned NOT NULL DEFAULT '0' COMMENT '管理员id',
  `username` varchar(32) NOT NULL DEFAULT '' COMMENT '管理员用户名',
  `useragent` varchar(255) NOT NULL DEFAULT '' COMMENT 'User-Agent',
  `ip` varchar(16) NOT NULL DEFAULT '' COMMENT 'ip地址',
  `url` varchar(255) NOT NULL DEFAULT '' COMMENT '请求链接',
  `method` varchar(32) NOT NULL DEFAULT '' COMMENT '请求类型',
  `type` varchar(32) NOT NULL DEFAULT '' COMMENT '资源类型',
  `param` text NOT NULL COMMENT '请求参数',
  `remark` varchar(255) NOT NULL DEFAULT '' COMMENT '日志备注',
  `create_time` int(10) unsigned NOT NULL DEFAULT '0' COMMENT '创建时间',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 ROW_FORMAT=COMPACT COMMENT='会员日志';

-- ----------------------------
-- Records of ob_user_log
-- ----------------------------
