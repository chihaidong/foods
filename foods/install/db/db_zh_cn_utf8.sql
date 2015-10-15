# phpMyAdmin MySQL-Dump
# version 2.3.0
# http://phpwizard.net/phpMyAdmin/
# http://www.phpmyadmin.net/ (download page)
#
# 主机: localhost
# 建立日期: Nov 21, 2006 at 10:39 PM
# 伺服机版本: 4.01.14
# PHP 版本: 4.3.8
# 数据库 : `efood`
# --------------------------------------------------------

#
# 数据表的结构 `efood_admin`
#

CREATE TABLE efood_admin (
  id int(6) NOT NULL auto_increment,
  `user` varchar(30) NOT NULL default '',
  `password` varchar(50) NOT NULL default '',
  name varchar(50) NOT NULL default '',
  moveable int(1) default NULL,
  PRIMARY KEY  (id)
) ENGINE=MyISAM DEFAULT CHARSET=gbk;

#
# 导出下面的数据库内容 `efood_admin`
#

INSERT INTO efood_admin VALUES (3, 'admin', '21232f297a57a5a743894a0e4a801fc3', 'SystemMaster', 0);
# --------------------------------------------------------

#
# 数据表的结构 `efood_admin_auth`
#

CREATE TABLE efood_admin_auth (
  id int(6) NOT NULL auto_increment,
  auth char(20) default NULL,
  name char(50) default NULL,
  intro char(255) default NULL,
  xuhao int(10) default NULL,
  pid int(10) default NULL,
  pname char(20) default NULL,
  PRIMARY KEY  (id)
) ENGINE=MyISAM DEFAULT CHARSET=gbk;

#
# 导出下面的数据库内容 `efood_admin_auth`
#

INSERT INTO efood_admin_auth VALUES (1, '1', '系统参数设置', '', 1, 0, '系统设置');
INSERT INTO efood_admin_auth VALUES (2, '2', '修改管理密码', '', 2, 0, '系统设置');
INSERT INTO efood_admin_auth VALUES (3, '3', '管理帐户设置', '', 3, 0, '系统设置');
INSERT INTO efood_admin_auth VALUES (4, '4', '会员类型设置', '', 4, 0, '系统设置');
INSERT INTO efood_admin_auth VALUES (5, '5', '其他系统设置', '', 5, 0, '系统设置');
INSERT INTO efood_admin_auth VALUES (6, '11', '网站栏目设置', '', 1, 1, '网站设置');
INSERT INTO efood_admin_auth VALUES (7, '12', '网站栏目删除', '', 2, 1, '网站设置');
INSERT INTO efood_admin_auth VALUES (8, '13', '网站页面设置', '', 3, 1, '网站设置');
INSERT INTO efood_admin_auth VALUES (9, '14', '界面风格设置', '', 4, 1, '网站设置');
INSERT INTO efood_admin_auth VALUES (10, '15', '自定表单设置', '', 5, 1, '网站设置');
INSERT INTO efood_admin_auth VALUES (11, '16', '社区分类设置', '', 6, 1, '网站设置');
INSERT INTO efood_admin_auth VALUES (12, '17', '网站专题设置', '', 7, 1, '网站设置');
INSERT INTO efood_admin_auth VALUES (13, '21', '文章频道管理', '', 1, 2, '内容管理');
INSERT INTO efood_admin_auth VALUES (14, '22', '图文频道管理', '', 2, 2, '内容管理');
INSERT INTO efood_admin_auth VALUES (15, '23', '下载频道管理', '', 3, 2, '内容管理');
INSERT INTO efood_admin_auth VALUES (16, '24', '网站标志管理', '', 4, 2, '内容管理');
INSERT INTO efood_admin_auth VALUES (17, '25', '网站广告管理', '', 5, 2, '内容管理');
INSERT INTO efood_admin_auth VALUES (18, '51', '会员审核管理', '', 1, 5, '会员管理');
INSERT INTO efood_admin_auth VALUES (19, '52', '会员查询管理', '', 2, 5, '会员管理');
INSERT INTO efood_admin_auth VALUES (20, '53', '会员资料查询', '', 3, 5, '会员管理');
INSERT INTO efood_admin_auth VALUES (21, '54', '会员资料修改', '', 4, 5, '会员管理');
INSERT INTO efood_admin_auth VALUES (22, '55', '会员邮件发送', '', 5, 5, '会员管理');
INSERT INTO efood_admin_auth VALUES (23, '56', '会员权限管理', '', 6, 5, '会员管理');
INSERT INTO efood_admin_auth VALUES (24, '57', '会员公告管理', '', 7, 5, '会员管理');
INSERT INTO efood_admin_auth VALUES (25, '61', '反馈信息管理', '', 1, 6, '信息管理');
INSERT INTO efood_admin_auth VALUES (26, '62', '社区评论管理', '', 2, 6, '信息管理');
INSERT INTO efood_admin_auth VALUES (27, '71', '访问统计系统', '', 1, 7, '辅助工具');
INSERT INTO efood_admin_auth VALUES (28, '72', '网站数据备份', '', 2, 7, '辅助工具');
INSERT INTO efood_admin_auth VALUES (29, '73', '投票调查系统', '', 3, 7, '辅助工具');
INSERT INTO efood_admin_auth VALUES (30, '74', '友情链接系统', '', 4, 7, '辅助工具');
INSERT INTO efood_admin_auth VALUES (31, '75', '软件升级更新', '', 5, 7, '辅助工具');
INSERT INTO efood_admin_auth VALUES (32, '30', '餐饮分类管理', '', 0, 3, '餐饮管理');
INSERT INTO efood_admin_auth VALUES (33, '31', '餐馆名录管理', '', 1, 3, '餐饮管理');
INSERT INTO efood_admin_auth VALUES (34, '32', '餐饮信息管理', '', 2, 3, '餐饮管理');
INSERT INTO efood_admin_auth VALUES (35, '33', '餐馆菜式管理', '', 3, 3, '餐饮管理');
INSERT INTO efood_admin_auth VALUES (36, '34', '餐馆图片管理', '', 4, 3, '餐饮管理');
INSERT INTO efood_admin_auth VALUES (37, '37', '聚会活动管理', '', 5, 3, '餐饮管理');
INSERT INTO efood_admin_auth VALUES (38, '36', '批量删除权限', '', 6, 3, '餐饮管理');
INSERT INTO efood_admin_auth VALUES (39, '76', '邮件群发权限', '', 7, 7, '辅助工具');
INSERT INTO efood_admin_auth VALUES (40, '58', '模拟会员登录', '', 8, 5, '会员管理');
# --------------------------------------------------------

#
# 数据表的结构 `efood_admin_rights`
#

CREATE TABLE efood_admin_rights (
  id int(50) NOT NULL auto_increment,
  auth char(20) default NULL,
  `user` char(50) default NULL,
  PRIMARY KEY  (id)
) ENGINE=MyISAM DEFAULT CHARSET=gbk;

#
# 导出下面的数据库内容 `efood_admin_rights`
#

INSERT INTO efood_admin_rights VALUES (442, '58', 'admin');
INSERT INTO efood_admin_rights VALUES (441, '76', 'admin');
INSERT INTO efood_admin_rights VALUES (440, '36', 'admin');
INSERT INTO efood_admin_rights VALUES (439, '37', 'admin');
INSERT INTO efood_admin_rights VALUES (438, '34', 'admin');
INSERT INTO efood_admin_rights VALUES (437, '33', 'admin');
INSERT INTO efood_admin_rights VALUES (436, '32', 'admin');
INSERT INTO efood_admin_rights VALUES (435, '31', 'admin');
INSERT INTO efood_admin_rights VALUES (434, '30', 'admin');
INSERT INTO efood_admin_rights VALUES (433, '75', 'admin');
INSERT INTO efood_admin_rights VALUES (432, '74', 'admin');
INSERT INTO efood_admin_rights VALUES (431, '73', 'admin');
INSERT INTO efood_admin_rights VALUES (430, '72', 'admin');
INSERT INTO efood_admin_rights VALUES (429, '71', 'admin');
INSERT INTO efood_admin_rights VALUES (428, '62', 'admin');
INSERT INTO efood_admin_rights VALUES (427, '61', 'admin');
INSERT INTO efood_admin_rights VALUES (426, '57', 'admin');
INSERT INTO efood_admin_rights VALUES (425, '56', 'admin');
INSERT INTO efood_admin_rights VALUES (424, '55', 'admin');
INSERT INTO efood_admin_rights VALUES (423, '54', 'admin');
INSERT INTO efood_admin_rights VALUES (422, '53', 'admin');
INSERT INTO efood_admin_rights VALUES (421, '52', 'admin');
INSERT INTO efood_admin_rights VALUES (420, '51', 'admin');
INSERT INTO efood_admin_rights VALUES (419, '25', 'admin');
INSERT INTO efood_admin_rights VALUES (418, '24', 'admin');
INSERT INTO efood_admin_rights VALUES (417, '23', 'admin');
INSERT INTO efood_admin_rights VALUES (416, '22', 'admin');
INSERT INTO efood_admin_rights VALUES (415, '21', 'admin');
INSERT INTO efood_admin_rights VALUES (414, '17', 'admin');
INSERT INTO efood_admin_rights VALUES (413, '16', 'admin');
INSERT INTO efood_admin_rights VALUES (412, '15', 'admin');
INSERT INTO efood_admin_rights VALUES (411, '14', 'admin');
INSERT INTO efood_admin_rights VALUES (410, '13', 'admin');
INSERT INTO efood_admin_rights VALUES (409, '12', 'admin');
INSERT INTO efood_admin_rights VALUES (408, '11', 'admin');
INSERT INTO efood_admin_rights VALUES (407, '5', 'admin');
INSERT INTO efood_admin_rights VALUES (406, '4', 'admin');
INSERT INTO efood_admin_rights VALUES (405, '3', 'admin');
INSERT INTO efood_admin_rights VALUES (404, '2', 'admin');
INSERT INTO efood_admin_rights VALUES (403, '1', 'admin');
# --------------------------------------------------------

#
# 数据表的结构 `efood_advs_dl`
#

CREATE TABLE efood_advs_dl (
  id int(4) NOT NULL auto_increment,
  menuid int(12) NOT NULL default '0',
  title char(200) default NULL,
  width int(10) default NULL,
  height int(10) default NULL,
  `type` char(20) default NULL,
  src char(100) default NULL,
  url char(200) default NULL,
  target char(100) default NULL,
  border int(2) default NULL,
  hidden int(1) default NULL,
  toppadding int(20) default NULL,
  sidepadding int(20) default NULL,
  PRIMARY KEY  (id)
) ENGINE=MyISAM DEFAULT CHARSET=gbk;

#
# 导出下面的数据库内容 `efood_advs_dl`
#

INSERT INTO efood_advs_dl VALUES (1, 1, '', 75, 180, 'gif', 'images/duilian.gif', 'http://', '_self', 0, 1, 5, 5);
# --------------------------------------------------------

#
# 数据表的结构 `efood_advs_float`
#

CREATE TABLE efood_advs_float (
  id int(4) NOT NULL auto_increment,
  menuid int(12) NOT NULL default '0',
  title varchar(200) default NULL,
  float_advs_type varchar(10) NOT NULL default '',
  hidden int(1) NOT NULL default '0',
  float_width int(3) NOT NULL default '0',
  float_height int(3) NOT NULL default '0',
  float_url varchar(255) NOT NULL default '',
  float_target varchar(40) NOT NULL default '',
  src varchar(255) NOT NULL default '',
  float_speed int(4) NOT NULL default '0',
  border int(3) default NULL,
  PRIMARY KEY  (id)
) ENGINE=MyISAM DEFAULT CHARSET=gbk;

#
# 导出下面的数据库内容 `efood_advs_float`
#

INSERT INTO efood_advs_float VALUES (1, 1, '', 'gif', 1, 100, 100, 'http://', '_self', 'images/float.gif', 100, 0);
# --------------------------------------------------------

#
# 数据表的结构 `efood_advs_lb`
#

CREATE TABLE efood_advs_lb (
  id int(20) NOT NULL auto_increment,
  title char(100) NOT NULL default '',
  src char(100) NOT NULL default '',
  url char(100) NOT NULL default '',
  xuhao int(5) NOT NULL default '0',
  PRIMARY KEY  (id)
) ENGINE=MyISAM DEFAULT CHARSET=gbk;

#
# 导出下面的数据库内容 `efood_advs_lb`
#

INSERT INTO efood_advs_lb VALUES (14, '广告标题', 'advs/1164118299.jpg', '/hd/html/?8.html', 1);
INSERT INTO efood_advs_lb VALUES (15, '广告标题1', 'advs/1164119345.jpg', '/com/100006/index.php', 2);
# --------------------------------------------------------

#
# 数据表的结构 `efood_advs_left`
#

CREATE TABLE efood_advs_left (
  id int(4) NOT NULL auto_increment,
  menuid int(12) NOT NULL default '0',
  title char(200) default NULL,
  width int(10) default NULL,
  height int(10) default NULL,
  `type` char(20) default NULL,
  src char(100) default NULL,
  url char(200) default NULL,
  target char(100) default NULL,
  border int(2) default NULL,
  hidden int(1) default NULL,
  toppadding int(5) default NULL,
  sidepadding int(5) default NULL,
  PRIMARY KEY  (id)
) ENGINE=MyISAM DEFAULT CHARSET=gbk;

#
# 导出下面的数据库内容 `efood_advs_left`
#

INSERT INTO efood_advs_left VALUES (1, 1, '', 75, 75, 'gif', 'images/jiao.gif', 'http://', '_self', 0, 1, 5, 5);
# --------------------------------------------------------

#
# 数据表的结构 `efood_advs_page`
#

CREATE TABLE efood_advs_page (
  id int(4) NOT NULL auto_increment,
  title char(200) default NULL,
  width int(10) default NULL,
  height int(10) default NULL,
  `type` char(20) default NULL,
  src char(100) default NULL,
  url char(200) default NULL,
  target char(100) default NULL,
  border int(2) default NULL,
  hidden int(1) default NULL,
  PRIMARY KEY  (id)
) ENGINE=MyISAM DEFAULT CHARSET=gbk;

#
# 导出下面的数据库内容 `efood_advs_page`
#

INSERT INTO efood_advs_page VALUES (1, '横幅776*80广告', 776, 82, 'swf', 'advs/1163877874.swf', 'http://', '_self', 0, 0);
INSERT INTO efood_advs_page VALUES (2, '内页180*60广告', 180, 60, 'gif', 'advs/1162657915.gif', 'http://', '_self', 0, 0);
INSERT INTO efood_advs_page VALUES (7, '横幅776*80广告', 776, 80, 'swf', 'advs/1164012440.swf', 'http://', '_self', 0, 0);
# --------------------------------------------------------

#
# 数据表的结构 `efood_advs_pop`
#

CREATE TABLE efood_advs_pop (
  id int(12) NOT NULL auto_increment,
  title text,
  body text,
  ifpop int(1) default NULL,
  popwidth int(10) default NULL,
  popheight int(10) default NULL,
  popleft int(10) default NULL,
  poptop int(10) default NULL,
  poptoolbar int(1) default NULL,
  popmenubar int(1) default NULL,
  popstatus int(1) default NULL,
  poplocation int(1) default NULL,
  popscrollbars varchar(50) default NULL,
  popresizable int(1) default NULL,
  menuid int(12) NOT NULL default '0',
  PRIMARY KEY  (id)
) ENGINE=MyISAM DEFAULT CHARSET=gbk;

#
# 导出下面的数据库内容 `efood_advs_pop`
#

INSERT INTO efood_advs_pop VALUES (1, 'POP', '', 0, 400, 300, 0, 0, 0, 0, 0, 0, 'auto', 0, 1);
# --------------------------------------------------------

#
# 数据表的结构 `efood_advs_right`
#

CREATE TABLE efood_advs_right (
  id int(4) NOT NULL auto_increment,
  menuid int(12) NOT NULL default '0',
  title char(200) default NULL,
  width int(10) default NULL,
  height int(10) default NULL,
  `type` char(20) default NULL,
  src char(100) default NULL,
  url char(200) default NULL,
  target char(100) default NULL,
  border int(2) default NULL,
  hidden int(1) default NULL,
  toppadding int(5) default NULL,
  sidepadding int(5) default NULL,
  PRIMARY KEY  (id)
) ENGINE=MyISAM DEFAULT CHARSET=gbk;

#
# 导出下面的数据库内容 `efood_advs_right`
#

INSERT INTO efood_advs_right VALUES (1, 1, '', 75, 75, 'gif', 'images/jiao.gif', 'http://', '_self', 0, 1, 5, 5);
# --------------------------------------------------------

#
# 数据表的结构 `efood_coltype`
#

CREATE TABLE efood_coltype (
  id int(12) NOT NULL auto_increment,
  coltype varchar(30) NOT NULL default '',
  colname varchar(50) NOT NULL default '',
  ifmul int(1) NOT NULL default '0',
  moveable int(1) NOT NULL default '0',
  PRIMARY KEY  (id)
) ENGINE=MyISAM DEFAULT CHARSET=gbk;

#
# 导出下面的数据库内容 `efood_coltype`
#

INSERT INTO efood_coltype VALUES (1, 'index', '网站首页', 0, 0);
INSERT INTO efood_coltype VALUES (2, 'member', '会员中心', 0, 0);
INSERT INTO efood_coltype VALUES (3, 'url', '自定链接', 1, 1);
INSERT INTO efood_coltype VALUES (4, 'page', '单页频道', 1, 1);
INSERT INTO efood_coltype VALUES (5, 'news', '文章频道', 1, 1);
INSERT INTO efood_coltype VALUES (6, 'cp', '图文频道', 1, 1);
INSERT INTO efood_coltype VALUES (7, 'down', '下载频道', 1, 1);
INSERT INTO efood_coltype VALUES (8, 'form', '自定表单', 1, 1);
INSERT INTO efood_coltype VALUES (9, 'comment', '会员社区', 0, 0);
INSERT INTO efood_coltype VALUES (10, 'company', '餐馆名录', 0, 0);
INSERT INTO efood_coltype VALUES (11, 'sell', '餐饮信息', 0, 0);
INSERT INTO efood_coltype VALUES (12, 'hd', '聚会活动', 0, 0);
INSERT INTO efood_coltype VALUES (13, 'products', '美食频道', 0, 0);
# --------------------------------------------------------

#
# 数据表的结构 `efood_comment`
#

CREATE TABLE efood_comment (
  id int(20) NOT NULL auto_increment,
  pid int(20) default NULL,
  menuid int(20) default NULL,
  coltype varchar(30) default NULL,
  rid int(20) default NULL,
  name varchar(100) default NULL,
  title varchar(200) default NULL,
  body text,
  star int(1) default NULL,
  uptime int(11) default NULL,
  ip varchar(16) default NULL,
  fabu int(1) default NULL,
  tuijian int(1) default NULL,
  face varchar(10) default NULL,
  cl int(10) default NULL,
  lastname varchar(50) NOT NULL default '',
  picsrc varchar(150) NOT NULL default '',
  PRIMARY KEY  (id)
) ENGINE=MyISAM DEFAULT CHARSET=gbk;

#
# 导出下面的数据库内容 `efood_comment`
#

INSERT INTO efood_comment VALUES (5, 0, 3, 'news', 13, 'aaaaa', '城市美食网站系统城市美食网站系统', '城市美食网站系统城市美食网站系统', 0, 1162750585, '192.168.2.201', 1, 0, '1', 14, 'aaaaa', '');
INSERT INTO efood_comment VALUES (70, 0, 8, 'company', 7, 'aaaaa', '皇城根火锅城的羊腿太棒了', '皇城根火锅城的羊腿太棒了', 0, 1163969699, '192.168.2.201', 1, 0, '1', 3, 'aaaaa', '');
INSERT INTO efood_comment VALUES (6, 0, 8, 'company', 3, 'aaaaa', '提供丰富健康的自助早餐', '提供丰富健康的自助早餐提供丰富健康的自助早餐', 0, 1163921871, '192.168.2.201', 1, 0, '9', 51, 'aaaaa', '');
INSERT INTO efood_comment VALUES (11, 0, 9, 'sell', 3, 'aaaaa', '明明是大饼嘛', '明明是大饼嘛', 0, 1163444748, '192.168.2.201', 1, 0, '1', 1, 'aaaaa', '');
INSERT INTO efood_comment VALUES (12, 0, 9, 'sell', 4, 'aaaaa', '满大街都是,招聘什么呢', '满大街都是,招聘什么呢', 0, 1163444796, '192.168.2.201', 1, 0, '1', 4, 'aaaaa', '');
INSERT INTO efood_comment VALUES (13, 0, 8, 'company', 5, 'aaaaa', '江南名庄风味餐厅真不错', '江南名庄风味餐厅真不错', 0, 1163615835, '192.168.2.201', 1, 0, '1', 91, 'aaaaa', '');
INSERT INTO efood_comment VALUES (15, 0, 11, 'products', 47, 'ccccc', '红汤回鱼红汤回鱼红汤回鱼', '红汤回鱼红汤回鱼', 0, 1163529344, '192.168.2.201', 1, 0, '1', 1, 'ccccc', '');
INSERT INTO efood_comment VALUES (16, 0, 11, 'products', 10, 'ccccc', '云南省蒙自县的特色小吃', '云南省蒙自县的特色小吃', 0, 1163529384, '192.168.2.201', 1, 0, '1', 2, 'ccccc', '');
INSERT INTO efood_comment VALUES (17, 0, 11, 'products', 29, 'ccccc', '好辣,真受不了', '好辣,真受不了', 0, 1163535593, '192.168.2.201', 1, 0, '10', 4, 'ccccc', '');
INSERT INTO efood_comment VALUES (18, 0, 76, 'news', 49, 'ccccc', '探索食境三重天', '探索食境三重天', 0, 1163863041, '192.168.2.201', 1, 0, '11', 11, 'aaaaa', '');
INSERT INTO efood_comment VALUES (19, 0, 9, 'sell', 4, 'ccccc', '我说你什么时候招经理啊', '我说你什么时候招经理啊', 0, 1163535882, '192.168.2.201', 1, 0, '1', 26, 'ccccc', '');
INSERT INTO efood_comment VALUES (25, 0, 11, 'products', 16, 'aaaaa', '五味手撕鹅五味手撕鹅', '五味手撕鹅五味手撕鹅 ', 0, 1163866628, '192.168.2.201', 1, 0, '1', 18, 'aaaaa', '');
INSERT INTO efood_comment VALUES (26, 0, 0, 'hd', 8, 'aaaaa', '我看这个很有意思,我要参加', '我看这个很有意思,我要参加', 0, 1163832976, '192.168.2.201', 1, 0, '1', 3, 'aaaaa', '');
INSERT INTO efood_comment VALUES (27, 0, 0, 'hd', 8, 'aaaaa', '美国食品都是垃圾', '美国食品都是垃圾', 0, 1163833989, '192.168.2.201', 1, 0, '1', 7, 'aaaaa', '');
INSERT INTO efood_comment VALUES (30, 0, 10, 'hd', 8, 'aaaaa', '就这个时间,我看行,算我一个', '就这个时间,我看行,算我一个就这个时间,我看行,算我一个', 0, 1163835862, '192.168.2.201', 1, 0, '1', 3, 'aaaaa', '');
INSERT INTO efood_comment VALUES (32, 0, 10, 'hd', 11, 'aaaaa', '免费的啊,我要参加', '我来报名了', 0, 1163839698, '192.168.2.201', 1, 0, '1', 5, 'aaaaa', '');
INSERT INTO efood_comment VALUES (33, 0, 10, 'hd', 11, 'aaaaa', '没意思', '没意思', 0, 1163839820, '192.168.2.201', 1, 0, '3', 2, 'aaaaa', '');
INSERT INTO efood_comment VALUES (35, 0, 10, 'hd', 8, 'ddddddx', '算我一个,刚好有时间', '算我一个,刚好有时间', 0, 1163840401, '192.168.2.201', 1, 0, '9', 7, 'ddddddx', '');
# --------------------------------------------------------

#
# 数据表的结构 `efood_comment_cat`
#

CREATE TABLE efood_comment_cat (
  catid int(12) NOT NULL auto_increment,
  cat varchar(50) default NULL,
  coltype varchar(30) default NULL,
  xuhao int(4) default NULL,
  moveable int(1) default NULL,
  PRIMARY KEY  (catid)
) ENGINE=MyISAM DEFAULT CHARSET=gbk;

#
# 导出下面的数据库内容 `efood_comment_cat`
#

INSERT INTO efood_comment_cat VALUES (1, '文章评论', 'news', 8, 0);
INSERT INTO efood_comment_cat VALUES (2, '图片评论', 'cp', 9, 0);
INSERT INTO efood_comment_cat VALUES (3, '下载评论', 'down', 10, 0);
INSERT INTO efood_comment_cat VALUES (4, '餐馆点评', 'company', 4, 0);
INSERT INTO efood_comment_cat VALUES (5, '美食评论', 'products', 5, 0);
INSERT INTO efood_comment_cat VALUES (6, '信息评论', 'sell', 6, 0);
INSERT INTO efood_comment_cat VALUES (8, '活动聚会', 'hd', 7, 0);
# --------------------------------------------------------

#
# 数据表的结构 `efood_company`
#

CREATE TABLE efood_company (
  id int(12) NOT NULL auto_increment,
  memberid int(20) NOT NULL default '0',
  catid int(20) NOT NULL default '0',
  catpath varchar(255) NOT NULL default '',
  zoneid int(20) NOT NULL default '0',
  zonepath varchar(255) NOT NULL default '',
  company varchar(200) NOT NULL default '',
  companytype varchar(50) NOT NULL default '0',
  tradetype varchar(100) NOT NULL default '',
  zcfundstype varchar(80) NOT NULL default '',
  zcfunds int(9) NOT NULL default '0',
  zcyear int(5) NOT NULL default '0',
  zcaddr varchar(255) NOT NULL default '',
  bizaddr varchar(255) NOT NULL default '',
  bizprod varchar(255) NOT NULL default '',
  intro text NOT NULL,
  pictype varchar(30) NOT NULL default '',
  picsrc varchar(200) NOT NULL default '',
  name varchar(50) NOT NULL default '',
  department varchar(100) NOT NULL default '',
  position varchar(100) NOT NULL default '',
  tel varchar(50) NOT NULL default '',
  fax varchar(50) NOT NULL default '',
  addr varchar(255) NOT NULL default '',
  postcode varchar(30) NOT NULL default '',
  email varchar(100) NOT NULL default '',
  url varchar(255) NOT NULL default '',
  ceo varchar(30) NOT NULL default '',
  bank varchar(100) NOT NULL default '',
  bankaccount varchar(100) NOT NULL default '',
  comarea varchar(50) NOT NULL default '',
  pnumber varchar(100) NOT NULL default '',
  ynumber varchar(100) NOT NULL default '',
  brand varchar(100) NOT NULL default '',
  output varchar(100) NOT NULL default '',
  yvolume varchar(50) NOT NULL default '',
  ivolume varchar(50) NOT NULL default '',
  ovolume varchar(50) NOT NULL default '',
  authsys varchar(100) NOT NULL default '',
  qualitysys varchar(100) NOT NULL default '',
  market varchar(100) NOT NULL default '',
  custom varchar(100) NOT NULL default '',
  ifoem varchar(10) NOT NULL default '',
  dtime int(11) NOT NULL default '0',
  ip varchar(30) NOT NULL default '',
  iffb int(1) NOT NULL default '0',
  tj int(1) NOT NULL default '0',
  PRIMARY KEY  (id)
) ENGINE=MyISAM DEFAULT CHARSET=gbk;

#
# 导出下面的数据库内容 `efood_company`
#

INSERT INTO efood_company VALUES (1, 3, 2, '0002:;0008:;0024:;', 2, '0002:', '巴黎春天大酒店', '高档餐厅', '大型酒宴,多人聚餐,商务宴请,好友小聚,家庭聚餐,喜庆婚宴,休闲社交,有停车场,刷卡消费', '', 0, 0, '', '817路终点站直达', '青菜毛豆,香辣龙虾,大盘鸡', '巴黎春天大餐厅为您提供丰富健康的自助早餐、午餐及晚餐。我们高品质的服务将满足您的一切需求。酒店的两间酒吧及大堂酒廊是您一天繁忙工作之余休闲放松的首选。', 'gif', 'com/100003/images/1164040410.jpg', '张文', '', '', '0573-2109889', '0573-2109889', '嘉兴市中山路248号', '314000', 'qu@eb2000.cn', 'http://', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', 1164040410, '192.168.2.201', 1, 1);
INSERT INTO efood_company VALUES (2, 4, 1, '0001:;', 2, '0002:', '粤海云餐厅', '风味小吃', '多人聚餐,商务宴请,省时快餐,夜宵小酌', '', 0, 0, '', '公交12路,6路', '羊肉面,牛骨汤', '很好吃的养肉面,10年历史', 'gif', 'com/100004/images/1163961982.jpg', 'qqqq', '', '', '0573-2132226', '0573-2132226', '城南路文昌路口', '333333', 'qqq@sss.cn', 'http://', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', 1163961982, '192.168.2.201', 1, 1);
INSERT INTO efood_company VALUES (3, 5, 28, '0028:;', 4, '0004:', '江南名庄风味餐厅', '中档餐馆', '多人聚餐,商务宴请,好友小聚,家庭聚餐,生日聚会,休闲社交,有停车场,刷卡消费', '', 0, 0, '', '第二医院河对面,交通便利', '猪踢胖,蛇羹', '暂无', 'gif', 'com/100005/images/1163516818.jpg', '测试', '', '', '0573-2109889', '0573-2109889', '嘉兴市秀州北路', '314000', 'c@www.cn', 'http://', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', 1164038852, '192.168.2.201', 1, 1);
INSERT INTO efood_company VALUES (4, 6, 4, '0004:;', 1, '0001:', '小湘农家菜馆中山店', '高档餐厅', '多人聚餐,好友小聚,家庭聚餐,休闲社交', '', 0, 0, '', '公交9路中山中路站边上20米', '土鸡,猪踢胖', '测试', 'gif', 'com/100006/images/1163520658.jpg', '小夏', '', '', '0573-6883210', '0573-6883210', '中山路2288号', '314000', 'fdk@xmss.com', 'http://', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', 1164118462, '192.168.2.201', 1, 1);
INSERT INTO efood_company VALUES (5, 7, 9, '0009:;', 6, '0006:', '皇城根火锅城', '中档餐馆', '品茶聊天,情侣约会,有停车场,刷卡消费', '', 0, 0, '', '公交2路,39路', '茶', '好菜', 'gif', 'com/100007/images/1164118410.jpg', '小刘', '', '', '0573-6543212', '0573-6543212', '开发区政府西侧', '314002', 'c@www.cn', 'http://', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', 1164118410, '192.168.2.201', 1, 1);
INSERT INTO efood_company VALUES (7, 9, 10, '0010:;', 1, '0001:', '东海鱼港海鲜酒楼', '高档餐厅', '多人聚餐,商务宴请,好友小聚,家庭聚餐,情侣约会,休闲社交,有停车场,刷卡消费', '', 0, 0, '', '吉水路229号', '鱼,虾', '东海鱼港海鲜酒楼海鲜多多', 'gif', 'com/100009/images/1163521164.jpg', '尚伟', '', '', '0573-2099000', '0573-2099000', '0573-2099000', '314000', 'www@aaa.cn', 'http://', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', 1163521164, '192.168.2.201', 1, 1);
# --------------------------------------------------------

#
# 数据表的结构 `efood_companytype`
#

CREATE TABLE efood_companytype (
  id int(12) NOT NULL auto_increment,
  companytype char(100) default NULL,
  PRIMARY KEY  (id)
) ENGINE=MyISAM DEFAULT CHARSET=gbk;

#
# 导出下面的数据库内容 `efood_companytype`
#

INSERT INTO efood_companytype VALUES (1, '高档餐厅');
INSERT INTO efood_companytype VALUES (2, '中档餐馆');
INSERT INTO efood_companytype VALUES (3, '简易餐厅');
INSERT INTO efood_companytype VALUES (4, '宾馆酒楼');
INSERT INTO efood_companytype VALUES (5, '风味小吃');
INSERT INTO efood_companytype VALUES (6, '实惠小馆');
INSERT INTO efood_companytype VALUES (7, '特色餐饮');
INSERT INTO efood_companytype VALUES (8, '快餐小炒');
INSERT INTO efood_companytype VALUES (9, '火锅烧烤');
INSERT INTO efood_companytype VALUES (10, '中式餐饮');
INSERT INTO efood_companytype VALUES (11, '外式餐厅');
INSERT INTO efood_companytype VALUES (12, '日韩料理');
INSERT INTO efood_companytype VALUES (13, '自助餐厅');
INSERT INTO efood_companytype VALUES (14, '休闲茶楼');
INSERT INTO efood_companytype VALUES (15, '综合娱乐');
# --------------------------------------------------------

#
# 数据表的结构 `efood_config`
#

CREATE TABLE efood_config (
  xuhao int(3) NOT NULL default '0',
  vname varchar(50) NOT NULL default '',
  coltype varchar(30) NOT NULL default 'input',
  colwidth varchar(3) NOT NULL default '30',
  variable varchar(32) NOT NULL default '',
  `value` text NOT NULL,
  intro text NOT NULL,
  PRIMARY KEY  (variable)
) ENGINE=MyISAM DEFAULT CHARSET=gbk;

#
# 导出下面的数据库内容 `efood_config`
#

INSERT INTO efood_config VALUES (1, '网站名称', 'input', '30', 'SiteName', '城市美食网站系统', '用于在网页标题、导航栏处显示');
INSERT INTO efood_config VALUES (2, '网站网址', 'input', '30', 'SiteHttp', 'http://www.abc.com/', '网站的实际访问网址,末尾加“/”');
INSERT INTO efood_config VALUES (3, '服务邮箱', 'input', '30', 'SiteEmail', 'service@mydomain.com', '在发送系统邮件时作为发件人邮件');
INSERT INTO efood_config VALUES (4, '邮件转发方式', 'ownersys', '1', 'ownersys', '0', 'LINUX/UNIX服务器一般可使用内置邮件系统转发邮件；WINDOWS服务器建议使用外部SMTP邮箱转发，并设置以下SMTP邮箱参数');
INSERT INTO efood_config VALUES (6, 'SMTP服务器', 'input', '30', 'owner_m_smtp', 'mail.mydomain.com', '');
INSERT INTO efood_config VALUES (7, 'SMTP邮箱用户', 'input', '30', 'owner_m_user', 'service@mydomain.com', '');
INSERT INTO efood_config VALUES (8, 'SMTP邮箱密码', 'input', '30', 'owner_m_pass', '123456', '');
INSERT INTO efood_config VALUES (5, 'SMTP转发邮箱', 'input', '30', 'owner_m_mail', 'service@mydomain.com', '');
INSERT INTO efood_config VALUES (9, 'SMTP身份验证', 'YN', '10', 'owner_m_check', '1', '');
INSERT INTO efood_config VALUES (10, '是否生成并使用静态HTML网页', 'YN', '10', 'CatchOpen', '0', '');
INSERT INTO efood_config VALUES (11, 'HTML静态网页更新时间(秒)', 'input', '8', 'CatchTime', '7200', '超过此时间访问静态页面时自动跳转到动态页面，并重新生成静态页面');
INSERT INTO efood_config VALUES (12, 'INDEX.HTML优先', 'YN', '10', 'IndexOrder', '1', '当主机的index.html优先于index.php时，栏目链接直接指向目录访问静态网页，使网址较简洁，PHP虚拟主机大多支持此设置');
INSERT INTO efood_config VALUES (21, 'DISCUZ论坛URL', 'input', '30', 'DiscuzUrl', 'http://', '请输入您的DISCUZ论坛网址,如:http://www.abc.com/bbs');
INSERT INTO efood_config VALUES (22, 'DISCUZ论坛连接私钥', 'input', '30', 'DiscuzCode', '', 'Discuz论坛后台设置的接口私钥与本处设置务必一致');
INSERT INTO efood_config VALUES (20, 'DISCUZ论坛会员接口是否启用', 'YN', '30', 'DiscuzOpen', '0', '启用Discuz会员接口时,会员注册和登录时将向论坛发送注册和登录信息.请在Discuz论坛后台通行证设置中进行相应接口设置');
INSERT INTO efood_config VALUES (25, '分类桢刷新', 'YN', '1', 'CatReflash', '1', '在管理分类时是否自动刷新左侧类别树型菜单,当分类很多时树型菜单频繁刷新会减慢操作速度');
INSERT INTO efood_config VALUES (26, '前台图片上传尺寸限制(Byte)', 'input', '30', 'PicSizeLimit', '204800', '前台网站上传图片时单个图片尺寸的限制');
# --------------------------------------------------------

#
# 数据表的结构 `efood_cp_cat`
#

CREATE TABLE efood_cp_cat (
  catid int(12) NOT NULL auto_increment,
  pid int(12) default NULL,
  menuid int(10) NOT NULL default '3',
  cat char(100) default NULL,
  xuhao int(12) default NULL,
  catpath char(255) default NULL,
  nums int(20) default NULL,
  secure int(1) NOT NULL default '0',
  tj int(1) NOT NULL default '0',
  PRIMARY KEY  (catid)
) ENGINE=MyISAM DEFAULT CHARSET=gbk;

#
# 导出下面的数据库内容 `efood_cp_cat`
#

INSERT INTO efood_cp_cat VALUES (19, 0, 4, '测试分类', 1, '0019:', 1, 0, 0);
# --------------------------------------------------------

#
# 数据表的结构 `efood_cp_con`
#

CREATE TABLE efood_cp_con (
  id int(12) NOT NULL auto_increment,
  menuid int(10) NOT NULL default '3',
  catid int(12) default NULL,
  catpath varchar(255) default NULL,
  title varchar(255) default NULL,
  memo text NOT NULL,
  body text,
  dtime int(11) default '0',
  xuhao int(5) default '0',
  cl int(20) default NULL,
  tj int(1) default NULL,
  iffb int(1) default '0',
  ifbold int(1) default '0',
  ifred int(1) default '0',
  `type` varchar(30) NOT NULL default '',
  src varchar(150) NOT NULL default '',
  uptime int(11) default '0',
  author varchar(100) default NULL,
  source varchar(100) default NULL,
  memberid varchar(100) default NULL,
  proj varchar(255) NOT NULL default '',
  secure int(11) NOT NULL default '0',
  prop1 varchar(255) NOT NULL default '',
  prop2 varchar(255) NOT NULL default '',
  prop3 varchar(255) NOT NULL default '',
  prop4 varchar(255) NOT NULL default '',
  prop5 varchar(255) NOT NULL default '',
  prop6 varchar(255) NOT NULL default '',
  prop7 varchar(255) NOT NULL default '',
  prop8 varchar(255) NOT NULL default '',
  prop9 varchar(255) NOT NULL default '',
  prop10 varchar(255) NOT NULL default '',
  prop11 varchar(255) NOT NULL default '',
  prop12 varchar(255) NOT NULL default '',
  prop13 varchar(255) NOT NULL default '',
  prop14 varchar(255) NOT NULL default '',
  prop15 varchar(255) NOT NULL default '',
  prop16 varchar(255) NOT NULL default '',
  prop17 varchar(255) NOT NULL default '',
  prop18 varchar(255) NOT NULL default '',
  prop19 varchar(255) NOT NULL default '',
  prop20 varchar(255) NOT NULL default '',
  PRIMARY KEY  (id)
) ENGINE=MyISAM DEFAULT CHARSET=gbk;

#
# 导出下面的数据库内容 `efood_cp_con`
#

INSERT INTO efood_cp_con VALUES (3, 4, 19, '0019:', '测试内容', '测试内容', '', 1163870458, 1, 6, 0, 1, 0, 0, '', '', 1164119914, '', '', '0', '', 0, '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '');
# --------------------------------------------------------

#
# 数据表的结构 `efood_default_rights`
#

CREATE TABLE efood_default_rights (
  id int(12) NOT NULL auto_increment,
  membertypeid int(50) default NULL,
  secureid int(50) default NULL,
  securetype char(100) default NULL,
  secureset int(100) default NULL,
  PRIMARY KEY  (id)
) ENGINE=MyISAM DEFAULT CHARSET=gbk;

#
# 导出下面的数据库内容 `efood_default_rights`
#

INSERT INTO efood_default_rights VALUES (233, 3, 30, 'func', 0);
INSERT INTO efood_default_rights VALUES (232, 3, 29, 'nums', 300);
INSERT INTO efood_default_rights VALUES (231, 3, 28, 'func', 0);
INSERT INTO efood_default_rights VALUES (230, 3, 24, 'nums', 10);
INSERT INTO efood_default_rights VALUES (229, 3, 23, 'func', 0);
INSERT INTO efood_default_rights VALUES (228, 3, 22, 'func', 0);
INSERT INTO efood_default_rights VALUES (227, 3, 21, 'nums', 10);
INSERT INTO efood_default_rights VALUES (186, 2, 8, 'func', 0);
INSERT INTO efood_default_rights VALUES (185, 2, 7, 'func', 0);
INSERT INTO efood_default_rights VALUES (184, 2, 6, 'func', 0);
INSERT INTO efood_default_rights VALUES (183, 2, 4, 'con', 0);
INSERT INTO efood_default_rights VALUES (182, 2, 3, 'menu', 0);
INSERT INTO efood_default_rights VALUES (181, 2, 2, 'func', 0);
INSERT INTO efood_default_rights VALUES (226, 3, 20, 'func', 0);
INSERT INTO efood_default_rights VALUES (225, 3, 19, 'func', 0);
INSERT INTO efood_default_rights VALUES (224, 3, 18, 'nums', 10);
INSERT INTO efood_default_rights VALUES (223, 3, 17, 'func', 0);
INSERT INTO efood_default_rights VALUES (222, 3, 16, 'func', 0);
INSERT INTO efood_default_rights VALUES (221, 3, 13, 'func', 0);
INSERT INTO efood_default_rights VALUES (220, 3, 11, 'func', 0);
INSERT INTO efood_default_rights VALUES (219, 3, 9, 'func', 0);
INSERT INTO efood_default_rights VALUES (218, 3, 10, 'func', 0);
INSERT INTO efood_default_rights VALUES (217, 3, 8, 'func', 0);
INSERT INTO efood_default_rights VALUES (216, 3, 7, 'func', 0);
INSERT INTO efood_default_rights VALUES (215, 3, 6, 'func', 0);
INSERT INTO efood_default_rights VALUES (214, 3, 4, 'con', 0);
INSERT INTO efood_default_rights VALUES (213, 3, 3, 'menu', 0);
INSERT INTO efood_default_rights VALUES (212, 3, 2, 'func', 0);
INSERT INTO efood_default_rights VALUES (187, 2, 28, 'func', 0);
INSERT INTO efood_default_rights VALUES (188, 2, 29, 'nums', 100);
INSERT INTO efood_default_rights VALUES (189, 2, 30, 'func', 0);
# --------------------------------------------------------

#
# 数据表的结构 `efood_down_cat`
#

CREATE TABLE efood_down_cat (
  catid int(12) NOT NULL auto_increment,
  pid int(12) default NULL,
  menuid int(10) NOT NULL default '3',
  cat char(100) default NULL,
  xuhao int(12) default NULL,
  catpath char(255) default NULL,
  nums int(20) default NULL,
  secure int(1) NOT NULL default '0',
  tj int(1) NOT NULL default '0',
  PRIMARY KEY  (catid)
) ENGINE=MyISAM DEFAULT CHARSET=gbk;

#
# 导出下面的数据库内容 `efood_down_cat`
#

INSERT INTO efood_down_cat VALUES (2, 0, 5, '测试分类', 1, '0002:', 1, 0, 0);
# --------------------------------------------------------

#
# 数据表的结构 `efood_down_con`
#

CREATE TABLE efood_down_con (
  id int(12) NOT NULL auto_increment,
  menuid int(10) NOT NULL default '3',
  catid int(12) default NULL,
  catpath varchar(255) default NULL,
  title varchar(255) default NULL,
  memo text NOT NULL,
  body text,
  dtime int(11) default '0',
  xuhao int(5) default '0',
  cl int(20) default NULL,
  tj int(1) default NULL,
  iffb int(1) default '0',
  filesize varchar(30) default NULL,
  url varchar(255) default NULL,
  `type` varchar(30) NOT NULL default '',
  src varchar(150) NOT NULL default '',
  uptime int(11) default '0',
  author varchar(100) default NULL,
  source varchar(100) default NULL,
  memberid varchar(100) default NULL,
  proj varchar(255) NOT NULL default '',
  secure int(11) NOT NULL default '0',
  prop1 varchar(255) NOT NULL default '',
  prop2 varchar(255) NOT NULL default '',
  prop3 varchar(255) NOT NULL default '',
  prop4 varchar(255) NOT NULL default '',
  prop5 varchar(255) NOT NULL default '',
  prop6 varchar(255) NOT NULL default '',
  prop7 varchar(255) NOT NULL default '',
  prop8 varchar(255) NOT NULL default '',
  prop9 varchar(255) NOT NULL default '',
  prop10 varchar(255) NOT NULL default '',
  prop11 varchar(255) NOT NULL default '',
  prop12 varchar(255) NOT NULL default '',
  prop13 varchar(255) NOT NULL default '',
  prop14 varchar(255) NOT NULL default '',
  prop15 varchar(255) NOT NULL default '',
  prop16 varchar(255) NOT NULL default '',
  prop17 varchar(255) NOT NULL default '',
  prop18 varchar(255) NOT NULL default '',
  prop19 varchar(255) NOT NULL default '',
  prop20 varchar(255) NOT NULL default '',
  PRIMARY KEY  (id)
) ENGINE=MyISAM DEFAULT CHARSET=gbk;

#
# 导出下面的数据库内容 `efood_down_con`
#

INSERT INTO efood_down_con VALUES (2, 5, 2, '0002:', '测试内容', '测试内容', '', 1163870601, 1, 0, 0, 1, '', 'http://abc.com/1.rar', '', '', 1164119981, '', '', '0', '', 0, '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '');
# --------------------------------------------------------

#
# 数据表的结构 `efood_feedback`
#

CREATE TABLE efood_feedback (
  id int(12) NOT NULL auto_increment,
  tomemberid int(12) NOT NULL default '0',
  frommemberid int(12) NOT NULL default '0',
  title varchar(255) NOT NULL default '',
  body text NOT NULL,
  dtime int(11) NOT NULL default '0',
  iflook int(1) NOT NULL default '0',
  ifback int(1) NOT NULL default '0',
  PRIMARY KEY  (id)
) ENGINE=MyISAM DEFAULT CHARSET=gbk;

#
# 导出下面的数据库内容 `efood_feedback`
#

# --------------------------------------------------------

#
# 数据表的结构 `efood_form`
#

CREATE TABLE efood_form (
  id int(3) NOT NULL auto_increment,
  field_caption varchar(200) NOT NULL default '',
  field_type int(1) NOT NULL default '0',
  field_size int(2) NOT NULL default '0',
  field_name varchar(200) NOT NULL default '',
  field_value varchar(255) NOT NULL default '',
  field_null int(1) NOT NULL default '0',
  value_repeat int(1) NOT NULL default '0',
  field_intro varchar(255) NOT NULL default '',
  use_field int(1) NOT NULL default '0',
  moveable int(1) NOT NULL default '0',
  xuhao int(3) NOT NULL default '0',
  PRIMARY KEY  (id)
) ENGINE=MyISAM DEFAULT CHARSET=gbk;

#
# 导出下面的数据库内容 `efood_form`
#

INSERT INTO efood_form VALUES (1, '留言标题', 1, 35, 'title', '', 1, 1, '', 1, 1, 1);
INSERT INTO efood_form VALUES (2, '留言内容', 2, 34, 'content', '', 1, 1, '', 1, 1, 2);
INSERT INTO efood_form VALUES (3, '您的姓名', 1, 35, 'name', '', 1, 1, '', 1, 1, 3);
INSERT INTO efood_form VALUES (5, '联系电话', 1, 30, 'tel', '', 0, 1, '', 0, 0, 5);
INSERT INTO efood_form VALUES (6, '联系地址', 1, 35, 'address', '', 0, 1, '', 0, 0, 6);
INSERT INTO efood_form VALUES (7, '电子邮件', 1, 35, 'email', '', 1, 1, '', 1, 1, 7);
INSERT INTO efood_form VALUES (8, '网址URL', 1, 35, 'url', '', 0, 1, '', 0, 0, 8);
INSERT INTO efood_form VALUES (9, 'QQ号码', 1, 16, 'qq', '', 0, 1, '', 0, 0, 9);
INSERT INTO efood_form VALUES (10, '公司名称', 1, 35, 'company', '', 0, 1, '', 0, 0, 10);
INSERT INTO efood_form VALUES (11, '公司地址', 1, 35, 'company_address', '', 0, 1, '', 0, 0, 11);
INSERT INTO efood_form VALUES (4, '性　　别', 5, 21, 'sex', '男;女', 0, 1, '', 0, 0, 4);
INSERT INTO efood_form VALUES (12, '邮政编码', 1, 6, 'zip', '', 0, 1, '', 0, 0, 12);
INSERT INTO efood_form VALUES (13, '传真号码', 1, 30, 'fax', '', 0, 1, '', 0, 0, 13);
INSERT INTO efood_form VALUES (14, '产品编号', 1, 16, 'products_id', '', 0, 1, '', 0, 0, 14);
INSERT INTO efood_form VALUES (15, '产品名称', 1, 16, 'products_name', '', 0, 1, '', 0, 0, 15);
INSERT INTO efood_form VALUES (16, '订购数量', 1, 16, 'products_num', '', 0, 1, '', 0, 0, 16);
INSERT INTO efood_form VALUES (19, '自定义一', 5, 35, 'custom1', '100;200;300;400;500', 0, 1, '', 0, 0, 17);
INSERT INTO efood_form VALUES (18, '自定义二', 5, 35, 'custom2', '100;200;300;400;500', 0, 1, '', 0, 0, 18);
INSERT INTO efood_form VALUES (17, '自定义三', 5, 35, 'custom3', '100;200;300;400;500', 0, 1, '', 0, 0, 19);
INSERT INTO efood_form VALUES (20, '自定义四', 1, 35, 'custom4', '', 0, 1, '', 0, 0, 20);
INSERT INTO efood_form VALUES (21, '自定义五', 1, 35, 'custom5', '', 0, 1, '', 0, 0, 21);
INSERT INTO efood_form VALUES (22, '自定义六', 1, 35, 'custom6', '', 0, 1, '', 0, 0, 22);
INSERT INTO efood_form VALUES (23, '自定义七', 1, 35, 'custom7', '', 0, 1, '', 0, 0, 23);
# --------------------------------------------------------

#
# 数据表的结构 `efood_form_feedback`
#

CREATE TABLE efood_form_feedback (
  id int(12) NOT NULL auto_increment,
  menuid int(12) NOT NULL default '0',
  title varchar(255) NOT NULL default '',
  content text NOT NULL,
  name varchar(200) NOT NULL default '',
  sex varchar(10) NOT NULL default '',
  tel varchar(100) NOT NULL default '',
  address varchar(255) NOT NULL default '',
  email varchar(255) NOT NULL default '',
  url varchar(255) NOT NULL default '',
  qq varchar(20) NOT NULL default '',
  company varchar(255) NOT NULL default '',
  company_address varchar(255) NOT NULL default '',
  zip varchar(6) NOT NULL default '',
  fax varchar(20) NOT NULL default '',
  products_id varchar(100) NOT NULL default '',
  products_name varchar(200) NOT NULL default '',
  products_num varchar(9) NOT NULL default '',
  custom1 text NOT NULL,
  custom2 text NOT NULL,
  custom3 text NOT NULL,
  custom4 text NOT NULL,
  custom5 text NOT NULL,
  custom6 text NOT NULL,
  custom7 text NOT NULL,
  ip varchar(20) NOT NULL default '',
  `time` int(11) NOT NULL default '0',
  look int(1) NOT NULL default '0',
  reversion int(1) NOT NULL default '0',
  PRIMARY KEY  (id)
) ENGINE=MyISAM DEFAULT CHARSET=gbk;

#
# 导出下面的数据库内容 `efood_form_feedback`
#

# --------------------------------------------------------

#
# 数据表的结构 `efood_fundstype`
#

CREATE TABLE efood_fundstype (
  id int(12) NOT NULL auto_increment,
  fundstype char(100) default NULL,
  PRIMARY KEY  (id)
) ENGINE=MyISAM DEFAULT CHARSET=gbk;

#
# 导出下面的数据库内容 `efood_fundstype`
#

INSERT INTO efood_fundstype VALUES (1, '人民币');
INSERT INTO efood_fundstype VALUES (2, '港币');
INSERT INTO efood_fundstype VALUES (3, '美元');
INSERT INTO efood_fundstype VALUES (4, '欧元');
INSERT INTO efood_fundstype VALUES (5, '新台币');
INSERT INTO efood_fundstype VALUES (6, '英镑');
# --------------------------------------------------------

#
# 数据表的结构 `efood_info`
#

CREATE TABLE efood_info (
  id int(12) NOT NULL auto_increment,
  memberid int(20) NOT NULL default '0',
  catid int(20) NOT NULL default '0',
  catpath varchar(255) NOT NULL default '',
  zoneid int(20) NOT NULL default '0',
  zonepath varchar(255) NOT NULL default '',
  bstype int(1) NOT NULL default '0',
  infotype int(1) NOT NULL default '0',
  title varchar(200) NOT NULL default '',
  body text NOT NULL,
  pictype varchar(30) NOT NULL default '',
  picsrc varchar(200) NOT NULL default '',
  dtime int(11) NOT NULL default '0',
  uptime int(11) NOT NULL default '0',
  exptime int(11) NOT NULL default '0',
  ip varchar(30) NOT NULL default '',
  iffb int(1) NOT NULL default '0',
  tj int(1) NOT NULL default '0',
  PRIMARY KEY  (id)
) ENGINE=MyISAM DEFAULT CHARSET=gbk;

#
# 导出下面的数据库内容 `efood_info`
#

INSERT INTO efood_info VALUES (13, 3, 3, '0003:;', 2, '0002:', 1, 0, '招聘兰州牛肉拉面师', '招聘兰州牛肉拉面师', '', '', 1163956585, 1163956585, 1195492585, '192.168.2.201', 1, 0);
INSERT INTO efood_info VALUES (14, 3, 3, '0003:;', 2, '0002:', 1, 0, '招聘餐厅经理1名领班3名', '招聘餐厅经理1名领班3名', '', '', 1163956614, 1163956614, 1195492614, '192.168.2.201', 1, 0);
INSERT INTO efood_info VALUES (10, 3, 2, '0002:;', 2, '0002:', 1, 0, '供应大量微波炉', '供应大量微波炉', 'gif', 'com/100003/images/1163956456.jpg', 1163956456, 1163956456, 1195492456, '192.168.2.201', 1, 0);
INSERT INTO efood_info VALUES (11, 3, 2, '0002:;', 2, '0002:', 1, 0, '供应蒸汽王子微波炉', '供应蒸汽王子微波炉', 'gif', 'com/100003/images/1163956489.jpg', 1163956489, 1163956489, 1195492489, '192.168.2.201', 1, 0);
INSERT INTO efood_info VALUES (12, 3, 2, '0002:;', 2, '0002:', 1, 0, '供应灵感光波系列微波炉', '供应蒸汽王子微波炉', '', '', 1163956548, 1163956548, 1195492548, '192.168.2.201', 1, 0);
INSERT INTO efood_info VALUES (15, 7, 1, '0001:;', 6, '0006:', 1, 0, '每日求购大量黄鱼肚', '每日求购大量黄鱼肚', '', '', 1163956697, 1163956697, 1195492697, '192.168.2.201', 1, 0);
INSERT INTO efood_info VALUES (16, 7, 5, '0005:;', 6, '0006:', 1, 0, '组织中小餐厅去温岭团购海鲜', '组织中小餐厅去温岭团购海鲜', '', '', 1163956758, 1163956758, 1195492758, '192.168.2.201', 1, 0);
INSERT INTO efood_info VALUES (17, 7, 7, '0007:;', 6, '0006:', 1, 0, '隍城根火锅杭州湖滨路店开张', '隍城根火锅杭州湖滨路店开张', '', '', 1163956804, 1163956804, 1195492804, '192.168.2.201', 1, 0);
INSERT INTO efood_info VALUES (18, 5, 4, '0004:;', 4, '0004:', 1, 0, '本餐馆老店迁址原店面转让', '本餐馆老店迁址原店面转让', '', '', 1163956864, 1163956864, 1195492864, '192.168.2.201', 1, 0);
INSERT INTO efood_info VALUES (19, 5, 6, '0006:;0007:;', 4, '0004:', 1, 0, '新店开张吃100送20优惠活动', '新店开张吃100送20优惠活动', '', '', 1163956922, 1163956922, 1195492922, '192.168.2.201', 1, 0);
INSERT INTO efood_info VALUES (20, 5, 8, '0008:;', 4, '0004:', 1, 0, '我发一条其他信息测试一下', '我发一条其他信息测试一下', '', '', 1163957030, 1163957030, 1195493030, '192.168.2.201', 1, 0);
INSERT INTO efood_info VALUES (21, 6, 6, '0006:;', 1, '0001:', 1, 0, '品农家菜午餐7折优惠', '品农家菜午餐7折优惠', '', '', 1163957104, 1163957104, 1171733104, '192.168.2.201', 1, 0);
INSERT INTO efood_info VALUES (22, 6, 3, '0003:;', 1, '0001:', 1, 0, '招聘餐厅主管2名', '招聘餐厅主管2名', '', '', 1163957136, 1163957136, 1195493136, '192.168.2.201', 1, 0);
# --------------------------------------------------------

#
# 数据表的结构 `efood_info_cat`
#

CREATE TABLE efood_info_cat (
  catid int(12) NOT NULL auto_increment,
  pid int(12) default NULL,
  cat varchar(100) default NULL,
  xuhao int(4) default NULL,
  catpath varchar(255) default NULL,
  sellnums int(20) NOT NULL default '0',
  buynums int(12) NOT NULL default '0',
  prodnums int(12) NOT NULL default '0',
  tj int(1) NOT NULL default '0',
  PRIMARY KEY  (catid)
) ENGINE=MyISAM DEFAULT CHARSET=gbk;

#
# 导出下面的数据库内容 `efood_info_cat`
#

INSERT INTO efood_info_cat VALUES (1, 0, '供求信息', 8, '0001:', 1, 0, 0, 0);
INSERT INTO efood_info_cat VALUES (2, 0, '餐饮设备', 2, '0002:', 3, 0, 2, 0);
INSERT INTO efood_info_cat VALUES (3, 0, '餐饮人才', 3, '0003:', 3, 0, 0, 0);
INSERT INTO efood_info_cat VALUES (4, 0, '店面转让', 4, '0004:', 1, 0, 1, 0);
INSERT INTO efood_info_cat VALUES (5, 0, '美食团购', 5, '0005:', 1, 0, 5, 0);
INSERT INTO efood_info_cat VALUES (6, 0, '优惠促销', 6, '0006:', 2, 0, 1, 0);
INSERT INTO efood_info_cat VALUES (7, 0, '新店开张', 7, '0007:', 2, 0, 0, 0);
INSERT INTO efood_info_cat VALUES (8, 0, '其他信息', 9, '0008:', 1, 0, 0, 0);
# --------------------------------------------------------

#
# 数据表的结构 `efood_infotype`
#

CREATE TABLE efood_infotype (
  id int(12) NOT NULL auto_increment,
  infotype char(100) NOT NULL default '',
  PRIMARY KEY  (id)
) ENGINE=MyISAM DEFAULT CHARSET=gbk;

#
# 导出下面的数据库内容 `efood_infotype`
#

INSERT INTO efood_infotype VALUES (1, '供求信息');
INSERT INTO efood_infotype VALUES (2, '代理信息');
INSERT INTO efood_infotype VALUES (3, '合作信息');
# --------------------------------------------------------

#
# 数据表的结构 `efood_job`
#

CREATE TABLE efood_job (
  id int(12) NOT NULL auto_increment,
  memberid int(20) NOT NULL default '0',
  title varchar(200) NOT NULL default '',
  body text NOT NULL,
  zw varchar(30) NOT NULL default '',
  rs varchar(30) NOT NULL default '',
  dtime int(11) NOT NULL default '0',
  uptime int(11) NOT NULL default '0',
  ip varchar(30) NOT NULL default '',
  iffb int(1) NOT NULL default '0',
  PRIMARY KEY  (id)
) ENGINE=MyISAM DEFAULT CHARSET=gbk;

#
# 导出下面的数据库内容 `efood_job`
#

# --------------------------------------------------------

#
# 数据表的结构 `efood_link`
#

CREATE TABLE efood_link (
  id int(12) NOT NULL auto_increment,
  showtype varchar(10) default NULL,
  name varchar(200) default NULL,
  url varchar(200) default NULL,
  xuhao int(5) default NULL,
  `type` varchar(20) default NULL,
  src varchar(20) default NULL,
  cl int(10) default NULL,
  PRIMARY KEY  (id)
) ENGINE=MyISAM DEFAULT CHARSET=gbk;

#
# 导出下面的数据库内容 `efood_link`
#

# --------------------------------------------------------

#
# 数据表的结构 `efood_logo`
#

CREATE TABLE efood_logo (
  id int(4) NOT NULL auto_increment,
  menuid int(12) NOT NULL default '0',
  width int(10) default '0',
  height int(10) default '0',
  `type` varchar(20) default '',
  src varchar(100) default '',
  url varchar(200) default '',
  target varchar(100) default '',
  border int(2) default '0',
  hidden int(1) default '0',
  PRIMARY KEY  (id)
) ENGINE=MyISAM DEFAULT CHARSET=gbk;

#
# 导出下面的数据库内容 `efood_logo`
#

INSERT INTO efood_logo VALUES (1, 1, 100, 50, 'gif', 'images/logo.gif', '', '', 0, 0);
# --------------------------------------------------------

#
# 数据表的结构 `efood_mailtemp`
#

CREATE TABLE efood_mailtemp (
  id int(12) NOT NULL auto_increment,
  title varchar(200) NOT NULL default '',
  body text NOT NULL,
  PRIMARY KEY  (id)
) ENGINE=MyISAM DEFAULT CHARSET=gbk;

#
# 导出下面的数据库内容 `efood_mailtemp`
#

INSERT INTO efood_mailtemp VALUES (9, '测试邮件组', '请输入邮件内容');
# --------------------------------------------------------

#
# 数据表的结构 `efood_member`
#

CREATE TABLE efood_member (
  memberid int(12) NOT NULL auto_increment,
  membertypeid int(3) default NULL,
  `user` varchar(30) default NULL,
  `password` varchar(50) default NULL,
  company varchar(255) default NULL,
  name varchar(255) default NULL,
  sex varchar(20) default NULL,
  birthday int(8) default NULL,
  zoneid int(10) default NULL,
  zonepath varchar(255) NOT NULL default '',
  catid int(10) default NULL,
  catpath varchar(255) NOT NULL default '',
  addr varchar(255) default NULL,
  tel varchar(255) default NULL,
  mov varchar(255) default NULL,
  fax varchar(255) default NULL,
  postcode varchar(255) default NULL,
  email varchar(255) default NULL,
  url varchar(255) default NULL,
  passtype varchar(255) default NULL,
  passcode varchar(255) default NULL,
  qq varchar(100) default NULL,
  msn varchar(100) default NULL,
  maillist int(1) default NULL,
  bz text,
  checked int(1) default NULL,
  regtime int(11) default NULL,
  exptime int(11) default NULL,
  account decimal(12,2) default NULL,
  paytotal decimal(12,2) default NULL,
  buytotal decimal(12,2) default NULL,
  cent decimal(12,2) default NULL,
  ip varchar(26) default NULL,
  logincount int(20) default NULL,
  logintime int(11) default NULL,
  loginip varchar(50) default NULL,
  PRIMARY KEY  (memberid)
) ENGINE=MyISAM DEFAULT CHARSET=gbk;

#
# 导出下面的数据库内容 `efood_member`
#

INSERT INTO efood_member VALUES (3, 3, 'aaaaa', '594f803b380a41396ed63dca39503542', '巴黎春天大酒店', '张文', '1', 19600101, 2, '0002:', 2, '0002:;0008:;0024:;', '嘉兴市中山路248号', '0573-2109889', '', '0573-2109889', '314000', 'qu@eb2000.cn', 'http://', '身份证', '', '', '', 0, '', 1, 1162659810, 1165251810, '0.00', '0.00', '0.00', '0.00', '192.168.2.201', 25, 1163969639, '192.168.2.201');
INSERT INTO efood_member VALUES (4, 3, 'qqqqq', '437599f1ea3514f8969f161a6606ce18', '粤海云特色餐厅', 'qqqq', '1', 19600101, 2, '0002:', 1, '0001:;', '城南路文昌路口', '0573-2132226', '', '0573-2132226', '333333', 'qqq@sss.cn', 'http://', '身份证', '', '', '', 0, '', 1, 1162827864, 1165419864, '0.00', '0.00', '0.00', '0.00', '192.168.2.201', 1, 1162827864, '192.168.2.201');
INSERT INTO efood_member VALUES (5, 3, 'ccccc', '67c762276bced09ee4df0ed537d164ea', '江南名庄风味餐厅', '测试', '1', 19600101, 4, '0004:', 28, '0028:;', '嘉兴市秀州北路', '0573-2109889', '', '0573-2109889', '314000', 'c@www.cn', 'http://', '身份证', '', '', '', 0, '', 1, 1162832986, 1165424986, '0.00', '0.00', '0.00', '0.00', '192.168.2.201', 10, 1163701999, '192.168.2.201');
INSERT INTO efood_member VALUES (6, 3, 'fffff', 'a98f6f64e6cdfac22ab2ffd15a7241e3', '小湘农家菜馆中山店', '小夏', '2', 19600101, 1, '0001:', 4, '0004:;', '中山路2288号', '0573-6883210', '', '0573-6883210', '314000', 'fdk@xmss.com', 'http://', '身份证', '', '', '', 0, '', 1, 1162836027, 1165428027, '0.00', '0.00', '0.00', '0.00', '192.168.2.201', 1, 1162836027, '192.168.2.201');
INSERT INTO efood_member VALUES (7, 3, 'ddccc', '67c762276bced09ee4df0ed537d164ea', '皇城根火锅城', '小刘', '2', 19600101, 6, '0006:', 9, '0009:;', '开发区政府西侧', '0573-6543212', '', '0573-6543212', '314002', 'c@www.cn', 'http://', '身份证', '', '', '', 0, '', 1, 1162836669, 1165428669, '0.00', '0.00', '0.00', '0.00', '192.168.2.201', 1, 1162836669, '192.168.2.201');
INSERT INTO efood_member VALUES (9, 3, 'weblin', '594f803b380a41396ed63dca39503542', '东海鱼港海鲜酒楼', '尚伟', '1', 19600101, 1, '0001:', 10, '0010:;', '0573-2099000', '0573-2099000', '', '0573-2099000', '314000', 'www@aaa.cn', 'http://', '身份证', '', '', '', 0, '', 1, 1163521057, 1166113057, '0.00', '0.00', '0.00', '0.00', '192.168.2.201', 1, 1163521057, '192.168.2.201');
# --------------------------------------------------------

#
# 数据表的结构 `efood_member_cat`
#

CREATE TABLE efood_member_cat (
  catid int(12) NOT NULL auto_increment,
  pid int(12) default NULL,
  cat varchar(100) default NULL,
  xuhao int(4) default NULL,
  catpath varchar(255) default NULL,
  nums int(20) NOT NULL default '0',
  tj int(1) NOT NULL default '0',
  PRIMARY KEY  (catid)
) ENGINE=MyISAM DEFAULT CHARSET=gbk;

#
# 导出下面的数据库内容 `efood_member_cat`
#

INSERT INTO efood_member_cat VALUES (1, 0, '粤菜', 1, '0001:', 1, 0);
INSERT INTO efood_member_cat VALUES (2, 0, '川菜', 2, '0002:', 1, 0);
INSERT INTO efood_member_cat VALUES (3, 0, '湘菜', 3, '0003:', 0, 0);
INSERT INTO efood_member_cat VALUES (4, 0, '浙菜', 4, '0004:', 1, 0);
INSERT INTO efood_member_cat VALUES (5, 0, '鲁菜', 5, '0005:', 1, 0);
INSERT INTO efood_member_cat VALUES (6, 0, '徽菜', 6, '0006:', 0, 0);
INSERT INTO efood_member_cat VALUES (7, 0, '闽菜', 7, '0007:', 0, 0);
INSERT INTO efood_member_cat VALUES (8, 0, '苏菜', 8, '0008:', 1, 0);
INSERT INTO efood_member_cat VALUES (9, 0, '火锅', 9, '0009:', 1, 0);
INSERT INTO efood_member_cat VALUES (10, 0, '海鲜', 10, '0010:', 1, 0);
INSERT INTO efood_member_cat VALUES (11, 0, '烧烤', 11, '0011:', 0, 0);
INSERT INTO efood_member_cat VALUES (12, 0, '素菜', 12, '0012:', 0, 0);
INSERT INTO efood_member_cat VALUES (13, 0, '台湾菜', 13, '0013:', 0, 0);
INSERT INTO efood_member_cat VALUES (14, 0, '野味', 14, '0014:', 0, 0);
INSERT INTO efood_member_cat VALUES (16, 0, '清真', 16, '0016:', 0, 0);
INSERT INTO efood_member_cat VALUES (17, 0, '自助餐', 17, '0017:', 0, 0);
INSERT INTO efood_member_cat VALUES (18, 0, '西餐', 20, '0018:', 0, 0);
INSERT INTO efood_member_cat VALUES (19, 0, '韩国料理', 18, '0019:', 0, 0);
INSERT INTO efood_member_cat VALUES (20, 0, '日本料理', 19, '0020:', 0, 0);
INSERT INTO efood_member_cat VALUES (21, 0, '面食', 21, '0021:', 0, 0);
INSERT INTO efood_member_cat VALUES (22, 0, '小吃', 25, '0022:', 1, 0);
INSERT INTO efood_member_cat VALUES (23, 0, '快餐', 26, '0023:', 0, 0);
INSERT INTO efood_member_cat VALUES (24, 0, '酒吧', 29, '0024:', 1, 0);
INSERT INTO efood_member_cat VALUES (25, 0, '咖啡厅', 28, '0025:', 0, 0);
INSERT INTO efood_member_cat VALUES (26, 0, '茶室', 27, '0026:', 1, 0);
INSERT INTO efood_member_cat VALUES (28, 0, '农家菜', 22, '0028:', 2, 0);
INSERT INTO efood_member_cat VALUES (29, 0, '京菜', 9, '0029:', 0, 0);
INSERT INTO efood_member_cat VALUES (30, 0, '时尚特色', 30, '0030:', 1, 0);
# --------------------------------------------------------

#
# 数据表的结构 `efood_member_func`
#

CREATE TABLE efood_member_func (
  id int(10) NOT NULL auto_increment,
  pid int(10) default NULL,
  menu char(50) default NULL,
  link char(100) default NULL,
  xuhao int(10) default NULL,
  used int(1) default NULL,
  intro char(255) default NULL,
  PRIMARY KEY  (id)
) ENGINE=MyISAM DEFAULT CHARSET=gbk;

#
# 导出下面的数据库内容 `efood_member_func`
#

INSERT INTO efood_member_func VALUES (1, 0, '商家专区', '', 1, 1, '');
INSERT INTO efood_member_func VALUES (2, 0, '个人专区', '', 2, 1, '');
INSERT INTO efood_member_func VALUES (3, 1, '发布/修改餐馆介绍', 'member_companyfabu.php', 1, 1, '');
INSERT INTO efood_member_func VALUES (4, 1, '餐馆图片上传', 'member_zsfabu.php', 2, 1, '');
INSERT INTO efood_member_func VALUES (5, 1, '餐馆图片管理', 'member_zs.php', 3, 1, '');
INSERT INTO efood_member_func VALUES (6, 1, '餐饮信息发布', 'member_infofabu.php', 4, 1, '');
INSERT INTO efood_member_func VALUES (7, 1, '餐饮信息管理', 'member_info.php', 5, 1, '');
INSERT INTO efood_member_func VALUES (8, 1, '菜式发布', 'member_prodfabu.php', 6, 1, '');
INSERT INTO efood_member_func VALUES (9, 1, '菜式管理', 'member_prod.php', 7, 1, '');
INSERT INTO efood_member_func VALUES (10, 2, '发起活动', 'member_hdfabu.php', 1, 1, '');
INSERT INTO efood_member_func VALUES (11, 2, '活动管理', 'member_hd.php', 2, 1, '');
INSERT INTO efood_member_func VALUES (12, 2, '文章投稿', 'member_fabu.php', 3, 1, '');
INSERT INTO efood_member_func VALUES (13, 2, '文章管理', 'member_guanli.php', 4, 1, '');
INSERT INTO efood_member_func VALUES (14, 2, '会员资料', 'member_modify.php', 5, 1, '');
INSERT INTO efood_member_func VALUES (15, 2, '站内短信', 'member_myfeedback.php', 6, 1, '');
INSERT INTO efood_member_func VALUES (16, 0, '退出登录', 'logout.php', 3, 1, '');
# --------------------------------------------------------

#
# 数据表的结构 `efood_member_func_2`
#

CREATE TABLE efood_member_func_2 (
  id int(10) NOT NULL auto_increment,
  pid int(10) default NULL,
  menu char(50) default NULL,
  link char(100) default NULL,
  xuhao int(10) default NULL,
  used int(1) default NULL,
  intro char(255) default NULL,
  PRIMARY KEY  (id)
) ENGINE=MyISAM DEFAULT CHARSET=gbk;

#
# 导出下面的数据库内容 `efood_member_func_2`
#

INSERT INTO efood_member_func_2 VALUES (1, 0, '商家专区', '', 1, 0, '');
INSERT INTO efood_member_func_2 VALUES (2, 0, '个人专区', '', 2, 1, '');
INSERT INTO efood_member_func_2 VALUES (3, 1, '发布/修改餐馆介绍', 'member_companyfabu.php', 1, 0, '');
INSERT INTO efood_member_func_2 VALUES (4, 1, '餐馆图片上传', 'member_zsfabu.php', 2, 0, '');
INSERT INTO efood_member_func_2 VALUES (5, 1, '餐馆图片管理', 'member_zs.php', 3, 0, '');
INSERT INTO efood_member_func_2 VALUES (6, 1, '餐饮信息发布', 'member_infofabu.php', 4, 0, '');
INSERT INTO efood_member_func_2 VALUES (7, 1, '餐饮信息管理', 'member_info.php', 5, 0, '');
INSERT INTO efood_member_func_2 VALUES (8, 1, '菜式发布', 'member_prodfabu.php', 6, 0, '');
INSERT INTO efood_member_func_2 VALUES (9, 1, '菜式管理', 'member_prod.php', 7, 0, '');
INSERT INTO efood_member_func_2 VALUES (10, 2, '发起活动', 'member_hdfabu.php', 1, 1, '');
INSERT INTO efood_member_func_2 VALUES (11, 2, '活动管理', 'member_hd.php', 2, 1, '');
INSERT INTO efood_member_func_2 VALUES (12, 2, '文章投稿', 'member_fabu.php', 3, 1, '');
INSERT INTO efood_member_func_2 VALUES (13, 2, '文章管理', 'member_guanli.php', 4, 1, '');
INSERT INTO efood_member_func_2 VALUES (14, 2, '会员资料', 'member_modify.php', 5, 1, '');
INSERT INTO efood_member_func_2 VALUES (15, 2, '站内短信', 'member_myfeedback.php', 6, 1, '');
INSERT INTO efood_member_func_2 VALUES (16, 0, '退出登录', 'logout.php', 3, 1, '');
# --------------------------------------------------------

#
# 数据表的结构 `efood_member_func_3`
#

CREATE TABLE efood_member_func_3 (
  id int(10) NOT NULL auto_increment,
  pid int(10) default NULL,
  menu char(50) default NULL,
  link char(100) default NULL,
  xuhao int(10) default NULL,
  used int(1) default NULL,
  intro char(255) default NULL,
  PRIMARY KEY  (id)
) ENGINE=MyISAM DEFAULT CHARSET=gbk;

#
# 导出下面的数据库内容 `efood_member_func_3`
#

INSERT INTO efood_member_func_3 VALUES (1, 0, '商家专区', '', 1, 1, '');
INSERT INTO efood_member_func_3 VALUES (2, 0, '个人专区', '', 2, 1, '');
INSERT INTO efood_member_func_3 VALUES (3, 1, '发布/修改餐馆介绍', 'member_companyfabu.php', 1, 1, '');
INSERT INTO efood_member_func_3 VALUES (4, 1, '餐馆图片上传', 'member_zsfabu.php', 2, 1, '');
INSERT INTO efood_member_func_3 VALUES (5, 1, '餐馆图片管理', 'member_zs.php', 3, 1, '');
INSERT INTO efood_member_func_3 VALUES (6, 1, '餐饮信息发布', 'member_infofabu.php', 4, 1, '');
INSERT INTO efood_member_func_3 VALUES (7, 1, '餐饮信息管理', 'member_info.php', 5, 1, '');
INSERT INTO efood_member_func_3 VALUES (8, 1, '菜式发布', 'member_prodfabu.php', 6, 1, '');
INSERT INTO efood_member_func_3 VALUES (9, 1, '菜式管理', 'member_prod.php', 7, 1, '');
INSERT INTO efood_member_func_3 VALUES (10, 2, '发起活动', 'member_hdfabu.php', 1, 1, '');
INSERT INTO efood_member_func_3 VALUES (11, 2, '活动管理', 'member_hd.php', 2, 1, '');
INSERT INTO efood_member_func_3 VALUES (12, 2, '文章投稿', 'member_fabu.php', 3, 1, '');
INSERT INTO efood_member_func_3 VALUES (13, 2, '文章管理', 'member_guanli.php', 4, 1, '');
INSERT INTO efood_member_func_3 VALUES (14, 2, '会员资料', 'member_modify.php', 5, 1, '');
INSERT INTO efood_member_func_3 VALUES (15, 2, '站内短信', 'member_myfeedback.php', 6, 1, '');
INSERT INTO efood_member_func_3 VALUES (16, 0, '退出登录', 'logout.php', 3, 1, '');
# --------------------------------------------------------

#
# 数据表的结构 `efood_member_notice`
#

CREATE TABLE efood_member_notice (
  id int(12) NOT NULL auto_increment,
  membertypeid int(20) default NULL,
  title varchar(255) default NULL,
  body text,
  dtime int(11) default NULL,
  xuhao int(5) default NULL,
  cl int(20) default NULL,
  ifnew int(1) default NULL,
  ifred int(1) default NULL,
  PRIMARY KEY  (id)
) ENGINE=MyISAM DEFAULT CHARSET=gbk;

#
# 导出下面的数据库内容 `efood_member_notice`
#

# --------------------------------------------------------

#
# 数据表的结构 `efood_member_nums`
#

CREATE TABLE efood_member_nums (
  id int(12) NOT NULL auto_increment,
  memberid int(50) default NULL,
  secureid int(50) default NULL,
  nums int(20) default NULL,
  PRIMARY KEY  (id)
) ENGINE=MyISAM DEFAULT CHARSET=gbk;

#
# 导出下面的数据库内容 `efood_member_nums`
#

# --------------------------------------------------------

#
# 数据表的结构 `efood_member_regform`
#

CREATE TABLE efood_member_regform (
  id int(12) NOT NULL auto_increment,
  formname varchar(200) default NULL,
  formcolname varchar(200) default NULL,
  mustfill int(1) default NULL,
  canrepeat int(1) default NULL,
  moveable int(1) default NULL,
  intro text,
  used int(1) default NULL,
  xuhao int(20) default NULL,
  PRIMARY KEY  (id)
) ENGINE=MyISAM DEFAULT CHARSET=gbk;

#
# 导出下面的数据库内容 `efood_member_regform`
#

INSERT INTO efood_member_regform VALUES (1, '会员帐号', 'user', 1, 0, 0, '[5-20位英文或数字]', 1, 0);
INSERT INTO efood_member_regform VALUES (2, '登录密码', 'password', 1, 1, 0, '[5-20位英文或数字]', 1, 0);
INSERT INTO efood_member_regform VALUES (3, '重复密码', 'repass', 1, 1, 0, '[5-20位英文或数字]', 1, 0);
INSERT INTO efood_member_regform VALUES (4, '餐馆名称', 'company', 1, 1, 1, '', 1, 0);
INSERT INTO efood_member_regform VALUES (5, '主营菜系', 'catid', 0, 1, 1, '', 1, 0);
INSERT INTO efood_member_regform VALUES (6, '联 系 人', 'name', 1, 1, 1, '', 1, 0);
INSERT INTO efood_member_regform VALUES (7, '您的称呼', 'sex', 1, 1, 1, '', 1, 0);
INSERT INTO efood_member_regform VALUES (8, '出生年月', 'birthday', 0, 1, 1, '', 0, 0);
INSERT INTO efood_member_regform VALUES (9, '所在区域', 'zoneid', 0, 1, 1, '', 1, 0);
INSERT INTO efood_member_regform VALUES (10, '餐馆地址', 'addr', 0, 1, 1, '', 1, 0);
INSERT INTO efood_member_regform VALUES (11, '联系电话', 'tel', 0, 1, 1, '', 1, 0);
INSERT INTO efood_member_regform VALUES (12, '手机号码', 'mov', 0, 1, 1, '', 0, 0);
INSERT INTO efood_member_regform VALUES (13, '订座电话', 'fax', 0, 1, 1, '', 1, 0);
INSERT INTO efood_member_regform VALUES (14, '邮政编码', 'postcode', 0, 1, 1, '', 1, 0);
INSERT INTO efood_member_regform VALUES (15, '电子邮件', 'email', 1, 1, 0, '[请输入正确的电子邮件]', 1, 0);
INSERT INTO efood_member_regform VALUES (16, '网站网址', 'url', 0, 1, 1, '', 1, 0);
INSERT INTO efood_member_regform VALUES (17, '证件类型', 'passtype', 0, 1, 1, '', 0, 0);
INSERT INTO efood_member_regform VALUES (18, '证件号码', 'passcode', 0, 1, 1, '', 0, 0);
INSERT INTO efood_member_regform VALUES (19, 'QQ号码', 'qq', 0, 1, 1, '', 0, 0);
INSERT INTO efood_member_regform VALUES (20, 'MSN号码', 'msn', 0, 1, 1, '', 0, 0);
INSERT INTO efood_member_regform VALUES (21, '备注留言', 'bz', 0, 1, 1, '', 0, 0);
# --------------------------------------------------------

#
# 数据表的结构 `efood_member_regform_2`
#

CREATE TABLE efood_member_regform_2 (
  id int(12) NOT NULL auto_increment,
  formname varchar(200) default NULL,
  formcolname varchar(200) default NULL,
  mustfill int(1) default NULL,
  canrepeat int(1) default NULL,
  moveable int(1) default NULL,
  intro text,
  used int(1) default NULL,
  xuhao int(20) default NULL,
  PRIMARY KEY  (id)
) ENGINE=MyISAM DEFAULT CHARSET=gbk;

#
# 导出下面的数据库内容 `efood_member_regform_2`
#

INSERT INTO efood_member_regform_2 VALUES (1, '会员帐号', 'user', 1, 0, 0, '[5-20位英文或数字]', 1, 0);
INSERT INTO efood_member_regform_2 VALUES (2, '登录密码', 'password', 1, 1, 0, '[5-20位英文或数字]', 1, 0);
INSERT INTO efood_member_regform_2 VALUES (3, '重复密码', 'repass', 1, 1, 0, '[5-20位英文或数字]', 1, 0);
INSERT INTO efood_member_regform_2 VALUES (4, '餐馆名称', 'company', 0, 1, 1, '', 0, 0);
INSERT INTO efood_member_regform_2 VALUES (5, '主营菜系', 'catid', 0, 1, 1, '', 0, 0);
INSERT INTO efood_member_regform_2 VALUES (6, '会员姓名', 'name', 1, 1, 1, '', 1, 0);
INSERT INTO efood_member_regform_2 VALUES (7, '您的称呼', 'sex', 1, 1, 1, '', 1, 0);
INSERT INTO efood_member_regform_2 VALUES (8, '出生年月', 'birthday', 0, 1, 1, '', 1, 0);
INSERT INTO efood_member_regform_2 VALUES (9, '所在地区', 'zoneid', 0, 1, 1, '', 0, 0);
INSERT INTO efood_member_regform_2 VALUES (10, '通信地址', 'addr', 0, 1, 1, '', 0, 0);
INSERT INTO efood_member_regform_2 VALUES (11, '电话号码', 'tel', 0, 1, 1, '', 1, 0);
INSERT INTO efood_member_regform_2 VALUES (12, '手机号码', 'mov', 0, 1, 1, '', 1, 0);
INSERT INTO efood_member_regform_2 VALUES (13, '传真号码', 'fax', 0, 1, 1, '', 0, 0);
INSERT INTO efood_member_regform_2 VALUES (14, '邮政编码', 'postcode', 0, 1, 1, '', 0, 0);
INSERT INTO efood_member_regform_2 VALUES (15, '电子邮件', 'email', 1, 1, 0, '[请输入正确的电子邮件]', 1, 0);
INSERT INTO efood_member_regform_2 VALUES (16, '公司网址', 'url', 0, 1, 1, '', 0, 0);
INSERT INTO efood_member_regform_2 VALUES (17, '证件类型', 'passtype', 0, 1, 1, '', 1, 0);
INSERT INTO efood_member_regform_2 VALUES (18, '证件号码', 'passcode', 0, 1, 1, '', 1, 0);
INSERT INTO efood_member_regform_2 VALUES (19, 'QQ号码', 'qq', 0, 1, 1, '', 0, 0);
INSERT INTO efood_member_regform_2 VALUES (20, 'MSN号码', 'msn', 0, 1, 1, '', 0, 0);
INSERT INTO efood_member_regform_2 VALUES (21, '备注留言', 'bz', 0, 1, 1, '', 0, 0);
# --------------------------------------------------------

#
# 数据表的结构 `efood_member_regform_3`
#

CREATE TABLE efood_member_regform_3 (
  id int(12) NOT NULL auto_increment,
  formname varchar(200) default NULL,
  formcolname varchar(200) default NULL,
  mustfill int(1) default NULL,
  canrepeat int(1) default NULL,
  moveable int(1) default NULL,
  intro text,
  used int(1) default NULL,
  xuhao int(20) default NULL,
  PRIMARY KEY  (id)
) ENGINE=MyISAM DEFAULT CHARSET=gbk;

#
# 导出下面的数据库内容 `efood_member_regform_3`
#

INSERT INTO efood_member_regform_3 VALUES (1, '会员帐号', 'user', 1, 0, 0, '[5-20位英文或数字]', 1, 0);
INSERT INTO efood_member_regform_3 VALUES (2, '登录密码', 'password', 1, 1, 0, '[5-20位英文或数字]', 1, 0);
INSERT INTO efood_member_regform_3 VALUES (3, '重复密码', 'repass', 1, 1, 0, '[5-20位英文或数字]', 1, 0);
INSERT INTO efood_member_regform_3 VALUES (4, '餐馆名称', 'company', 1, 1, 1, '', 1, 0);
INSERT INTO efood_member_regform_3 VALUES (5, '主营菜系', 'catid', 1, 1, 1, '', 1, 0);
INSERT INTO efood_member_regform_3 VALUES (6, '联 系 人', 'name', 1, 1, 1, '', 1, 0);
INSERT INTO efood_member_regform_3 VALUES (7, '您的称呼', 'sex', 1, 1, 1, '', 1, 0);
INSERT INTO efood_member_regform_3 VALUES (8, '出生年月', 'birthday', 0, 1, 1, '', 0, 0);
INSERT INTO efood_member_regform_3 VALUES (9, '所在区域', 'zoneid', 1, 1, 1, '', 1, 0);
INSERT INTO efood_member_regform_3 VALUES (10, '餐馆地址', 'addr', 1, 1, 1, '', 1, 0);
INSERT INTO efood_member_regform_3 VALUES (11, '联系电话', 'tel', 1, 1, 1, '', 1, 0);
INSERT INTO efood_member_regform_3 VALUES (12, '手机号码', 'mov', 0, 1, 1, '', 0, 0);
INSERT INTO efood_member_regform_3 VALUES (13, '订座电话', 'fax', 1, 1, 1, '', 1, 0);
INSERT INTO efood_member_regform_3 VALUES (14, '邮政编码', 'postcode', 0, 1, 1, '', 1, 0);
INSERT INTO efood_member_regform_3 VALUES (15, '电子邮件', 'email', 1, 1, 0, '[请输入正确的电子邮件]', 1, 0);
INSERT INTO efood_member_regform_3 VALUES (16, '公司网址', 'url', 0, 1, 1, '', 0, 0);
INSERT INTO efood_member_regform_3 VALUES (17, '证件类型', 'passtype', 0, 1, 1, '', 0, 0);
INSERT INTO efood_member_regform_3 VALUES (18, '证件号码', 'passcode', 0, 1, 1, '', 0, 0);
INSERT INTO efood_member_regform_3 VALUES (19, 'QQ号码', 'qq', 0, 1, 1, '', 0, 0);
INSERT INTO efood_member_regform_3 VALUES (20, 'MSN号码', 'msn', 0, 1, 1, '', 0, 0);
INSERT INTO efood_member_regform_3 VALUES (21, '备注留言', 'bz', 0, 1, 1, '', 0, 0);
# --------------------------------------------------------

#
# 数据表的结构 `efood_member_rights`
#

CREATE TABLE efood_member_rights (
  id int(12) NOT NULL auto_increment,
  memberid int(50) default NULL,
  secureid int(50) default NULL,
  securetype char(100) default NULL,
  secureset int(20) default NULL,
  PRIMARY KEY  (id)
) ENGINE=MyISAM DEFAULT CHARSET=gbk;

#
# 导出下面的数据库内容 `efood_member_rights`
#

INSERT INTO efood_member_rights VALUES (85, 4, 28, 'func', 0);
INSERT INTO efood_member_rights VALUES (84, 4, 29, 'nums', 300);
INSERT INTO efood_member_rights VALUES (83, 4, 30, 'func', 0);
INSERT INTO efood_member_rights VALUES (324, 3, 29, 'func', 0);
INSERT INTO efood_member_rights VALUES (323, 3, 28, 'func', 0);
INSERT INTO efood_member_rights VALUES (322, 3, 24, 'nums', 10);
INSERT INTO efood_member_rights VALUES (321, 3, 23, 'func', 0);
INSERT INTO efood_member_rights VALUES (320, 3, 22, 'func', 0);
INSERT INTO efood_member_rights VALUES (319, 3, 21, 'nums', 30);
INSERT INTO efood_member_rights VALUES (318, 3, 20, 'func', 0);
INSERT INTO efood_member_rights VALUES (317, 3, 19, 'func', 0);
INSERT INTO efood_member_rights VALUES (316, 3, 18, 'nums', 10);
INSERT INTO efood_member_rights VALUES (315, 3, 17, 'func', 0);
INSERT INTO efood_member_rights VALUES (314, 3, 16, 'func', 0);
INSERT INTO efood_member_rights VALUES (313, 3, 13, 'func', 0);
INSERT INTO efood_member_rights VALUES (312, 3, 11, 'func', 0);
INSERT INTO efood_member_rights VALUES (311, 3, 9, 'func', 0);
INSERT INTO efood_member_rights VALUES (310, 3, 10, 'func', 0);
INSERT INTO efood_member_rights VALUES (309, 3, 8, 'func', 0);
INSERT INTO efood_member_rights VALUES (308, 3, 7, 'func', 0);
INSERT INTO efood_member_rights VALUES (307, 3, 6, 'func', 0);
INSERT INTO efood_member_rights VALUES (306, 3, 4, 'con', 0);
INSERT INTO efood_member_rights VALUES (305, 3, 3, 'menu', 0);
INSERT INTO efood_member_rights VALUES (304, 3, 2, 'func', 0);
INSERT INTO efood_member_rights VALUES (86, 4, 24, 'nums', 10);
INSERT INTO efood_member_rights VALUES (87, 4, 23, 'func', 0);
INSERT INTO efood_member_rights VALUES (88, 4, 22, 'func', 0);
INSERT INTO efood_member_rights VALUES (89, 4, 21, 'nums', 10);
INSERT INTO efood_member_rights VALUES (90, 4, 20, 'func', 0);
INSERT INTO efood_member_rights VALUES (91, 4, 19, 'func', 0);
INSERT INTO efood_member_rights VALUES (92, 4, 18, 'nums', 10);
INSERT INTO efood_member_rights VALUES (93, 4, 17, 'func', 0);
INSERT INTO efood_member_rights VALUES (94, 4, 16, 'func', 0);
INSERT INTO efood_member_rights VALUES (95, 4, 13, 'func', 0);
INSERT INTO efood_member_rights VALUES (96, 4, 11, 'func', 0);
INSERT INTO efood_member_rights VALUES (97, 4, 9, 'func', 0);
INSERT INTO efood_member_rights VALUES (98, 4, 10, 'func', 0);
INSERT INTO efood_member_rights VALUES (99, 4, 8, 'func', 0);
INSERT INTO efood_member_rights VALUES (100, 4, 7, 'func', 0);
INSERT INTO efood_member_rights VALUES (101, 4, 6, 'func', 0);
INSERT INTO efood_member_rights VALUES (102, 4, 4, 'con', 0);
INSERT INTO efood_member_rights VALUES (103, 4, 3, 'menu', 0);
INSERT INTO efood_member_rights VALUES (104, 4, 2, 'func', 0);
INSERT INTO efood_member_rights VALUES (105, 5, 30, 'func', 0);
INSERT INTO efood_member_rights VALUES (106, 5, 29, 'nums', 300);
INSERT INTO efood_member_rights VALUES (107, 5, 28, 'func', 0);
INSERT INTO efood_member_rights VALUES (108, 5, 24, 'nums', 10);
INSERT INTO efood_member_rights VALUES (109, 5, 23, 'func', 0);
INSERT INTO efood_member_rights VALUES (110, 5, 22, 'func', 0);
INSERT INTO efood_member_rights VALUES (111, 5, 21, 'nums', 10);
INSERT INTO efood_member_rights VALUES (112, 5, 20, 'func', 0);
INSERT INTO efood_member_rights VALUES (113, 5, 19, 'func', 0);
INSERT INTO efood_member_rights VALUES (114, 5, 18, 'nums', 10);
INSERT INTO efood_member_rights VALUES (115, 5, 17, 'func', 0);
INSERT INTO efood_member_rights VALUES (116, 5, 16, 'func', 0);
INSERT INTO efood_member_rights VALUES (117, 5, 13, 'func', 0);
INSERT INTO efood_member_rights VALUES (118, 5, 11, 'func', 0);
INSERT INTO efood_member_rights VALUES (119, 5, 9, 'func', 0);
INSERT INTO efood_member_rights VALUES (120, 5, 10, 'func', 0);
INSERT INTO efood_member_rights VALUES (121, 5, 8, 'func', 0);
INSERT INTO efood_member_rights VALUES (122, 5, 7, 'func', 0);
INSERT INTO efood_member_rights VALUES (123, 5, 6, 'func', 0);
INSERT INTO efood_member_rights VALUES (124, 5, 4, 'con', 0);
INSERT INTO efood_member_rights VALUES (125, 5, 3, 'menu', 0);
INSERT INTO efood_member_rights VALUES (126, 5, 2, 'func', 0);
INSERT INTO efood_member_rights VALUES (127, 6, 30, 'func', 0);
INSERT INTO efood_member_rights VALUES (128, 6, 29, 'nums', 300);
INSERT INTO efood_member_rights VALUES (129, 6, 28, 'func', 0);
INSERT INTO efood_member_rights VALUES (130, 6, 24, 'nums', 10);
INSERT INTO efood_member_rights VALUES (131, 6, 23, 'func', 0);
INSERT INTO efood_member_rights VALUES (132, 6, 22, 'func', 0);
INSERT INTO efood_member_rights VALUES (133, 6, 21, 'nums', 10);
INSERT INTO efood_member_rights VALUES (134, 6, 20, 'func', 0);
INSERT INTO efood_member_rights VALUES (135, 6, 19, 'func', 0);
INSERT INTO efood_member_rights VALUES (136, 6, 18, 'nums', 10);
INSERT INTO efood_member_rights VALUES (137, 6, 17, 'func', 0);
INSERT INTO efood_member_rights VALUES (138, 6, 16, 'func', 0);
INSERT INTO efood_member_rights VALUES (139, 6, 13, 'func', 0);
INSERT INTO efood_member_rights VALUES (140, 6, 11, 'func', 0);
INSERT INTO efood_member_rights VALUES (141, 6, 9, 'func', 0);
INSERT INTO efood_member_rights VALUES (142, 6, 10, 'func', 0);
INSERT INTO efood_member_rights VALUES (143, 6, 8, 'func', 0);
INSERT INTO efood_member_rights VALUES (144, 6, 7, 'func', 0);
INSERT INTO efood_member_rights VALUES (145, 6, 6, 'func', 0);
INSERT INTO efood_member_rights VALUES (146, 6, 4, 'con', 0);
INSERT INTO efood_member_rights VALUES (147, 6, 3, 'menu', 0);
INSERT INTO efood_member_rights VALUES (148, 6, 2, 'func', 0);
INSERT INTO efood_member_rights VALUES (149, 7, 30, 'func', 0);
INSERT INTO efood_member_rights VALUES (150, 7, 29, 'nums', 300);
INSERT INTO efood_member_rights VALUES (151, 7, 28, 'func', 0);
INSERT INTO efood_member_rights VALUES (152, 7, 24, 'nums', 10);
INSERT INTO efood_member_rights VALUES (153, 7, 23, 'func', 0);
INSERT INTO efood_member_rights VALUES (154, 7, 22, 'func', 0);
INSERT INTO efood_member_rights VALUES (155, 7, 21, 'nums', 10);
INSERT INTO efood_member_rights VALUES (156, 7, 20, 'func', 0);
INSERT INTO efood_member_rights VALUES (157, 7, 19, 'func', 0);
INSERT INTO efood_member_rights VALUES (158, 7, 18, 'nums', 10);
INSERT INTO efood_member_rights VALUES (159, 7, 17, 'func', 0);
INSERT INTO efood_member_rights VALUES (160, 7, 16, 'func', 0);
INSERT INTO efood_member_rights VALUES (161, 7, 13, 'func', 0);
INSERT INTO efood_member_rights VALUES (162, 7, 11, 'func', 0);
INSERT INTO efood_member_rights VALUES (163, 7, 9, 'func', 0);
INSERT INTO efood_member_rights VALUES (164, 7, 10, 'func', 0);
INSERT INTO efood_member_rights VALUES (165, 7, 8, 'func', 0);
INSERT INTO efood_member_rights VALUES (166, 7, 7, 'func', 0);
INSERT INTO efood_member_rights VALUES (167, 7, 6, 'func', 0);
INSERT INTO efood_member_rights VALUES (168, 7, 4, 'con', 0);
INSERT INTO efood_member_rights VALUES (169, 7, 3, 'menu', 0);
INSERT INTO efood_member_rights VALUES (170, 7, 2, 'func', 0);
INSERT INTO efood_member_rights VALUES (214, 9, 30, 'func', 0);
INSERT INTO efood_member_rights VALUES (215, 9, 29, 'nums', 300);
INSERT INTO efood_member_rights VALUES (216, 9, 28, 'func', 0);
INSERT INTO efood_member_rights VALUES (217, 9, 24, 'nums', 10);
INSERT INTO efood_member_rights VALUES (218, 9, 23, 'func', 0);
INSERT INTO efood_member_rights VALUES (219, 9, 22, 'func', 0);
INSERT INTO efood_member_rights VALUES (220, 9, 21, 'nums', 10);
INSERT INTO efood_member_rights VALUES (221, 9, 20, 'func', 0);
INSERT INTO efood_member_rights VALUES (222, 9, 19, 'func', 0);
INSERT INTO efood_member_rights VALUES (223, 9, 18, 'nums', 10);
INSERT INTO efood_member_rights VALUES (224, 9, 17, 'func', 0);
INSERT INTO efood_member_rights VALUES (225, 9, 16, 'func', 0);
INSERT INTO efood_member_rights VALUES (226, 9, 13, 'func', 0);
INSERT INTO efood_member_rights VALUES (227, 9, 11, 'func', 0);
INSERT INTO efood_member_rights VALUES (228, 9, 9, 'func', 0);
INSERT INTO efood_member_rights VALUES (229, 9, 10, 'func', 0);
INSERT INTO efood_member_rights VALUES (230, 9, 8, 'func', 0);
INSERT INTO efood_member_rights VALUES (231, 9, 7, 'func', 0);
INSERT INTO efood_member_rights VALUES (232, 9, 6, 'func', 0);
INSERT INTO efood_member_rights VALUES (233, 9, 4, 'con', 0);
INSERT INTO efood_member_rights VALUES (234, 9, 3, 'menu', 0);
INSERT INTO efood_member_rights VALUES (235, 9, 2, 'func', 0);
INSERT INTO efood_member_rights VALUES (325, 3, 30, 'func', 0);
# --------------------------------------------------------

#
# 数据表的结构 `efood_member_type`
#

CREATE TABLE efood_member_type (
  membertypeid int(6) NOT NULL auto_increment,
  membertype varchar(100) default NULL,
  memberprop int(1) NOT NULL default '0',
  ifcanreg int(1) default NULL,
  ifchecked int(1) default NULL,
  regxy text,
  regmail text,
  expday int(8) default NULL,
  startcent int(20) default NULL,
  endcent int(20) default NULL,
  PRIMARY KEY  (membertypeid)
) ENGINE=MyISAM DEFAULT CHARSET=gbk;

#
# 导出下面的数据库内容 `efood_member_type`
#

INSERT INTO efood_member_type VALUES (2, '个人会员', 0, 1, 1, '', '{#name#}{#sex#},您好!\r\n\r\n感谢您在本站注册!\r\n\r\n会员名: {#user#}\r\n密码: {#password#}\r\n\r\n网址:http://', 0, 0, 0);
INSERT INTO efood_member_type VALUES (3, '商家会员', 0, 1, 1, '', '{#name#}{#sex#},您好!\r\n\r\n感谢您在本站注册!\r\n\r\n会员名: {#user#}\r\n密码: {#password#}\r\n\r\n网址:http://', 30, 0, 0);
# --------------------------------------------------------

#
# 数据表的结构 `efood_member_zone`
#

CREATE TABLE efood_member_zone (
  catid int(12) NOT NULL auto_increment,
  pid int(12) default NULL,
  cat char(50) default NULL,
  xuhao int(4) default NULL,
  catpath char(255) default NULL,
  PRIMARY KEY  (catid)
) ENGINE=MyISAM DEFAULT CHARSET=gbk;

#
# 导出下面的数据库内容 `efood_member_zone`
#

INSERT INTO efood_member_zone VALUES (1, 0, '美食街', 1, '0001:');
INSERT INTO efood_member_zone VALUES (2, 0, '城南', 2, '0002:');
INSERT INTO efood_member_zone VALUES (3, 0, '城北', 3, '0003:');
INSERT INTO efood_member_zone VALUES (4, 0, '城东', 4, '0004:');
INSERT INTO efood_member_zone VALUES (5, 0, '城西', 5, '0005:');
INSERT INTO efood_member_zone VALUES (6, 0, '新区', 6, '0006:');
# --------------------------------------------------------

#
# 数据表的结构 `efood_menu`
#

CREATE TABLE efood_menu (
  menuid int(12) NOT NULL auto_increment,
  pid int(6) default NULL,
  menu varchar(50) default NULL,
  coltype varchar(30) NOT NULL default '',
  url varchar(200) default NULL,
  fold varchar(50) NOT NULL default '',
  pub varchar(50) default NULL,
  ifshow int(1) default NULL,
  moveable int(1) default NULL,
  xuhao int(4) default NULL,
  target varchar(10) default NULL,
  openindex int(1) NOT NULL default '0',
  secure int(1) NOT NULL default '0',
  skin varchar(20) NOT NULL default 'default',
  PRIMARY KEY  (menuid)
) ENGINE=MyISAM DEFAULT CHARSET=gbk;

#
# 导出下面的数据库内容 `efood_menu`
#

INSERT INTO efood_menu VALUES (1, 0, '首页', 'index', '', '', 'menu', 1, 0, 1, '_self', 0, 0, 'default');
INSERT INTO efood_menu VALUES (3, 0, '美食动态', 'news', 'http://', 'news', 'menu', 1, 0, 2, '_self', 1, 0, 'default');
INSERT INTO efood_menu VALUES (4, 1, '图文频道', 'cp', NULL, 'cp', 'smenu', 0, 0, 8, '_self', 0, 0, 'default');
INSERT INTO efood_menu VALUES (5, 1, '下载频道', 'down', NULL, 'down', 'smenu', 0, 0, 9, '_self', 0, 0, 'default');
INSERT INTO efood_menu VALUES (2, 0, '会员中心', 'member', '', '', 'menu', 1, 0, 11, '_self', 0, 0, 'default');
INSERT INTO efood_menu VALUES (6, 0, '关于我们', 'page', NULL, 'html', 'btmenu', 1, 0, 2, '_self', 0, 0, 'default');
INSERT INTO efood_menu VALUES (62, 0, '联系方式', 'page', 'http://', 'contacts', 'btmenu', 1, 0, 5, '_self', 0, 0, 'default');
INSERT INTO efood_menu VALUES (7, 0, '美食社区', 'comment', '', '', 'menu', 1, 0, 10, '_self', 0, 0, 'default');
INSERT INTO efood_menu VALUES (75, 0, '内容搜索', 'page', 'http://', 'search', 'btmenu', 0, 0, 10, '_self', 0, 0, 'default');
INSERT INTO efood_menu VALUES (74, 0, '友情链接', 'page', 'http://', 'link', 'btmenu', 1, 0, 11, '_self', 0, 0, 'default');
INSERT INTO efood_menu VALUES (8, 0, '餐馆搜索', 'company', '', 'company', 'menu', 1, 0, 3, '_self', 1, 0, 'default');
INSERT INTO efood_menu VALUES (9, 0, '餐饮信息', 'sell', '', 'sell', 'menu', 1, 0, 6, '_self', 1, 0, 'default');
INSERT INTO efood_menu VALUES (10, 0, '聚会活动', 'hd', '', 'hd', 'menu', 1, 0, 7, '_self', 1, 0, 'default');
INSERT INTO efood_menu VALUES (11, 0, '美食大全', 'products', '', 'products', 'menu', 1, 0, 5, '_self', 1, 0, 'default');
INSERT INTO efood_menu VALUES (76, 0, '美食文化', 'news', 'http://', 'wenhua', 'menu', 1, 0, 7, '_self', 1, 0, 'default');
INSERT INTO efood_menu VALUES (79, 10, '活动报道', 'news', 'http://', 'hdnews', 'smenu', 0, 0, 10, '_self', 0, 0, 'default');
# --------------------------------------------------------

#
# 数据表的结构 `efood_news_cat`
#

CREATE TABLE efood_news_cat (
  catid int(12) NOT NULL auto_increment,
  pid int(12) default NULL,
  menuid int(10) NOT NULL default '3',
  cat char(100) default NULL,
  xuhao int(12) default NULL,
  catpath char(255) default NULL,
  nums int(20) default NULL,
  secure int(1) NOT NULL default '0',
  tj int(1) NOT NULL default '0',
  PRIMARY KEY  (catid)
) ENGINE=MyISAM DEFAULT CHARSET=gbk;

#
# 导出下面的数据库内容 `efood_news_cat`
#

INSERT INTO efood_news_cat VALUES (1, 0, 3, '美食动态', 2, '0001:', 12, 0, 0);
INSERT INTO efood_news_cat VALUES (2, 0, 3, '新店开张', 1, '0002:', 6, 0, 0);
INSERT INTO efood_news_cat VALUES (3, 0, 3, '优惠促销', 3, '0003:', 6, 0, 0);
INSERT INTO efood_news_cat VALUES (11, 0, 76, '异国风情', 6, '0011:', 7, 0, 0);
INSERT INTO efood_news_cat VALUES (10, 0, 76, '饮食男女', 5, '0010:', 6, 0, 0);
INSERT INTO efood_news_cat VALUES (9, 0, 76, '饮食文化', 4, '0009:', 6, 0, 0);
INSERT INTO efood_news_cat VALUES (13, 0, 76, '美食杂谈', 8, '0013:', 6, 0, 0);
INSERT INTO efood_news_cat VALUES (12, 0, 76, '名人名食', 7, '0012:', 6, 0, 0);
INSERT INTO efood_news_cat VALUES (14, 0, 76, '饮食健康', 9, '0014:', 6, 0, 0);
INSERT INTO efood_news_cat VALUES (15, 0, 76, '快乐厨房', 10, '0015:', 7, 0, 0);
INSERT INTO efood_news_cat VALUES (16, 0, 76, '美食菜谱', 11, '0016:', 13, 0, 0);
INSERT INTO efood_news_cat VALUES (18, 0, 3, '行业资讯', 12, '0018:', 0, 0, 0);
INSERT INTO efood_news_cat VALUES (19, 0, 3, '餐饮精英', 13, '0019:', 0, 0, 0);
INSERT INTO efood_news_cat VALUES (20, 0, 79, '精彩回顾', 14, '0020:', 10, 0, 0);
# --------------------------------------------------------

#
# 数据表的结构 `efood_news_con`
#

CREATE TABLE efood_news_con (
  id int(12) NOT NULL auto_increment,
  menuid int(10) NOT NULL default '3',
  catid int(12) default NULL,
  catpath varchar(255) default NULL,
  title varchar(255) default NULL,
  body text,
  dtime int(11) default '0',
  xuhao int(5) default '0',
  cl int(20) default NULL,
  tj int(1) default NULL,
  iffb int(1) default '0',
  ifbold int(1) default '0',
  ifred int(1) default '0',
  `type` varchar(30) NOT NULL default '',
  src varchar(150) NOT NULL default '',
  uptime int(11) default '0',
  author varchar(100) default NULL,
  source varchar(100) default NULL,
  memberid varchar(100) default NULL,
  proj varchar(255) NOT NULL default '',
  secure int(11) NOT NULL default '0',
  PRIMARY KEY  (id)
) ENGINE=MyISAM DEFAULT CHARSET=gbk;

#
# 导出下面的数据库内容 `efood_news_con`
#

INSERT INTO efood_news_con VALUES (1, 3, 2, '0002:', '小尾羊全国连锁城北店10月18日开业', '', 1162638607, 1, 10, 0, 1, 0, 0, '', '', 1162639775, 'SystemMaster', '', '0', '', 0);
INSERT INTO efood_news_con VALUES (2, 3, 2, '0002:', '北京金百万烤鸭中山路店隆重开业', '金百万烤鸭南开店隆重开业', 1162638648, 1, 6, 0, 1, 0, 0, '', '', 1162639702, 'SystemMaster', '', '0', '', 0);
INSERT INTO efood_news_con VALUES (3, 3, 1, '0001:', '巨石花园美食城展现津味文化', '', 1162638740, 1, 1, 0, 1, 0, 0, '', '', 1162638740, 'SystemMaster', '', '0', '', 0);
INSERT INTO efood_news_con VALUES (4, 3, 1, '0001:', '肯德基推出新款甜品', '', 1162638760, 1, 2, 0, 1, 0, 0, '', '', 1162638760, 'SystemMaster', '', '0', '', 0);
INSERT INTO efood_news_con VALUES (5, 3, 1, '0001:', '重庆菜根香周年酬宾', '', 1162638769, 1, 2, 0, 1, 0, 0, '', '', 1162638769, 'SystemMaster', '', '0', '', 0);
INSERT INTO efood_news_con VALUES (6, 3, 1, '0001:', '川春苑成都水煮鱼优惠酬宾', '', 1162638778, 1, 1, 0, 1, 0, 0, '', '', 1162638778, 'SystemMaster', '', '0', '', 0);
INSERT INTO efood_news_con VALUES (7, 3, 1, '0001:', '川春苑成都水煮鱼优惠酬宾', '', 1162638787, 1, 1, 0, 1, 0, 0, '', '', 1162638787, 'SystemMaster', '', '0', '', 0);
INSERT INTO efood_news_con VALUES (8, 3, 1, '0001:', '滨江万丽酒店欢度圣诞平安夜', '', 1162638800, 1, 4, 0, 1, 0, 0, '', '', 1162638800, 'SystemMaster', '', '0', '', 0);
INSERT INTO efood_news_con VALUES (9, 3, 1, '0001:', '真锅咖啡馆圣诞超值大餐', '', 1162638812, 1, 2, 0, 1, 0, 0, '', '', 1162638812, 'SystemMaster', '', '0', '', 0);
INSERT INTO efood_news_con VALUES (10, 3, 1, '0001:', '腾渔村水煮鱼优惠打折', '', 1162638829, 1, 8, 0, 1, 0, 0, 'gif', 'news/html/images/1163875088.jpg', 1163875088, 'SystemMaster', '', '0', '', 0);
INSERT INTO efood_news_con VALUES (11, 3, 1, '0001:', '东海渔村百种海鲜上市', '', 1162638833, 1, 4, 0, 1, 0, 0, '', '', 1162638833, 'SystemMaster', '', '0', '', 0);
INSERT INTO efood_news_con VALUES (12, 3, 1, '0001:', '第六届啤酒节隆重开幕', '', 1162638869, 1, 4, 0, 1, 0, 0, '', '', 1162638869, 'SystemMaster', '', '0', '', 0);
INSERT INTO efood_news_con VALUES (13, 3, 2, '0002:', '辣辣香牛蛙馆10月28日重新装修开业', '', 1162638890, 1, 14, 0, 1, 0, 0, '', '', 1162639655, 'SystemMaster', '', '0', '', 0);
INSERT INTO efood_news_con VALUES (14, 3, 2, '0002:', '小湘农家菜馆中山店11月2日隆重开业', '', 1162638902, 1, 21, 0, 1, 0, 0, 'gif', 'news/html/images/1163875062.jpg', 1163875062, 'SystemMaster', '', '0', '', 0);
INSERT INTO efood_news_con VALUES (15, 3, 1, '0001:', '海河新装牛奶百万大赠送', '', 1162639153, 1, 3, 0, 1, 0, 0, '', '', 1162639153, 'SystemMaster', '', '0', '', 0);
INSERT INTO efood_news_con VALUES (16, 3, 1, '0001:', '南湖野外烧烤节11月20日开幕', '', 1162639165, 1, 33, 0, 1, 0, 0, '', '', 1162639165, 'SystemMaster', '', '0', '', 0);
INSERT INTO efood_news_con VALUES (17, 3, 2, '0002:', '沸腾渔村白堤路店12月1日隆重开业', '', 1162641827, 1, 12, 0, 1, 0, 0, '', '', 1162641827, 'SystemMaster', '', '0', '', 0);
INSERT INTO efood_news_con VALUES (18, 3, 3, '0003:', '朝日俱乐部特别推出家庭宴', '', 1162641845, 1, 6, 0, 1, 0, 0, 'gif', 'news/html/images/1163875022.jpg', 1163875330, 'SystemMaster', '', '0', '', 0);
INSERT INTO efood_news_con VALUES (19, 3, 3, '0003:', '腾渔村水煮鱼优惠打折', '', 1162641852, 1, 2, 0, 1, 0, 0, '', '', 1162641852, 'SystemMaster', '', '0', '', 0);
INSERT INTO efood_news_con VALUES (20, 3, 3, '0003:', '万顺阿鱼鲍迎新春特推出特价夜宵', '', 1162641860, 1, 3, 0, 1, 0, 0, '', '', 1162641860, 'SystemMaster', '', '0', '', 0);
INSERT INTO efood_news_con VALUES (21, 3, 3, '0003:', '万顺阿鱼鲍迎新春特推出特价夜宵', '', 1162641863, 1, 4, 0, 1, 0, 0, '', '', 1162641863, 'SystemMaster', '', '0', '', 0);
INSERT INTO efood_news_con VALUES (22, 3, 3, '0003:', '川春苑成都水煮鱼5折优惠酬宾', '', 1162641866, 1, 5, 0, 1, 0, 0, '', '', 1162641866, 'SystemMaster', '', '0', '', 0);
INSERT INTO efood_news_con VALUES (23, 3, 2, '0002:', '蜀乡人香辣小龙虾馆12月8日开业', '', 1162642966, 1, 35, 0, 1, 0, 0, '', '', 1162642966, 'SystemMaster', '', '0', '', 0);
INSERT INTO efood_news_con VALUES (24, 3, 3, '0003:', '腾渔村水煮鱼优惠打折', '', 1162643060, 1, 10, 0, 1, 0, 0, '', '', 1162643060, 'SystemMaster', '', '0', '', 0);
INSERT INTO efood_news_con VALUES (25, 76, 13, '0013:', '揭开普洱茶流行的秘密', '<IMG style="POSITION: static" height=177 alt="" hspace=12 src="http://efood.phpweb.net/wenhua/html/images/1162644906.jpg" width=252 align=left vspace=5 border=0>　　喝茶是中国人的国粹，它历来讲究一个新字，以新为贵。倘若隔了年了，即使上品的龙井也暴跌了。但近几年来出了个普洱茶，把国人的喝茶观颠覆了，而且以越陈越好；而且价钱扶摇直上。据说最高的曾卖过26000元一斤，几乎赶上了黄金。 \r\n<P></P>\r\n<P>　　因为美其名曰：“能喝的古董”。 </P>\r\n<P>　　不管普洱茶的流行是否是因为港台人的炒作，或者得益于马帮题材的电影电视，但普洱茶的另类是无可置疑的。从某种意义上说它确实是越陈越好。普洱茶早期作为以物换物，与洋人进行交换，散茶类是不易包装或运输，就像上海人说的“泡货”，体积大，效率低。于是我们的祖辈就想起了把它打压成饼状、砖状或砣状，这样效率就提高了。当然为了保证普洱茶的质量，茶农想了许多办法，进行了N次试验，终于摸索出了生茶和熟茶。窃以为，后来的普洱越陈越好是歪打正着的，没想到它在长途跋涉中以及储存中经过反复发酵， </P>\r\n<P>　　味道反而更浓郁了。本人喜欢喝普洱，原因是喝了不会胃潮，而且品的次数多了，也特别留意起它的出处和轶事。其实普洱当地产茶并不多，只是因为当时普洱是个古驿站，马帮都从此而过，因此借光而约定俗成。普洱茶大多生长在云南西部和西南部澜沧江畔的高山峻岭上，海拔在1500米至2200米，它是一种大叶乔木，叶如鸡蛋般大。据说这让那些秀气的名绿茶很不屑：我们是新芽娇嫩，你看我们的身形，碧绿生青，较小玲珑，哪像你们五大三粗，还墨出里黑……当然普洱茶也不甘示弱：六十年风水轮流转，现在流行黑里俏，何况我们耐看耐泡…… </P>\r\n<P>　　说普洱茶是“能喝的古董”，其实就是卖一个概念，并不是一概越久越好喝，比如熟茶，它是后发酵茶，八年以后也就不会再有进步了。生茶比熟茶少了一道渥堆工艺，也许它才是存放越久越好，原因是它还在不断发酵。但也有一个储存得当的问题，至少不能让它发霉。说起市面上越来越多的陈年茶，其中最经典的传闻，说整理故宫库房时发现了一大批普洱茶。有朋友置疑，当时普洱茶一般不会作为贡品，而且即使有也不会流传至今，毕竟相隔已有近百年了，更不会“满大街”的都是。当地茶商私下里透露，其实哪里来这么多三十年、五十年的，普洱茶也就近几年来吃香，过去销路不太好，许多茶厂还转产，改为生产绿茶呢。当然，普洱茶是有优劣之分的，熟茶除了口感圆润外，颜色很重要。好的熟茶泡出来色泽暗红，如红葡萄酒；而生茶更有学问，每一潽颜色不同，口感不同。老道的人喝生茶要闻“茶底”，即冲泡后的茶叶末，味道香醇，而且越泡越亮，这就是好茶。 </P>\r\n<P>　　一个当地茶商告诉本人一个“秘密”：其实自己也可以造陈年茶，你用低价多买些普洱新茶，储存在家里，隔了年不就是陈茶吗？而且上海地区潮湿温差大，发酵效率一年相当云南两年，何乐而不为呢？</P>', 1162644863, 1, 4, 0, 1, 0, 0, 'gif', 'wenhua/html/images/1162644906.jpg', 1162644966, 'SystemMaster', '', '0', '', 0);
INSERT INTO efood_news_con VALUES (26, 76, 13, '0013:', '喝汤也要注意姿势', '', 1162645445, 1, 2, 0, 1, 0, 0, '', '', 1162645445, 'SystemMaster', '', '0', '', 0);
INSERT INTO efood_news_con VALUES (43, 76, 11, '0011:', '美博物馆展出另类日本寿司', '', 1162645893, 1, 3, 0, 1, 0, 0, '', '', 1162645893, 'SystemMaster', '', '0', '', 0);
INSERT INTO efood_news_con VALUES (28, 76, 10, '0010:', '四十的男人是&quot;素猫&quot;', '', 1162645487, 1, 1, 0, 1, 0, 0, '', '', 1162645487, 'SystemMaster', '', '0', '', 0);
INSERT INTO efood_news_con VALUES (29, 76, 9, '0009:', '规范孩子用餐礼仪', '', 1162645508, 1, 1, 0, 1, 0, 0, '', '', 1162645508, 'SystemMaster', '', '0', '', 0);
INSERT INTO efood_news_con VALUES (30, 76, 12, '0012:', '王羲之以吃成名', '', 1162645649, 1, 1, 0, 1, 0, 0, '', '', 1162645649, 'SystemMaster', '', '0', '', 0);
INSERT INTO efood_news_con VALUES (31, 76, 12, '0012:', '乐山东坡墨鱼', '', 1162645667, 1, 1, 0, 1, 0, 0, '', '', 1162645667, 'SystemMaster', '', '0', '', 0);
INSERT INTO efood_news_con VALUES (32, 76, 12, '0012:', '韶山万人吃寿面缅怀毛泽东', '', 1162645699, 1, 1, 0, 1, 0, 0, '', '', 1162645699, 'SystemMaster', '', '0', '', 0);
INSERT INTO efood_news_con VALUES (33, 76, 9, '0009:', '中餐的生命力在于不统一', '', 1162645713, 1, 1, 0, 1, 0, 0, '', '', 1162645713, 'SystemMaster', '', '0', '', 0);
INSERT INTO efood_news_con VALUES (34, 76, 11, '0011:', '各国迥异的饮食方式', '', 1162645763, 1, 1, 0, 1, 0, 0, '', '', 1162645763, 'SystemMaster', '', '0', '', 0);
INSERT INTO efood_news_con VALUES (35, 76, 11, '0011:', '喝日本大碗茶要两人帮忙', '', 1162645769, 1, 1, 1, 1, 0, 0, '', '', 1162645769, 'SystemMaster', '', '0', '', 0);
INSERT INTO efood_news_con VALUES (36, 76, 14, '0014:', '民间食补有传统--吃胎盘', '', 1162645781, 1, 1, 0, 1, 0, 0, '', '', 1162645781, 'SystemMaster', '', '0', '', 0);
INSERT INTO efood_news_con VALUES (44, 76, 11, '0011:', '埃及斋月过10天吃27亿张饼', '', 1162645928, 1, 3, 0, 1, 0, 0, '', '', 1162645928, 'SystemMaster', '', '0', '', 0);
INSERT INTO efood_news_con VALUES (38, 76, 11, '0011:', '法国人与咖啡文化', '', 1162645813, 1, 1, 0, 1, 0, 0, '', '', 1162645813, 'SystemMaster', '', '0', '', 0);
INSERT INTO efood_news_con VALUES (39, 76, 11, '0011:', '西域食谱和尚尼姑也喝酒', '', 1162645828, 1, 1, 1, 1, 0, 0, '', '', 1162645828, 'SystemMaster', '', '0', '', 0);
INSERT INTO efood_news_con VALUES (40, 76, 14, '0014:', '以食代药，吃出健康', '', 1162645843, 1, 1, 0, 1, 0, 0, '', '', 1162645843, 'SystemMaster', '', '0', '', 0);
INSERT INTO efood_news_con VALUES (41, 76, 14, '0014:', '食疗保健康专家研讨会召开', '', 1162645853, 1, 1, 0, 1, 0, 0, '', '', 1162645853, 'SystemMaster', '', '0', '', 0);
INSERT INTO efood_news_con VALUES (42, 76, 11, '0011:', '韩国人吃狗肉的哲学', '', 1162645869, 1, 2, 0, 1, 0, 0, '', '', 1162645869, 'SystemMaster', '', '0', '', 0);
INSERT INTO efood_news_con VALUES (45, 76, 9, '0009:', '品味世界四大红茶', '', 1162645943, 1, 1, 0, 1, 0, 0, '', '', 1162645943, 'SystemMaster', '', '0', '', 0);
INSERT INTO efood_news_con VALUES (46, 76, 13, '0013:', '饺子的发明用来治烂耳朵的', '', 1162645958, 1, 1, 0, 1, 0, 0, '', '', 1162645958, 'SystemMaster', '', '0', '', 0);
INSERT INTO efood_news_con VALUES (47, 76, 9, '0009:', '白宫五代御厨披露饮食秘史', '', 1162645967, 1, 1, 0, 1, 0, 0, '', '', 1162645967, 'SystemMaster', '', '0', '', 0);
INSERT INTO efood_news_con VALUES (48, 76, 9, '0009:', '韩国风景带美味席卷而来', '', 1162645980, 1, 6, 1, 1, 0, 0, '', '', 1162645980, 'SystemMaster', '', '0', '', 0);
INSERT INTO efood_news_con VALUES (49, 76, 9, '0009:', '探索食境三重天', '', 1162645996, 1, 11, 0, 1, 0, 0, '', '', 1162645996, 'SystemMaster', '', '0', '', 0);
INSERT INTO efood_news_con VALUES (50, 76, 10, '0010:', '男人就应该为女人下厨！', '', 1162646081, 1, 1, 0, 1, 0, 0, '', '', 1162646081, 'SystemMaster', '', '0', '', 0);
INSERT INTO efood_news_con VALUES (51, 76, 10, '0010:', '牛根生谈“蒙牛”做强做大的秘密', '', 1162646096, 1, 1, 0, 1, 0, 0, '', '', 1162646096, 'SystemMaster', '', '0', '', 0);
INSERT INTO efood_news_con VALUES (52, 76, 10, '0010:', '当杜康遇到孔子 他们会喝什么', '', 1162646111, 1, 2, 0, 1, 0, 0, '', '', 1162646111, 'SystemMaster', '', '0', '', 0);
INSERT INTO efood_news_con VALUES (53, 76, 10, '0010:', '上哪儿去找会做饭的女人？', '', 1162646137, 1, 3, 0, 1, 0, 0, '', '', 1162646137, 'SystemMaster', '', '0', '', 0);
INSERT INTO efood_news_con VALUES (54, 76, 10, '0010:', '办公室白领MM的零食策略', '', 1162646327, 1, 2, 0, 1, 0, 0, '', '', 1162646327, 'SystemMaster', '', '0', '', 0);
INSERT INTO efood_news_con VALUES (55, 76, 12, '0012:', '西湖东坡鱼的历史典故', '', 1162646458, 1, 1, 1, 1, 0, 0, '', '', 1162646458, 'SystemMaster', '', '0', '', 0);
INSERT INTO efood_news_con VALUES (56, 76, 12, '0012:', '认真地度过每一天 豆花米线里品人生', '', 1162646486, 1, 1, 0, 1, 0, 0, '', '', 1162646486, 'SystemMaster', '', '0', '', 0);
INSERT INTO efood_news_con VALUES (57, 76, 12, '0012:', '金庸的养生之道', '', 1162646500, 1, 1, 0, 1, 0, 0, '', '', 1162646500, 'SystemMaster', '', '0', '', 0);
INSERT INTO efood_news_con VALUES (58, 76, 13, '0013:', '乾隆与凤凰蛋的传说', '', 1162646516, 1, 1, 0, 1, 0, 0, '', '', 1162646516, 'SystemMaster', '', '0', '', 0);
INSERT INTO efood_news_con VALUES (59, 76, 13, '0013:', '中国菜名有学问', '', 1162646528, 1, 1, 0, 1, 0, 0, '', '', 1162646528, 'SystemMaster', '', '0', '', 0);
INSERT INTO efood_news_con VALUES (60, 76, 13, '0013:', '白宫五代御厨披露饮食秘史', '', 1162646541, 1, 2, 1, 1, 0, 0, '', '', 1162646541, 'SystemMaster', '', '0', '', 0);
INSERT INTO efood_news_con VALUES (61, 76, 14, '0014:', '四类人吃菜时不要放蒜', '', 1162646576, 1, 1, 1, 1, 0, 0, '', '', 1162646576, 'SystemMaster', '', '0', '', 0);
INSERT INTO efood_news_con VALUES (62, 76, 14, '0014:', '改善体质最直接的方法', '', 1162646586, 1, 1, 0, 1, 0, 0, '', '', 1162646586, 'SystemMaster', '', '0', '', 0);
INSERT INTO efood_news_con VALUES (63, 76, 14, '0014:', '煲汤时间长会丢营养吗', '', 1162646595, 1, 5, 0, 1, 0, 0, '', '', 1162646595, 'SystemMaster', '', '0', '', 0);
INSERT INTO efood_news_con VALUES (64, 76, 15, '0015:', '厨房里的小窍门', '', 1162646640, 1, 1, 0, 1, 0, 0, '', '', 1162646640, 'SystemMaster', '', '0', '', 0);
INSERT INTO efood_news_con VALUES (65, 76, 15, '0015:', '包饺子的各种花样', '', 1162646648, 1, 1, 0, 1, 0, 0, '', '', 1162646648, 'SystemMaster', '', '0', '', 0);
INSERT INTO efood_news_con VALUES (66, 76, 15, '0015:', '家常炒菜的心得', '', 1162646659, 1, 1, 0, 1, 0, 0, '', '', 1162646659, 'SystemMaster', '', '0', '', 0);
INSERT INTO efood_news_con VALUES (67, 76, 15, '0015:', '购买咸蛋宜对着灯光透射以辨好坏', '', 1162646689, 1, 3, 1, 1, 0, 0, '', '', 1162646689, 'SystemMaster', '', '0', '', 0);
INSERT INTO efood_news_con VALUES (68, 76, 15, '0015:', '怎样做一道鲜美的汤', '', 1162646749, 1, 1, 1, 1, 0, 0, '', '', 1162646749, 'SystemMaster', '', '0', '', 0);
INSERT INTO efood_news_con VALUES (69, 76, 15, '0015:', '厨房用具禁忌', '', 1162646761, 1, 1, 0, 1, 0, 0, '', '', 1162646761, 'SystemMaster', '', '0', '', 0);
INSERT INTO efood_news_con VALUES (70, 76, 15, '0015:', '电磁炉对人体有伤害吗?', '', 1162646772, 1, 5, 1, 1, 0, 0, '', '', 1162646772, 'SystemMaster', '', '0', '', 0);
INSERT INTO efood_news_con VALUES (71, 76, 16, '0016:', '葵花豆腐', '', 1162646847, 1, 1, 0, 1, 0, 0, '', '', 1162646847, 'SystemMaster', '', '0', '', 0);
INSERT INTO efood_news_con VALUES (72, 76, 16, '0016:', '榨菜炒鸡柳', '', 1162646855, 1, 1, 0, 1, 0, 0, '', '', 1162646855, 'SystemMaster', '', '0', '', 0);
INSERT INTO efood_news_con VALUES (73, 76, 16, '0016:', '红烧芋头肉', '', 1162646862, 1, 1, 0, 1, 0, 0, '', '', 1162646862, 'SystemMaster', '', '0', '', 0);
INSERT INTO efood_news_con VALUES (74, 76, 16, '0016:', '铁板鱿鱼', '', 1162646871, 1, 1, 0, 1, 0, 0, '', '', 1162646871, 'SystemMaster', '', '0', '', 0);
INSERT INTO efood_news_con VALUES (75, 76, 16, '0016:', '五彩茄子', '', 1162646877, 1, 1, 0, 1, 0, 0, '', '', 1162646877, 'SystemMaster', '', '0', '', 0);
INSERT INTO efood_news_con VALUES (76, 76, 16, '0016:', '榨菜炒鸡柳', '', 1162646886, 1, 1, 0, 1, 0, 0, '', '', 1162646886, 'SystemMaster', '', '0', '', 0);
INSERT INTO efood_news_con VALUES (77, 76, 16, '0016:', '光头豆瓣鱼', '', 1162646975, 1, 4, 1, 1, 0, 0, 'gif', 'wenhua/html/images/1162646995.jpg', 1162649336, 'SystemMaster', '', '0', '', 0);
INSERT INTO efood_news_con VALUES (78, 76, 16, '0016:', '沙茶鱼头锅', '', 1162649649, 1, 3, 0, 1, 0, 0, 'gif', 'wenhua/html/images/1162649663.jpg', 1162649649, 'SystemMaster', '', '0', '', 0);
INSERT INTO efood_news_con VALUES (79, 76, 16, '0016:', '贵妃鸡翼', '', 1162649854, 1, 4, 0, 1, 0, 0, 'gif', 'wenhua/html/images/1162649859.jpg', 1162649854, 'SystemMaster', '', '0', '', 0);
INSERT INTO efood_news_con VALUES (80, 76, 16, '0016:', '荷叶饭', '', 1162649983, 1, 1, 0, 1, 0, 0, '', '', 1162649983, 'SystemMaster', '', '0', '', 0);
INSERT INTO efood_news_con VALUES (81, 76, 16, '0016:', '蜜烧红薯', '', 1162649995, 1, 1, 0, 1, 0, 0, '', '', 1162649995, 'SystemMaster', '', '0', '', 0);
INSERT INTO efood_news_con VALUES (82, 76, 16, '0016:', '自制肘花', '', 1162650008, 1, 2, 0, 1, 0, 0, '', '', 1162650008, 'SystemMaster', '', '0', '', 0);
INSERT INTO efood_news_con VALUES (83, 76, 16, '0016:', '藏式咖喱鱼', '', 1162650022, 1, 6, 0, 1, 0, 0, '', '', 1162650022, 'SystemMaster', '', '0', '', 0);
INSERT INTO efood_news_con VALUES (87, 79, 20, '0020:', '红驿饭庄美食鉴赏活动', '红驿饭庄美食鉴赏活动', 1163878269, 1, 3, 0, 1, 0, 0, 'gif', 'hdnews/html/images/1163878827.jpg', 1163878827, 'SystemMaster', '', '0', '', 0);
INSERT INTO efood_news_con VALUES (88, 79, 20, '0020:', '情动好吃堡fb回顾', '<U><FONT color=#0000ff>情动好吃堡fb回顾</FONT></U>', 1163878285, 1, 3, 0, 1, 0, 0, 'gif', 'hdnews/html/images/1163878810.jpg', 1163878810, 'SystemMaster', '', '0', '', 0);
INSERT INTO efood_news_con VALUES (89, 79, 20, '0020:', '古兜温泉单身贵族寻缘之旅', '<IMG style="POSITION: static" height=150 alt="" hspace=0 src="http://efood.phpweb.net/hdnews/html/images/1163878366.jpg" width=225 align=right border=0>这次的倾城嘉宾是热门剧集女主角 <BR>真人如剧中角色般聪慧果断和机敏 <BR>当然还有成熟女人透发的迷人魅力<BR>在倾城嘉宾和寻缘队长的带领下 <BR>一位外貌酷似明星蒙嘉慧小姐的广州美丽团友成为全场收到心意卡最多的“票后”！ <BR>而“新加坡谢贤”则与“深圳狄波拉”携手进入情侣专区共进午餐！<BR>全场公认的一对香港俊男美女更是从谈谈心食点心开始就触电，还是女方主动哦！！<BR>', 1163878311, 1, 4, 0, 1, 0, 0, 'gif', 'hdnews/html/images/1163878366.jpg', 1163878384, 'SystemMaster', '', '0', '', 0);
INSERT INTO efood_news_con VALUES (90, 79, 20, '0020:', '避风塘错宗复杂的杀人游戏', '', 1163878544, 1, 6, 0, 1, 0, 0, 'gif', 'hdnews/html/images/1163879209.jpg', 1163879209, 'SystemMaster', '', '0', '', 0);
INSERT INTO efood_news_con VALUES (91, 79, 20, '0020:', '美酒佳人-万国红酒品酒会', '', 1163878554, 1, 2, 0, 1, 0, 0, 'gif', 'hdnews/html/images/1163878773.jpg', 1163878773, 'SystemMaster', '', '0', '', 0);
INSERT INTO efood_news_con VALUES (92, 79, 20, '0020:', '全城最抵食的樱之花FB回顾', '', 1163878588, 1, 5, 0, 1, 0, 0, 'gif', 'hdnews/html/images/1163878745.jpg', 1163878745, 'SystemMaster', '', '0', '', 0);
INSERT INTO efood_news_con VALUES (93, 79, 20, '0020:', '美酒佳人-万国红酒品酒会', '', 1163879837, 1, 1, 0, 1, 0, 0, '', '', 1163879837, 'SystemMaster', '', '0', '', 0);
INSERT INTO efood_news_con VALUES (94, 79, 20, '0020:', '聚福酒家爱心fb目睹最震撼一幕', '', 1163879847, 1, 1, 0, 1, 0, 0, '', '', 1163879847, 'SystemMaster', '', '0', '', 0);
INSERT INTO efood_news_con VALUES (95, 79, 20, '0020:', '美食鉴赏红孔雀火锅吧', '', 1163879870, 1, 1, 0, 1, 0, 0, '', '', 1163879870, 'SystemMaster', '', '0', '', 0);
INSERT INTO efood_news_con VALUES (96, 79, 20, '0020:', '曾经辉煌的广州第一鸡', '', 1163879932, 1, 2, 0, 1, 0, 0, '', '', 1163879932, 'SystemMaster', '', '0', '', 0);
# --------------------------------------------------------

#
# 数据表的结构 `efood_pageset`
#

CREATE TABLE efood_pageset (
  id int(12) NOT NULL auto_increment,
  menuid int(10) NOT NULL default '0',
  name varchar(50) NOT NULL default '',
  coltype varchar(50) NOT NULL default '',
  pagename varchar(50) NOT NULL default '',
  tempfile varchar(50) NOT NULL default '',
  pagetitle varchar(255) NOT NULL default '',
  metakey varchar(255) NOT NULL default '',
  metacon text NOT NULL,
  xuhao int(5) NOT NULL default '0',
  PRIMARY KEY  (id)
) ENGINE=MyISAM DEFAULT CHARSET=gbk;

#
# 导出下面的数据库内容 `efood_pageset`
#

INSERT INTO efood_pageset VALUES (1, 1, '网站首页', 'index', 'index', 'page_index.htm', '0', '0', '0', 1);
INSERT INTO efood_pageset VALUES (2, 3, '检索页', 'news', 'query', 'page_news_query.htm', '0', '0', '0', 2);
INSERT INTO efood_pageset VALUES (3, 3, '详情页', 'news', 'detail', 'page_news_detail.htm', '0', '0', '0', 3);
INSERT INTO efood_pageset VALUES (4, 2, '会员验证页', 'member', 'admin', 'page_admin.htm', '', '', '', 2);
INSERT INTO efood_pageset VALUES (5, 2, '会员登录页', 'member', 'login', 'page_login.htm', '', '', '', 3);
INSERT INTO efood_pageset VALUES (6, 2, '重设密码页', 'member', 'lostpass', 'page_lostpass.htm', '', '', '', 2);
INSERT INTO efood_pageset VALUES (7, 2, '会员中心首页', 'member', 'main', 'page_member.htm', '', '', '', 3);
INSERT INTO efood_pageset VALUES (8, 2, '会员资料修改页', 'member', 'modify', 'page_member_modify.htm', '0', '0', '0', 2);
INSERT INTO efood_pageset VALUES (9, 2, '会员公告内容页', 'member', 'notice', 'page_member_notice.htm', '', '', '', 3);
INSERT INTO efood_pageset VALUES (10, 2, '会员资料修改确认页', 'member', 'modifyok', 'page_member_func.htm', '', '', '', 2);
INSERT INTO efood_pageset VALUES (11, 2, '会员无权访问页', 'member', 'norights', 'page_norights.htm', '', '', '', 3);
INSERT INTO efood_pageset VALUES (12, 2, '会员注册选择类型页', 'member', 'reg', 'page_reg.htm', '', '', '', 2);
INSERT INTO efood_pageset VALUES (13, 2, '会员注册填表页', 'member', 'regform', 'page_regform.htm', '', '', '', 3);
INSERT INTO efood_pageset VALUES (14, 2, '会员注册提示页', 'member', 'regok', 'page_regok.htm', '', '', '', 2);
INSERT INTO efood_pageset VALUES (15, 2, '会员注册协议页', 'member', 'regxy', 'page_regxy.htm', '', '', '', 3);
INSERT INTO efood_pageset VALUES (16, 6, '频道内容页', 'page', 'page', 'page_page.htm', '0', '0', '0', 2);
INSERT INTO efood_pageset VALUES (92, 7, '评论检索页', 'comment', 'query', 'page_comment.htm', '', '', '', 15);
INSERT INTO efood_pageset VALUES (100, 2, '文章管理页', 'member', 'artlist', 'page_member_func.htm', '', '', '', 18);
INSERT INTO efood_pageset VALUES (99, 2, '文章发布页', 'member', 'artfabu', 'page_member_func.htm', '', '', '', 17);
INSERT INTO efood_pageset VALUES (59, 5, '检索页', 'down', 'query', 'page_down_query.htm', '', '', '', 2);
INSERT INTO efood_pageset VALUES (60, 5, '详情页', 'down', 'detail', 'page_down_detail.htm', '', '', '', 3);
INSERT INTO efood_pageset VALUES (33, 3, '频道首页', 'news', 'main', 'page_news_index1.htm', '0', '0', '0', 0);
INSERT INTO efood_pageset VALUES (87, 7, '评论发表页', 'comment', 'send', 'page_comment_detail.htm', '', '', '', 16);
INSERT INTO efood_pageset VALUES (88, 7, '评论详情页', 'comment', 'detail', 'page_comment_detail.htm', '', '', '', 17);
INSERT INTO efood_pageset VALUES (101, 2, '文章修改页', 'member', 'artmodify', 'page_member_func.htm', '', '', '', 19);
INSERT INTO efood_pageset VALUES (82, 62, '频道内容页', 'page', 'page', 'page_page.htm', '0', '0', '0', 1);
INSERT INTO efood_pageset VALUES (58, 5, '频道首页', 'down', 'main', 'page_down_index.htm', '', '', '', 1);
INSERT INTO efood_pageset VALUES (54, 4, '详情页', 'cp', 'detail', 'page_cp_detail.htm', '', '', '', 3);
INSERT INTO efood_pageset VALUES (70, 54, '表单页', 'form', 'form', 'page_form.htm', '', '', '', 1);
INSERT INTO efood_pageset VALUES (52, 4, '频道首页', 'cp', 'main', 'page_cp_index.htm', '', '', '', 1);
INSERT INTO efood_pageset VALUES (53, 4, '检索页', 'cp', 'query', 'page_cp_query.htm', '', '', '', 2);
INSERT INTO efood_pageset VALUES (95, 75, '频道内容页', 'page', 'page', 'page_search.htm', '0', '0', '0', 1);
INSERT INTO efood_pageset VALUES (94, 74, '频道内容页', 'page', 'page', 'page_link.htm', '0', '0', '0', 1);
INSERT INTO efood_pageset VALUES (102, 2, '餐馆介绍发布页', 'member', 'companyfabu', 'page_member_func.htm', '', '', '', 31);
INSERT INTO efood_pageset VALUES (103, 2, '餐馆介绍修改页', 'member', 'companymodify', 'page_member_func.htm', '', '', '', 32);
INSERT INTO efood_pageset VALUES (104, 8, '餐馆频道首页', 'company', 'main', 'page_company_index.htm', '', '', '', 0);
INSERT INTO efood_pageset VALUES (105, 8, '餐馆检索搜索页', 'company', 'query', 'page_company_query.htm', '', '', '', 0);
INSERT INTO efood_pageset VALUES (106, 8, '餐馆详情介绍页', 'company', 'detail', 'page_company_detail.htm', '', '', '', 0);
INSERT INTO efood_pageset VALUES (108, 9, '餐饮信息首页', 'sell', 'main', 'page_sell_index.htm', '', '', '', 0);
INSERT INTO efood_pageset VALUES (109, 9, '餐饮信息检索页', 'sell', 'query', 'page_sell_query.htm', '', '', '', 0);
INSERT INTO efood_pageset VALUES (110, 9, '餐饮信息内容页', 'sell', 'detail', 'page_sell_detail.htm', '', '', '', 0);
INSERT INTO efood_pageset VALUES (111, 2, '餐饮信息发布页', 'member', 'infofabu', 'page_member_func.htm', '', '', '', 33);
INSERT INTO efood_pageset VALUES (112, 2, '餐饮信息管理页', 'member', 'infogl', 'page_member_func.htm', '', '', '', 34);
INSERT INTO efood_pageset VALUES (113, 9, '餐馆餐饮信息检索页', 'sell', 'list', 'page_company_sell.htm', '', '', '', 0);
INSERT INTO efood_pageset VALUES (143, 2, '活动聚会发布页', 'member', 'hdfabu', 'page_member_func.htm', '', '', '', 51);
INSERT INTO efood_pageset VALUES (119, 2, '餐饮信息修改页', 'member', 'infomodify', 'page_member_func.htm', '', '', '', 35);
INSERT INTO efood_pageset VALUES (120, 11, '美食频道首页', 'products', 'main', 'page_products_index.htm', '', '', '', 0);
INSERT INTO efood_pageset VALUES (121, 11, '美食频道检索页', 'products', 'query', 'page_products_query.htm', '', '', '', 0);
INSERT INTO efood_pageset VALUES (122, 11, '美食频道详情页', 'products', 'detail', 'page_products_detail.htm', '', '', '', 0);
INSERT INTO efood_pageset VALUES (123, 11, '餐馆菜式检索页', 'products', 'list', 'page_company_products.htm', '', '', '', 0);
INSERT INTO efood_pageset VALUES (124, 2, '餐馆菜式发布页', 'member', 'prodfabu', 'page_member_func.htm', '', '', '', 36);
INSERT INTO efood_pageset VALUES (125, 2, '餐馆菜式管理页', 'member', 'prodgl', 'page_member_func.htm', '', '', '', 37);
INSERT INTO efood_pageset VALUES (126, 2, '餐馆菜式修改页', 'member', 'prodmodify', 'page_member_func.htm', '', '', '', 38);
INSERT INTO efood_pageset VALUES (127, 2, '餐馆图片发布页', 'member', 'zsfabu', 'page_member_func.htm', '', '', '', 39);
INSERT INTO efood_pageset VALUES (128, 2, '餐馆图片管理页', 'member', 'zsgl', 'page_member_func.htm', '', '', '', 40);
INSERT INTO efood_pageset VALUES (129, 2, '餐馆图片修改页', 'member', 'zsmodify', 'page_member_func.htm', '', '', '', 41);
INSERT INTO efood_pageset VALUES (130, 8, '餐馆图片检索页', 'company', 'lic', 'page_company_lic.htm', '', '', '', 0);
INSERT INTO efood_pageset VALUES (131, 8, '餐馆图片详情页', 'company', 'licdetail', 'page_company_licdetail.htm', '', '', '', 0);
INSERT INTO efood_pageset VALUES (137, 8, '站内短信发送页', 'company', 'feedback', 'page_company_feedback.htm', '', '', '', 0);
INSERT INTO efood_pageset VALUES (138, 2, '餐馆站内短信查询页', 'member', 'feedback', 'page_member_func.htm', '', '', '', 45);
INSERT INTO efood_pageset VALUES (139, 2, '餐馆站内短信详情页', 'member', 'feedbackdetail', 'page_member_func.htm', '', '', '', 46);
INSERT INTO efood_pageset VALUES (140, 76, '频道首页', 'news', 'main', 'page_news_index.htm', '', '', '', 1);
INSERT INTO efood_pageset VALUES (141, 76, '检索页', 'news', 'query', 'page_news_query.htm', '', '', '', 2);
INSERT INTO efood_pageset VALUES (142, 76, '详情页', 'news', 'detail', 'page_news_detail.htm', '', '', '', 3);
INSERT INTO efood_pageset VALUES (144, 2, '活动聚会管理页', 'member', 'hdgl', 'page_member_func.htm', '', '', '', 52);
INSERT INTO efood_pageset VALUES (145, 2, '活动聚会修改页', 'member', 'hdmodify', 'page_member_func.htm', '', '', '', 53);
INSERT INTO efood_pageset VALUES (146, 10, '聚会活动首页', 'hd', 'main', 'page_hd_index.htm', '', '', '', 1);
INSERT INTO efood_pageset VALUES (147, 10, '聚会活动检索页', 'hd', 'query', 'page_hd_query.htm', '', '', '', 2);
INSERT INTO efood_pageset VALUES (148, 10, '聚会活动内容页', 'hd', 'detail', 'page_hd_detail.htm', '', '', '', 3);
INSERT INTO efood_pageset VALUES (153, 79, '频道首页', 'news', 'main', 'page_hd_index.htm', '0', '0', '0', 1);
INSERT INTO efood_pageset VALUES (154, 79, '检索页', 'news', 'query', 'page_news_query.htm', '', '', '', 2);
INSERT INTO efood_pageset VALUES (155, 79, '详情页', 'news', 'detail', 'page_news_detail.htm', '', '', '', 3);
# --------------------------------------------------------

#
# 数据表的结构 `efood_play`
#

CREATE TABLE efood_play (
  id int(20) NOT NULL auto_increment,
  memberid int(20) NOT NULL default '0',
  title varchar(200) NOT NULL default '',
  body text,
  picsrc varchar(150) NOT NULL default '',
  name varchar(100) NOT NULL default '',
  playaddr varchar(100) NOT NULL default '',
  playtime varchar(100) NOT NULL default '',
  dtime int(11) NOT NULL default '0',
  exptime int(11) NOT NULL default '0',
  ip varchar(16) NOT NULL default '',
  iffb int(1) NOT NULL default '0',
  xiaofei int(20) NOT NULL default '0',
  pnums int(10) NOT NULL default '0',
  addnums int(10) NOT NULL default '0',
  tj int(1) NOT NULL default '0',
  stat int(1) NOT NULL default '0',
  PRIMARY KEY  (id)
) ENGINE=MyISAM DEFAULT CHARSET=gbk;

#
# 导出下面的数据库内容 `efood_play`
#

INSERT INTO efood_play VALUES (3, 3, '烟雨南湖野外烧烤红十PK赛', '烟雨南湖野外烧烤烟雨南湖野外烧烤烟雨南湖野外烧烤222', 'hd/html/images/1163779330.jpg', 'aaaaa', '烟雨南湖边', '11月21日', 1163918986, 1164689580, '192.168.2.201', 1, 0, 10, 0, 0, 0);
INSERT INTO efood_play VALUES (4, 3, '春光乍现自驾寻春温泉之旅', '春光乍现自驾寻春温泉之旅', 'hd/html/images/1163866361.jpg', 'aaaaa', 'sdddddddddddddd', 'ddddddd', 1163866361, 1163909700, '192.168.2.201', 1, 0, 32, 0, 1, 0);
INSERT INTO efood_play VALUES (6, 3, '绝地烧鹅聚会', '绝地烧鹅聚会', 'hd/html/images/1163785041.jpg', 'aaaaa', '嘉兴星月酒家', '11月30日', 1163788601, 1167022740, '192.168.2.201', 1, 0, 21, 0, 0, 0);
INSERT INTO efood_play VALUES (7, 3, '西部牛扒据扒拉吧布', '西部牛扒据扒 ', '', 'aaaaa', '西部', '12月', 1163918852, 1164403800, '192.168.2.201', 1, 0, 22, 0, 0, 0);
INSERT INTO efood_play VALUES (8, 3, '叹正宗美式西点感受现代文化', '叹正宗美式西点感受美国现代文化。\r\n集成十多种网站系统的超大型智能建站平台；支持集群服务器，由主控网站统一管理；支持独立的VP代理商网站；可按运营商需求扩展挂接其他网站系统；运营商自主管理，独立经营 ', 'hd/html/images/1163790521.jpg', 'aaaaa', '正宗美式西22', '11月20日2222', 1163920078, 1172187180, '192.168.2.201', 1, 901, 2, 2, 1, 0);
INSERT INTO efood_play VALUES (9, 3, '品尝地道台湾小吃', '品尝地道台湾小吃', '', 'aaaaa', 'sssss', '11月21日下午18点', 1163790735, 1164403800, '192.168.2.201', 1, 30, 8, 0, 0, 0);
INSERT INTO efood_play VALUES (10, 3, '五一自煮餐', '五一自煮餐', '', 'aaaaa', 'sssss', '11月21日下午18点', 1163790635, 1164447000, '192.168.2.201', 1, 30, 8, 0, 0, 0);
INSERT INTO efood_play VALUES (11, 3, '多利来免费试食', '多利来免费试食', '', 'aaaaa', 'sssss', '11月21日下午18点', 1163790722, 1164403800, '192.168.2.201', 1, 30, 8, 1, 0, 0);
INSERT INTO efood_play VALUES (12, 3, '北京路太平馆一探', '北京路太平馆一探', '', 'aaaaa', 'sssss', '11月21日下午18点', 1163790678, 1164403800, '192.168.2.201', 1, 30, 8, 0, 0, 0);
INSERT INTO efood_play VALUES (13, 3, '家庭菜肴数怡乐居独好', '家庭菜肴数怡乐居独好', '', 'aaaaa', 'sssss', '11月21日下午18点', 1163790661, 1164403800, '192.168.2.201', 1, 30, 8, 0, 0, 0);
INSERT INTO efood_play VALUES (17, 3, '杭州天目山自助游野餐歌会', '杭州天目山自助游野餐歌会', '', 'aaaaa', '杭州天目山', '12月', 1163918946, 1164533400, '192.168.2.201', 1, 100, 20, 0, 0, 0);
INSERT INTO efood_play VALUES (18, 3, '亚洲餐厅美蟹共赏美食活动', '亚洲餐厅美蟹共赏美食活动 ', '', 'aaaaa', '亚洲餐厅', '12月1日', 1163919098, 1190453400, '192.168.2.201', 1, 12, 12, 0, 0, 0);
INSERT INTO efood_play VALUES (19, 3, '红驿饭庄北京美食鉴赏活动', '红驿饭庄北京美食鉴赏活动', '', 'aaaaa', '红驿饭庄', '12月20日', 1163919247, 1166434200, '192.168.2.201', 1, 50, 12, 0, 0, 0);
# --------------------------------------------------------

#
# 数据表的结构 `efood_player`
#

CREATE TABLE efood_player (
  id int(20) NOT NULL auto_increment,
  rid int(20) NOT NULL default '0',
  memberid int(20) NOT NULL default '0',
  name varchar(100) NOT NULL default '',
  dtime int(11) NOT NULL default '0',
  ip varchar(16) NOT NULL default '',
  PRIMARY KEY  (id)
) ENGINE=MyISAM DEFAULT CHARSET=gbk;

#
# 导出下面的数据库内容 `efood_player`
#

INSERT INTO efood_player VALUES (1, 11, 3, 'aaaaa', 1163839698, '192.168.2.201');
INSERT INTO efood_player VALUES (2, 8, 3, 'aaaaa', 1163840278, '192.168.2.201');
INSERT INTO efood_player VALUES (3, 8, 11, 'ddddddx', 1163840401, '192.168.2.201');
# --------------------------------------------------------

#
# 数据表的结构 `efood_plus`
#

CREATE TABLE efood_plus (
  id int(12) NOT NULL auto_increment,
  menuid int(10) NOT NULL default '0',
  pluslable varchar(100) default '0',
  plustype varchar(50) default '0',
  pluslocat varchar(50) default '0',
  tempname varchar(100) default '0',
  hangnums int(10) default '0',
  shownums int(10) default '0',
  smallw int(5) default '0',
  smallh int(5) default '0',
  ord varchar(20) default '0',
  sc varchar(10) default '0',
  showtime varchar(50) default '0',
  onlytj int(1) default '0',
  cutword int(20) default '0',
  target varchar(30) default '0',
  catid int(100) default '0',
  showmenuid int(10) NOT NULL default '0',
  showmore varchar(100) NOT NULL default '0',
  body text,
  modno int(3) NOT NULL default '0',
  PRIMARY KEY  (id)
) ENGINE=MyISAM DEFAULT CHARSET=gbk;

#
# 导出下面的数据库内容 `efood_plus`
#

INSERT INTO efood_plus VALUES (18, 1, 'modButtomInfo', 'index', 'index', '0', 0, 0, 0, 0, '0', '0', '0', 0, 0, '0', 0, 0, '0', '<P>城市美食网站系统 - 构建您的城市餐饮信息门户<BR>Copyright &copy; 2006-2008&nbsp; </P>', 0);
INSERT INTO efood_plus VALUES (8, 1, 'modCpCommentList', 'index', 'index', '0', 0, 0, 0, 0, '0', '0', '0', 0, 0, '0', 0, 0, 'xxxxxxxx', '0', 0);
INSERT INTO efood_plus VALUES (9, 1, 'modNewsCommentList', 'index', 'index', '0', 0, 0, 0, 0, '0', '0', '0', 0, 0, '0', 0, 0, 'sssssss', '0', 1);
INSERT INTO efood_plus VALUES (10, 1, 'modDownCommentList', 'index', 'index', '0', 0, 0, 0, 0, '0', '0', '0', 0, 0, '0', 0, 0, 'www', '0', 0);
INSERT INTO efood_plus VALUES (11, 1, 'modCommentClass', 'index', 'index', '0', 2, 0, 0, 0, '0', '0', '0', 0, 0, '0', 0, 0, '0', '0', 0);
INSERT INTO efood_plus VALUES (28, 1, 'modNewsRec', 'index', 'index', '0', 0, 12, 0, 0, '0', '0', 'n-j', 0, 19, '0', 0, 0, '0', '0', 0);
INSERT INTO efood_plus VALUES (12, 1, 'modLinkPic', 'index', 'index', '0', 0, 3, 0, 0, '0', '0', '0', 0, 0, '0', 0, 0, '更多友情链接', '0', 0);
INSERT INTO efood_plus VALUES (13, 1, 'modLinkText', 'index', 'index', '0', 0, 3, 0, 0, '0', '0', '0', 0, 0, '0', 0, 0, '更多', '0', 0);
INSERT INTO efood_plus VALUES (14, 1, 'modLinkPic', 'index', 'link', '0', 6, 100, 0, 0, '0', '0', '0', 0, 0, '0', 0, 0, '0', '0', 0);
INSERT INTO efood_plus VALUES (15, 1, 'modLinkText', 'index', 'link', '0', 6, 100, 0, 0, '0', '0', '0', 0, 0, '0', 0, 0, '0', '0', 0);
INSERT INTO efood_plus VALUES (26, 74, 'modLinkPic', 'page', 'page', '0', 7, 100, 0, 0, '0', '0', '0', 0, 0, '0', 0, 0, '0', '0', 0);
INSERT INTO efood_plus VALUES (17, 74, 'modLinkText', 'page', 'page', '0', 7, 100, 0, 0, '0', '0', '0', 0, 0, '0', 0, 0, '0', '0', 0);
INSERT INTO efood_plus VALUES (21, 3, 'modNewsQuery', 'news', 'query', '0', 0, 0, 0, 0, '0', '0', '0', 0, 0, '0', 0, 0, '0', '0', 0);
INSERT INTO efood_plus VALUES (23, 6, 'modEdit', 'page', 'page', '0', 0, 0, 0, 0, '0', '0', '0', 0, 0, '0', 0, 0, '0', '<P>&nbsp;</P>', 0);
INSERT INTO efood_plus VALUES (25, 62, 'modEdit', 'page', 'page', '0', 0, 0, 0, 0, '0', '0', '0', 0, 0, '0', 0, 0, '0', '<P>&nbsp;</P>', 0);
INSERT INTO efood_plus VALUES (27, 1, 'modNewsPicRec', 'index', 'index', '0', 0, 0, 305, 230, '0', '0', '0', 0, 25, '0', 0, 0, '0', '0', 0);
INSERT INTO efood_plus VALUES (33, 1, 'modNewsPic', 'index', 'index', '0', 0, 3, 90, 60, '0', '0', '0', 0, 6, '0', 16, 76, '0', '0', 0);
INSERT INTO efood_plus VALUES (34, 1, 'modCommentList', 'index', 'index', '0', 0, 0, 0, 0, '0', '0', 'n/j', 0, 0, '0', 0, 0, '0', '0', 0);
INSERT INTO efood_plus VALUES (35, 4, 'modCpQuery', 'cp', 'query', '0', 5, 0, 140, 105, '0', '0', '0', 0, 0, '0', 0, 0, '0', '0', 0);
INSERT INTO efood_plus VALUES (36, 3, 'modNewsPic', 'news', 'main', '0', 0, 3, 120, 80, '0', '0', '0', 0, 0, '0', 0, 0, '0', '0', 0);
INSERT INTO efood_plus VALUES (39, 1, 'modCompanyList', 'index', 'index', '0', 0, 0, 0, 0, '0', '0', '0', 0, 0, '0', 1, 8, '0', '0', 0);
INSERT INTO efood_plus VALUES (40, 8, 'modCompanyList', 'company', 'main', '0', 0, 0, 0, 0, '0', '0', '0', 0, 0, '0', 0, 0, '0', '0', 0);
INSERT INTO efood_plus VALUES (41, 8, 'modCompanyTj', 'company', 'main', '0', 0, 0, 0, 0, '0', '0', '0', 0, 0, '0', 0, 0, '0', '0', 0);
INSERT INTO efood_plus VALUES (42, 8, 'modCompanyCatTj', 'company', 'query', '0', 0, 0, 0, 0, '0', '0', '0', 0, 0, '0', 0, 0, '更多', '0', 0);
INSERT INTO efood_plus VALUES (43, 10, 'modBuyList', 'buy', 'main', '0', 0, 0, 0, 0, '0', '0', '0', 0, 0, '0', 0, 0, '更多', '0', 0);
INSERT INTO efood_plus VALUES (44, 10, 'modBuyTj', 'buy', 'main', '0', 0, 0, 0, 0, '0', '0', '0', 0, 0, '0', 0, 0, '更多', '0', 0);
INSERT INTO efood_plus VALUES (45, 11, 'modProdPicTj', 'products', 'main', '0', 4, 8, 135, 100, '0', '0', '0', 0, 0, '0', 0, 0, '0', '0', 0);
INSERT INTO efood_plus VALUES (46, 11, 'modProdBj', 'products', 'main', '0', 0, 0, 0, 0, '0', '0', '0', 0, 0, '0', 0, 0, '更多>', '0', 0);
INSERT INTO efood_plus VALUES (47, 1, 'modNewsList', 'index', 'index', '0', 0, 0, 0, 0, '0', '0', '0', 0, 0, '0', 1, 3, '0', '0', 0);
INSERT INTO efood_plus VALUES (48, 1, 'modSellClassAll', 'index', 'index', 'tpl_mainclass.htm', 0, 0, 0, 0, '0', '0', '0', 0, 25, '0', 0, 0, '0', '0', 0);
INSERT INTO efood_plus VALUES (49, 1, 'modLoginForm', 'index', 'index', '0', 0, 0, 0, 0, '0', '0', '0', 0, 0, '0', 0, 0, '0', '0', 0);
INSERT INTO efood_plus VALUES (50, 1, 'modProdPicTj', 'index', 'index', 'tpl_foodpic.htm', 3, 6, 0, 0, '0', '0', '0', 0, 0, '0', 0, 0, '0', '0', 0);
INSERT INTO efood_plus VALUES (51, 1, 'modNewsList', 'index', 'index', 'tpl_list2.htm', 0, 5, 0, 0, '0', '0', '0', 0, 0, '0', 2, 3, '0', '0', 2);
INSERT INTO efood_plus VALUES (52, 1, 'modNewsList', 'index', 'index', 'tpl_list.htm', 0, 12, 0, 0, '0', '0', '0', 0, 0, '0', 1, 3, '0', '0', 1);
INSERT INTO efood_plus VALUES (53, 1, 'modNewsPic', 'index', 'index', '0', 0, 0, 80, 80, '0', '0', '0', 0, 6, '0', 4, 3, '0', '0', 2);
INSERT INTO efood_plus VALUES (54, 1, 'modNewsPic', 'index', 'index', '0', 0, 0, 80, 80, '0', '0', '0', 0, 6, '0', 3, 3, '0', '0', 1);
INSERT INTO efood_plus VALUES (56, 3, 'modNewsList', 'news', 'main', '0', 0, 6, 0, 0, '0', '0', 'n/j H:i', 0, 0, '0', 2, 3, '0', '0', 1);
INSERT INTO efood_plus VALUES (57, 3, 'modNewsList', 'news', 'main', '0', 0, 6, 0, 0, '0', '0', 'n/j H:i', 0, 0, '0', 1, 3, '0', '0', 2);
INSERT INTO efood_plus VALUES (58, 3, 'modNewsList', 'news', 'main', '0', 0, 6, 0, 0, '0', '0', 'n/j H:i', 0, 0, '0', 3, 3, '0', '0', 3);
INSERT INTO efood_plus VALUES (62, 3, 'modNewsList', 'news', 'main', 'tpl_list2.htm', 0, 0, 0, 0, '0', '0', '0', 0, 0, '0', 3, 3, '0', '0', 5);
INSERT INTO efood_plus VALUES (63, 3, 'modNewsList', 'news', 'main', 'tpl_list2.htm', 0, 0, 0, 0, '0', '0', '0', 0, 0, '0', 3, 3, '0', '0', 6);
INSERT INTO efood_plus VALUES (64, 3, 'modNewsList', 'news', 'main', 'tpl_list2.htm', 0, 0, 0, 0, '0', '0', '0', 0, 0, '0', 3, 3, '0', '0', 7);
INSERT INTO efood_plus VALUES (65, 3, 'modNewsList', 'news', 'main', 'tpl_list2.htm', 0, 0, 0, 0, '0', '0', '0', 0, 0, '0', 3, 3, '0', '0', 8);
INSERT INTO efood_plus VALUES (66, 3, 'modNewsList', 'news', 'main', 'tpl_list2.htm', 0, 0, 0, 0, '0', '0', '0', 0, 0, '0', 3, 3, '0', '0', 9);
INSERT INTO efood_plus VALUES (67, 3, 'modNewsList', 'news', 'main', 'tpl_list2.htm', 0, 0, 0, 0, '0', '0', '0', 0, 0, '0', 3, 3, '0', '0', 10);
INSERT INTO efood_plus VALUES (68, 11, 'modProdPic', 'products', 'main', 'tpl_prodpicmove.htm', 20, 20, 0, 0, '0', '0', '0', 0, 0, '0', 0, 0, '0', '0', 0);
INSERT INTO efood_plus VALUES (71, 3, 'modNewsList', 'news', 'main', '0', 0, 5, 0, 0, '0', '0', 'Y.n.j', 0, 0, '0', 2, 3, '0', '0', 0);
INSERT INTO efood_plus VALUES (72, 3, 'modNewsPic', 'news', 'main', 'tpl_newspic1.htm', 0, 0, 160, 110, '0', '0', '0', 0, 15, '0', 2, 3, '0', '0', 1);
INSERT INTO efood_plus VALUES (73, 3, 'modNewsPic', 'news', 'main', 'tpl_newspic1.htm', 0, 0, 160, 110, '0', '0', '0', 0, 15, '0', 1, 3, '0', '0', 2);
INSERT INTO efood_plus VALUES (74, 3, 'modNewsPic', 'news', 'main', 'tpl_newspic1.htm', 0, 0, 160, 110, '0', '0', '0', 0, 15, '0', 3, 3, '0', '0', 3);
INSERT INTO efood_plus VALUES (75, 76, 'modNewsPic', 'news', 'main', '0', 1, 3, 90, 60, '0', '0', '0', 0, 0, '0', 16, 76, '0', '0', 0);
INSERT INTO efood_plus VALUES (76, 76, 'modNewsList', 'news', 'main', '0', 0, 6, 0, 0, '0', '0', 'Y-n-j', 1, 0, '0', 0, 76, '0', '0', 4);
INSERT INTO efood_plus VALUES (77, 76, 'modNewsList', 'news', 'main', 'tpl_list1.htm', 0, 0, 0, 0, '0', '0', '0', 0, 0, '0', 9, 76, '0', '0', 5);
INSERT INTO efood_plus VALUES (78, 76, 'modNewsList', 'news', 'main', 'tpl_list1.htm', 0, 0, 0, 0, '0', '0', '0', 0, 0, '0', 14, 76, '0', '0', 6);
INSERT INTO efood_plus VALUES (79, 76, 'modNewsList', 'news', 'main', 'tpl_list1.htm', 0, 0, 0, 0, '0', '0', '0', 0, 0, '0', 11, 76, '0', '0', 7);
INSERT INTO efood_plus VALUES (80, 76, 'modNewsList', 'news', 'main', 'tpl_list1.htm', 0, 0, 0, 0, '0', '0', '0', 0, 0, '0', 10, 76, '0', '0', 8);
INSERT INTO efood_plus VALUES (81, 76, 'modNewsList', 'news', 'main', 'tpl_list1.htm', 0, 0, 0, 0, '0', '0', '0', 0, 0, '0', 15, 76, '0', '0', 9);
INSERT INTO efood_plus VALUES (82, 76, 'modNewsList', 'news', 'main', 'tpl_list1.htm', 0, 0, 0, 0, '0', '0', '0', 0, 0, '0', 13, 76, '0', '0', 10);
INSERT INTO efood_plus VALUES (83, 76, 'modNewsList', 'news', 'main', 'tpl_list5.htm', 0, 12, 0, 0, '0', '0', '0', 0, 0, '0', 16, 76, '0', '0', 1);
INSERT INTO efood_plus VALUES (84, 76, 'modNewsMenu', 'news', 'main', '0', 0, 0, 0, 0, '0', '0', '0', 0, 0, '0', 0, 76, '0', '0', 0);
INSERT INTO efood_plus VALUES (85, 3, 'modNewsList', 'news', 'detail', 'tpl_list1.htm', 0, 0, 0, 0, '0', '0', '0', 0, 0, '0', 0, 3, '0', '0', 0);
INSERT INTO efood_plus VALUES (86, 76, 'modNewsList', 'news', 'detail', 'tpl_list1.htm', 0, 0, 0, 0, '0', '0', '0', 0, 0, '0', 1, 3, '0', '0', 0);
INSERT INTO efood_plus VALUES (88, 8, 'modEdit', 'company', 'main', '0', 0, 0, 0, 0, '0', '0', '0', 0, 0, '0', 0, 0, '0', '<STRONG><FONT color=#ff8000>小湘农家菜馆中山店<BR></FONT></STRONG>品味农家菜，新鲜时尚返朴归真，价格实惠。11月2日中山店全新装修开业，吃100送50优惠酬宾。欢迎您的惠顾！', 1);
INSERT INTO efood_plus VALUES (89, 8, 'modEdit', 'company', 'main', '0', 0, 0, 0, 0, '0', '0', '0', 0, 0, '0', 0, 0, '0', '<FONT color=#ff8000><STRONG>欧亚咖啡茶楼</STRONG><BR></FONT>香香的咖啡、浓浓的绿茶，欧亚咖啡茶楼是您休闲、商务洽谈的好去处。各式小吃赠送，欢迎新老客户惠顾！', 2);
INSERT INTO efood_plus VALUES (91, 8, 'modCompanyTj', 'company', 'main', '0', 0, 0, 0, 0, '0', '0', '0', 0, 0, '0', 2, 8, '0', '0', 1);
INSERT INTO efood_plus VALUES (92, 8, 'modCompanyTj', 'company', 'main', '0', 0, 0, 0, 0, '0', '0', '0', 0, 0, '0', 28, 8, '0', '0', 2);
INSERT INTO efood_plus VALUES (94, 8, 'modCompanyList', 'company', 'main', '0', 0, 0, 0, 0, '0', '0', '0', 0, 0, '0', 2, 8, '0', '0', 1);
INSERT INTO efood_plus VALUES (95, 8, 'modCompanyList', 'company', 'main', '0', 0, 0, 0, 0, '0', '0', '0', 0, 0, '0', 28, 8, '0', '0', 2);
INSERT INTO efood_plus VALUES (97, 9, 'modSellList', 'sell', 'main', '0', 0, 0, 0, 0, '0', '0', '0', 0, 0, '0', 2, 9, '[更多信息>]', '0', 1);
INSERT INTO efood_plus VALUES (98, 9, 'modSellList', 'sell', 'main', '0', 0, 0, 0, 0, '0', '0', '0', 0, 0, '0', 3, 9, '[更多信息>]', '0', 2);
INSERT INTO efood_plus VALUES (99, 9, 'modSellList', 'sell', 'main', '0', 0, 0, 0, 0, '0', '0', '0', 0, 0, '0', 6, 9, '[更多信息>]', '0', 3);
INSERT INTO efood_plus VALUES (100, 9, 'modSellList', 'sell', 'main', '0', 0, 0, 0, 0, '0', '0', '0', 0, 0, '0', 7, 9, '[更多信息>]', '0', 4);
INSERT INTO efood_plus VALUES (101, 9, 'modSellList', 'sell', 'main', '0', 0, 0, 0, 0, '0', '0', '0', 0, 0, '0', 4, 9, '[更多信息>]', '0', 5);
INSERT INTO efood_plus VALUES (102, 9, 'modSellList', 'sell', 'main', '0', 0, 0, 0, 0, '0', '0', '0', 0, 0, '0', 5, 9, '[更多信息>]', '0', 6);
INSERT INTO efood_plus VALUES (103, 9, 'modSellList', 'sell', 'main', '0', 0, 0, 0, 0, '0', '0', '0', 0, 0, '0', 1, 9, '[更多信息>]', '0', 7);
INSERT INTO efood_plus VALUES (104, 9, 'modSellList', 'sell', 'main', '0', 0, 0, 0, 0, '0', '0', '0', 0, 0, '0', 8, 9, '[更多信息>]', '0', 8);
INSERT INTO efood_plus VALUES (105, 8, 'modCompanyFoodTj', 'company', 'main', '0', 0, 0, 0, 0, '0', '0', '0', 0, 0, '0', 2, 8, '0', '0', 1);
INSERT INTO efood_plus VALUES (106, 11, 'modCompanyFoodTj', 'products', 'main', '0', 2, 2, 0, 0, '0', '0', '0', 0, 0, '0', 2, 8, '0', '0', 1);
INSERT INTO efood_plus VALUES (107, 11, 'modCompanyFoodTj', 'products', 'main', '0', 0, 0, 0, 0, '0', '0', '0', 0, 0, '0', 28, 8, '0', '0', 2);
INSERT INTO efood_plus VALUES (108, 11, 'modCompanyFoodTj', 'products', 'main', '0', 0, 0, 0, 0, '0', '0', '0', 0, 0, '0', 10, 8, '0', '0', 3);
INSERT INTO efood_plus VALUES (109, 11, 'modCompanyFoodTj', 'products', 'main', '0', 0, 0, 0, 0, '0', '0', '0', 0, 0, '0', 9, 8, '0', '0', 4);
INSERT INTO efood_plus VALUES (110, 11, 'modCompanyFoodTj', 'products', 'main', '0', 0, 0, 0, 0, '0', '0', '0', 0, 0, '0', 1, 8, '0', '0', 5);
INSERT INTO efood_plus VALUES (111, 11, 'modCompanyFoodTj', 'products', 'main', '0', 0, 0, 0, 0, '0', '0', '0', 0, 0, '0', 4, 8, '0', '0', 6);
INSERT INTO efood_plus VALUES (112, 8, 'modCompanyPic', 'company', 'main', 'tpl_companypicmove.htm', 12, 12, 0, 0, '0', '0', '0', 0, 0, '0', 0, 0, '0', '0', 0);
INSERT INTO efood_plus VALUES (113, 8, 'modCompanyFoodTj', 'company', 'main', '0', 0, 0, 0, 0, '0', '0', '0', 0, 0, '0', 28, 8, '0', '0', 2);
INSERT INTO efood_plus VALUES (114, 8, 'modCompanyFoodTj', 'company', 'main', '0', 0, 0, 0, 0, '0', '0', '0', 0, 0, '0', 10, 8, '0', '0', 3);
INSERT INTO efood_plus VALUES (115, 8, 'modCompanyFoodTj', 'company', 'main', '0', 0, 0, 0, 0, '0', '0', '0', 0, 0, '0', 9, 8, '0', '0', 4);
INSERT INTO efood_plus VALUES (116, 8, 'modCompanyFoodTj', 'company', 'main', '0', 0, 0, 0, 0, '0', '0', '0', 0, 0, '0', 1, 8, '0', '0', 5);
INSERT INTO efood_plus VALUES (117, 8, 'modCompanyFoodTj', 'company', 'main', '0', 0, 0, 0, 0, '0', '0', '0', 0, 0, '0', 4, 8, '0', '0', 6);
INSERT INTO efood_plus VALUES (126, 8, 'modCompanyProdPic', 'company', 'detail', 'tpl_prodpicmove1.htm', 12, 12, 0, 0, '0', '0', '0', 0, 0, '0', 0, 0, '0', '0', 0);
INSERT INTO efood_plus VALUES (119, 11, 'modFoodTj', 'products', 'main', '0', 0, 0, 0, 0, '0', '0', '0', 0, 0, '0', 2, 11, '0', '0', 1);
INSERT INTO efood_plus VALUES (120, 11, 'modFoodTj', 'products', 'main', '0', 0, 0, 0, 0, '0', '0', '0', 0, 0, '0', 23, 11, '0', '0', 2);
INSERT INTO efood_plus VALUES (121, 11, 'modFoodTj', 'products', 'main', '0', 0, 0, 0, 0, '0', '0', '0', 0, 0, '0', 10, 11, '0', '0', 3);
INSERT INTO efood_plus VALUES (122, 11, 'modFoodTj', 'products', 'main', '0', 0, 0, 0, 0, '0', '0', '0', 0, 0, '0', 9, 11, '0', '0', 4);
INSERT INTO efood_plus VALUES (123, 11, 'modFoodTj', 'products', 'main', '0', 0, 0, 0, 0, '0', '0', '0', 0, 0, '0', 1, 11, '0', '0', 5);
INSERT INTO efood_plus VALUES (124, 11, 'modFoodTj', 'products', 'main', '0', 0, 0, 0, 0, '0', '0', '0', 0, 0, '0', 4, 11, '0', '0', 6);
INSERT INTO efood_plus VALUES (125, 1, 'modCompanyPic', 'index', 'index', 'tpl_companypic1.htm', 1, 2, 150, -1, '0', '0', '0', 1, 0, '0', 0, 0, '0', '0', 0);
INSERT INTO efood_plus VALUES (131, 10, 'modNewsPic', 'hd', 'main', 'tpl_newspic1.htm', 3, 6, 0, 0, '0', '0', '0', 0, 0, '0', 20, 79, '0', '0', 2);
INSERT INTO efood_plus VALUES (132, 10, 'modHdList', 'hd', 'main', '0', 0, 10, 0, 0, '0', '0', '0', 0, 0, '0', 0, 0, '0', '0', 0);
INSERT INTO efood_plus VALUES (133, 10, 'modNewsList', 'hd', 'main', 'tpl_list2.htm', 0, 10, 0, 0, '0', '0', '0', 0, 0, '0', 20, 79, '0', '0', 1);
INSERT INTO efood_plus VALUES (134, 10, 'modHdPic', 'hd', 'main', '0', 2, 2, 0, 0, '0', '0', '0', 0, 0, '0', 0, 0, '0', '0', 0);
INSERT INTO efood_plus VALUES (136, 1, 'modCompanyFoodTj', 'index', 'index', '0', 1, 2, 0, 0, '0', '0', '0', 0, 0, '0', 0, 0, '0', '0', 0);
INSERT INTO efood_plus VALUES (137, 1, 'modEdit', 'index', 'index', '0', 0, 0, 0, 0, '0', '0', '0', 0, 0, '0', 0, 0, '0', '<A href="hd/main/"><FONT color=#ff8000>免费FB活动火热进行中!!!</FONT></A>', 9);
INSERT INTO efood_plus VALUES (139, 1, 'modProdPic', 'index', 'index', 'tpl_prodpicmove_776.htm', 10, 10, 0, 0, '0', '0', '0', 0, 0, '0', 0, 0, '0', '0', 0);
INSERT INTO efood_plus VALUES (140, 1, 'modNewsList', 'index', 'index', 'tpl_list5.htm', 0, 12, 0, 0, '0', '0', '0', 0, 0, '0', 16, 76, '0', '0', 5);
INSERT INTO efood_plus VALUES (141, 1, 'modSellList', 'index', 'index', 'tpl_infolist1.htm', 2, 12, 0, 0, '0', '0', '0', 0, 0, '0', 0, 0, '0', '0', 0);
INSERT INTO efood_plus VALUES (142, 1, 'modNewsList', 'index', 'index', 'tpl_list5.htm', 0, 0, 0, 0, '0', '0', '0', 0, 0, '0', 9, 76, '0', '0', 3);
INSERT INTO efood_plus VALUES (143, 1, 'modNewsList', 'index', 'index', 'tpl_list5.htm', 0, 0, 0, 0, '0', '0', '0', 0, 0, '0', 14, 76, '0', '0', 4);
INSERT INTO efood_plus VALUES (144, 1, 'modProdPicTj', 'index', 'index', 'tpl_foodpic.htm', 0, 0, 0, 0, '0', '0', '0', 0, 0, '0', 2, 11, '0', '0', 1);
INSERT INTO efood_plus VALUES (145, 1, 'modProdPicTj', 'index', 'index', 'tpl_foodpic.htm', 0, 0, 0, 0, '0', '0', '0', 0, 0, '0', 23, 11, '0', '0', 2);
INSERT INTO efood_plus VALUES (146, 1, 'modProdPicTj', 'index', 'index', 'tpl_foodlist.htm', 1, 6, 0, 0, '0', '0', '0', 0, 0, '0', 2, 11, '0', '0', 3);
INSERT INTO efood_plus VALUES (147, 1, 'modProdPicTj', 'index', 'index', 'tpl_foodlist.htm', 1, 6, 0, 0, '0', '0', '0', 0, 0, '0', 23, 11, '0', '0', 4);
INSERT INTO efood_plus VALUES (148, 1, 'modProdPicTj', 'index', 'index', 'tpl_foodpic.htm', 0, 0, 0, 0, '0', '0', '0', 0, 0, '0', 10, 11, '0', '0', 5);
INSERT INTO efood_plus VALUES (149, 1, 'modProdPicTj', 'index', 'index', 'tpl_foodpic.htm', 0, 0, 0, 0, '0', '0', '0', 0, 0, '0', 9, 11, '0', '0', 6);
INSERT INTO efood_plus VALUES (150, 1, 'modProdPicTj', 'index', 'index', 'tpl_foodlist.htm', 1, 6, 0, 0, '0', '0', '0', 0, 0, '0', 10, 11, '0', '0', 7);
INSERT INTO efood_plus VALUES (151, 1, 'modProdPicTj', 'index', 'index', 'tpl_foodlist.htm', 1, 6, 0, 0, '0', '0', '0', 0, 0, '0', 9, 11, '0', '0', 8);
INSERT INTO efood_plus VALUES (152, 1, 'modCompanyCommentListAll', 'index', 'index', '0', 0, 3, 0, 0, '0', '0', '0', 0, 0, '0', 0, 0, '0', '0', 0);
INSERT INTO efood_plus VALUES (153, 1, 'modHdList', 'index', 'index', '0', 0, 9, 0, 0, '0', '0', '0', 0, 0, '0', 0, 0, '0', '0', 0);
# --------------------------------------------------------

#
# 数据表的结构 `efood_plus_set`
#

CREATE TABLE efood_plus_set (
  id int(12) NOT NULL auto_increment,
  pluslable char(100) default NULL,
  plusname char(100) default NULL,
  plustype char(50) default NULL,
  pluslocat char(50) default NULL,
  tempname int(1) default '0',
  hangnums int(1) default '0',
  shownums int(1) default '0',
  smallw int(1) default '0',
  smallh int(1) default '0',
  ord int(1) default '0',
  sc int(1) default '0',
  showtime int(1) default '0',
  onlytj int(1) default '0',
  cutword int(1) default '0',
  target int(1) default '0',
  catid int(1) default '0',
  showmore int(1) NOT NULL default '0',
  body int(1) default '0',
  moveable int(1) default NULL,
  formtype char(30) default NULL,
  PRIMARY KEY  (id)
) ENGINE=MyISAM DEFAULT CHARSET=gbk;

#
# 导出下面的数据库内容 `efood_plus_set`
#

INSERT INTO efood_plus_set VALUES (1, 'modNewsQuery', '[模块插件]文章翻页检索', 'news', 'query', 1, 0, 1, 0, 0, 1, 1, 1, 0, 1, 1, 0, 0, 0, 0, 'news');
INSERT INTO efood_plus_set VALUES (2, 'modNewsClass', '[全站插件]文章一级分类', 'all', 'all', 1, 1, 1, 0, 0, 1, 1, 0, 1, 0, 1, 1, 0, 0, 1, 'news');
INSERT INTO efood_plus_set VALUES (3, 'modNewsTwoClass', '[全站插件]文章二级分类', 'all', 'all', 1, 1, 1, 0, 0, 1, 1, 0, 1, 0, 1, 1, 0, 0, 1, 'news');
INSERT INTO efood_plus_set VALUES (4, 'modNewsTreeClass', '[全站插件]文章树形分类', 'all', 'all', 0, 0, 0, 0, 0, 1, 1, 0, 1, 0, 1, 1, 0, 0, 1, 'news');
INSERT INTO efood_plus_set VALUES (5, 'modNewsSameCat', '[模块插件]本类最新文章', 'news', 'all', 1, 0, 1, 0, 0, 1, 1, 1, 1, 1, 1, 0, 1, 0, 1, 'news');
INSERT INTO efood_plus_set VALUES (6, 'modNewsRel', '[模块插件]同专题相关文章', 'news', 'detail', 1, 0, 1, 0, 0, 1, 1, 1, 1, 1, 1, 0, 1, 0, 1, 'news');
INSERT INTO efood_plus_set VALUES (7, 'modNewsSameAuthor', '[模块插件]同作者相关文章', 'news', 'detail', 1, 0, 1, 0, 0, 1, 1, 1, 1, 1, 1, 0, 1, 0, 1, 'news');
INSERT INTO efood_plus_set VALUES (8, 'modNavPath', '[全站插件]类别导航条', 'all', 'all', 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 1, 0, 0, 0, 0, 'mod');
INSERT INTO efood_plus_set VALUES (9, 'modNewsPicRel', '[模块插件]同专题文章图片', 'news', 'detail', 1, 1, 1, 1, 1, 1, 1, 0, 1, 1, 1, 0, 1, 0, 1, 'news');
INSERT INTO efood_plus_set VALUES (10, 'modNewsSameCatHot', '[模块插件]本类热门文章', 'news', 'all', 1, 0, 1, 0, 0, 1, 1, 0, 1, 1, 1, 0, 1, 0, 1, 'news');
INSERT INTO efood_plus_set VALUES (11, 'modNewsSameCatRec', '[模块插件]本类推荐文章', 'news', 'all', 1, 0, 1, 0, 0, 1, 1, 1, 1, 1, 1, 0, 1, 0, 1, 'news');
INSERT INTO efood_plus_set VALUES (12, 'modNewsClassFc', '[模块插件]文章下一级分类', 'news', 'query', 1, 1, 1, 0, 0, 1, 1, 0, 1, 0, 1, 0, 0, 0, 1, 'news');
INSERT INTO efood_plus_set VALUES (13, 'modNewsPicSameCat', '[模块插件]本类最新文章图片', 'news', 'all', 1, 1, 1, 1, 1, 1, 1, 0, 1, 1, 1, 0, 1, 0, 1, 'news');
INSERT INTO efood_plus_set VALUES (14, 'modNewsPic', '[全站插件]最新文章图片', 'all', 'all', 1, 1, 1, 1, 1, 1, 1, 0, 1, 1, 1, 1, 1, 0, 1, 'news');
INSERT INTO efood_plus_set VALUES (15, 'modNewsList', '[全站插件]最新文章', 'all', 'all', 1, 0, 1, 0, 0, 1, 1, 1, 1, 1, 1, 1, 1, 0, 1, 'news');
INSERT INTO efood_plus_set VALUES (16, 'modNewsHot', '[全站插件]热门文章', 'all', 'all', 1, 0, 1, 0, 0, 1, 1, 1, 1, 1, 1, 1, 1, 0, 1, 'news');
INSERT INTO efood_plus_set VALUES (17, 'modNewsRec', '[全站插件]推荐文章', 'all', 'all', 1, 0, 1, 0, 0, 1, 1, 1, 1, 1, 1, 1, 1, 0, 1, 'news');
INSERT INTO efood_plus_set VALUES (18, 'modNewsPicRec', '[全站插件]推荐文章图片', 'all', 'all', 1, 1, 1, 1, 1, 1, 1, 0, 1, 1, 1, 1, 1, 0, 1, 'news');
INSERT INTO efood_plus_set VALUES (19, 'modNewsPicHot', '[全站插件]热门文章图片', 'all', 'all', 1, 1, 1, 1, 1, 1, 1, 0, 1, 1, 1, 1, 1, 0, 1, 'news');
INSERT INTO efood_plus_set VALUES (20, 'modEdit', '[全站插件]自由编辑区域', 'all', 'all', 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 1, 1, 'mod');
INSERT INTO efood_plus_set VALUES (21, 'modMemberMenu', '[模块插件]会员功能菜单', 'member', 'all', 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 1, 0, 0, 0, 1, 'mod');
INSERT INTO efood_plus_set VALUES (22, 'modMemberNotice', '[模块插件]最新会员公告', 'member', 'all', 1, 0, 1, 0, 0, 1, 1, 1, 0, 1, 1, 0, 0, 0, 1, 'mod');
INSERT INTO efood_plus_set VALUES (24, 'modNewsMenu', '[栏目菜单]文章大类菜单', 'all', 'all', 1, 1, 1, 0, 0, 1, 1, 0, 1, 0, 1, 1, 0, 0, 1, 'news');
INSERT INTO efood_plus_set VALUES (25, 'modNewsMenuAll', '[栏目菜单]文章分类菜单', 'all', 'all', 1, 1, 1, 0, 0, 1, 1, 0, 1, 0, 1, 1, 0, 0, 1, 'news');
INSERT INTO efood_plus_set VALUES (26, 'modSecondMenu', '[栏目菜单]横式二级栏目菜单', 'all', 'all', 1, 1, 1, 0, 0, 1, 1, 0, 0, 0, 0, 0, 0, 0, 1, 'mod');
INSERT INTO efood_plus_set VALUES (27, 'modMainMenu', '[栏目菜单]横式频道主菜单', 'all', 'all', 1, 1, 1, 0, 0, 1, 1, 0, 0, 0, 0, 0, 0, 0, 1, 'mod');
INSERT INTO efood_plus_set VALUES (28, 'modCpQuery', '[模块插件]图文内容检索', 'cp', 'query', 1, 1, 1, 1, 1, 1, 1, 0, 0, 1, 1, 0, 0, 0, 0, 'cp');
INSERT INTO efood_plus_set VALUES (29, 'modCpClass', '[全站插件]图文一级分类', 'all', 'all', 1, 1, 1, 0, 0, 1, 1, 0, 1, 0, 1, 1, 0, 0, 1, 'cp');
INSERT INTO efood_plus_set VALUES (30, 'modCpTwoClass', '[全站插件]图文二级分类', 'all', 'all', 1, 1, 1, 0, 0, 1, 1, 0, 1, 0, 1, 1, 0, 0, 1, 'cp');
INSERT INTO efood_plus_set VALUES (31, 'modCpTreeClass', '[全站插件]图文树型分类', 'all', 'all', 0, 0, 0, 0, 0, 1, 1, 0, 1, 0, 1, 1, 0, 0, 1, 'cp');
INSERT INTO efood_plus_set VALUES (32, 'modCpClassFc', '[模块插件]图文下一级分类', 'cp', 'query', 1, 1, 1, 0, 0, 1, 1, 0, 1, 0, 1, 0, 0, 0, 1, 'cp');
INSERT INTO efood_plus_set VALUES (33, 'modCpMenu', '[栏目菜单]图文大类菜单', 'all', 'all', 1, 1, 1, 0, 0, 1, 1, 0, 1, 0, 1, 1, 0, 0, 1, 'cp');
INSERT INTO efood_plus_set VALUES (34, 'modCpMenuAll', '[栏目菜单]图文分类菜单', 'all', 'all', 1, 1, 1, 0, 0, 1, 1, 0, 1, 0, 1, 1, 0, 0, 1, 'cp');
INSERT INTO efood_plus_set VALUES (35, 'modCpPic', '[全站插件]图文频道最新图片', 'all', 'all', 1, 1, 1, 1, 1, 1, 1, 0, 1, 1, 1, 1, 1, 0, 1, 'cp');
INSERT INTO efood_plus_set VALUES (36, 'modCpPicRel', '[模块插件]图文频道同专题图片', 'cp', 'detail', 1, 1, 1, 1, 1, 1, 1, 0, 1, 1, 1, 0, 1, 0, 1, 'cp');
INSERT INTO efood_plus_set VALUES (37, 'modCpPicSameCat', '[模块插件]图文频道本类图片', 'cp', 'all', 1, 1, 1, 1, 1, 1, 1, 0, 1, 1, 1, 0, 1, 0, 1, 'cp');
INSERT INTO efood_plus_set VALUES (38, 'modCpPicRec', '[全站插件]图文频道推荐图片', 'all', 'all', 1, 1, 1, 1, 1, 1, 1, 0, 1, 1, 1, 1, 1, 0, 1, 'cp');
INSERT INTO efood_plus_set VALUES (39, 'modCpPicHot', '[全站插件]图文频道热门图片', 'all', 'all', 1, 1, 1, 1, 1, 1, 1, 0, 1, 1, 1, 1, 1, 0, 1, 'cp');
INSERT INTO efood_plus_set VALUES (40, 'modCpProp', '[模块插件]图文参数列表', 'cp', 'detail', 1, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 'cp');
INSERT INTO efood_plus_set VALUES (41, 'modDownQuery', '[模块插件]下载翻页检索', 'down', 'query', 1, 0, 1, 0, 0, 1, 1, 1, 0, 1, 1, 0, 0, 0, 0, 'down');
INSERT INTO efood_plus_set VALUES (42, 'modDownQuery', '[模块插件]下载翻页检索', 'down', 'query', 1, 0, 1, 0, 0, 1, 1, 1, 0, 1, 1, 0, 0, 0, 0, 'down');
INSERT INTO efood_plus_set VALUES (43, 'modDownClass', '[全站插件]下载一级分类', 'all', 'all', 1, 1, 1, 0, 0, 1, 1, 0, 1, 0, 1, 1, 0, 0, 1, 'down');
INSERT INTO efood_plus_set VALUES (44, 'modDownTwoClass', '[全站插件]下载二级分类', 'all', 'all', 1, 1, 1, 0, 0, 1, 1, 0, 1, 0, 1, 1, 0, 0, 1, 'down');
INSERT INTO efood_plus_set VALUES (45, 'modDownTreeClass', '[全站插件]下载树形分类', 'all', 'all', 0, 0, 0, 0, 0, 1, 1, 0, 1, 0, 1, 1, 0, 0, 1, 'down');
INSERT INTO efood_plus_set VALUES (46, 'modDownClassFc', '[模块插件]下载下一级分类', 'down', 'query', 1, 1, 1, 0, 0, 1, 1, 0, 1, 0, 1, 0, 0, 0, 1, 'down');
INSERT INTO efood_plus_set VALUES (47, 'modDownMenu', '[栏目菜单]下载大类菜单', 'all', 'all', 1, 1, 1, 0, 0, 1, 1, 0, 1, 0, 1, 1, 0, 0, 1, 'down');
INSERT INTO efood_plus_set VALUES (48, 'modDownMenuAll', '[栏目菜单]下载分类菜单', 'all', 'all', 1, 1, 1, 0, 0, 1, 1, 0, 1, 0, 1, 1, 0, 0, 1, 'down');
INSERT INTO efood_plus_set VALUES (49, 'modDownList', '[全站插件]最新下载', 'all', 'all', 1, 0, 1, 0, 0, 1, 1, 1, 1, 1, 1, 1, 1, 0, 1, 'down');
INSERT INTO efood_plus_set VALUES (50, 'modDownHot', '[全站插件]热门下载', 'all', 'all', 1, 0, 1, 0, 0, 1, 1, 1, 1, 1, 1, 1, 1, 0, 1, 'down');
INSERT INTO efood_plus_set VALUES (51, 'modDownRec', '[全站插件]推荐下载', 'all', 'all', 1, 0, 1, 0, 0, 1, 1, 1, 1, 1, 1, 1, 1, 0, 1, 'down');
INSERT INTO efood_plus_set VALUES (52, 'modDownSameCat', '[模块插件]本类最新下载', 'down', 'all', 1, 0, 1, 0, 0, 1, 1, 1, 1, 1, 1, 0, 1, 0, 1, 'down');
INSERT INTO efood_plus_set VALUES (53, 'modDownRel', '[模块插件]同专题相关下载', 'down', 'detail', 1, 0, 1, 0, 0, 1, 1, 1, 1, 1, 1, 0, 1, 0, 1, 'down');
INSERT INTO efood_plus_set VALUES (54, 'modDownSameCatHot', '[模块插件]本类热门下载', 'down', 'all', 1, 0, 1, 0, 0, 1, 1, 0, 1, 1, 1, 0, 1, 0, 1, 'down');
INSERT INTO efood_plus_set VALUES (55, 'modDownSameCatRec', '[模块插件]本类推荐下载', 'down', 'all', 1, 0, 1, 0, 0, 1, 1, 1, 1, 1, 1, 0, 1, 0, 1, 'down');
INSERT INTO efood_plus_set VALUES (56, 'modDownNewsRel', '[模块插件]下载频道相关文章', 'down', 'detail', 1, 0, 1, 0, 0, 1, 1, 1, 1, 1, 1, 0, 0, 0, 1, 'down');
INSERT INTO efood_plus_set VALUES (57, 'modCpNewsRel', '[模块插件]图文频道相关文章', 'cp', 'detail', 1, 0, 1, 0, 0, 1, 1, 1, 1, 1, 1, 0, 0, 0, 1, 'cp');
INSERT INTO efood_plus_set VALUES (58, 'modNewsDownRel', '[模块插件]文章频道相关下载', 'news', 'detail', 1, 0, 1, 0, 0, 1, 1, 1, 1, 1, 1, 0, 0, 0, 1, 'news');
INSERT INTO efood_plus_set VALUES (59, 'modCpDownRel', '[模块插件]图文频道相关下载', 'cp', 'detail', 1, 0, 1, 0, 0, 1, 1, 1, 1, 1, 1, 0, 0, 0, 1, 'cp');
INSERT INTO efood_plus_set VALUES (60, 'modNewsCpPicRel', '[模块插件]文章频道相关图文', 'news', 'detail', 1, 1, 1, 1, 1, 1, 1, 0, 1, 1, 1, 0, 0, 0, 1, 'news');
INSERT INTO efood_plus_set VALUES (61, 'modDownCpPicRel', '[模块插件]下载频道相关图文', 'down', 'detail', 1, 1, 1, 1, 1, 1, 1, 0, 1, 1, 1, 0, 0, 0, 1, 'down');
INSERT INTO efood_plus_set VALUES (62, 'modDownProp', '[模块插件]下载参数列表', 'down', 'detail', 1, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 'down');
INSERT INTO efood_plus_set VALUES (63, 'modForm', '[模块插件]自定表单', 'form', 'form', 1, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 'news');
INSERT INTO efood_plus_set VALUES (67, 'modBottomMenu', '[栏目菜单]脚注栏目菜单', 'all', 'all', 1, 1, 1, 0, 0, 1, 1, 0, 0, 0, 0, 0, 0, 0, 1, 'mod');
INSERT INTO efood_plus_set VALUES (68, 'modSecondMenuAll', '[栏目菜单]所有二级栏目菜单', 'all', 'all', 1, 1, 1, 0, 0, 1, 1, 0, 0, 0, 0, 0, 0, 0, 1, 'mod');
INSERT INTO efood_plus_set VALUES (66, 'modLogo', '[广告插件]网站标志', 'all', 'all', 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 'news');
INSERT INTO efood_plus_set VALUES (69, 'modMainMenuV', '[栏目菜单]竖式频道主菜单', 'all', 'all', 1, 1, 1, 0, 0, 1, 1, 0, 0, 0, 0, 0, 0, 0, 1, 'mod');
INSERT INTO efood_plus_set VALUES (70, 'modSecondMenuV', '[栏目菜单]竖式二级栏目菜单', 'all', 'all', 1, 1, 1, 0, 0, 1, 1, 0, 0, 0, 0, 0, 0, 0, 1, 'mod');
INSERT INTO efood_plus_set VALUES (71, 'modCommentForm', '[全站插件]评论发布表单', 'all', 'detail', 1, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 1, 'news');
INSERT INTO efood_plus_set VALUES (72, 'modNewsCommentList', '[全站插件]最新文章评论', 'all', 'all', 1, 0, 1, 0, 0, 1, 1, 1, 1, 1, 1, 0, 1, 0, 1, 'news');
INSERT INTO efood_plus_set VALUES (73, 'modDownCommentList', '[全站插件]最新下载评论', 'all', 'all', 1, 0, 1, 0, 0, 1, 1, 1, 1, 1, 1, 0, 1, 0, 1, 'news');
INSERT INTO efood_plus_set VALUES (74, 'modCpCommentList', '[全站插件]最新图文评论', 'all', 'all', 1, 0, 1, 0, 0, 1, 1, 1, 1, 1, 1, 0, 1, 0, 1, 'news');
INSERT INTO efood_plus_set VALUES (75, 'modCommentList', '[全站插件]社区最新文章', 'all', 'all', 1, 0, 1, 0, 0, 1, 1, 1, 1, 1, 1, 0, 1, 0, 1, 'news');
INSERT INTO efood_plus_set VALUES (76, 'modCommentQuery', '[模块插件]社区文章检索', 'comment', 'query', 1, 0, 1, 0, 0, 1, 1, 1, 0, 1, 1, 0, 0, 0, 0, 'news');
INSERT INTO efood_plus_set VALUES (77, 'modCommentClass', '[全站插件]社区文章分类', 'all', 'all', 1, 1, 0, 0, 0, 1, 1, 0, 0, 0, 1, 0, 0, 0, 1, 'news');
INSERT INTO efood_plus_set VALUES (78, 'modCommentListForm', '[模块插件]社区文章发布表单', 'comment', 'query', 1, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 'news');
INSERT INTO efood_plus_set VALUES (79, 'modLinkPic', '[全站插件]图片友情链接', 'all', 'all', 1, 1, 1, 1, 1, 1, 1, 0, 0, 0, 1, 0, 1, 0, 1, 'news');
INSERT INTO efood_plus_set VALUES (80, 'modLinkText', '[全站插件]文字友情链接', 'all', 'all', 1, 1, 1, 0, 0, 1, 1, 0, 0, 0, 1, 0, 1, 0, 1, 'news');
INSERT INTO efood_plus_set VALUES (81, 'modButtomInfo', '[全站插件]网页脚注信息', 'all', 'all', 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 1, 0, 'news');
INSERT INTO efood_plus_set VALUES (82, 'modShowCount', '[全站插件]访问统计', 'all', 'all', 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 'news');
INSERT INTO efood_plus_set VALUES (83, 'modSearch', '[模块插件]站内搜索结果', 'page', 'page', 1, 0, 1, 0, 0, 1, 1, 1, 0, 1, 1, 0, 0, 0, 0, 'news');
INSERT INTO efood_plus_set VALUES (84, 'modLoginForm', '[全站插件]会员登录表单', 'all', 'all', 1, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 1, 'news');
INSERT INTO efood_plus_set VALUES (85, 'modCompanyClassAll', '[全站插件]餐馆分类列表', 'all', 'all', 1, 1, 0, 0, 0, 1, 1, 0, 1, 1, 1, 0, 1, 0, 1, 'company');
INSERT INTO efood_plus_set VALUES (86, 'modCompanyQuery', '[模块插件]餐馆分类检索', 'company', 'query', 1, 0, 1, 1, 1, 1, 1, 0, 0, 1, 1, 0, 0, 0, 0, 'company');
INSERT INTO efood_plus_set VALUES (87, 'modCompanyClassFc', '[模块插件]餐馆下一级分类', 'company', 'query', 1, 1, 1, 0, 0, 1, 1, 0, 1, 0, 1, 0, 0, 0, 0, 'company');
INSERT INTO efood_plus_set VALUES (88, 'modCompanySearchForm', '[全站插件]餐馆组合搜索', 'all', 'all', 1, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 1, 'company');
INSERT INTO efood_plus_set VALUES (89, 'modCompanyMenu', '[模块插件]餐馆主页左侧菜单', 'company', 'all', 1, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 'company');
INSERT INTO efood_plus_set VALUES (90, 'modSellClassAll', '[全站插件]餐饮信息分类列表', 'all', 'all', 1, 1, 0, 0, 0, 1, 1, 0, 1, 1, 1, 0, 1, 0, 1, 'company');
INSERT INTO efood_plus_set VALUES (92, 'modSellQuery', '[模块插件]餐饮信息检索', 'sell', 'query', 1, 0, 1, 0, 0, 1, 1, 1, 0, 1, 1, 0, 0, 0, 0, 'info');
INSERT INTO efood_plus_set VALUES (93, 'modCompanySellQuery', '[模块插件]餐馆主页信息检索', 'sell', 'list', 1, 0, 1, 0, 0, 1, 1, 1, 0, 1, 1, 0, 0, 0, 0, 'info');
INSERT INTO efood_plus_set VALUES (96, 'modSellSearchForm', '[全站插件]餐饮信息组合搜索', 'all', 'all', 1, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 1, 'info');
INSERT INTO efood_plus_set VALUES (98, 'modProdClassAll', '[全站插件]美食分类列表', 'all', 'all', 1, 1, 0, 0, 0, 1, 1, 0, 1, 1, 1, 0, 1, 0, 1, 'products');
INSERT INTO efood_plus_set VALUES (99, 'modProdQuery', '[模块插件]美食分类检索', 'products', 'query', 1, 0, 1, 0, 0, 1, 1, 1, 0, 1, 1, 0, 0, 0, 0, 'products');
INSERT INTO efood_plus_set VALUES (100, 'modCompanyProdQuery', '[模块插件]餐馆主页菜式检索', 'products', 'list', 1, 0, 1, 0, 0, 1, 1, 1, 0, 1, 1, 0, 0, 0, 0, 'products');
INSERT INTO efood_plus_set VALUES (101, 'modCompanyLicQuery', '[模块插件]餐馆图片检索', 'company', 'lic', 1, 1, 1, 1, 1, 1, 1, 0, 0, 1, 1, 0, 0, 0, 0, 'products');
INSERT INTO efood_plus_set VALUES (103, 'modProdSearchForm', '[全站插件]美食组合搜索', 'all', 'all', 1, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 1, 'products');
INSERT INTO efood_plus_set VALUES (104, 'modCompanyList', '[全站插件]最新餐馆', 'all', 'all', 1, 0, 1, 0, 0, 1, 1, 0, 1, 1, 1, 1, 1, 0, 1, 'company');
INSERT INTO efood_plus_set VALUES (105, 'modCompanyTj', '[全站插件]推荐餐馆', 'all', 'all', 1, 0, 1, 0, 0, 1, 1, 1, 0, 1, 1, 1, 1, 0, 1, 'company');
INSERT INTO efood_plus_set VALUES (107, 'modSellClassFc', '[模块插件]餐饮信息下一级分类', 'sell', 'query', 1, 1, 1, 0, 0, 1, 1, 0, 1, 0, 1, 0, 0, 0, 0, 'info');
INSERT INTO efood_plus_set VALUES (108, 'modProdClassFc', '[模块插件]美食检索下一级分类', 'products', 'query', 1, 1, 1, 0, 0, 1, 1, 0, 1, 0, 1, 0, 0, 0, 0, 'products');
INSERT INTO efood_plus_set VALUES (109, 'modCompanyCatTj', '[模块插件]本类推荐餐馆', 'company', 'query', 1, 0, 1, 0, 0, 1, 1, 0, 0, 1, 1, 0, 1, 0, 1, 'company');
INSERT INTO efood_plus_set VALUES (111, 'modSellCatTj', '[模块插件]本类推荐餐饮信息', 'sell', 'query', 1, 0, 1, 0, 0, 1, 1, 0, 0, 1, 1, 0, 1, 0, 1, 'info');
INSERT INTO efood_plus_set VALUES (114, 'modSellList', '[全站插件]最新餐饮信息', 'all', 'all', 1, 1, 1, 0, 0, 1, 1, 0, 1, 1, 1, 1, 1, 0, 1, 'info');
INSERT INTO efood_plus_set VALUES (116, 'modSellTj', '[全站插件]推荐餐饮信息', 'all', 'all', 1, 0, 1, 0, 0, 1, 1, 0, 0, 1, 1, 1, 1, 0, 1, 'info');
INSERT INTO efood_plus_set VALUES (117, 'modProdPic', '[全站插件]最新美食图片', 'all', 'all', 1, 1, 1, 1, 1, 1, 1, 0, 1, 1, 1, 1, 1, 0, 1, 'products');
INSERT INTO efood_plus_set VALUES (118, 'modProdPicTj', '[全站插件]推荐美食图片', 'all', 'all', 1, 1, 1, 1, 1, 1, 1, 0, 0, 1, 1, 1, 1, 0, 1, 'products');
INSERT INTO efood_plus_set VALUES (119, 'modProdPicCatTj', '[模块插件]本类推荐美食图片', 'products', 'query', 1, 1, 1, 1, 1, 1, 1, 0, 0, 1, 1, 0, 1, 0, 1, 'products');
INSERT INTO efood_plus_set VALUES (121, 'modAdvsLb', '[全站插件]图片轮播广告', 'all', 'all', 0, 0, 1, 1, 1, 0, 0, 0, 0, 0, 0, 0, 0, 0, 1, 'news');
INSERT INTO efood_plus_set VALUES (122, 'modCompanyCommentList', '[模块插件]餐馆相关评论', 'company', 'detail', 1, 0, 1, 0, 0, 1, 1, 1, 1, 1, 1, 0, 1, 0, 1, 'company');
INSERT INTO efood_plus_set VALUES (123, 'modCompanyZsPic', '[模块插件]餐馆主页最新餐厅图片', 'company', 'detail', 1, 1, 1, 1, 1, 1, 1, 0, 0, 1, 1, 0, 1, 0, 1, 'company');
INSERT INTO efood_plus_set VALUES (124, 'modCompanyPicTj', '[全站插件]餐馆图片推荐', 'all', 'all', 1, 1, 1, 1, 1, 1, 1, 0, 0, 1, 1, 1, 1, 0, 1, 'company');
INSERT INTO efood_plus_set VALUES (125, 'modCompanyFoodTj', '[全站插件]餐馆+菜组合推荐', 'all', 'all', 1, 1, 1, 1, 1, 1, 1, 0, 0, 1, 1, 1, 1, 0, 1, 'company');
INSERT INTO efood_plus_set VALUES (126, 'modSellCommentList', '[模块插件]信息相关评论', 'sell', 'detail', 1, 0, 1, 0, 0, 1, 1, 1, 1, 1, 1, 0, 1, 0, 1, 'info');
INSERT INTO efood_plus_set VALUES (127, 'modCompanyCommentListAll', '[全站插件]最新餐馆评论', 'all', 'all', 1, 0, 1, 0, 0, 1, 1, 1, 1, 1, 1, 0, 1, 0, 1, 'company');
INSERT INTO efood_plus_set VALUES (128, 'modSellCommentListAll', '[全站插件]最新信息评论', 'all', 'all', 1, 0, 1, 0, 0, 1, 1, 1, 1, 1, 1, 0, 1, 0, 1, 'info');
INSERT INTO efood_plus_set VALUES (129, 'modCompanyPic', '[全站插件]最新餐馆图片', 'all', 'all', 1, 1, 1, 1, 1, 1, 1, 0, 1, 1, 1, 1, 1, 0, 1, 'company');
INSERT INTO efood_plus_set VALUES (130, 'modFoodTj', '[全站插件]美食图名组合推荐', 'all', 'all', 1, 0, 0, 1, 1, 1, 1, 0, 0, 1, 1, 1, 0, 0, 1, 'products');
INSERT INTO efood_plus_set VALUES (131, 'modProdCommentList', '[模块插件]美食相关评论', 'products', 'detail', 1, 0, 1, 0, 0, 1, 1, 1, 1, 1, 1, 0, 1, 0, 1, 'products');
INSERT INTO efood_plus_set VALUES (132, 'modProdCommentListAll', '[全站插件]最新美食评论', 'all', 'all', 1, 0, 1, 0, 0, 1, 1, 1, 1, 1, 1, 0, 1, 0, 1, 'products');
INSERT INTO efood_plus_set VALUES (133, 'modCompanyProdPic', '[模块插件]餐馆主页最新美食图片', 'company', 'detail', 1, 1, 1, 1, 1, 1, 1, 0, 0, 1, 1, 0, 1, 0, 1, 'products');
INSERT INTO efood_plus_set VALUES (134, 'modHdPic', '[全站插件]最新活动图片', 'all', 'all', 1, 1, 1, 1, 1, 1, 1, 0, 1, 1, 1, 0, 1, 0, 1, 'company');
INSERT INTO efood_plus_set VALUES (135, 'modHdList', '[全站插件]最新活动列表', 'all', 'all', 1, 1, 1, 0, 0, 1, 1, 0, 1, 1, 1, 0, 1, 0, 1, 'company');
INSERT INTO efood_plus_set VALUES (136, 'modHdQuery', '[模块插件]活动聚会检索', 'hd', 'query', 1, 0, 1, 0, 0, 1, 1, 1, 0, 1, 1, 0, 0, 0, 0, 'company');
INSERT INTO efood_plus_set VALUES (137, 'modHdCommentList', '[模块插件]活动相关评论', 'hd', 'detail', 1, 0, 1, 0, 0, 1, 1, 1, 1, 1, 1, 0, 1, 0, 1, 'company');
INSERT INTO efood_plus_set VALUES (138, 'modHdCommentForm', '[模块插件]活动评论发布表单', 'hd', 'detail', 1, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 1, 'company');
INSERT INTO efood_plus_set VALUES (139, 'modIndexSearchForm', '[全站插件]餐馆组合搜索(横式)', 'all', 'all', 1, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 1, 'company');
# --------------------------------------------------------

#
# 数据表的结构 `efood_poll_config`
#

CREATE TABLE efood_poll_config (
  config_id smallint(5) unsigned NOT NULL auto_increment,
  img_height int(5) NOT NULL default '0',
  img_length int(5) NOT NULL default '0',
  vodinfo varchar(225) NOT NULL default '0',
  def_options smallint(3) unsigned NOT NULL default '0',
  PRIMARY KEY  (config_id)
) ENGINE=MyISAM DEFAULT CHARSET=gbk;

#
# 导出下面的数据库内容 `efood_poll_config`
#

INSERT INTO efood_poll_config VALUES (1, 20, 10, '对不起,您已经投过票了', 10);
# --------------------------------------------------------

#
# 数据表的结构 `efood_poll_data`
#

CREATE TABLE efood_poll_data (
  id int(11) unsigned NOT NULL auto_increment,
  poll_id int(11) NOT NULL default '0',
  option_id int(11) NOT NULL default '0',
  option_text varchar(200) NOT NULL default '',
  color varchar(20) NOT NULL default '',
  votes int(14) NOT NULL default '0',
  PRIMARY KEY  (id)
) ENGINE=MyISAM DEFAULT CHARSET=gbk;

#
# 导出下面的数据库内容 `efood_poll_data`
#

# --------------------------------------------------------

#
# 数据表的结构 `efood_poll_index`
#

CREATE TABLE efood_poll_index (
  poll_id int(11) unsigned NOT NULL auto_increment,
  question varchar(100) NOT NULL default '0',
  `timestamp` int(11) NOT NULL default '0',
  `status` smallint(2) NOT NULL default '0',
  exp_time int(11) NOT NULL default '0',
  expire smallint(2) NOT NULL default '0',
  PRIMARY KEY  (poll_id)
) ENGINE=MyISAM DEFAULT CHARSET=gbk;

#
# 导出下面的数据库内容 `efood_poll_index`
#

# --------------------------------------------------------

#
# 数据表的结构 `efood_products`
#

CREATE TABLE efood_products (
  id int(12) NOT NULL auto_increment,
  memberid int(20) NOT NULL default '0',
  catid int(20) NOT NULL default '0',
  catpath varchar(255) NOT NULL default '',
  zoneid int(20) NOT NULL default '0',
  zonepath varchar(255) NOT NULL default '',
  title varchar(200) NOT NULL default '',
  body text NOT NULL,
  xh varchar(200) NOT NULL default '',
  dw varchar(30) NOT NULL default '',
  pictype varchar(30) NOT NULL default '',
  picsrc varchar(200) NOT NULL default '',
  dtime int(11) NOT NULL default '0',
  uptime int(11) NOT NULL default '0',
  exptime int(11) NOT NULL default '0',
  ip varchar(30) NOT NULL default '',
  iffb int(1) NOT NULL default '0',
  tj int(1) NOT NULL default '0',
  prop1 varchar(255) default NULL,
  prop2 varchar(255) default NULL,
  prop3 varchar(255) default NULL,
  prop4 varchar(255) default NULL,
  prop5 varchar(255) default NULL,
  prop6 varchar(255) default NULL,
  prop7 varchar(255) default NULL,
  prop8 varchar(255) default NULL,
  prop9 varchar(255) default NULL,
  prop10 varchar(255) default NULL,
  prop11 varchar(255) default NULL,
  prop12 varchar(255) default NULL,
  prop13 varchar(255) default NULL,
  prop14 varchar(255) default NULL,
  prop15 varchar(255) default NULL,
  prop16 varchar(255) default NULL,
  prop17 varchar(255) default NULL,
  prop18 varchar(255) default NULL,
  prop19 varchar(255) default NULL,
  prop20 varchar(255) default NULL,
  price decimal(12,2) default NULL,
  fundstype varchar(30) NOT NULL default '',
  PRIMARY KEY  (id)
) ENGINE=MyISAM DEFAULT CHARSET=gbk;

#
# 导出下面的数据库内容 `efood_products`
#

INSERT INTO efood_products VALUES (1, 3, 2, '0002:;', 2, '0002:', '大班燕窝粥', '   燕窝一向被人们视为矜贵之物，旧时王谢堂前燕，今日却飞入寻常百姓家。大班燕窝粥的诞生是现代的文明与进步，也是社会对餐饮文化的推动与创新的又一成果。粥城的经营宗旨是将“燕窝平民化”，质量却是第一的信守。在这里，即使是一碗普通的面食或粥品，你可尽享“豪门“的尊贵与服务，而价格却令你消费得很实在，同时在管理方面引入规范化经营，通过“五常”法管理技术，令店内的卫生、环境、出品、服务得以更好的改善和提高,因此较深入人心，受到各个层次的消费者追捧。燕窝做法应有尽有，鲜奶、椰汁、姜汁等，招牌菜大班燕窝粥更是将鲍参翅肚等珍贵食品“一碗打尽” ，巧妙搭配不同的配料，风味各别，每次你的光临，都有新惊喜。\r\n', '', '', 'gif', 'com/100003/images/1162921353.jpg', 1162921353, 1162921353, 0, '192.168.2.201', 1, 1, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '0.00', '人民币');
INSERT INTO efood_products VALUES (2, 3, 23, '0023:;', 2, '0002:', '沣生水起', '沣生水起 秘制私', '', '', 'gif', 'com/100003/images/1162921401.jpg', 1162921401, 1163527555, 1163527555, '192.168.2.201', 1, 1, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '0.00', '');
INSERT INTO efood_products VALUES (3, 3, 23, '0023:;', 2, '0002:', '在水一舫', '在水一舫', '', '', 'gif', 'com/100003/images/1162921480.jpg', 1162921480, 1163527836, 1163527836, '192.168.2.201', 1, 1, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '0.00', '');
INSERT INTO efood_products VALUES (27, 7, 9, '0009:;', 6, '0006:', '九味鲜蔬汤', '九味鲜蔬汤', '', '', '', '', 1163521808, 1163521808, 0, '192.168.2.201', 1, 1, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '0.00', '');
INSERT INTO efood_products VALUES (25, 7, 9, '0009:;', 6, '0006:', '特色火锅', '特色火锅', '', '', '', '', 1163521754, 1163521754, 0, '192.168.2.201', 1, 1, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '0.00', '');
INSERT INTO efood_products VALUES (26, 7, 9, '0009:;', 6, '0006:', '特色调料', '特色调料', '', '', '', '', 1163521778, 1163521778, 0, '192.168.2.201', 1, 1, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '0.00', '');
INSERT INTO efood_products VALUES (23, 7, 9, '0009:;', 6, '0006:', '香辣火锅', '香辣火锅香辣火锅', '', '', '', '', 1163521712, 1163521712, 0, '192.168.2.201', 1, 1, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '0.00', '');
INSERT INTO efood_products VALUES (24, 7, 9, '0009:;', 6, '0006:', '双鱼火锅', '双鱼火锅', '', '', '', '', 1163521730, 1163521730, 0, '192.168.2.201', 1, 1, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '0.00', '');
INSERT INTO efood_products VALUES (8, 3, 23, '0023:;', 2, '0002:', '酒香油鸡', '酒香鸡油', '', '', 'gif', 'com/100003/images/1163527102.jpg', 1162921540, 1163527878, 1163527878, '192.168.2.201', 1, 1, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '0.00', '');
INSERT INTO efood_products VALUES (10, 3, 9, '0009:;', 2, '0002:', '过桥米线', '这是云南省蒙自县的特色小吃，已经有几百年历史了，凡到蒙自旅游的朋友无不喜欢品尝。现在虽然在全国各地都有了卖过桥米线的饭店，但是一物离了家乡就会变了实质，如上面介绍的做法，就和传统做法不同，在蒙自没有人往汤里加芝麻油和黑鱼片，但是在秋天时我们往里面加菊花，这就是有名的菊花米线。现在这个季节正是吃菊花米线的时候，没吃过的人根本无法想象其鲜美。', '', '', 'gif', 'com/100003/images/1163430946.jpg', 1163430946, 1163527710, 1163527710, '192.168.2.201', 1, 1, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '0.00', '');
INSERT INTO efood_products VALUES (11, 5, 23, '0023:;', 4, '0004:', '东北大拉皮', '我国历史悠久、富有特色的地方风味菜肴', '', '', 'gif', 'com/100005/images/1163432553.jpg', 1163431113, 1163527793, 1163527793, '192.168.2.201', 1, 1, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '0.00', '');
INSERT INTO efood_products VALUES (13, 5, 2, '0002:;', 4, '0004:', '尖椒炒牛柳', '五花肉营养丰富，容易吸收，有补充皮肤养分、美容的效果', '', '', 'gif', 'com/100005/images/1164041080.jpg', 1163432947, 1164041080, 1164041080, '192.168.2.201', 1, 1, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '0.00', '');
INSERT INTO efood_products VALUES (14, 5, 1, '0001:;', 4, '0004:', '香蕉酪饼', '香蕉酪饼香蕉酪饼香蕉酪饼', '', '', 'gif', 'com/100005/images/1164041042.jpg', 1163434089, 1164041042, 1164041042, '192.168.2.201', 1, 1, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '0.00', '');
INSERT INTO efood_products VALUES (15, 5, 2, '0002:;', 4, '0004:', '花椒鱼', '花椒鱼花椒鱼花椒鱼花椒鱼花椒鱼', '', '', 'gif', 'com/100005/images/1163434148.jpg', 1163434148, 1163434148, 0, '192.168.2.201', 1, 1, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '0.00', '');
INSERT INTO efood_products VALUES (16, 5, 4, '0004:;', 4, '0004:', '五味手撕鹅', '五味手撕鹅五味手撕鹅', '', '', 'gif', 'com/100005/images/1163434450.jpg', 1163434450, 1163528067, 1163528067, '192.168.2.201', 1, 1, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '0.00', '');
INSERT INTO efood_products VALUES (17, 5, 3, '0003:;', 4, '0004:', '盆仔村边鹅', '盆仔村边鹅', '', '', 'gif', 'com/100005/images/1163434493.jpg', 1163434482, 1163434493, 1163434493, '192.168.2.201', 1, 1, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '0.00', '');
INSERT INTO efood_products VALUES (18, 5, 2, '0002:;', 4, '0004:', '飞毛腿', '飞毛腿飞毛腿飞毛腿', '', '', 'gif', 'com/100005/images/1164040736.jpg', 1163434551, 1164040736, 1164040736, '192.168.2.201', 1, 1, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '0.00', '');
INSERT INTO efood_products VALUES (28, 7, 4, '0004:;', 6, '0006:', '精美小炒', '精美小炒', '', '', '', '', 1163521843, 1163521843, 0, '192.168.2.201', 1, 1, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '0.00', '');
INSERT INTO efood_products VALUES (22, 3, 23, '0023:;', 2, '0002:', '姜葱土鸡', '姜葱', '', '', 'gif', 'com/100003/images/1163517950.jpg', 1163517950, 1163517950, 0, '192.168.2.201', 1, 1, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '0.00', '');
INSERT INTO efood_products VALUES (29, 6, 2, '0002:;', 1, '0001:', '八宝豆辣鸡', '八宝豆辣鸡', '', '', 'gif', 'com/100006/images/1163521927.jpg', 1163521927, 1163521927, 0, '192.168.2.201', 1, 1, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '0.00', '');
INSERT INTO efood_products VALUES (30, 6, 4, '0004:;', 1, '0001:', '酸溜溜小菜', '酸溜溜小菜', '', '', '', '', 1163521954, 1163521954, 0, '192.168.2.201', 1, 1, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '0.00', '');
INSERT INTO efood_products VALUES (31, 6, 23, '0023:;', 1, '0001:', '香酥鹅肉', '香酥鹅肉', '', '', 'gif', 'com/100006/images/1163522028.jpg', 1163522028, 1163527651, 1163527651, '192.168.2.201', 1, 1, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '0.00', '');
INSERT INTO efood_products VALUES (33, 6, 4, '0004:;', 1, '0001:', '烤扁土豆', '烤扁土豆', '', '', '', '', 1163522129, 1163522129, 0, '192.168.2.201', 1, 1, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '0.00', '');
INSERT INTO efood_products VALUES (34, 6, 4, '0004:;', 1, '0001:', '排骨炖春笋', '排骨炖春笋', '', '', '', '', 1163522161, 1163522161, 0, '192.168.2.201', 1, 1, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '0.00', '');
INSERT INTO efood_products VALUES (35, 6, 4, '0004:;', 1, '0001:', '香辣狗肉煲', '香辣狗肉煲', '', '', 'gif', 'com/100006/images/1163522282.jpg', 1163522190, 1163522282, 1163522282, '192.168.2.201', 1, 1, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '0.00', '');
INSERT INTO efood_products VALUES (36, 4, 1, '0001:;', 2, '0002:', '香干回锅肉', '香干回锅肉', '', '', 'gif', 'com/100004/images/1163522334.jpg', 1163522334, 1163522334, 0, '192.168.2.201', 1, 1, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '0.00', '');
INSERT INTO efood_products VALUES (37, 4, 1, '0001:;', 2, '0002:', '盆仔村边鹅', '盆仔村边鹅', '', '', 'gif', 'com/100004/images/1163522377.jpg', 1163522377, 1163522377, 0, '192.168.2.201', 1, 1, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '0.00', '');
INSERT INTO efood_products VALUES (38, 9, 10, '0010:;', 1, '0001:', '水煮大黄鱼', '水煮大黄鱼', '', '', '', '', 1163522480, 1163522480, 0, '192.168.2.201', 1, 1, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '0.00', '');
INSERT INTO efood_products VALUES (39, 9, 10, '0010:;', 1, '0001:', '清甄大黄鱼', '清甄大黄鱼', '', '', '', '', 1163522501, 1163522501, 0, '192.168.2.201', 1, 1, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '0.00', '');
INSERT INTO efood_products VALUES (40, 9, 10, '0010:;', 1, '0001:', '清口海水草', '清口海水草', '', '', '', '', 1163522537, 1163522537, 0, '192.168.2.201', 1, 1, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '0.00', '');
INSERT INTO efood_products VALUES (41, 9, 10, '0010:;', 1, '0001:', '海蟹煲', '海蟹煲', '', '', '', '', 1163522584, 1163522584, 0, '192.168.2.201', 1, 1, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '0.00', '');
INSERT INTO efood_products VALUES (42, 9, 10, '0010:;', 1, '0001:', '泡椒龙虾', '泡椒龙虾', '', '', 'gif', 'com/100009/images/1163522600.jpg', 1163522600, 1163527751, 1163527751, '192.168.2.201', 1, 1, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '0.00', '');
INSERT INTO efood_products VALUES (43, 9, 10, '0010:;', 1, '0001:', '葱烤小鲍鱼', '葱烤小鲍鱼', '', '', 'gif', 'com/100009/images/1163522775.jpg', 1163522775, 1163522775, 0, '192.168.2.201', 1, 1, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '0.00', '');
INSERT INTO efood_products VALUES (44, 4, 1, '0001:;', 2, '0002:', '香菇尝粉', '香菇尝粉', '', '', '', '', 1163522929, 1163522929, 0, '192.168.2.201', 1, 1, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '0.00', '');
INSERT INTO efood_products VALUES (45, 4, 1, '0001:;', 2, '0002:', '广式小肉饼', '广式小肉饼', '', '', 'gif', 'com/100004/images/1163522993.jpg', 1163522993, 1163528001, 1163528001, '192.168.2.201', 1, 1, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '0.00', '');
INSERT INTO efood_products VALUES (46, 4, 1, '0001:;', 2, '0002:', '上汤西兰花', '上汤西兰花', '', '', 'gif', 'com/100004/images/1163523022.jpg', 1163523022, 1163523022, 0, '192.168.2.201', 1, 1, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '0.00', '');
INSERT INTO efood_products VALUES (47, 4, 2, '0002:;', 2, '0002:', '红汤回鱼', '红汤回鱼', '', '', 'gif', 'com/100004/images/1163523046.jpg', 1163523046, 1163527916, 1163527916, '192.168.2.201', 1, 1, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '0.00', '');
# --------------------------------------------------------

#
# 数据表的结构 `efood_products_cat`
#

CREATE TABLE efood_products_cat (
  catid int(12) NOT NULL auto_increment,
  pid int(12) default NULL,
  cat varchar(100) default NULL,
  xuhao int(4) default NULL,
  catpath varchar(255) default NULL,
  nums int(20) NOT NULL default '0',
  tj int(1) NOT NULL default '0',
  PRIMARY KEY  (catid)
) ENGINE=MyISAM DEFAULT CHARSET=gbk;

#
# 导出下面的数据库内容 `efood_products_cat`
#

INSERT INTO efood_products_cat VALUES (1, 0, '粤菜', 1, '0001:', 6, 0);
INSERT INTO efood_products_cat VALUES (2, 0, '川菜', 2, '0002:', 6, 0);
INSERT INTO efood_products_cat VALUES (3, 0, '湘菜', 3, '0003:', 1, 0);
INSERT INTO efood_products_cat VALUES (4, 0, '浙菜', 4, '0004:', 6, 0);
INSERT INTO efood_products_cat VALUES (5, 0, '鲁菜', 5, '0005:', 1, 0);
INSERT INTO efood_products_cat VALUES (6, 0, '徽菜', 6, '0006:', 0, 0);
INSERT INTO efood_products_cat VALUES (7, 0, '闽菜', 7, '0007:', 1, 0);
INSERT INTO efood_products_cat VALUES (8, 0, '苏菜', 8, '0008:', 0, 0);
INSERT INTO efood_products_cat VALUES (29, 0, '时尚特色', 24, '0029:', 0, 0);
INSERT INTO efood_products_cat VALUES (9, 0, '火锅', 9, '0009:', 6, 0);
INSERT INTO efood_products_cat VALUES (10, 0, '海鲜', 10, '0010:', 6, 0);
INSERT INTO efood_products_cat VALUES (11, 0, '烧烤', 11, '0011:', 0, 0);
INSERT INTO efood_products_cat VALUES (12, 0, '素菜', 12, '0012:', 1, 0);
INSERT INTO efood_products_cat VALUES (13, 0, '台湾菜', 13, '0013:', 0, 0);
INSERT INTO efood_products_cat VALUES (14, 0, '野味', 14, '0014:', 0, 0);
INSERT INTO efood_products_cat VALUES (15, 0, '清真', 15, '0015:', 0, 0);
INSERT INTO efood_products_cat VALUES (16, 0, '自助餐', 16, '0016:', 0, 0);
INSERT INTO efood_products_cat VALUES (17, 0, '西餐', 17, '0017:', 0, 0);
INSERT INTO efood_products_cat VALUES (18, 0, '韩国料理', 18, '0018:', 0, 0);
INSERT INTO efood_products_cat VALUES (19, 0, '日本料理', 19, '0019:', 0, 0);
INSERT INTO efood_products_cat VALUES (20, 0, '面食', 20, '0020:', 1, 0);
INSERT INTO efood_products_cat VALUES (21, 0, '小吃', 21, '0021:', 2, 0);
INSERT INTO efood_products_cat VALUES (22, 0, '快餐', 22, '0022:', 0, 0);
INSERT INTO efood_products_cat VALUES (23, 0, '农家菜', 23, '0023:', 6, 0);
INSERT INTO efood_products_cat VALUES (28, 0, '京菜', 9, '0028:', 0, 0);
# --------------------------------------------------------

#
# 数据表的结构 `efood_proj`
#

CREATE TABLE efood_proj (
  id int(12) NOT NULL auto_increment,
  project varchar(50) default '',
  intro text,
  PRIMARY KEY  (id)
) ENGINE=MyISAM DEFAULT CHARSET=gbk;

#
# 导出下面的数据库内容 `efood_proj`
#

# --------------------------------------------------------

#
# 数据表的结构 `efood_prop`
#

CREATE TABLE efood_prop (
  id int(20) NOT NULL auto_increment,
  menuid int(12) default NULL,
  catid int(20) NOT NULL default '0',
  propname char(30) default NULL,
  xuhao int(20) default NULL,
  PRIMARY KEY  (id),
  KEY xuhao (xuhao)
) ENGINE=MyISAM DEFAULT CHARSET=gbk;

#
# 导出下面的数据库内容 `efood_prop`
#

# --------------------------------------------------------

#
# 数据表的结构 `efood_secure`
#

CREATE TABLE efood_secure (
  id int(12) NOT NULL auto_increment,
  securename char(100) NOT NULL default '',
  securetype char(30) NOT NULL default '',
  securecode char(50) NOT NULL default '',
  xuhao int(12) NOT NULL default '0',
  PRIMARY KEY  (id)
) ENGINE=MyISAM DEFAULT CHARSET=gbk;

#
# 导出下面的数据库内容 `efood_secure`
#

INSERT INTO efood_secure VALUES (2, '修改会员资料', 'func', 'membermodify', 2);
INSERT INTO efood_secure VALUES (3, '栏目访问权限', 'menu', 'menuread', 3);
INSERT INTO efood_secure VALUES (4, '内容访问权限', 'con', 'conread', 4);
INSERT INTO efood_secure VALUES (6, '社区评论发表权限', 'func', 'bbssend', 5);
INSERT INTO efood_secure VALUES (7, '社区评论回复权限', 'func', 'bbsback', 6);
INSERT INTO efood_secure VALUES (8, '文章投稿发布权限', 'func', 'NewsFabu', 7);
INSERT INTO efood_secure VALUES (10, '文章投稿修改权限', 'func', 'NewsModify', 8);
INSERT INTO efood_secure VALUES (9, '文章投稿免审核权限', 'func', 'NewsNoCheck', 9);
INSERT INTO efood_secure VALUES (11, '餐厅介绍发布权限', 'func', 'CompanyFb', 10);
INSERT INTO efood_secure VALUES (13, '餐厅介绍免审核权限', 'func', 'CompanyFbCheck', 11);
INSERT INTO efood_secure VALUES (16, '餐饮信息发布权限', 'func', 'InfoFb', 16);
INSERT INTO efood_secure VALUES (17, '餐饮信息发布免审核权限', 'func', 'InfoFbCheck', 17);
INSERT INTO efood_secure VALUES (18, '餐饮信息发布数量限制', 'nums', 'InfoNums', 18);
INSERT INTO efood_secure VALUES (19, '菜式发布权限', 'func', 'ProdFb', 19);
INSERT INTO efood_secure VALUES (20, '菜式发布免审核权限', 'func', 'ProdFbCheck', 20);
INSERT INTO efood_secure VALUES (21, '菜式发布数量限制', 'nums', 'ProdNums', 21);
INSERT INTO efood_secure VALUES (22, '餐厅图片上传权限', 'func', 'ZsFb', 22);
INSERT INTO efood_secure VALUES (23, '餐厅图片上传免审核权限', 'func', 'ZsFbCheck', 23);
INSERT INTO efood_secure VALUES (24, '餐厅图片上传数量限制', 'nums', 'ZsNums', 24);
INSERT INTO efood_secure VALUES (28, '活动聚会发起权限', 'func', 'FbPub', 28);
INSERT INTO efood_secure VALUES (29, '活动聚会发起免审核权限', 'func', 'FbCheck', 29);
INSERT INTO efood_secure VALUES (30, '评论发布免审核权限', 'func', 'BbsNoCheck', 7);
# --------------------------------------------------------

#
# 数据表的结构 `efood_stat_base`
#

CREATE TABLE efood_stat_base (
  id int(8) NOT NULL auto_increment,
  ShowCountType int(1) default NULL,
  ShowCountSize int(1) default NULL,
  ShowCount int(1) default NULL,
  ShowCountStat int(1) default NULL,
  starttime int(11) default NULL,
  CountIpExp int(3) default NULL,
  PRIMARY KEY  (id)
) ENGINE=MyISAM DEFAULT CHARSET=gbk;

#
# 导出下面的数据库内容 `efood_stat_base`
#

INSERT INTO efood_stat_base VALUES (1, 17, 8, 2, 0, 1164038400, 0);
# --------------------------------------------------------

#
# 数据表的结构 `efood_stat_come`
#

CREATE TABLE efood_stat_come (
  id int(12) NOT NULL auto_increment,
  url varchar(255) NOT NULL default '',
  count int(5) NOT NULL default '0',
  begingtime int(11) NOT NULL default '0',
  lasttime int(11) NOT NULL default '0',
  PRIMARY KEY  (id)
) ENGINE=MyISAM DEFAULT CHARSET=gbk;

#
# 导出下面的数据库内容 `efood_stat_come`
#

# --------------------------------------------------------

#
# 数据表的结构 `efood_stat_count`
#

CREATE TABLE efood_stat_count (
  id int(21) NOT NULL auto_increment,
  ip varchar(17) NOT NULL default '',
  os varchar(40) NOT NULL default '',
  browse varchar(30) NOT NULL default '',
  urlform varchar(255) NOT NULL default '',
  `time` int(11) NOT NULL default '0',
  nowpage varchar(255) default NULL,
  member varchar(50) default NULL,
  PRIMARY KEY  (id)
) ENGINE=MyISAM DEFAULT CHARSET=gbk;

#
# 导出下面的数据库内容 `efood_stat_count`
#

# --------------------------------------------------------

#
# 数据表的结构 `efood_stat_date`
#

CREATE TABLE efood_stat_date (
  id int(2) NOT NULL auto_increment,
  1th_day int(5) NOT NULL default '0',
  2th_day int(5) NOT NULL default '0',
  3th_day int(5) NOT NULL default '0',
  4th_day int(5) NOT NULL default '0',
  5th_day int(5) NOT NULL default '0',
  6th_day int(5) NOT NULL default '0',
  7th_day int(5) NOT NULL default '0',
  8th_day int(5) NOT NULL default '0',
  9th_day int(5) NOT NULL default '0',
  10th_day int(5) NOT NULL default '0',
  11th_day int(5) NOT NULL default '0',
  12th_day int(5) NOT NULL default '0',
  13th_day int(5) NOT NULL default '0',
  14th_day int(5) NOT NULL default '0',
  15th_day int(5) NOT NULL default '0',
  16th_day int(5) NOT NULL default '0',
  17th_day int(5) NOT NULL default '0',
  18th_day int(5) NOT NULL default '0',
  19th_day int(5) NOT NULL default '0',
  20th_day int(5) NOT NULL default '0',
  21th_day int(5) NOT NULL default '0',
  22th_day int(5) NOT NULL default '0',
  23th_day int(5) NOT NULL default '0',
  24th_day int(5) NOT NULL default '0',
  25th_day int(5) NOT NULL default '0',
  26th_day int(5) NOT NULL default '0',
  27th_day int(5) NOT NULL default '0',
  28th_day int(5) NOT NULL default '0',
  29th_day int(5) NOT NULL default '0',
  30th_day int(5) NOT NULL default '0',
  31th_day int(5) NOT NULL default '0',
  PRIMARY KEY  (id)
) ENGINE=MyISAM DEFAULT CHARSET=gbk;

#
# 导出下面的数据库内容 `efood_stat_date`
#

INSERT INTO efood_stat_date VALUES (1, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0);
INSERT INTO efood_stat_date VALUES (2, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0);
INSERT INTO efood_stat_date VALUES (3, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0);
INSERT INTO efood_stat_date VALUES (4, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0);
INSERT INTO efood_stat_date VALUES (5, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0);
INSERT INTO efood_stat_date VALUES (6, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0);
INSERT INTO efood_stat_date VALUES (7, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0);
INSERT INTO efood_stat_date VALUES (8, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0);
INSERT INTO efood_stat_date VALUES (9, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0);
INSERT INTO efood_stat_date VALUES (10, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0);
INSERT INTO efood_stat_date VALUES (11, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0);
INSERT INTO efood_stat_date VALUES (12, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0);
# --------------------------------------------------------

#
# 数据表的结构 `efood_temp`
#

CREATE TABLE efood_temp (
  id int(12) NOT NULL auto_increment,
  bn varchar(20) default NULL,
  fold varchar(20) default NULL,
  name varchar(50) default NULL,
  PRIMARY KEY  (id)
) ENGINE=MyISAM DEFAULT CHARSET=gbk;

#
# 导出下面的数据库内容 `efood_temp`
#

# --------------------------------------------------------

#
# 数据表的结构 `efood_tradetype`
#

CREATE TABLE efood_tradetype (
  id int(12) NOT NULL auto_increment,
  tradetype char(100) default NULL,
  PRIMARY KEY  (id)
) ENGINE=MyISAM DEFAULT CHARSET=gbk;

#
# 导出下面的数据库内容 `efood_tradetype`
#

INSERT INTO efood_tradetype VALUES (1, '大型酒宴');
INSERT INTO efood_tradetype VALUES (2, '多人聚餐');
INSERT INTO efood_tradetype VALUES (3, '商务宴请');
INSERT INTO efood_tradetype VALUES (4, '好友小聚');
INSERT INTO efood_tradetype VALUES (5, '家庭聚餐');
INSERT INTO efood_tradetype VALUES (6, '品茶聊天');
INSERT INTO efood_tradetype VALUES (7, '情侣约会');
INSERT INTO efood_tradetype VALUES (8, '生日聚会');
INSERT INTO efood_tradetype VALUES (9, '省时快餐');
INSERT INTO efood_tradetype VALUES (10, '喜庆婚宴');
INSERT INTO efood_tradetype VALUES (11, '休闲社交');
INSERT INTO efood_tradetype VALUES (12, '随便吃吃');
INSERT INTO efood_tradetype VALUES (13, '学生用餐');
INSERT INTO efood_tradetype VALUES (14, '夜宵小酌');
INSERT INTO efood_tradetype VALUES (15, '外卖送餐');
INSERT INTO efood_tradetype VALUES (16, '有停车场');
INSERT INTO efood_tradetype VALUES (17, '刷卡消费');
# --------------------------------------------------------

#
# 数据表的结构 `efood_zs`
#

CREATE TABLE efood_zs (
  id int(12) NOT NULL auto_increment,
  memberid int(20) NOT NULL default '0',
  title varchar(250) NOT NULL default '',
  body text NOT NULL,
  pictype varchar(30) NOT NULL default '',
  picsrc varchar(200) NOT NULL default '',
  dtime int(11) NOT NULL default '0',
  uptime int(11) NOT NULL default '0',
  ip varchar(30) NOT NULL default '',
  iffb int(1) NOT NULL default '0',
  PRIMARY KEY  (id)
) ENGINE=MyISAM DEFAULT CHARSET=gbk;

#
# 导出下面的数据库内容 `efood_zs`
#


