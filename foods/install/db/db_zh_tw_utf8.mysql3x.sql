# phpMyAdmin MySQL-Dump
# version 2.3.0
# http://phpwizard.net/phpMyAdmin/
# http://www.phpmyadmin.net/ (download page)
#
# 主機: localhost
# 建立日期: Nov 21, 2006 at 10:39 PM
# 伺服機版本: 4.01.14
# PHP 版本: 4.3.8
# 資料庫 : `efood`
# --------------------------------------------------------

#
# 資料表的結構 `efood_admin`
#

CREATE TABLE efood_admin (
  id int(6) NOT NULL auto_increment,
  `user` varchar(30) NOT NULL default '',
  `password` varchar(50) NOT NULL default '',
  name varchar(50) NOT NULL default '',
  moveable int(1) default NULL,
  PRIMARY KEY  (id)
);

#
# 導出下面的資料庫內容 `efood_admin`
#

INSERT INTO efood_admin VALUES (3, 'admin', '21232f297a57a5a743894a0e4a801fc3', 'SystemMaster', 0);
# --------------------------------------------------------

#
# 資料表的結構 `efood_admin_auth`
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
);

#
# 導出下面的資料庫內容 `efood_admin_auth`
#

INSERT INTO efood_admin_auth VALUES (1, '1', '系統參數設置', '', 1, 0, '系統設置');
INSERT INTO efood_admin_auth VALUES (2, '2', '修改管理密碼', '', 2, 0, '系統設置');
INSERT INTO efood_admin_auth VALUES (3, '3', '管理帳戶設置', '', 3, 0, '系統設置');
INSERT INTO efood_admin_auth VALUES (4, '4', '會員類型設置', '', 4, 0, '系統設置');
INSERT INTO efood_admin_auth VALUES (5, '5', '其他系統設置', '', 5, 0, '系統設置');
INSERT INTO efood_admin_auth VALUES (6, '11', '網站欄目設置', '', 1, 1, '網站設置');
INSERT INTO efood_admin_auth VALUES (7, '12', '網站欄目刪除', '', 2, 1, '網站設置');
INSERT INTO efood_admin_auth VALUES (8, '13', '網站頁面設置', '', 3, 1, '網站設置');
INSERT INTO efood_admin_auth VALUES (9, '14', '介面風格設置', '', 4, 1, '網站設置');
INSERT INTO efood_admin_auth VALUES (10, '15', '自定表單設置', '', 5, 1, '網站設置');
INSERT INTO efood_admin_auth VALUES (11, '16', '社區分類設置', '', 6, 1, '網站設置');
INSERT INTO efood_admin_auth VALUES (12, '17', '網站專題設置', '', 7, 1, '網站設置');
INSERT INTO efood_admin_auth VALUES (13, '21', '文章頻道管理', '', 1, 2, '內容管理');
INSERT INTO efood_admin_auth VALUES (14, '22', '圖文頻道管理', '', 2, 2, '內容管理');
INSERT INTO efood_admin_auth VALUES (15, '23', '下載頻道管理', '', 3, 2, '內容管理');
INSERT INTO efood_admin_auth VALUES (16, '24', '網站標誌管理', '', 4, 2, '內容管理');
INSERT INTO efood_admin_auth VALUES (17, '25', '網站廣告管理', '', 5, 2, '內容管理');
INSERT INTO efood_admin_auth VALUES (18, '51', '會員審核管理', '', 1, 5, '會員管理');
INSERT INTO efood_admin_auth VALUES (19, '52', '會員查詢管理', '', 2, 5, '會員管理');
INSERT INTO efood_admin_auth VALUES (20, '53', '會員資料查詢', '', 3, 5, '會員管理');
INSERT INTO efood_admin_auth VALUES (21, '54', '會員資料修改', '', 4, 5, '會員管理');
INSERT INTO efood_admin_auth VALUES (22, '55', '會員郵件發送', '', 5, 5, '會員管理');
INSERT INTO efood_admin_auth VALUES (23, '56', '會員許可權管理', '', 6, 5, '會員管理');
INSERT INTO efood_admin_auth VALUES (24, '57', '會員公告管理', '', 7, 5, '會員管理');
INSERT INTO efood_admin_auth VALUES (25, '61', '回饋資訊管理', '', 1, 6, '資訊管理');
INSERT INTO efood_admin_auth VALUES (26, '62', '社區評論管理', '', 2, 6, '資訊管理');
INSERT INTO efood_admin_auth VALUES (27, '71', '訪問統計系統', '', 1, 7, '輔助工具');
INSERT INTO efood_admin_auth VALUES (28, '72', '網站資料備份', '', 2, 7, '輔助工具');
INSERT INTO efood_admin_auth VALUES (29, '73', '投票調查系統', '', 3, 7, '輔助工具');
INSERT INTO efood_admin_auth VALUES (30, '74', '友情鏈結系統', '', 4, 7, '輔助工具');
INSERT INTO efood_admin_auth VALUES (31, '75', '軟體升級更新', '', 5, 7, '輔助工具');
INSERT INTO efood_admin_auth VALUES (32, '30', '餐飲分類管理', '', 0, 3, '餐飲管理');
INSERT INTO efood_admin_auth VALUES (33, '31', '餐館名錄管理', '', 1, 3, '餐飲管理');
INSERT INTO efood_admin_auth VALUES (34, '32', '餐飲資訊管理', '', 2, 3, '餐飲管理');
INSERT INTO efood_admin_auth VALUES (35, '33', '餐館菜式管理', '', 3, 3, '餐飲管理');
INSERT INTO efood_admin_auth VALUES (36, '34', '餐館圖片管理', '', 4, 3, '餐飲管理');
INSERT INTO efood_admin_auth VALUES (37, '37', '聚會活動管理', '', 5, 3, '餐飲管理');
INSERT INTO efood_admin_auth VALUES (38, '36', '批量刪除許可權', '', 6, 3, '餐飲管理');
INSERT INTO efood_admin_auth VALUES (39, '76', '郵件群發許可權', '', 7, 7, '輔助工具');
INSERT INTO efood_admin_auth VALUES (40, '58', '模擬會員登錄', '', 8, 5, '會員管理');
# --------------------------------------------------------

#
# 資料表的結構 `efood_admin_rights`
#

CREATE TABLE efood_admin_rights (
  id int(50) NOT NULL auto_increment,
  auth char(20) default NULL,
  `user` char(50) default NULL,
  PRIMARY KEY  (id)
);

#
# 導出下面的資料庫內容 `efood_admin_rights`
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
# 資料表的結構 `efood_advs_dl`
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
);

#
# 導出下面的資料庫內容 `efood_advs_dl`
#

INSERT INTO efood_advs_dl VALUES (1, 1, '', 75, 180, 'gif', 'images/duilian.gif', 'http://', '_self', 0, 1, 5, 5);
# --------------------------------------------------------

#
# 資料表的結構 `efood_advs_float`
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
);

#
# 導出下面的資料庫內容 `efood_advs_float`
#

INSERT INTO efood_advs_float VALUES (1, 1, '', 'gif', 1, 100, 100, 'http://', '_self', 'images/float.gif', 100, 0);
# --------------------------------------------------------

#
# 資料表的結構 `efood_advs_lb`
#

CREATE TABLE efood_advs_lb (
  id int(20) NOT NULL auto_increment,
  title char(100) NOT NULL default '',
  src char(100) NOT NULL default '',
  url char(100) NOT NULL default '',
  xuhao int(5) NOT NULL default '0',
  PRIMARY KEY  (id)
);

#
# 導出下面的資料庫內容 `efood_advs_lb`
#

INSERT INTO efood_advs_lb VALUES (14, '廣告標題', 'advs/1164118299.jpg', '/hd/html/?8.html', 1);
INSERT INTO efood_advs_lb VALUES (15, '廣告標題1', 'advs/1164119345.jpg', '/com/100006/index.php', 2);
# --------------------------------------------------------

#
# 資料表的結構 `efood_advs_left`
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
);

#
# 導出下面的資料庫內容 `efood_advs_left`
#

INSERT INTO efood_advs_left VALUES (1, 1, '', 75, 75, 'gif', 'images/jiao.gif', 'http://', '_self', 0, 1, 5, 5);
# --------------------------------------------------------

#
# 資料表的結構 `efood_advs_page`
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
);

#
# 導出下面的資料庫內容 `efood_advs_page`
#

INSERT INTO efood_advs_page VALUES (1, '橫幅776*80廣告', 776, 82, 'swf', 'advs/1163877874.swf', 'http://', '_self', 0, 0);
INSERT INTO efood_advs_page VALUES (2, '內頁180*60廣告', 180, 60, 'gif', 'advs/1162657915.gif', 'http://', '_self', 0, 0);
INSERT INTO efood_advs_page VALUES (7, '橫幅776*80廣告', 776, 80, 'swf', 'advs/1164012440.swf', 'http://', '_self', 0, 0);
# --------------------------------------------------------

#
# 資料表的結構 `efood_advs_pop`
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
);

#
# 導出下面的資料庫內容 `efood_advs_pop`
#

INSERT INTO efood_advs_pop VALUES (1, 'POP', '', 0, 400, 300, 0, 0, 0, 0, 0, 0, 'auto', 0, 1);
# --------------------------------------------------------

#
# 資料表的結構 `efood_advs_right`
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
);

#
# 導出下面的資料庫內容 `efood_advs_right`
#

INSERT INTO efood_advs_right VALUES (1, 1, '', 75, 75, 'gif', 'images/jiao.gif', 'http://', '_self', 0, 1, 5, 5);
# --------------------------------------------------------

#
# 資料表的結構 `efood_coltype`
#

CREATE TABLE efood_coltype (
  id int(12) NOT NULL auto_increment,
  coltype varchar(30) NOT NULL default '',
  colname varchar(50) NOT NULL default '',
  ifmul int(1) NOT NULL default '0',
  moveable int(1) NOT NULL default '0',
  PRIMARY KEY  (id)
);

#
# 導出下面的資料庫內容 `efood_coltype`
#

INSERT INTO efood_coltype VALUES (1, 'index', '網站首頁', 0, 0);
INSERT INTO efood_coltype VALUES (2, 'member', '會員中心', 0, 0);
INSERT INTO efood_coltype VALUES (3, 'url', '自定鏈結', 1, 1);
INSERT INTO efood_coltype VALUES (4, 'page', '單頁頻道', 1, 1);
INSERT INTO efood_coltype VALUES (5, 'news', '文章頻道', 1, 1);
INSERT INTO efood_coltype VALUES (6, 'cp', '圖文頻道', 1, 1);
INSERT INTO efood_coltype VALUES (7, 'down', '下載頻道', 1, 1);
INSERT INTO efood_coltype VALUES (8, 'form', '自定表單', 1, 1);
INSERT INTO efood_coltype VALUES (9, 'comment', '會員社區', 0, 0);
INSERT INTO efood_coltype VALUES (10, 'company', '餐館名錄', 0, 0);
INSERT INTO efood_coltype VALUES (11, 'sell', '餐飲信息', 0, 0);
INSERT INTO efood_coltype VALUES (12, 'hd', '聚會活動', 0, 0);
INSERT INTO efood_coltype VALUES (13, 'products', '美食頻道', 0, 0);
# --------------------------------------------------------

#
# 資料表的結構 `efood_comment`
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
);

#
# 導出下面的資料庫內容 `efood_comment`
#

INSERT INTO efood_comment VALUES (5, 0, 3, 'news', 13, 'aaaaa', '城市美食網站系統城市美食網站系統', '城市美食網站系統城市美食網站系統', 0, 1162750585, '192.168.2.201', 1, 0, '1', 14, 'aaaaa', '');
INSERT INTO efood_comment VALUES (70, 0, 8, 'company', 7, 'aaaaa', '皇城根火鍋城的羊腿太棒了', '皇城根火鍋城的羊腿太棒了', 0, 1163969699, '192.168.2.201', 1, 0, '1', 3, 'aaaaa', '');
INSERT INTO efood_comment VALUES (6, 0, 8, 'company', 3, 'aaaaa', '提供豐富健康的自助早餐', '提供豐富健康的自助早餐提供豐富健康的自助早餐', 0, 1163921871, '192.168.2.201', 1, 0, '9', 51, 'aaaaa', '');
INSERT INTO efood_comment VALUES (11, 0, 9, 'sell', 3, 'aaaaa', '明明是大餅嘛', '明明是大餅嘛', 0, 1163444748, '192.168.2.201', 1, 0, '1', 1, 'aaaaa', '');
INSERT INTO efood_comment VALUES (12, 0, 9, 'sell', 4, 'aaaaa', '滿大街都是,招聘什麼呢', '滿大街都是,招聘什麼呢', 0, 1163444796, '192.168.2.201', 1, 0, '1', 4, 'aaaaa', '');
INSERT INTO efood_comment VALUES (13, 0, 8, 'company', 5, 'aaaaa', '江南名莊風味餐廳真不錯', '江南名莊風味餐廳真不錯', 0, 1163615835, '192.168.2.201', 1, 0, '1', 91, 'aaaaa', '');
INSERT INTO efood_comment VALUES (15, 0, 11, 'products', 47, 'ccccc', '紅湯回魚紅湯回魚紅湯回魚', '紅湯回魚紅湯回魚', 0, 1163529344, '192.168.2.201', 1, 0, '1', 1, 'ccccc', '');
INSERT INTO efood_comment VALUES (16, 0, 11, 'products', 10, 'ccccc', '雲南省蒙自縣的特色小吃', '雲南省蒙自縣的特色小吃', 0, 1163529384, '192.168.2.201', 1, 0, '1', 2, 'ccccc', '');
INSERT INTO efood_comment VALUES (17, 0, 11, 'products', 29, 'ccccc', '好辣,真受不了', '好辣,真受不了', 0, 1163535593, '192.168.2.201', 1, 0, '10', 4, 'ccccc', '');
INSERT INTO efood_comment VALUES (18, 0, 76, 'news', 49, 'ccccc', '探索食境三重天', '探索食境三重天', 0, 1163863041, '192.168.2.201', 1, 0, '11', 11, 'aaaaa', '');
INSERT INTO efood_comment VALUES (19, 0, 9, 'sell', 4, 'ccccc', '我說你什麼時候招經理啊', '我說你什麼時候招經理啊', 0, 1163535882, '192.168.2.201', 1, 0, '1', 26, 'ccccc', '');
INSERT INTO efood_comment VALUES (25, 0, 11, 'products', 16, 'aaaaa', '五味手撕鵝五味手撕鵝', '五味手撕鵝五味手撕鵝 ', 0, 1163866628, '192.168.2.201', 1, 0, '1', 18, 'aaaaa', '');
INSERT INTO efood_comment VALUES (26, 0, 0, 'hd', 8, 'aaaaa', '我看這個很有意思,我要參加', '我看這個很有意思,我要參加', 0, 1163832976, '192.168.2.201', 1, 0, '1', 3, 'aaaaa', '');
INSERT INTO efood_comment VALUES (27, 0, 0, 'hd', 8, 'aaaaa', '美國食品都是垃圾', '美國食品都是垃圾', 0, 1163833989, '192.168.2.201', 1, 0, '1', 7, 'aaaaa', '');
INSERT INTO efood_comment VALUES (30, 0, 10, 'hd', 8, 'aaaaa', '就這個時間,我看行,算我一個', '就這個時間,我看行,算我一個就這個時間,我看行,算我一個', 0, 1163835862, '192.168.2.201', 1, 0, '1', 3, 'aaaaa', '');
INSERT INTO efood_comment VALUES (32, 0, 10, 'hd', 11, 'aaaaa', '免費的啊,我要參加', '我來報名了', 0, 1163839698, '192.168.2.201', 1, 0, '1', 5, 'aaaaa', '');
INSERT INTO efood_comment VALUES (33, 0, 10, 'hd', 11, 'aaaaa', '沒意思', '沒意思', 0, 1163839820, '192.168.2.201', 1, 0, '3', 2, 'aaaaa', '');
INSERT INTO efood_comment VALUES (35, 0, 10, 'hd', 8, 'ddddddx', '算我一個,剛好有時間', '算我一個,剛好有時間', 0, 1163840401, '192.168.2.201', 1, 0, '9', 7, 'ddddddx', '');
# --------------------------------------------------------

#
# 資料表的結構 `efood_comment_cat`
#

CREATE TABLE efood_comment_cat (
  catid int(12) NOT NULL auto_increment,
  cat varchar(50) default NULL,
  coltype varchar(30) default NULL,
  xuhao int(4) default NULL,
  moveable int(1) default NULL,
  PRIMARY KEY  (catid)
);

#
# 導出下面的資料庫內容 `efood_comment_cat`
#

INSERT INTO efood_comment_cat VALUES (1, '文章評論', 'news', 8, 0);
INSERT INTO efood_comment_cat VALUES (2, '圖片評論', 'cp', 9, 0);
INSERT INTO efood_comment_cat VALUES (3, '下載評論', 'down', 10, 0);
INSERT INTO efood_comment_cat VALUES (4, '餐館點評', 'company', 4, 0);
INSERT INTO efood_comment_cat VALUES (5, '美食評論', 'products', 5, 0);
INSERT INTO efood_comment_cat VALUES (6, '資訊評論', 'sell', 6, 0);
INSERT INTO efood_comment_cat VALUES (8, '活動聚會', 'hd', 7, 0);
# --------------------------------------------------------

#
# 資料表的結構 `efood_company`
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
);

#
# 導出下面的資料庫內容 `efood_company`
#

INSERT INTO efood_company VALUES (1, 3, 2, '0002:;0008:;0024:;', 2, '0002:', '巴黎春天大酒店', '高檔餐廳', '大型酒宴,多人聚餐,商務宴請,好友小聚,家庭聚餐,喜慶婚宴,休閒社交,有停車場,刷卡消費', '', 0, 0, '', '817路終點站直達', '青菜毛豆,香辣龍蝦,大盤雞', '巴黎春天大餐廳為您提供豐富健康的自助早餐、午餐及晚餐。我們高品質的服務將滿足您的一切需求。酒店的兩間酒吧及大堂酒廊是您一天繁忙工作之餘休閒放鬆的首選。', 'gif', 'com/100003/images/1164040410.jpg', '張文', '', '', '0573-2109889', '0573-2109889', '嘉興市中山路248號', '314000', 'qu@eb2000.cn', 'http://', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', 1164040410, '192.168.2.201', 1, 1);
INSERT INTO efood_company VALUES (2, 4, 1, '0001:;', 2, '0002:', '粵海雲餐廳', '風味小吃', '多人聚餐,商務宴請,省時速食,夜宵小酌', '', 0, 0, '', '公交12路,6路', '羊肉面,牛骨湯', '很好吃的養肉面,10年歷史', 'gif', 'com/100004/images/1163961982.jpg', 'qqqq', '', '', '0573-2132226', '0573-2132226', '城南路文昌路口', '333333', 'qqq@sss.cn', 'http://', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', 1163961982, '192.168.2.201', 1, 1);
INSERT INTO efood_company VALUES (3, 5, 28, '0028:;', 4, '0004:', '江南名莊風味餐廳', '中檔餐館', '多人聚餐,商務宴請,好友小聚,家庭聚餐,生日聚會,休閒社交,有停車場,刷卡消費', '', 0, 0, '', '第二醫院河對面,交通便利', '豬踢胖,蛇羹', '暫無', 'gif', 'com/100005/images/1163516818.jpg', '測試', '', '', '0573-2109889', '0573-2109889', '嘉興市秀州北路', '314000', 'c@www.cn', 'http://', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', 1164038852, '192.168.2.201', 1, 1);
INSERT INTO efood_company VALUES (4, 6, 4, '0004:;', 1, '0001:', '小湘農家菜館中山店', '高檔餐廳', '多人聚餐,好友小聚,家庭聚餐,休閒社交', '', 0, 0, '', '公交9路中山中路站邊上20米', '土雞,豬踢胖', '測試', 'gif', 'com/100006/images/1163520658.jpg', '小夏', '', '', '0573-6883210', '0573-6883210', '中山路2288號', '314000', 'fdk@xmss.com', 'http://', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', 1164118462, '192.168.2.201', 1, 1);
INSERT INTO efood_company VALUES (5, 7, 9, '0009:;', 6, '0006:', '皇城根火鍋城', '中檔餐館', '品茶聊天,情侶約會,有停車場,刷卡消費', '', 0, 0, '', '公交2路,39路', '茶', '好菜', 'gif', 'com/100007/images/1164118410.jpg', '小劉', '', '', '0573-6543212', '0573-6543212', '開發區政府西側', '314002', 'c@www.cn', 'http://', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', 1164118410, '192.168.2.201', 1, 1);
INSERT INTO efood_company VALUES (7, 9, 10, '0010:;', 1, '0001:', '東海魚港海鮮酒樓', '高檔餐廳', '多人聚餐,商務宴請,好友小聚,家庭聚餐,情侶約會,休閒社交,有停車場,刷卡消費', '', 0, 0, '', '吉水路229號', '魚,蝦', '東海魚港海鮮酒樓海鮮多多', 'gif', 'com/100009/images/1163521164.jpg', '尚偉', '', '', '0573-2099000', '0573-2099000', '0573-2099000', '314000', 'www@aaa.cn', 'http://', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', 1163521164, '192.168.2.201', 1, 1);
# --------------------------------------------------------

#
# 資料表的結構 `efood_companytype`
#

CREATE TABLE efood_companytype (
  id int(12) NOT NULL auto_increment,
  companytype char(100) default NULL,
  PRIMARY KEY  (id)
);

#
# 導出下面的資料庫內容 `efood_companytype`
#

INSERT INTO efood_companytype VALUES (1, '高檔餐廳');
INSERT INTO efood_companytype VALUES (2, '中檔餐館');
INSERT INTO efood_companytype VALUES (3, '簡易餐廳');
INSERT INTO efood_companytype VALUES (4, '賓館酒樓');
INSERT INTO efood_companytype VALUES (5, '風味小吃');
INSERT INTO efood_companytype VALUES (6, '實惠小館');
INSERT INTO efood_companytype VALUES (7, '特色餐飲');
INSERT INTO efood_companytype VALUES (8, '速食小炒');
INSERT INTO efood_companytype VALUES (9, '火鍋燒烤');
INSERT INTO efood_companytype VALUES (10, '中式餐飲');
INSERT INTO efood_companytype VALUES (11, '外式餐廳');
INSERT INTO efood_companytype VALUES (12, '日韓料理');
INSERT INTO efood_companytype VALUES (13, '自助餐廳');
INSERT INTO efood_companytype VALUES (14, '休閒茶樓');
INSERT INTO efood_companytype VALUES (15, '綜合娛樂');
# --------------------------------------------------------

#
# 資料表的結構 `efood_config`
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
);

#
# 導出下面的資料庫內容 `efood_config`
#

INSERT INTO efood_config VALUES (1, '網站名稱', 'input', '30', 'SiteName', '城市美食網站系統', '用於在網頁標題、導航欄處顯示');
INSERT INTO efood_config VALUES (2, '網站網址', 'input', '30', 'SiteHttp', 'http://www.abc.com/', '網站的實際訪問網址,末尾加"/"');
INSERT INTO efood_config VALUES (3, '服務郵箱', 'input', '30', 'SiteEmail', 'service@mydomain.com', '在發送系統郵件時作為發件人郵件');
INSERT INTO efood_config VALUES (4, '郵件轉發方式', 'ownersys', '1', 'ownersys', '0', 'LINUX/UNIX伺服器一般可使用內置郵件系統轉發郵件；WINDOWS伺服器建議使用外部SMTP郵箱轉發，並設置以下SMTP郵箱參數');
INSERT INTO efood_config VALUES (6, 'SMTP伺服器', 'input', '30', 'owner_m_smtp', 'mail.mydomain.com', '');
INSERT INTO efood_config VALUES (7, 'SMTP郵箱用戶', 'input', '30', 'owner_m_user', 'service@mydomain.com', '');
INSERT INTO efood_config VALUES (8, 'SMTP郵箱密碼', 'input', '30', 'owner_m_pass', '123456', '');
INSERT INTO efood_config VALUES (5, 'SMTP轉發郵箱', 'input', '30', 'owner_m_mail', 'service@mydomain.com', '');
INSERT INTO efood_config VALUES (9, 'SMTP身份驗證', 'YN', '10', 'owner_m_check', '1', '');
INSERT INTO efood_config VALUES (10, '是否生成並使用靜態HTML網頁', 'YN', '10', 'CatchOpen', '0', '');
INSERT INTO efood_config VALUES (11, 'HTML靜態網頁更新時間(秒)', 'input', '8', 'CatchTime', '7200', '超過此時間訪問靜態頁面時自動跳轉到動態頁面，並重新生成靜態頁面');
INSERT INTO efood_config VALUES (12, 'INDEX.HTML優先', 'YN', '10', 'IndexOrder', '1', '當主機的index.html優先於index.php時，欄目鏈結直接指向目錄訪問靜態網頁，使網址較簡潔，PHP虛擬主機大多支援此設置');
INSERT INTO efood_config VALUES (21, 'DISCUZ論壇URL', 'input', '30', 'DiscuzUrl', 'http://', '請輸入您的DISCUZ論壇網址,如:http://www.abc.com/bbs');
INSERT INTO efood_config VALUES (22, 'DISCUZ論壇連接私鑰', 'input', '30', 'DiscuzCode', '', 'Discuz論壇後臺設置的介面私鑰與本處設置務必一致');
INSERT INTO efood_config VALUES (20, 'DISCUZ論壇會員介面是否啟用', 'YN', '30', 'DiscuzOpen', '0', '啟用Discuz會員介面時,會員註冊和登錄時將向論壇發送註冊和登錄資訊.請在Discuz論壇後臺通行證設置中進行相應介面設置');
INSERT INTO efood_config VALUES (25, '分類楨刷新', 'YN', '1', 'CatReflash', '1', '在管理分類時是否自動刷新左側類別樹型功能表,當分類很多時樹型功能表頻繁刷新會減慢操作速度');
INSERT INTO efood_config VALUES (26, '前臺圖片上傳尺寸限制(Byte)', 'input', '30', 'PicSizeLimit', '204800', '前臺網站上傳圖片時單個圖片尺寸的限制');
# --------------------------------------------------------

#
# 資料表的結構 `efood_cp_cat`
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
);

#
# 導出下面的資料庫內容 `efood_cp_cat`
#

INSERT INTO efood_cp_cat VALUES (19, 0, 4, '測試分類', 1, '0019:', 1, 0, 0);
# --------------------------------------------------------

#
# 資料表的結構 `efood_cp_con`
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
);

#
# 導出下面的資料庫內容 `efood_cp_con`
#

INSERT INTO efood_cp_con VALUES (3, 4, 19, '0019:', '測試內容', '測試內容', '', 1163870458, 1, 6, 0, 1, 0, 0, '', '', 1164119914, '', '', '0', '', 0, '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '');
# --------------------------------------------------------

#
# 資料表的結構 `efood_default_rights`
#

CREATE TABLE efood_default_rights (
  id int(12) NOT NULL auto_increment,
  membertypeid int(50) default NULL,
  secureid int(50) default NULL,
  securetype char(100) default NULL,
  secureset int(100) default NULL,
  PRIMARY KEY  (id)
);

#
# 導出下面的資料庫內容 `efood_default_rights`
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
# 資料表的結構 `efood_down_cat`
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
);

#
# 導出下面的資料庫內容 `efood_down_cat`
#

INSERT INTO efood_down_cat VALUES (2, 0, 5, '測試分類', 1, '0002:', 1, 0, 0);
# --------------------------------------------------------

#
# 資料表的結構 `efood_down_con`
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
);

#
# 導出下面的資料庫內容 `efood_down_con`
#

INSERT INTO efood_down_con VALUES (2, 5, 2, '0002:', '測試內容', '測試內容', '', 1163870601, 1, 0, 0, 1, '', 'http://abc.com/1.rar', '', '', 1164119981, '', '', '0', '', 0, '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '');
# --------------------------------------------------------

#
# 資料表的結構 `efood_feedback`
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
);

#
# 導出下面的資料庫內容 `efood_feedback`
#

# --------------------------------------------------------

#
# 資料表的結構 `efood_form`
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
);

#
# 導出下面的資料庫內容 `efood_form`
#

INSERT INTO efood_form VALUES (1, '留言標題', 1, 35, 'title', '', 1, 1, '', 1, 1, 1);
INSERT INTO efood_form VALUES (2, '留言內容', 2, 34, 'content', '', 1, 1, '', 1, 1, 2);
INSERT INTO efood_form VALUES (3, '您的姓名', 1, 35, 'name', '', 1, 1, '', 1, 1, 3);
INSERT INTO efood_form VALUES (5, '聯繫電話', 1, 30, 'tel', '', 0, 1, '', 0, 0, 5);
INSERT INTO efood_form VALUES (6, '聯繫地址', 1, 35, 'address', '', 0, 1, '', 0, 0, 6);
INSERT INTO efood_form VALUES (7, '電子郵件', 1, 35, 'email', '', 1, 1, '', 1, 1, 7);
INSERT INTO efood_form VALUES (8, '網址URL', 1, 35, 'url', '', 0, 1, '', 0, 0, 8);
INSERT INTO efood_form VALUES (9, 'QQ號碼', 1, 16, 'qq', '', 0, 1, '', 0, 0, 9);
INSERT INTO efood_form VALUES (10, '公司名稱', 1, 35, 'company', '', 0, 1, '', 0, 0, 10);
INSERT INTO efood_form VALUES (11, '公司地址', 1, 35, 'company_address', '', 0, 1, '', 0, 0, 11);
INSERT INTO efood_form VALUES (4, '性　　別', 5, 21, 'sex', '男;女', 0, 1, '', 0, 0, 4);
INSERT INTO efood_form VALUES (12, '郵遞區號', 1, 6, 'zip', '', 0, 1, '', 0, 0, 12);
INSERT INTO efood_form VALUES (13, '傳真號碼', 1, 30, 'fax', '', 0, 1, '', 0, 0, 13);
INSERT INTO efood_form VALUES (14, '產品編號', 1, 16, 'products_id', '', 0, 1, '', 0, 0, 14);
INSERT INTO efood_form VALUES (15, '產品名稱', 1, 16, 'products_name', '', 0, 1, '', 0, 0, 15);
INSERT INTO efood_form VALUES (16, '訂購數量', 1, 16, 'products_num', '', 0, 1, '', 0, 0, 16);
INSERT INTO efood_form VALUES (19, '自定義一', 5, 35, 'custom1', '100;200;300;400;500', 0, 1, '', 0, 0, 17);
INSERT INTO efood_form VALUES (18, '自定義二', 5, 35, 'custom2', '100;200;300;400;500', 0, 1, '', 0, 0, 18);
INSERT INTO efood_form VALUES (17, '自定義三', 5, 35, 'custom3', '100;200;300;400;500', 0, 1, '', 0, 0, 19);
INSERT INTO efood_form VALUES (20, '自定義四', 1, 35, 'custom4', '', 0, 1, '', 0, 0, 20);
INSERT INTO efood_form VALUES (21, '自定義五', 1, 35, 'custom5', '', 0, 1, '', 0, 0, 21);
INSERT INTO efood_form VALUES (22, '自定義六', 1, 35, 'custom6', '', 0, 1, '', 0, 0, 22);
INSERT INTO efood_form VALUES (23, '自定義七', 1, 35, 'custom7', '', 0, 1, '', 0, 0, 23);
# --------------------------------------------------------

#
# 資料表的結構 `efood_form_feedback`
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
);

#
# 導出下面的資料庫內容 `efood_form_feedback`
#

# --------------------------------------------------------

#
# 資料表的結構 `efood_fundstype`
#

CREATE TABLE efood_fundstype (
  id int(12) NOT NULL auto_increment,
  fundstype char(100) default NULL,
  PRIMARY KEY  (id)
);

#
# 導出下面的資料庫內容 `efood_fundstype`
#

INSERT INTO efood_fundstype VALUES (1, '人民幣');
INSERT INTO efood_fundstype VALUES (2, '港幣');
INSERT INTO efood_fundstype VALUES (3, '美元');
INSERT INTO efood_fundstype VALUES (4, '歐元');
INSERT INTO efood_fundstype VALUES (5, '新臺幣');
INSERT INTO efood_fundstype VALUES (6, '英鎊');
# --------------------------------------------------------

#
# 資料表的結構 `efood_info`
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
);

#
# 導出下面的資料庫內容 `efood_info`
#

INSERT INTO efood_info VALUES (13, 3, 3, '0003:;', 2, '0002:', 1, 0, '招聘蘭州牛肉拉麵師', '招聘蘭州牛肉拉麵師', '', '', 1163956585, 1163956585, 1195492585, '192.168.2.201', 1, 0);
INSERT INTO efood_info VALUES (14, 3, 3, '0003:;', 2, '0002:', 1, 0, '招聘餐廳經理1名領班3名', '招聘餐廳經理1名領班3名', '', '', 1163956614, 1163956614, 1195492614, '192.168.2.201', 1, 0);
INSERT INTO efood_info VALUES (10, 3, 2, '0002:;', 2, '0002:', 1, 0, '供應大量微波爐', '供應大量微波爐', 'gif', 'com/100003/images/1163956456.jpg', 1163956456, 1163956456, 1195492456, '192.168.2.201', 1, 0);
INSERT INTO efood_info VALUES (11, 3, 2, '0002:;', 2, '0002:', 1, 0, '供應蒸汽王子微波爐', '供應蒸汽王子微波爐', 'gif', 'com/100003/images/1163956489.jpg', 1163956489, 1163956489, 1195492489, '192.168.2.201', 1, 0);
INSERT INTO efood_info VALUES (12, 3, 2, '0002:;', 2, '0002:', 1, 0, '供應靈感光波系列微波爐', '供應蒸汽王子微波爐', '', '', 1163956548, 1163956548, 1195492548, '192.168.2.201', 1, 0);
INSERT INTO efood_info VALUES (15, 7, 1, '0001:;', 6, '0006:', 1, 0, '每日求購大量黃魚肚', '每日求購大量黃魚肚', '', '', 1163956697, 1163956697, 1195492697, '192.168.2.201', 1, 0);
INSERT INTO efood_info VALUES (16, 7, 5, '0005:;', 6, '0006:', 1, 0, '組織中小餐廳去溫嶺團購海鮮', '組織中小餐廳去溫嶺團購海鮮', '', '', 1163956758, 1163956758, 1195492758, '192.168.2.201', 1, 0);
INSERT INTO efood_info VALUES (17, 7, 7, '0007:;', 6, '0006:', 1, 0, '隍城根火鍋杭州湖濱路店開張', '隍城根火鍋杭州湖濱路店開張', '', '', 1163956804, 1163956804, 1195492804, '192.168.2.201', 1, 0);
INSERT INTO efood_info VALUES (18, 5, 4, '0004:;', 4, '0004:', 1, 0, '本餐館老店遷址原店面轉讓', '本餐館老店遷址原店面轉讓', '', '', 1163956864, 1163956864, 1195492864, '192.168.2.201', 1, 0);
INSERT INTO efood_info VALUES (19, 5, 6, '0006:;0007:;', 4, '0004:', 1, 0, '新店開張吃100送20優惠活動', '新店開張吃100送20優惠活動', '', '', 1163956922, 1163956922, 1195492922, '192.168.2.201', 1, 0);
INSERT INTO efood_info VALUES (20, 5, 8, '0008:;', 4, '0004:', 1, 0, '我發一條其他資訊測試一下', '我發一條其他資訊測試一下', '', '', 1163957030, 1163957030, 1195493030, '192.168.2.201', 1, 0);
INSERT INTO efood_info VALUES (21, 6, 6, '0006:;', 1, '0001:', 1, 0, '品農家菜午餐7折優惠', '品農家菜午餐7折優惠', '', '', 1163957104, 1163957104, 1171733104, '192.168.2.201', 1, 0);
INSERT INTO efood_info VALUES (22, 6, 3, '0003:;', 1, '0001:', 1, 0, '招聘餐廳主管2名', '招聘餐廳主管2名', '', '', 1163957136, 1163957136, 1195493136, '192.168.2.201', 1, 0);
# --------------------------------------------------------

#
# 資料表的結構 `efood_info_cat`
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
);

#
# 導出下面的資料庫內容 `efood_info_cat`
#

INSERT INTO efood_info_cat VALUES (1, 0, '供求資訊', 8, '0001:', 1, 0, 0, 0);
INSERT INTO efood_info_cat VALUES (2, 0, '餐飲設備', 2, '0002:', 3, 0, 2, 0);
INSERT INTO efood_info_cat VALUES (3, 0, '餐飲人才', 3, '0003:', 3, 0, 0, 0);
INSERT INTO efood_info_cat VALUES (4, 0, '店面轉讓', 4, '0004:', 1, 0, 1, 0);
INSERT INTO efood_info_cat VALUES (5, 0, '美食團購', 5, '0005:', 1, 0, 5, 0);
INSERT INTO efood_info_cat VALUES (6, 0, '優惠促銷', 6, '0006:', 2, 0, 1, 0);
INSERT INTO efood_info_cat VALUES (7, 0, '新店開張', 7, '0007:', 2, 0, 0, 0);
INSERT INTO efood_info_cat VALUES (8, 0, '其他資訊', 9, '0008:', 1, 0, 0, 0);
# --------------------------------------------------------

#
# 資料表的結構 `efood_infotype`
#

CREATE TABLE efood_infotype (
  id int(12) NOT NULL auto_increment,
  infotype char(100) NOT NULL default '',
  PRIMARY KEY  (id)
);

#
# 導出下面的資料庫內容 `efood_infotype`
#

INSERT INTO efood_infotype VALUES (1, '供求資訊');
INSERT INTO efood_infotype VALUES (2, '代理資訊');
INSERT INTO efood_infotype VALUES (3, '合作資訊');
# --------------------------------------------------------

#
# 資料表的結構 `efood_job`
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
);

#
# 導出下面的資料庫內容 `efood_job`
#

# --------------------------------------------------------

#
# 資料表的結構 `efood_link`
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
);

#
# 導出下面的資料庫內容 `efood_link`
#

# --------------------------------------------------------

#
# 資料表的結構 `efood_logo`
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
);

#
# 導出下面的資料庫內容 `efood_logo`
#

INSERT INTO efood_logo VALUES (1, 1, 100, 50, 'gif', 'images/logo.gif', '', '', 0, 0);
# --------------------------------------------------------

#
# 資料表的結構 `efood_mailtemp`
#

CREATE TABLE efood_mailtemp (
  id int(12) NOT NULL auto_increment,
  title varchar(200) NOT NULL default '',
  body text NOT NULL,
  PRIMARY KEY  (id)
);

#
# 導出下面的資料庫內容 `efood_mailtemp`
#

INSERT INTO efood_mailtemp VALUES (9, '測試郵件組', '請輸入郵件內容');
# --------------------------------------------------------

#
# 資料表的結構 `efood_member`
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
);

#
# 導出下面的資料庫內容 `efood_member`
#

INSERT INTO efood_member VALUES (3, 3, 'aaaaa', '594f803b380a41396ed63dca39503542', '巴黎春天大酒店', '張文', '1', 19600101, 2, '0002:', 2, '0002:;0008:;0024:;', '嘉興市中山路248號', '0573-2109889', '', '0573-2109889', '314000', 'qu@eb2000.cn', 'http://', '身份證', '', '', '', 0, '', 1, 1162659810, 1165251810, '0.00', '0.00', '0.00', '0.00', '192.168.2.201', 25, 1163969639, '192.168.2.201');
INSERT INTO efood_member VALUES (4, 3, 'qqqqq', '437599f1ea3514f8969f161a6606ce18', '粵海雲特色餐廳', 'qqqq', '1', 19600101, 2, '0002:', 1, '0001:;', '城南路文昌路口', '0573-2132226', '', '0573-2132226', '333333', 'qqq@sss.cn', 'http://', '身份證', '', '', '', 0, '', 1, 1162827864, 1165419864, '0.00', '0.00', '0.00', '0.00', '192.168.2.201', 1, 1162827864, '192.168.2.201');
INSERT INTO efood_member VALUES (5, 3, 'ccccc', '67c762276bced09ee4df0ed537d164ea', '江南名莊風味餐廳', '測試', '1', 19600101, 4, '0004:', 28, '0028:;', '嘉興市秀州北路', '0573-2109889', '', '0573-2109889', '314000', 'c@www.cn', 'http://', '身份證', '', '', '', 0, '', 1, 1162832986, 1165424986, '0.00', '0.00', '0.00', '0.00', '192.168.2.201', 10, 1163701999, '192.168.2.201');
INSERT INTO efood_member VALUES (6, 3, 'fffff', 'a98f6f64e6cdfac22ab2ffd15a7241e3', '小湘農家菜館中山店', '小夏', '2', 19600101, 1, '0001:', 4, '0004:;', '中山路2288號', '0573-6883210', '', '0573-6883210', '314000', 'fdk@xmss.com', 'http://', '身份證', '', '', '', 0, '', 1, 1162836027, 1165428027, '0.00', '0.00', '0.00', '0.00', '192.168.2.201', 1, 1162836027, '192.168.2.201');
INSERT INTO efood_member VALUES (7, 3, 'ddccc', '67c762276bced09ee4df0ed537d164ea', '皇城根火鍋城', '小劉', '2', 19600101, 6, '0006:', 9, '0009:;', '開發區政府西側', '0573-6543212', '', '0573-6543212', '314002', 'c@www.cn', 'http://', '身份證', '', '', '', 0, '', 1, 1162836669, 1165428669, '0.00', '0.00', '0.00', '0.00', '192.168.2.201', 1, 1162836669, '192.168.2.201');
INSERT INTO efood_member VALUES (9, 3, 'weblin', '594f803b380a41396ed63dca39503542', '東海魚港海鮮酒樓', '尚偉', '1', 19600101, 1, '0001:', 10, '0010:;', '0573-2099000', '0573-2099000', '', '0573-2099000', '314000', 'www@aaa.cn', 'http://', '身份證', '', '', '', 0, '', 1, 1163521057, 1166113057, '0.00', '0.00', '0.00', '0.00', '192.168.2.201', 1, 1163521057, '192.168.2.201');
# --------------------------------------------------------

#
# 資料表的結構 `efood_member_cat`
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
);

#
# 導出下面的資料庫內容 `efood_member_cat`
#

INSERT INTO efood_member_cat VALUES (1, 0, '粵菜', 1, '0001:', 1, 0);
INSERT INTO efood_member_cat VALUES (2, 0, '川菜', 2, '0002:', 1, 0);
INSERT INTO efood_member_cat VALUES (3, 0, '湘菜', 3, '0003:', 0, 0);
INSERT INTO efood_member_cat VALUES (4, 0, '浙菜', 4, '0004:', 1, 0);
INSERT INTO efood_member_cat VALUES (5, 0, '魯菜', 5, '0005:', 1, 0);
INSERT INTO efood_member_cat VALUES (6, 0, '徽菜', 6, '0006:', 0, 0);
INSERT INTO efood_member_cat VALUES (7, 0, '閩菜', 7, '0007:', 0, 0);
INSERT INTO efood_member_cat VALUES (8, 0, '蘇菜', 8, '0008:', 1, 0);
INSERT INTO efood_member_cat VALUES (9, 0, '火鍋', 9, '0009:', 1, 0);
INSERT INTO efood_member_cat VALUES (10, 0, '海鮮', 10, '0010:', 1, 0);
INSERT INTO efood_member_cat VALUES (11, 0, '燒烤', 11, '0011:', 0, 0);
INSERT INTO efood_member_cat VALUES (12, 0, '素菜', 12, '0012:', 0, 0);
INSERT INTO efood_member_cat VALUES (13, 0, '臺灣菜', 13, '0013:', 0, 0);
INSERT INTO efood_member_cat VALUES (14, 0, '野味', 14, '0014:', 0, 0);
INSERT INTO efood_member_cat VALUES (16, 0, '清真', 16, '0016:', 0, 0);
INSERT INTO efood_member_cat VALUES (17, 0, '自助餐', 17, '0017:', 0, 0);
INSERT INTO efood_member_cat VALUES (18, 0, '西餐', 20, '0018:', 0, 0);
INSERT INTO efood_member_cat VALUES (19, 0, '韓國料理', 18, '0019:', 0, 0);
INSERT INTO efood_member_cat VALUES (20, 0, '日本料理', 19, '0020:', 0, 0);
INSERT INTO efood_member_cat VALUES (21, 0, '麵食', 21, '0021:', 0, 0);
INSERT INTO efood_member_cat VALUES (22, 0, '小吃', 25, '0022:', 1, 0);
INSERT INTO efood_member_cat VALUES (23, 0, '速食', 26, '0023:', 0, 0);
INSERT INTO efood_member_cat VALUES (24, 0, '酒吧', 29, '0024:', 1, 0);
INSERT INTO efood_member_cat VALUES (25, 0, '咖啡廳', 28, '0025:', 0, 0);
INSERT INTO efood_member_cat VALUES (26, 0, '茶室', 27, '0026:', 1, 0);
INSERT INTO efood_member_cat VALUES (28, 0, '農家菜', 22, '0028:', 2, 0);
INSERT INTO efood_member_cat VALUES (29, 0, '京菜', 9, '0029:', 0, 0);
INSERT INTO efood_member_cat VALUES (30, 0, '時尚特色', 30, '0030:', 1, 0);
# --------------------------------------------------------

#
# 資料表的結構 `efood_member_func`
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
);

#
# 導出下面的資料庫內容 `efood_member_func`
#

INSERT INTO efood_member_func VALUES (1, 0, '商家專區', '', 1, 1, '');
INSERT INTO efood_member_func VALUES (2, 0, '個人專區', '', 2, 1, '');
INSERT INTO efood_member_func VALUES (3, 1, '發佈/修改餐館介紹', 'member_companyfabu.php', 1, 1, '');
INSERT INTO efood_member_func VALUES (4, 1, '餐館圖片上傳', 'member_zsfabu.php', 2, 1, '');
INSERT INTO efood_member_func VALUES (5, 1, '餐館圖片管理', 'member_zs.php', 3, 1, '');
INSERT INTO efood_member_func VALUES (6, 1, '餐飲資訊發佈', 'member_infofabu.php', 4, 1, '');
INSERT INTO efood_member_func VALUES (7, 1, '餐飲資訊管理', 'member_info.php', 5, 1, '');
INSERT INTO efood_member_func VALUES (8, 1, '菜式發佈', 'member_prodfabu.php', 6, 1, '');
INSERT INTO efood_member_func VALUES (9, 1, '菜式管理', 'member_prod.php', 7, 1, '');
INSERT INTO efood_member_func VALUES (10, 2, '發起活動', 'member_hdfabu.php', 1, 1, '');
INSERT INTO efood_member_func VALUES (11, 2, '活動管理', 'member_hd.php', 2, 1, '');
INSERT INTO efood_member_func VALUES (12, 2, '文章投稿', 'member_fabu.php', 3, 1, '');
INSERT INTO efood_member_func VALUES (13, 2, '文章管理', 'member_guanli.php', 4, 1, '');
INSERT INTO efood_member_func VALUES (14, 2, '會員資料', 'member_modify.php', 5, 1, '');
INSERT INTO efood_member_func VALUES (15, 2, '站內短信', 'member_myfeedback.php', 6, 1, '');
INSERT INTO efood_member_func VALUES (16, 0, '退出登錄', 'logout.php', 3, 1, '');
# --------------------------------------------------------

#
# 資料表的結構 `efood_member_func_2`
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
);

#
# 導出下面的資料庫內容 `efood_member_func_2`
#

INSERT INTO efood_member_func_2 VALUES (1, 0, '商家專區', '', 1, 0, '');
INSERT INTO efood_member_func_2 VALUES (2, 0, '個人專區', '', 2, 1, '');
INSERT INTO efood_member_func_2 VALUES (3, 1, '發佈/修改餐館介紹', 'member_companyfabu.php', 1, 0, '');
INSERT INTO efood_member_func_2 VALUES (4, 1, '餐館圖片上傳', 'member_zsfabu.php', 2, 0, '');
INSERT INTO efood_member_func_2 VALUES (5, 1, '餐館圖片管理', 'member_zs.php', 3, 0, '');
INSERT INTO efood_member_func_2 VALUES (6, 1, '餐飲資訊發佈', 'member_infofabu.php', 4, 0, '');
INSERT INTO efood_member_func_2 VALUES (7, 1, '餐飲資訊管理', 'member_info.php', 5, 0, '');
INSERT INTO efood_member_func_2 VALUES (8, 1, '菜式發佈', 'member_prodfabu.php', 6, 0, '');
INSERT INTO efood_member_func_2 VALUES (9, 1, '菜式管理', 'member_prod.php', 7, 0, '');
INSERT INTO efood_member_func_2 VALUES (10, 2, '發起活動', 'member_hdfabu.php', 1, 1, '');
INSERT INTO efood_member_func_2 VALUES (11, 2, '活動管理', 'member_hd.php', 2, 1, '');
INSERT INTO efood_member_func_2 VALUES (12, 2, '文章投稿', 'member_fabu.php', 3, 1, '');
INSERT INTO efood_member_func_2 VALUES (13, 2, '文章管理', 'member_guanli.php', 4, 1, '');
INSERT INTO efood_member_func_2 VALUES (14, 2, '會員資料', 'member_modify.php', 5, 1, '');
INSERT INTO efood_member_func_2 VALUES (15, 2, '站內短信', 'member_myfeedback.php', 6, 1, '');
INSERT INTO efood_member_func_2 VALUES (16, 0, '退出登錄', 'logout.php', 3, 1, '');
# --------------------------------------------------------

#
# 資料表的結構 `efood_member_func_3`
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
);

#
# 導出下面的資料庫內容 `efood_member_func_3`
#

INSERT INTO efood_member_func_3 VALUES (1, 0, '商家專區', '', 1, 1, '');
INSERT INTO efood_member_func_3 VALUES (2, 0, '個人專區', '', 2, 1, '');
INSERT INTO efood_member_func_3 VALUES (3, 1, '發佈/修改餐館介紹', 'member_companyfabu.php', 1, 1, '');
INSERT INTO efood_member_func_3 VALUES (4, 1, '餐館圖片上傳', 'member_zsfabu.php', 2, 1, '');
INSERT INTO efood_member_func_3 VALUES (5, 1, '餐館圖片管理', 'member_zs.php', 3, 1, '');
INSERT INTO efood_member_func_3 VALUES (6, 1, '餐飲資訊發佈', 'member_infofabu.php', 4, 1, '');
INSERT INTO efood_member_func_3 VALUES (7, 1, '餐飲資訊管理', 'member_info.php', 5, 1, '');
INSERT INTO efood_member_func_3 VALUES (8, 1, '菜式發佈', 'member_prodfabu.php', 6, 1, '');
INSERT INTO efood_member_func_3 VALUES (9, 1, '菜式管理', 'member_prod.php', 7, 1, '');
INSERT INTO efood_member_func_3 VALUES (10, 2, '發起活動', 'member_hdfabu.php', 1, 1, '');
INSERT INTO efood_member_func_3 VALUES (11, 2, '活動管理', 'member_hd.php', 2, 1, '');
INSERT INTO efood_member_func_3 VALUES (12, 2, '文章投稿', 'member_fabu.php', 3, 1, '');
INSERT INTO efood_member_func_3 VALUES (13, 2, '文章管理', 'member_guanli.php', 4, 1, '');
INSERT INTO efood_member_func_3 VALUES (14, 2, '會員資料', 'member_modify.php', 5, 1, '');
INSERT INTO efood_member_func_3 VALUES (15, 2, '站內短信', 'member_myfeedback.php', 6, 1, '');
INSERT INTO efood_member_func_3 VALUES (16, 0, '退出登錄', 'logout.php', 3, 1, '');
# --------------------------------------------------------

#
# 資料表的結構 `efood_member_notice`
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
);

#
# 導出下面的資料庫內容 `efood_member_notice`
#

# --------------------------------------------------------

#
# 資料表的結構 `efood_member_nums`
#

CREATE TABLE efood_member_nums (
  id int(12) NOT NULL auto_increment,
  memberid int(50) default NULL,
  secureid int(50) default NULL,
  nums int(20) default NULL,
  PRIMARY KEY  (id)
);

#
# 導出下面的資料庫內容 `efood_member_nums`
#

# --------------------------------------------------------

#
# 資料表的結構 `efood_member_regform`
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
);

#
# 導出下面的資料庫內容 `efood_member_regform`
#

INSERT INTO efood_member_regform VALUES (1, '會員帳號', 'user', 1, 0, 0, '[5-20位元英文或數位]', 1, 0);
INSERT INTO efood_member_regform VALUES (2, '登錄密碼', 'password', 1, 1, 0, '[5-20位元英文或數位]', 1, 0);
INSERT INTO efood_member_regform VALUES (3, '重複密碼', 'repass', 1, 1, 0, '[5-20位元英文或數位]', 1, 0);
INSERT INTO efood_member_regform VALUES (4, '餐館名稱', 'company', 1, 1, 1, '', 1, 0);
INSERT INTO efood_member_regform VALUES (5, '主營菜系', 'catid', 0, 1, 1, '', 1, 0);
INSERT INTO efood_member_regform VALUES (6, '聯 系 人', 'name', 1, 1, 1, '', 1, 0);
INSERT INTO efood_member_regform VALUES (7, '您的稱呼', 'sex', 1, 1, 1, '', 1, 0);
INSERT INTO efood_member_regform VALUES (8, '出生年月', 'birthday', 0, 1, 1, '', 0, 0);
INSERT INTO efood_member_regform VALUES (9, '所在區域', 'zoneid', 0, 1, 1, '', 1, 0);
INSERT INTO efood_member_regform VALUES (10, '餐館地址', 'addr', 0, 1, 1, '', 1, 0);
INSERT INTO efood_member_regform VALUES (11, '聯繫電話', 'tel', 0, 1, 1, '', 1, 0);
INSERT INTO efood_member_regform VALUES (12, '手機號碼', 'mov', 0, 1, 1, '', 0, 0);
INSERT INTO efood_member_regform VALUES (13, '訂座電話', 'fax', 0, 1, 1, '', 1, 0);
INSERT INTO efood_member_regform VALUES (14, '郵遞區號', 'postcode', 0, 1, 1, '', 1, 0);
INSERT INTO efood_member_regform VALUES (15, '電子郵件', 'email', 1, 1, 0, '[請輸入正確的電子郵件]', 1, 0);
INSERT INTO efood_member_regform VALUES (16, '網站網址', 'url', 0, 1, 1, '', 1, 0);
INSERT INTO efood_member_regform VALUES (17, '證件類型', 'passtype', 0, 1, 1, '', 0, 0);
INSERT INTO efood_member_regform VALUES (18, '證件號碼', 'passcode', 0, 1, 1, '', 0, 0);
INSERT INTO efood_member_regform VALUES (19, 'QQ號碼', 'qq', 0, 1, 1, '', 0, 0);
INSERT INTO efood_member_regform VALUES (20, 'MSN號碼', 'msn', 0, 1, 1, '', 0, 0);
INSERT INTO efood_member_regform VALUES (21, '備註留言', 'bz', 0, 1, 1, '', 0, 0);
# --------------------------------------------------------

#
# 資料表的結構 `efood_member_regform_2`
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
);

#
# 導出下面的資料庫內容 `efood_member_regform_2`
#

INSERT INTO efood_member_regform_2 VALUES (1, '會員帳號', 'user', 1, 0, 0, '[5-20位元英文或數位]', 1, 0);
INSERT INTO efood_member_regform_2 VALUES (2, '登錄密碼', 'password', 1, 1, 0, '[5-20位元英文或數位]', 1, 0);
INSERT INTO efood_member_regform_2 VALUES (3, '重複密碼', 'repass', 1, 1, 0, '[5-20位元英文或數位]', 1, 0);
INSERT INTO efood_member_regform_2 VALUES (4, '餐館名稱', 'company', 0, 1, 1, '', 0, 0);
INSERT INTO efood_member_regform_2 VALUES (5, '主營菜系', 'catid', 0, 1, 1, '', 0, 0);
INSERT INTO efood_member_regform_2 VALUES (6, '會員姓名', 'name', 1, 1, 1, '', 1, 0);
INSERT INTO efood_member_regform_2 VALUES (7, '您的稱呼', 'sex', 1, 1, 1, '', 1, 0);
INSERT INTO efood_member_regform_2 VALUES (8, '出生年月', 'birthday', 0, 1, 1, '', 1, 0);
INSERT INTO efood_member_regform_2 VALUES (9, '所在地區', 'zoneid', 0, 1, 1, '', 0, 0);
INSERT INTO efood_member_regform_2 VALUES (10, '通信地址', 'addr', 0, 1, 1, '', 0, 0);
INSERT INTO efood_member_regform_2 VALUES (11, '電話號碼', 'tel', 0, 1, 1, '', 1, 0);
INSERT INTO efood_member_regform_2 VALUES (12, '手機號碼', 'mov', 0, 1, 1, '', 1, 0);
INSERT INTO efood_member_regform_2 VALUES (13, '傳真號碼', 'fax', 0, 1, 1, '', 0, 0);
INSERT INTO efood_member_regform_2 VALUES (14, '郵遞區號', 'postcode', 0, 1, 1, '', 0, 0);
INSERT INTO efood_member_regform_2 VALUES (15, '電子郵件', 'email', 1, 1, 0, '[請輸入正確的電子郵件]', 1, 0);
INSERT INTO efood_member_regform_2 VALUES (16, '公司網址', 'url', 0, 1, 1, '', 0, 0);
INSERT INTO efood_member_regform_2 VALUES (17, '證件類型', 'passtype', 0, 1, 1, '', 1, 0);
INSERT INTO efood_member_regform_2 VALUES (18, '證件號碼', 'passcode', 0, 1, 1, '', 1, 0);
INSERT INTO efood_member_regform_2 VALUES (19, 'QQ號碼', 'qq', 0, 1, 1, '', 0, 0);
INSERT INTO efood_member_regform_2 VALUES (20, 'MSN號碼', 'msn', 0, 1, 1, '', 0, 0);
INSERT INTO efood_member_regform_2 VALUES (21, '備註留言', 'bz', 0, 1, 1, '', 0, 0);
# --------------------------------------------------------

#
# 資料表的結構 `efood_member_regform_3`
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
);

#
# 導出下面的資料庫內容 `efood_member_regform_3`
#

INSERT INTO efood_member_regform_3 VALUES (1, '會員帳號', 'user', 1, 0, 0, '[5-20位元英文或數位]', 1, 0);
INSERT INTO efood_member_regform_3 VALUES (2, '登錄密碼', 'password', 1, 1, 0, '[5-20位元英文或數位]', 1, 0);
INSERT INTO efood_member_regform_3 VALUES (3, '重複密碼', 'repass', 1, 1, 0, '[5-20位元英文或數位]', 1, 0);
INSERT INTO efood_member_regform_3 VALUES (4, '餐館名稱', 'company', 1, 1, 1, '', 1, 0);
INSERT INTO efood_member_regform_3 VALUES (5, '主營菜系', 'catid', 1, 1, 1, '', 1, 0);
INSERT INTO efood_member_regform_3 VALUES (6, '聯 系 人', 'name', 1, 1, 1, '', 1, 0);
INSERT INTO efood_member_regform_3 VALUES (7, '您的稱呼', 'sex', 1, 1, 1, '', 1, 0);
INSERT INTO efood_member_regform_3 VALUES (8, '出生年月', 'birthday', 0, 1, 1, '', 0, 0);
INSERT INTO efood_member_regform_3 VALUES (9, '所在區域', 'zoneid', 1, 1, 1, '', 1, 0);
INSERT INTO efood_member_regform_3 VALUES (10, '餐館地址', 'addr', 1, 1, 1, '', 1, 0);
INSERT INTO efood_member_regform_3 VALUES (11, '聯繫電話', 'tel', 1, 1, 1, '', 1, 0);
INSERT INTO efood_member_regform_3 VALUES (12, '手機號碼', 'mov', 0, 1, 1, '', 0, 0);
INSERT INTO efood_member_regform_3 VALUES (13, '訂座電話', 'fax', 1, 1, 1, '', 1, 0);
INSERT INTO efood_member_regform_3 VALUES (14, '郵遞區號', 'postcode', 0, 1, 1, '', 1, 0);
INSERT INTO efood_member_regform_3 VALUES (15, '電子郵件', 'email', 1, 1, 0, '[請輸入正確的電子郵件]', 1, 0);
INSERT INTO efood_member_regform_3 VALUES (16, '公司網址', 'url', 0, 1, 1, '', 0, 0);
INSERT INTO efood_member_regform_3 VALUES (17, '證件類型', 'passtype', 0, 1, 1, '', 0, 0);
INSERT INTO efood_member_regform_3 VALUES (18, '證件號碼', 'passcode', 0, 1, 1, '', 0, 0);
INSERT INTO efood_member_regform_3 VALUES (19, 'QQ號碼', 'qq', 0, 1, 1, '', 0, 0);
INSERT INTO efood_member_regform_3 VALUES (20, 'MSN號碼', 'msn', 0, 1, 1, '', 0, 0);
INSERT INTO efood_member_regform_3 VALUES (21, '備註留言', 'bz', 0, 1, 1, '', 0, 0);
# --------------------------------------------------------

#
# 資料表的結構 `efood_member_rights`
#

CREATE TABLE efood_member_rights (
  id int(12) NOT NULL auto_increment,
  memberid int(50) default NULL,
  secureid int(50) default NULL,
  securetype char(100) default NULL,
  secureset int(20) default NULL,
  PRIMARY KEY  (id)
);

#
# 導出下面的資料庫內容 `efood_member_rights`
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
# 資料表的結構 `efood_member_type`
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
);

#
# 導出下面的資料庫內容 `efood_member_type`
#

INSERT INTO efood_member_type VALUES (2, '個人會員', 0, 1, 1, '', '{#name#}{#sex#},您好!\r\n\r\n感謝您在本站註冊!\r\n\r\n會員名: {#user#}\r\n密碼: {#password#}\r\n\r\n網址:http://', 0, 0, 0);
INSERT INTO efood_member_type VALUES (3, '商家會員', 0, 1, 1, '', '{#name#}{#sex#},您好!\r\n\r\n感謝您在本站註冊!\r\n\r\n會員名: {#user#}\r\n密碼: {#password#}\r\n\r\n網址:http://', 30, 0, 0);
# --------------------------------------------------------

#
# 資料表的結構 `efood_member_zone`
#

CREATE TABLE efood_member_zone (
  catid int(12) NOT NULL auto_increment,
  pid int(12) default NULL,
  cat char(50) default NULL,
  xuhao int(4) default NULL,
  catpath char(255) default NULL,
  PRIMARY KEY  (catid)
);

#
# 導出下面的資料庫內容 `efood_member_zone`
#

INSERT INTO efood_member_zone VALUES (1, 0, '美食街', 1, '0001:');
INSERT INTO efood_member_zone VALUES (2, 0, '城南', 2, '0002:');
INSERT INTO efood_member_zone VALUES (3, 0, '城北', 3, '0003:');
INSERT INTO efood_member_zone VALUES (4, 0, '城東', 4, '0004:');
INSERT INTO efood_member_zone VALUES (5, 0, '城西', 5, '0005:');
INSERT INTO efood_member_zone VALUES (6, 0, '新區', 6, '0006:');
# --------------------------------------------------------

#
# 資料表的結構 `efood_menu`
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
);

#
# 導出下面的資料庫內容 `efood_menu`
#

INSERT INTO efood_menu VALUES (1, 0, '首頁', 'index', '', '', 'menu', 1, 0, 1, '_self', 0, 0, 'default');
INSERT INTO efood_menu VALUES (3, 0, '美食動態', 'news', 'http://', 'news', 'menu', 1, 0, 2, '_self', 1, 0, 'default');
INSERT INTO efood_menu VALUES (4, 1, '圖文頻道', 'cp', NULL, 'cp', 'smenu', 0, 0, 8, '_self', 0, 0, 'default');
INSERT INTO efood_menu VALUES (5, 1, '下載頻道', 'down', NULL, 'down', 'smenu', 0, 0, 9, '_self', 0, 0, 'default');
INSERT INTO efood_menu VALUES (2, 0, '會員中心', 'member', '', '', 'menu', 1, 0, 11, '_self', 0, 0, 'default');
INSERT INTO efood_menu VALUES (6, 0, '關於我們', 'page', NULL, 'html', 'btmenu', 1, 0, 2, '_self', 0, 0, 'default');
INSERT INTO efood_menu VALUES (62, 0, '聯繫方式', 'page', 'http://', 'contacts', 'btmenu', 1, 0, 5, '_self', 0, 0, 'default');
INSERT INTO efood_menu VALUES (7, 0, '美食社區', 'comment', '', '', 'menu', 1, 0, 10, '_self', 0, 0, 'default');
INSERT INTO efood_menu VALUES (75, 0, '內容搜索', 'page', 'http://', 'search', 'btmenu', 0, 0, 10, '_self', 0, 0, 'default');
INSERT INTO efood_menu VALUES (74, 0, '友情鏈結', 'page', 'http://', 'link', 'btmenu', 1, 0, 11, '_self', 0, 0, 'default');
INSERT INTO efood_menu VALUES (8, 0, '餐館搜索', 'company', '', 'company', 'menu', 1, 0, 3, '_self', 1, 0, 'default');
INSERT INTO efood_menu VALUES (9, 0, '餐飲信息', 'sell', '', 'sell', 'menu', 1, 0, 6, '_self', 1, 0, 'default');
INSERT INTO efood_menu VALUES (10, 0, '聚會活動', 'hd', '', 'hd', 'menu', 1, 0, 7, '_self', 1, 0, 'default');
INSERT INTO efood_menu VALUES (11, 0, '美食大全', 'products', '', 'products', 'menu', 1, 0, 5, '_self', 1, 0, 'default');
INSERT INTO efood_menu VALUES (76, 0, '美食文化', 'news', 'http://', 'wenhua', 'menu', 1, 0, 7, '_self', 1, 0, 'default');
INSERT INTO efood_menu VALUES (79, 10, '活動報導', 'news', 'http://', 'hdnews', 'smenu', 0, 0, 10, '_self', 0, 0, 'default');
# --------------------------------------------------------

#
# 資料表的結構 `efood_news_cat`
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
);

#
# 導出下面的資料庫內容 `efood_news_cat`
#

INSERT INTO efood_news_cat VALUES (1, 0, 3, '美食動態', 2, '0001:', 12, 0, 0);
INSERT INTO efood_news_cat VALUES (2, 0, 3, '新店開張', 1, '0002:', 6, 0, 0);
INSERT INTO efood_news_cat VALUES (3, 0, 3, '優惠促銷', 3, '0003:', 6, 0, 0);
INSERT INTO efood_news_cat VALUES (11, 0, 76, '異國風情', 6, '0011:', 7, 0, 0);
INSERT INTO efood_news_cat VALUES (10, 0, 76, '飲食男女', 5, '0010:', 6, 0, 0);
INSERT INTO efood_news_cat VALUES (9, 0, 76, '飲食文化', 4, '0009:', 6, 0, 0);
INSERT INTO efood_news_cat VALUES (13, 0, 76, '美食雜談', 8, '0013:', 6, 0, 0);
INSERT INTO efood_news_cat VALUES (12, 0, 76, '名人名食', 7, '0012:', 6, 0, 0);
INSERT INTO efood_news_cat VALUES (14, 0, 76, '飲食健康', 9, '0014:', 6, 0, 0);
INSERT INTO efood_news_cat VALUES (15, 0, 76, '快樂廚房', 10, '0015:', 7, 0, 0);
INSERT INTO efood_news_cat VALUES (16, 0, 76, '美食菜譜', 11, '0016:', 13, 0, 0);
INSERT INTO efood_news_cat VALUES (18, 0, 3, '行業資訊', 12, '0018:', 0, 0, 0);
INSERT INTO efood_news_cat VALUES (19, 0, 3, '餐飲精英', 13, '0019:', 0, 0, 0);
INSERT INTO efood_news_cat VALUES (20, 0, 79, '精彩回顧', 14, '0020:', 10, 0, 0);
# --------------------------------------------------------

#
# 資料表的結構 `efood_news_con`
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
);

#
# 導出下面的資料庫內容 `efood_news_con`
#

INSERT INTO efood_news_con VALUES (1, 3, 2, '0002:', '小尾羊全國連鎖城北店10月18日開業', '', 1162638607, 1, 10, 0, 1, 0, 0, '', '', 1162639775, 'SystemMaster', '', '0', '', 0);
INSERT INTO efood_news_con VALUES (2, 3, 2, '0002:', '北京金百萬烤鴨中山路店隆重開業', '金百萬烤鴨南開店隆重開業', 1162638648, 1, 6, 0, 1, 0, 0, '', '', 1162639702, 'SystemMaster', '', '0', '', 0);
INSERT INTO efood_news_con VALUES (3, 3, 1, '0001:', '巨石花園美食城展現津味文化', '', 1162638740, 1, 1, 0, 1, 0, 0, '', '', 1162638740, 'SystemMaster', '', '0', '', 0);
INSERT INTO efood_news_con VALUES (4, 3, 1, '0001:', '肯德基推出新款甜品', '', 1162638760, 1, 2, 0, 1, 0, 0, '', '', 1162638760, 'SystemMaster', '', '0', '', 0);
INSERT INTO efood_news_con VALUES (5, 3, 1, '0001:', '重慶菜根香周年酬賓', '', 1162638769, 1, 2, 0, 1, 0, 0, '', '', 1162638769, 'SystemMaster', '', '0', '', 0);
INSERT INTO efood_news_con VALUES (6, 3, 1, '0001:', '川春苑成都水煮魚優惠酬賓', '', 1162638778, 1, 1, 0, 1, 0, 0, '', '', 1162638778, 'SystemMaster', '', '0', '', 0);
INSERT INTO efood_news_con VALUES (7, 3, 1, '0001:', '川春苑成都水煮魚優惠酬賓', '', 1162638787, 1, 1, 0, 1, 0, 0, '', '', 1162638787, 'SystemMaster', '', '0', '', 0);
INSERT INTO efood_news_con VALUES (8, 3, 1, '0001:', '濱江萬麗酒店歡度聖誕平安夜', '', 1162638800, 1, 4, 0, 1, 0, 0, '', '', 1162638800, 'SystemMaster', '', '0', '', 0);
INSERT INTO efood_news_con VALUES (9, 3, 1, '0001:', '真鍋咖啡館聖誕超值大餐', '', 1162638812, 1, 2, 0, 1, 0, 0, '', '', 1162638812, 'SystemMaster', '', '0', '', 0);
INSERT INTO efood_news_con VALUES (10, 3, 1, '0001:', '騰漁村水煮魚優惠打折', '', 1162638829, 1, 8, 0, 1, 0, 0, 'gif', 'news/html/images/1163875088.jpg', 1163875088, 'SystemMaster', '', '0', '', 0);
INSERT INTO efood_news_con VALUES (11, 3, 1, '0001:', '東海漁村百種海鮮上市', '', 1162638833, 1, 4, 0, 1, 0, 0, '', '', 1162638833, 'SystemMaster', '', '0', '', 0);
INSERT INTO efood_news_con VALUES (12, 3, 1, '0001:', '第六屆啤酒節隆重開幕', '', 1162638869, 1, 4, 0, 1, 0, 0, '', '', 1162638869, 'SystemMaster', '', '0', '', 0);
INSERT INTO efood_news_con VALUES (13, 3, 2, '0002:', '辣辣香牛蛙館10月28日重新裝修開業', '', 1162638890, 1, 14, 0, 1, 0, 0, '', '', 1162639655, 'SystemMaster', '', '0', '', 0);
INSERT INTO efood_news_con VALUES (14, 3, 2, '0002:', '小湘農家菜館中山店11月2日隆重開業', '', 1162638902, 1, 21, 0, 1, 0, 0, 'gif', 'news/html/images/1163875062.jpg', 1163875062, 'SystemMaster', '', '0', '', 0);
INSERT INTO efood_news_con VALUES (15, 3, 1, '0001:', '海河新裝牛奶百萬大贈送', '', 1162639153, 1, 3, 0, 1, 0, 0, '', '', 1162639153, 'SystemMaster', '', '0', '', 0);
INSERT INTO efood_news_con VALUES (16, 3, 1, '0001:', '南湖野外燒烤節11月20日開幕', '', 1162639165, 1, 33, 0, 1, 0, 0, '', '', 1162639165, 'SystemMaster', '', '0', '', 0);
INSERT INTO efood_news_con VALUES (17, 3, 2, '0002:', '沸騰漁村白堤路店12月1日隆重開業', '', 1162641827, 1, 12, 0, 1, 0, 0, '', '', 1162641827, 'SystemMaster', '', '0', '', 0);
INSERT INTO efood_news_con VALUES (18, 3, 3, '0003:', '朝日俱樂部特別推出家庭宴', '', 1162641845, 1, 6, 0, 1, 0, 0, 'gif', 'news/html/images/1163875022.jpg', 1163875330, 'SystemMaster', '', '0', '', 0);
INSERT INTO efood_news_con VALUES (19, 3, 3, '0003:', '騰漁村水煮魚優惠打折', '', 1162641852, 1, 2, 0, 1, 0, 0, '', '', 1162641852, 'SystemMaster', '', '0', '', 0);
INSERT INTO efood_news_con VALUES (20, 3, 3, '0003:', '萬順阿魚鮑迎新春特推出特價夜宵', '', 1162641860, 1, 3, 0, 1, 0, 0, '', '', 1162641860, 'SystemMaster', '', '0', '', 0);
INSERT INTO efood_news_con VALUES (21, 3, 3, '0003:', '萬順阿魚鮑迎新春特推出特價夜宵', '', 1162641863, 1, 4, 0, 1, 0, 0, '', '', 1162641863, 'SystemMaster', '', '0', '', 0);
INSERT INTO efood_news_con VALUES (22, 3, 3, '0003:', '川春苑成都水煮魚5折優惠酬賓', '', 1162641866, 1, 5, 0, 1, 0, 0, '', '', 1162641866, 'SystemMaster', '', '0', '', 0);
INSERT INTO efood_news_con VALUES (23, 3, 2, '0002:', '蜀鄉人香辣小龍蝦館12月8日開業', '', 1162642966, 1, 35, 0, 1, 0, 0, '', '', 1162642966, 'SystemMaster', '', '0', '', 0);
INSERT INTO efood_news_con VALUES (24, 3, 3, '0003:', '騰漁村水煮魚優惠打折', '', 1162643060, 1, 10, 0, 1, 0, 0, '', '', 1162643060, 'SystemMaster', '', '0', '', 0);
INSERT INTO efood_news_con VALUES (25, 76, 13, '0013:', '揭開普洱茶流行的秘密', '<IMG style="POSITION: static" height=177 alt="" hspace=12 src="http://efood.phpweb.net/wenhua/html/images/1162644906.jpg" width=252 align=left vspace=5 border=0>　　喝茶是中國人的國粹，它歷來講究一個新字，以新為貴。倘若隔了年了，即使上品的龍井也暴跌了。但近幾年來出了個普洱茶，把國人的喝茶觀顛覆了，而且以越陳越好；而且價錢扶搖直上。據說最高的曾賣過26000元一斤，幾乎趕上了黃金。 \r\n<P></P>\r\n<P>　　因為美其名曰："能喝的古董"。 </P>\r\n<P>　　不管普洱茶的流行是否是因為港臺人的炒作，或者得益於馬幫題材的電影電視，但普洱茶的另類是無可置疑的。從某種意義上說它確實是越陳越好。普洱茶早期作為以物換物，與洋人進行交換，散茶類是不易包裝或運輸，就像上海人說的"泡貨"，體積大，效率低。於是我們的祖輩就想起了把它打壓成餅狀、磚狀或砣狀，這樣效率就提高了。當然為了保證普洱茶的品質，茶農想了許多辦法，進行了N次試驗，終於摸索出了生茶和熟茶。竊以為，後來的普洱越陳越好是歪打正著的，沒想到它在長途跋涉中以及儲存中經過反復發酵， </P>\r\n<P>　　味道反而更濃郁了。本人喜歡喝普洱，原因是喝了不會胃潮，而且品的次數多了，也特別留意起它的出處和軼事。其實普洱當地產茶並不多，只是因為當時普洱是個古驛站，馬幫都從此而過，因此借光而約定俗成。普洱茶大多生長在雲南西部和西南部瀾滄江畔的高山峻嶺上，海拔在1500米至2200米，它是一種大葉喬木，葉如雞蛋般大。據說這讓那些秀氣的名綠茶很不屑：我們是新芽嬌嫩，你看我們的身形，碧綠生青，較小玲瓏，哪像你們五大三粗，還墨出裏黑……當然普洱茶也不甘示弱：六十年風水輪流轉，現在流行黑裏俏，何況我們耐看耐泡…… </P>\r\n<P>　　說普洱茶是"能喝的古董"，其實就是賣一個概念，並不是一概越久越好喝，比如熟茶，它是後發酵茶，八年以後也就不會再有進步了。生茶比熟茶少了一道渥堆工藝，也許它才是存放越久越好，原因是它還在不斷發酵。但也有一個儲存得當的問題，至少不能讓它發黴。說起市面上越來越多的陳年茶，其中最經典的傳聞，說整理故宮庫房時發現了一大批普洱茶。有朋友置疑，當時普洱茶一般不會作為貢品，而且即使有也不會流傳至今，畢竟相隔已有近百年了，更不會"滿大街"的都是。當地茶商私下裏透露，其實哪里來這麼多三十年、五十年的，普洱茶也就近幾年來吃香，過去銷路不太好，許多茶廠還轉產，改為生產綠茶呢。當然，普洱茶是有優劣之分的，熟茶除了口感圓潤外，顏色很重要。好的熟茶泡出來色澤暗紅，如紅葡萄酒；而生茶更有學問，每一潽顏色不同，口感不同。老道的人喝生茶要聞"茶底"，即沖泡後的茶葉末，味道香醇，而且越泡越亮，這就是好茶。 </P>\r\n<P>　　一個當地茶商告訴本人一個"秘密"：其實自己也可以造陳年茶，你用低價多買些普洱新茶，儲存在家裏，隔了年不就是陳茶嗎？而且上海地區潮濕溫差大，發酵效率一年相當雲南兩年，何樂而不為呢？</P>', 1162644863, 1, 4, 0, 1, 0, 0, 'gif', 'wenhua/html/images/1162644906.jpg', 1162644966, 'SystemMaster', '', '0', '', 0);
INSERT INTO efood_news_con VALUES (26, 76, 13, '0013:', '喝湯也要注意姿勢', '', 1162645445, 1, 2, 0, 1, 0, 0, '', '', 1162645445, 'SystemMaster', '', '0', '', 0);
INSERT INTO efood_news_con VALUES (43, 76, 11, '0011:', '美博物館展出另類日本壽司', '', 1162645893, 1, 3, 0, 1, 0, 0, '', '', 1162645893, 'SystemMaster', '', '0', '', 0);
INSERT INTO efood_news_con VALUES (28, 76, 10, '0010:', '四十的男人是&quot;素貓&quot;', '', 1162645487, 1, 1, 0, 1, 0, 0, '', '', 1162645487, 'SystemMaster', '', '0', '', 0);
INSERT INTO efood_news_con VALUES (29, 76, 9, '0009:', '規範孩子用餐禮儀', '', 1162645508, 1, 1, 0, 1, 0, 0, '', '', 1162645508, 'SystemMaster', '', '0', '', 0);
INSERT INTO efood_news_con VALUES (30, 76, 12, '0012:', '王羲之以吃成名', '', 1162645649, 1, 1, 0, 1, 0, 0, '', '', 1162645649, 'SystemMaster', '', '0', '', 0);
INSERT INTO efood_news_con VALUES (31, 76, 12, '0012:', '樂山東坡墨魚', '', 1162645667, 1, 1, 0, 1, 0, 0, '', '', 1162645667, 'SystemMaster', '', '0', '', 0);
INSERT INTO efood_news_con VALUES (32, 76, 12, '0012:', '韶山萬人吃壽麵緬懷毛澤東', '', 1162645699, 1, 1, 0, 1, 0, 0, '', '', 1162645699, 'SystemMaster', '', '0', '', 0);
INSERT INTO efood_news_con VALUES (33, 76, 9, '0009:', '中餐的生命力在於不統一', '', 1162645713, 1, 1, 0, 1, 0, 0, '', '', 1162645713, 'SystemMaster', '', '0', '', 0);
INSERT INTO efood_news_con VALUES (34, 76, 11, '0011:', '各國迥異的飲食方式', '', 1162645763, 1, 1, 0, 1, 0, 0, '', '', 1162645763, 'SystemMaster', '', '0', '', 0);
INSERT INTO efood_news_con VALUES (35, 76, 11, '0011:', '喝日本大碗茶要兩人幫忙', '', 1162645769, 1, 1, 1, 1, 0, 0, '', '', 1162645769, 'SystemMaster', '', '0', '', 0);
INSERT INTO efood_news_con VALUES (36, 76, 14, '0014:', '民間食補有傳統--吃胎盤', '', 1162645781, 1, 1, 0, 1, 0, 0, '', '', 1162645781, 'SystemMaster', '', '0', '', 0);
INSERT INTO efood_news_con VALUES (44, 76, 11, '0011:', '埃及齋月過10天吃27億張餅', '', 1162645928, 1, 3, 0, 1, 0, 0, '', '', 1162645928, 'SystemMaster', '', '0', '', 0);
INSERT INTO efood_news_con VALUES (38, 76, 11, '0011:', '法國人與咖啡文化', '', 1162645813, 1, 1, 0, 1, 0, 0, '', '', 1162645813, 'SystemMaster', '', '0', '', 0);
INSERT INTO efood_news_con VALUES (39, 76, 11, '0011:', '西域食譜和尚尼姑也喝酒', '', 1162645828, 1, 1, 1, 1, 0, 0, '', '', 1162645828, 'SystemMaster', '', '0', '', 0);
INSERT INTO efood_news_con VALUES (40, 76, 14, '0014:', '以食代藥，吃出健康', '', 1162645843, 1, 1, 0, 1, 0, 0, '', '', 1162645843, 'SystemMaster', '', '0', '', 0);
INSERT INTO efood_news_con VALUES (41, 76, 14, '0014:', '食療保健康專家研討會召開', '', 1162645853, 1, 1, 0, 1, 0, 0, '', '', 1162645853, 'SystemMaster', '', '0', '', 0);
INSERT INTO efood_news_con VALUES (42, 76, 11, '0011:', '韓國人吃狗肉的哲學', '', 1162645869, 1, 2, 0, 1, 0, 0, '', '', 1162645869, 'SystemMaster', '', '0', '', 0);
INSERT INTO efood_news_con VALUES (45, 76, 9, '0009:', '品味世界四大紅茶', '', 1162645943, 1, 1, 0, 1, 0, 0, '', '', 1162645943, 'SystemMaster', '', '0', '', 0);
INSERT INTO efood_news_con VALUES (46, 76, 13, '0013:', '餃子的發明用來治爛耳朵的', '', 1162645958, 1, 1, 0, 1, 0, 0, '', '', 1162645958, 'SystemMaster', '', '0', '', 0);
INSERT INTO efood_news_con VALUES (47, 76, 9, '0009:', '白宮五代禦廚披露飲食秘史', '', 1162645967, 1, 1, 0, 1, 0, 0, '', '', 1162645967, 'SystemMaster', '', '0', '', 0);
INSERT INTO efood_news_con VALUES (48, 76, 9, '0009:', '韓國風景帶美味席捲而來', '', 1162645980, 1, 6, 1, 1, 0, 0, '', '', 1162645980, 'SystemMaster', '', '0', '', 0);
INSERT INTO efood_news_con VALUES (49, 76, 9, '0009:', '探索食境三重天', '', 1162645996, 1, 11, 0, 1, 0, 0, '', '', 1162645996, 'SystemMaster', '', '0', '', 0);
INSERT INTO efood_news_con VALUES (50, 76, 10, '0010:', '男人就應該為女人下廚！', '', 1162646081, 1, 1, 0, 1, 0, 0, '', '', 1162646081, 'SystemMaster', '', '0', '', 0);
INSERT INTO efood_news_con VALUES (51, 76, 10, '0010:', '牛根生談"蒙牛"做強做大的秘密', '', 1162646096, 1, 1, 0, 1, 0, 0, '', '', 1162646096, 'SystemMaster', '', '0', '', 0);
INSERT INTO efood_news_con VALUES (52, 76, 10, '0010:', '當杜康遇到孔子 他們會喝什麼', '', 1162646111, 1, 2, 0, 1, 0, 0, '', '', 1162646111, 'SystemMaster', '', '0', '', 0);
INSERT INTO efood_news_con VALUES (53, 76, 10, '0010:', '上哪兒去找會做飯的女人？', '', 1162646137, 1, 3, 0, 1, 0, 0, '', '', 1162646137, 'SystemMaster', '', '0', '', 0);
INSERT INTO efood_news_con VALUES (54, 76, 10, '0010:', '辦公室白領MM的零食策略', '', 1162646327, 1, 2, 0, 1, 0, 0, '', '', 1162646327, 'SystemMaster', '', '0', '', 0);
INSERT INTO efood_news_con VALUES (55, 76, 12, '0012:', '西湖東坡魚的歷史典故', '', 1162646458, 1, 1, 1, 1, 0, 0, '', '', 1162646458, 'SystemMaster', '', '0', '', 0);
INSERT INTO efood_news_con VALUES (56, 76, 12, '0012:', '認真地度過每一天 豆花米線裏品人生', '', 1162646486, 1, 1, 0, 1, 0, 0, '', '', 1162646486, 'SystemMaster', '', '0', '', 0);
INSERT INTO efood_news_con VALUES (57, 76, 12, '0012:', '金庸的養生之道', '', 1162646500, 1, 1, 0, 1, 0, 0, '', '', 1162646500, 'SystemMaster', '', '0', '', 0);
INSERT INTO efood_news_con VALUES (58, 76, 13, '0013:', '乾隆與鳳凰蛋的傳說', '', 1162646516, 1, 1, 0, 1, 0, 0, '', '', 1162646516, 'SystemMaster', '', '0', '', 0);
INSERT INTO efood_news_con VALUES (59, 76, 13, '0013:', '中國菜名有學問', '', 1162646528, 1, 1, 0, 1, 0, 0, '', '', 1162646528, 'SystemMaster', '', '0', '', 0);
INSERT INTO efood_news_con VALUES (60, 76, 13, '0013:', '白宮五代禦廚披露飲食秘史', '', 1162646541, 1, 2, 1, 1, 0, 0, '', '', 1162646541, 'SystemMaster', '', '0', '', 0);
INSERT INTO efood_news_con VALUES (61, 76, 14, '0014:', '四類人吃菜時不要放蒜', '', 1162646576, 1, 1, 1, 1, 0, 0, '', '', 1162646576, 'SystemMaster', '', '0', '', 0);
INSERT INTO efood_news_con VALUES (62, 76, 14, '0014:', '改善體質最直接的方法', '', 1162646586, 1, 1, 0, 1, 0, 0, '', '', 1162646586, 'SystemMaster', '', '0', '', 0);
INSERT INTO efood_news_con VALUES (63, 76, 14, '0014:', '煲湯時間長會丟營養嗎', '', 1162646595, 1, 5, 0, 1, 0, 0, '', '', 1162646595, 'SystemMaster', '', '0', '', 0);
INSERT INTO efood_news_con VALUES (64, 76, 15, '0015:', '廚房裏的小竅門', '', 1162646640, 1, 1, 0, 1, 0, 0, '', '', 1162646640, 'SystemMaster', '', '0', '', 0);
INSERT INTO efood_news_con VALUES (65, 76, 15, '0015:', '包餃子的各種花樣', '', 1162646648, 1, 1, 0, 1, 0, 0, '', '', 1162646648, 'SystemMaster', '', '0', '', 0);
INSERT INTO efood_news_con VALUES (66, 76, 15, '0015:', '家常炒菜的心得', '', 1162646659, 1, 1, 0, 1, 0, 0, '', '', 1162646659, 'SystemMaster', '', '0', '', 0);
INSERT INTO efood_news_con VALUES (67, 76, 15, '0015:', '購買鹹蛋宜對著燈光透射以辨好壞', '', 1162646689, 1, 3, 1, 1, 0, 0, '', '', 1162646689, 'SystemMaster', '', '0', '', 0);
INSERT INTO efood_news_con VALUES (68, 76, 15, '0015:', '怎樣做一道鮮美的湯', '', 1162646749, 1, 1, 1, 1, 0, 0, '', '', 1162646749, 'SystemMaster', '', '0', '', 0);
INSERT INTO efood_news_con VALUES (69, 76, 15, '0015:', '廚房用具禁忌', '', 1162646761, 1, 1, 0, 1, 0, 0, '', '', 1162646761, 'SystemMaster', '', '0', '', 0);
INSERT INTO efood_news_con VALUES (70, 76, 15, '0015:', '電磁爐對人體有傷害嗎?', '', 1162646772, 1, 5, 1, 1, 0, 0, '', '', 1162646772, 'SystemMaster', '', '0', '', 0);
INSERT INTO efood_news_con VALUES (71, 76, 16, '0016:', '葵花豆腐', '', 1162646847, 1, 1, 0, 1, 0, 0, '', '', 1162646847, 'SystemMaster', '', '0', '', 0);
INSERT INTO efood_news_con VALUES (72, 76, 16, '0016:', '榨菜炒雞柳', '', 1162646855, 1, 1, 0, 1, 0, 0, '', '', 1162646855, 'SystemMaster', '', '0', '', 0);
INSERT INTO efood_news_con VALUES (73, 76, 16, '0016:', '紅燒芋頭肉', '', 1162646862, 1, 1, 0, 1, 0, 0, '', '', 1162646862, 'SystemMaster', '', '0', '', 0);
INSERT INTO efood_news_con VALUES (74, 76, 16, '0016:', '鐵板魷魚', '', 1162646871, 1, 1, 0, 1, 0, 0, '', '', 1162646871, 'SystemMaster', '', '0', '', 0);
INSERT INTO efood_news_con VALUES (75, 76, 16, '0016:', '五彩茄子', '', 1162646877, 1, 1, 0, 1, 0, 0, '', '', 1162646877, 'SystemMaster', '', '0', '', 0);
INSERT INTO efood_news_con VALUES (76, 76, 16, '0016:', '榨菜炒雞柳', '', 1162646886, 1, 1, 0, 1, 0, 0, '', '', 1162646886, 'SystemMaster', '', '0', '', 0);
INSERT INTO efood_news_con VALUES (77, 76, 16, '0016:', '光頭豆瓣魚', '', 1162646975, 1, 4, 1, 1, 0, 0, 'gif', 'wenhua/html/images/1162646995.jpg', 1162649336, 'SystemMaster', '', '0', '', 0);
INSERT INTO efood_news_con VALUES (78, 76, 16, '0016:', '沙茶魚頭鍋', '', 1162649649, 1, 3, 0, 1, 0, 0, 'gif', 'wenhua/html/images/1162649663.jpg', 1162649649, 'SystemMaster', '', '0', '', 0);
INSERT INTO efood_news_con VALUES (79, 76, 16, '0016:', '貴妃雞翼', '', 1162649854, 1, 4, 0, 1, 0, 0, 'gif', 'wenhua/html/images/1162649859.jpg', 1162649854, 'SystemMaster', '', '0', '', 0);
INSERT INTO efood_news_con VALUES (80, 76, 16, '0016:', '荷葉飯', '', 1162649983, 1, 1, 0, 1, 0, 0, '', '', 1162649983, 'SystemMaster', '', '0', '', 0);
INSERT INTO efood_news_con VALUES (81, 76, 16, '0016:', '蜜燒紅薯', '', 1162649995, 1, 1, 0, 1, 0, 0, '', '', 1162649995, 'SystemMaster', '', '0', '', 0);
INSERT INTO efood_news_con VALUES (82, 76, 16, '0016:', '自製肘花', '', 1162650008, 1, 2, 0, 1, 0, 0, '', '', 1162650008, 'SystemMaster', '', '0', '', 0);
INSERT INTO efood_news_con VALUES (83, 76, 16, '0016:', '藏式咖喱魚', '', 1162650022, 1, 6, 0, 1, 0, 0, '', '', 1162650022, 'SystemMaster', '', '0', '', 0);
INSERT INTO efood_news_con VALUES (87, 79, 20, '0020:', '紅驛飯莊美食鑒賞活動', '紅驛飯莊美食鑒賞活動', 1163878269, 1, 3, 0, 1, 0, 0, 'gif', 'hdnews/html/images/1163878827.jpg', 1163878827, 'SystemMaster', '', '0', '', 0);
INSERT INTO efood_news_con VALUES (88, 79, 20, '0020:', '情動好吃堡fb回顧', '<U><FONT color=#0000ff>情動好吃堡fb回顧</FONT></U>', 1163878285, 1, 3, 0, 1, 0, 0, 'gif', 'hdnews/html/images/1163878810.jpg', 1163878810, 'SystemMaster', '', '0', '', 0);
INSERT INTO efood_news_con VALUES (89, 79, 20, '0020:', '古兜溫泉單身貴族尋緣之旅', '<IMG style="POSITION: static" height=150 alt="" hspace=0 src="http://efood.phpweb.net/hdnews/html/images/1163878366.jpg" width=225 align=right border=0>這次的傾城嘉賓是熱門劇集女主角 <BR>真人如劇中角色般聰慧果斷和機敏 <BR>當然還有成熟女人透發的迷人魅力<BR>在傾城嘉賓和尋緣隊長的帶領下 <BR>一位外貌酷似明星蒙嘉慧小姐的廣州美麗團友成為全場收到心意卡最多的"票後"！ <BR>而"新加坡謝賢"則與"深圳狄波拉"攜手進入情侶專區共進午餐！<BR>全場公認的一對香港俊男美女更是從談談心食點心開始就觸電，還是女方主動哦！！<BR>', 1163878311, 1, 4, 0, 1, 0, 0, 'gif', 'hdnews/html/images/1163878366.jpg', 1163878384, 'SystemMaster', '', '0', '', 0);
INSERT INTO efood_news_con VALUES (90, 79, 20, '0020:', '避風塘錯宗複雜的殺人遊戲', '', 1163878544, 1, 6, 0, 1, 0, 0, 'gif', 'hdnews/html/images/1163879209.jpg', 1163879209, 'SystemMaster', '', '0', '', 0);
INSERT INTO efood_news_con VALUES (91, 79, 20, '0020:', '美酒佳人-萬國紅酒品酒會', '', 1163878554, 1, 2, 0, 1, 0, 0, 'gif', 'hdnews/html/images/1163878773.jpg', 1163878773, 'SystemMaster', '', '0', '', 0);
INSERT INTO efood_news_con VALUES (92, 79, 20, '0020:', '全城最抵食的櫻之花FB回顧', '', 1163878588, 1, 5, 0, 1, 0, 0, 'gif', 'hdnews/html/images/1163878745.jpg', 1163878745, 'SystemMaster', '', '0', '', 0);
INSERT INTO efood_news_con VALUES (93, 79, 20, '0020:', '美酒佳人-萬國紅酒品酒會', '', 1163879837, 1, 1, 0, 1, 0, 0, '', '', 1163879837, 'SystemMaster', '', '0', '', 0);
INSERT INTO efood_news_con VALUES (94, 79, 20, '0020:', '聚福酒家愛心fb目睹最震撼一幕', '', 1163879847, 1, 1, 0, 1, 0, 0, '', '', 1163879847, 'SystemMaster', '', '0', '', 0);
INSERT INTO efood_news_con VALUES (95, 79, 20, '0020:', '美食鑒賞紅孔雀火鍋吧', '', 1163879870, 1, 1, 0, 1, 0, 0, '', '', 1163879870, 'SystemMaster', '', '0', '', 0);
INSERT INTO efood_news_con VALUES (96, 79, 20, '0020:', '曾經輝煌的廣州第一雞', '', 1163879932, 1, 2, 0, 1, 0, 0, '', '', 1163879932, 'SystemMaster', '', '0', '', 0);
# --------------------------------------------------------

#
# 資料表的結構 `efood_pageset`
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
);

#
# 導出下面的資料庫內容 `efood_pageset`
#

INSERT INTO efood_pageset VALUES (1, 1, '網站首頁', 'index', 'index', 'page_index.htm', '0', '0', '0', 1);
INSERT INTO efood_pageset VALUES (2, 3, '檢索頁', 'news', 'query', 'page_news_query.htm', '0', '0', '0', 2);
INSERT INTO efood_pageset VALUES (3, 3, '詳情頁', 'news', 'detail', 'page_news_detail.htm', '0', '0', '0', 3);
INSERT INTO efood_pageset VALUES (4, 2, '會員驗證頁', 'member', 'admin', 'page_admin.htm', '', '', '', 2);
INSERT INTO efood_pageset VALUES (5, 2, '會員登錄頁', 'member', 'login', 'page_login.htm', '', '', '', 3);
INSERT INTO efood_pageset VALUES (6, 2, '重設密碼頁', 'member', 'lostpass', 'page_lostpass.htm', '', '', '', 2);
INSERT INTO efood_pageset VALUES (7, 2, '會員中心首頁', 'member', 'main', 'page_member.htm', '', '', '', 3);
INSERT INTO efood_pageset VALUES (8, 2, '會員資料修改頁', 'member', 'modify', 'page_member_modify.htm', '0', '0', '0', 2);
INSERT INTO efood_pageset VALUES (9, 2, '會員公告內容頁', 'member', 'notice', 'page_member_notice.htm', '', '', '', 3);
INSERT INTO efood_pageset VALUES (10, 2, '會員資料修改確認頁', 'member', 'modifyok', 'page_member_func.htm', '', '', '', 2);
INSERT INTO efood_pageset VALUES (11, 2, '會員無權訪問頁', 'member', 'norights', 'page_norights.htm', '', '', '', 3);
INSERT INTO efood_pageset VALUES (12, 2, '會員註冊選擇類型頁', 'member', 'reg', 'page_reg.htm', '', '', '', 2);
INSERT INTO efood_pageset VALUES (13, 2, '會員註冊填表頁', 'member', 'regform', 'page_regform.htm', '', '', '', 3);
INSERT INTO efood_pageset VALUES (14, 2, '會員註冊提示頁', 'member', 'regok', 'page_regok.htm', '', '', '', 2);
INSERT INTO efood_pageset VALUES (15, 2, '會員註冊協議頁', 'member', 'regxy', 'page_regxy.htm', '', '', '', 3);
INSERT INTO efood_pageset VALUES (16, 6, '頻道內容頁', 'page', 'page', 'page_page.htm', '0', '0', '0', 2);
INSERT INTO efood_pageset VALUES (92, 7, '評論檢索頁', 'comment', 'query', 'page_comment.htm', '', '', '', 15);
INSERT INTO efood_pageset VALUES (100, 2, '文章管理頁', 'member', 'artlist', 'page_member_func.htm', '', '', '', 18);
INSERT INTO efood_pageset VALUES (99, 2, '文章發佈頁', 'member', 'artfabu', 'page_member_func.htm', '', '', '', 17);
INSERT INTO efood_pageset VALUES (59, 5, '檢索頁', 'down', 'query', 'page_down_query.htm', '', '', '', 2);
INSERT INTO efood_pageset VALUES (60, 5, '詳情頁', 'down', 'detail', 'page_down_detail.htm', '', '', '', 3);
INSERT INTO efood_pageset VALUES (33, 3, '頻道首頁', 'news', 'main', 'page_news_index1.htm', '0', '0', '0', 0);
INSERT INTO efood_pageset VALUES (87, 7, '評論發表頁', 'comment', 'send', 'page_comment_detail.htm', '', '', '', 16);
INSERT INTO efood_pageset VALUES (88, 7, '評論詳情頁', 'comment', 'detail', 'page_comment_detail.htm', '', '', '', 17);
INSERT INTO efood_pageset VALUES (101, 2, '文章修改頁', 'member', 'artmodify', 'page_member_func.htm', '', '', '', 19);
INSERT INTO efood_pageset VALUES (82, 62, '頻道內容頁', 'page', 'page', 'page_page.htm', '0', '0', '0', 1);
INSERT INTO efood_pageset VALUES (58, 5, '頻道首頁', 'down', 'main', 'page_down_index.htm', '', '', '', 1);
INSERT INTO efood_pageset VALUES (54, 4, '詳情頁', 'cp', 'detail', 'page_cp_detail.htm', '', '', '', 3);
INSERT INTO efood_pageset VALUES (70, 54, '表單頁', 'form', 'form', 'page_form.htm', '', '', '', 1);
INSERT INTO efood_pageset VALUES (52, 4, '頻道首頁', 'cp', 'main', 'page_cp_index.htm', '', '', '', 1);
INSERT INTO efood_pageset VALUES (53, 4, '檢索頁', 'cp', 'query', 'page_cp_query.htm', '', '', '', 2);
INSERT INTO efood_pageset VALUES (95, 75, '頻道內容頁', 'page', 'page', 'page_search.htm', '0', '0', '0', 1);
INSERT INTO efood_pageset VALUES (94, 74, '頻道內容頁', 'page', 'page', 'page_link.htm', '0', '0', '0', 1);
INSERT INTO efood_pageset VALUES (102, 2, '餐館介紹發佈頁', 'member', 'companyfabu', 'page_member_func.htm', '', '', '', 31);
INSERT INTO efood_pageset VALUES (103, 2, '餐館介紹修改頁', 'member', 'companymodify', 'page_member_func.htm', '', '', '', 32);
INSERT INTO efood_pageset VALUES (104, 8, '餐館頻道首頁', 'company', 'main', 'page_company_index.htm', '', '', '', 0);
INSERT INTO efood_pageset VALUES (105, 8, '餐館檢索搜索頁', 'company', 'query', 'page_company_query.htm', '', '', '', 0);
INSERT INTO efood_pageset VALUES (106, 8, '餐館詳情介紹頁', 'company', 'detail', 'page_company_detail.htm', '', '', '', 0);
INSERT INTO efood_pageset VALUES (108, 9, '餐飲信息首頁', 'sell', 'main', 'page_sell_index.htm', '', '', '', 0);
INSERT INTO efood_pageset VALUES (109, 9, '餐飲資訊檢索頁', 'sell', 'query', 'page_sell_query.htm', '', '', '', 0);
INSERT INTO efood_pageset VALUES (110, 9, '餐飲資訊內容頁', 'sell', 'detail', 'page_sell_detail.htm', '', '', '', 0);
INSERT INTO efood_pageset VALUES (111, 2, '餐飲資訊發佈頁', 'member', 'infofabu', 'page_member_func.htm', '', '', '', 33);
INSERT INTO efood_pageset VALUES (112, 2, '餐飲資訊管理頁', 'member', 'infogl', 'page_member_func.htm', '', '', '', 34);
INSERT INTO efood_pageset VALUES (113, 9, '餐館餐飲資訊檢索頁', 'sell', 'list', 'page_company_sell.htm', '', '', '', 0);
INSERT INTO efood_pageset VALUES (143, 2, '活動聚會發佈頁', 'member', 'hdfabu', 'page_member_func.htm', '', '', '', 51);
INSERT INTO efood_pageset VALUES (119, 2, '餐飲資訊修改頁', 'member', 'infomodify', 'page_member_func.htm', '', '', '', 35);
INSERT INTO efood_pageset VALUES (120, 11, '美食頻道首頁', 'products', 'main', 'page_products_index.htm', '', '', '', 0);
INSERT INTO efood_pageset VALUES (121, 11, '美食頻道檢索頁', 'products', 'query', 'page_products_query.htm', '', '', '', 0);
INSERT INTO efood_pageset VALUES (122, 11, '美食頻道詳情頁', 'products', 'detail', 'page_products_detail.htm', '', '', '', 0);
INSERT INTO efood_pageset VALUES (123, 11, '餐館菜式檢索頁', 'products', 'list', 'page_company_products.htm', '', '', '', 0);
INSERT INTO efood_pageset VALUES (124, 2, '餐館菜式發佈頁', 'member', 'prodfabu', 'page_member_func.htm', '', '', '', 36);
INSERT INTO efood_pageset VALUES (125, 2, '餐館菜式管理頁', 'member', 'prodgl', 'page_member_func.htm', '', '', '', 37);
INSERT INTO efood_pageset VALUES (126, 2, '餐館菜式修改頁', 'member', 'prodmodify', 'page_member_func.htm', '', '', '', 38);
INSERT INTO efood_pageset VALUES (127, 2, '餐館圖片發佈頁', 'member', 'zsfabu', 'page_member_func.htm', '', '', '', 39);
INSERT INTO efood_pageset VALUES (128, 2, '餐館圖片管理頁', 'member', 'zsgl', 'page_member_func.htm', '', '', '', 40);
INSERT INTO efood_pageset VALUES (129, 2, '餐館圖片修改頁', 'member', 'zsmodify', 'page_member_func.htm', '', '', '', 41);
INSERT INTO efood_pageset VALUES (130, 8, '餐館圖片檢索頁', 'company', 'lic', 'page_company_lic.htm', '', '', '', 0);
INSERT INTO efood_pageset VALUES (131, 8, '餐館圖片詳情頁', 'company', 'licdetail', 'page_company_licdetail.htm', '', '', '', 0);
INSERT INTO efood_pageset VALUES (137, 8, '站內短信發送頁', 'company', 'feedback', 'page_company_feedback.htm', '', '', '', 0);
INSERT INTO efood_pageset VALUES (138, 2, '餐館站內短信查詢頁', 'member', 'feedback', 'page_member_func.htm', '', '', '', 45);
INSERT INTO efood_pageset VALUES (139, 2, '餐館站內短信詳情頁', 'member', 'feedbackdetail', 'page_member_func.htm', '', '', '', 46);
INSERT INTO efood_pageset VALUES (140, 76, '頻道首頁', 'news', 'main', 'page_news_index.htm', '', '', '', 1);
INSERT INTO efood_pageset VALUES (141, 76, '檢索頁', 'news', 'query', 'page_news_query.htm', '', '', '', 2);
INSERT INTO efood_pageset VALUES (142, 76, '詳情頁', 'news', 'detail', 'page_news_detail.htm', '', '', '', 3);
INSERT INTO efood_pageset VALUES (144, 2, '活動聚會管理頁', 'member', 'hdgl', 'page_member_func.htm', '', '', '', 52);
INSERT INTO efood_pageset VALUES (145, 2, '活動聚會修改頁', 'member', 'hdmodify', 'page_member_func.htm', '', '', '', 53);
INSERT INTO efood_pageset VALUES (146, 10, '聚會活動首頁', 'hd', 'main', 'page_hd_index.htm', '', '', '', 1);
INSERT INTO efood_pageset VALUES (147, 10, '聚會活動檢索頁', 'hd', 'query', 'page_hd_query.htm', '', '', '', 2);
INSERT INTO efood_pageset VALUES (148, 10, '聚會活動內容頁', 'hd', 'detail', 'page_hd_detail.htm', '', '', '', 3);
INSERT INTO efood_pageset VALUES (153, 79, '頻道首頁', 'news', 'main', 'page_hd_index.htm', '0', '0', '0', 1);
INSERT INTO efood_pageset VALUES (154, 79, '檢索頁', 'news', 'query', 'page_news_query.htm', '', '', '', 2);
INSERT INTO efood_pageset VALUES (155, 79, '詳情頁', 'news', 'detail', 'page_news_detail.htm', '', '', '', 3);
# --------------------------------------------------------

#
# 資料表的結構 `efood_play`
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
);

#
# 導出下面的資料庫內容 `efood_play`
#

INSERT INTO efood_play VALUES (3, 3, '煙雨南湖野外燒烤紅十PK賽', '煙雨南湖野外燒烤煙雨南湖野外燒烤煙雨南湖野外燒烤222', 'hd/html/images/1163779330.jpg', 'aaaaa', '煙雨南湖邊', '11月21日', 1163918986, 1164689580, '192.168.2.201', 1, 0, 10, 0, 0, 0);
INSERT INTO efood_play VALUES (4, 3, '春光乍現自駕尋春溫泉之旅', '春光乍現自駕尋春溫泉之旅', 'hd/html/images/1163866361.jpg', 'aaaaa', 'sdddddddddddddd', 'ddddddd', 1163866361, 1163909700, '192.168.2.201', 1, 0, 32, 0, 1, 0);
INSERT INTO efood_play VALUES (6, 3, '絕地燒鵝聚會', '絕地燒鵝聚會', 'hd/html/images/1163785041.jpg', 'aaaaa', '嘉興星月酒家', '11月30日', 1163788601, 1167022740, '192.168.2.201', 1, 0, 21, 0, 0, 0);
INSERT INTO efood_play VALUES (7, 3, '西部牛扒據扒拉吧布', '西部牛扒據扒 ', '', 'aaaaa', '西部', '12月', 1163918852, 1164403800, '192.168.2.201', 1, 0, 22, 0, 0, 0);
INSERT INTO efood_play VALUES (8, 3, '歎正宗美式西點感受現代文化', '歎正宗美式西點感受美國現代文化。\r\n集成十多種網站系統的超大型智慧建站平臺；支持集群伺服器，由主控網站統一管理；支援獨立的VP代理商網站；可按運營商需求擴展掛接其他網站系統；運營商自主管理，獨立經營 ', 'hd/html/images/1163790521.jpg', 'aaaaa', '正宗美式西22', '11月20日2222', 1163920078, 1172187180, '192.168.2.201', 1, 901, 2, 2, 1, 0);
INSERT INTO efood_play VALUES (9, 3, '品嘗地道臺灣小吃', '品嘗地道臺灣小吃', '', 'aaaaa', 'sssss', '11月21日下午18點', 1163790735, 1164403800, '192.168.2.201', 1, 30, 8, 0, 0, 0);
INSERT INTO efood_play VALUES (10, 3, '五一自煮餐', '五一自煮餐', '', 'aaaaa', 'sssss', '11月21日下午18點', 1163790635, 1164447000, '192.168.2.201', 1, 30, 8, 0, 0, 0);
INSERT INTO efood_play VALUES (11, 3, '多利來免費試食', '多利來免費試食', '', 'aaaaa', 'sssss', '11月21日下午18點', 1163790722, 1164403800, '192.168.2.201', 1, 30, 8, 1, 0, 0);
INSERT INTO efood_play VALUES (12, 3, '北京路太平館一探', '北京路太平館一探', '', 'aaaaa', 'sssss', '11月21日下午18點', 1163790678, 1164403800, '192.168.2.201', 1, 30, 8, 0, 0, 0);
INSERT INTO efood_play VALUES (13, 3, '家庭菜肴數怡樂居獨好', '家庭菜肴數怡樂居獨好', '', 'aaaaa', 'sssss', '11月21日下午18點', 1163790661, 1164403800, '192.168.2.201', 1, 30, 8, 0, 0, 0);
INSERT INTO efood_play VALUES (17, 3, '杭州天目山自助遊野餐歌會', '杭州天目山自助遊野餐歌會', '', 'aaaaa', '杭州天目山', '12月', 1163918946, 1164533400, '192.168.2.201', 1, 100, 20, 0, 0, 0);
INSERT INTO efood_play VALUES (18, 3, '亞洲餐廳美蟹共賞美食活動', '亞洲餐廳美蟹共賞美食活動 ', '', 'aaaaa', '亞洲餐廳', '12月1日', 1163919098, 1190453400, '192.168.2.201', 1, 12, 12, 0, 0, 0);
INSERT INTO efood_play VALUES (19, 3, '紅驛飯莊北京美食鑒賞活動', '紅驛飯莊北京美食鑒賞活動', '', 'aaaaa', '紅驛飯莊', '12月20日', 1163919247, 1166434200, '192.168.2.201', 1, 50, 12, 0, 0, 0);
# --------------------------------------------------------

#
# 資料表的結構 `efood_player`
#

CREATE TABLE efood_player (
  id int(20) NOT NULL auto_increment,
  rid int(20) NOT NULL default '0',
  memberid int(20) NOT NULL default '0',
  name varchar(100) NOT NULL default '',
  dtime int(11) NOT NULL default '0',
  ip varchar(16) NOT NULL default '',
  PRIMARY KEY  (id)
);

#
# 導出下面的資料庫內容 `efood_player`
#

INSERT INTO efood_player VALUES (1, 11, 3, 'aaaaa', 1163839698, '192.168.2.201');
INSERT INTO efood_player VALUES (2, 8, 3, 'aaaaa', 1163840278, '192.168.2.201');
INSERT INTO efood_player VALUES (3, 8, 11, 'ddddddx', 1163840401, '192.168.2.201');
# --------------------------------------------------------

#
# 資料表的結構 `efood_plus`
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
);

#
# 導出下面的資料庫內容 `efood_plus`
#

INSERT INTO efood_plus VALUES (18, 1, 'modButtomInfo', 'index', 'index', '0', 0, 0, 0, 0, '0', '0', '0', 0, 0, '0', 0, 0, '0', '<P>城市美食網站系統 - 構建您的城市餐飲資訊門戶<BR>Copyright &copy; 2006-2008&nbsp; </P>', 0);
INSERT INTO efood_plus VALUES (8, 1, 'modCpCommentList', 'index', 'index', '0', 0, 0, 0, 0, '0', '0', '0', 0, 0, '0', 0, 0, 'xxxxxxxx', '0', 0);
INSERT INTO efood_plus VALUES (9, 1, 'modNewsCommentList', 'index', 'index', '0', 0, 0, 0, 0, '0', '0', '0', 0, 0, '0', 0, 0, 'sssssss', '0', 1);
INSERT INTO efood_plus VALUES (10, 1, 'modDownCommentList', 'index', 'index', '0', 0, 0, 0, 0, '0', '0', '0', 0, 0, '0', 0, 0, 'www', '0', 0);
INSERT INTO efood_plus VALUES (11, 1, 'modCommentClass', 'index', 'index', '0', 2, 0, 0, 0, '0', '0', '0', 0, 0, '0', 0, 0, '0', '0', 0);
INSERT INTO efood_plus VALUES (28, 1, 'modNewsRec', 'index', 'index', '0', 0, 12, 0, 0, '0', '0', 'n-j', 0, 19, '0', 0, 0, '0', '0', 0);
INSERT INTO efood_plus VALUES (12, 1, 'modLinkPic', 'index', 'index', '0', 0, 3, 0, 0, '0', '0', '0', 0, 0, '0', 0, 0, '更多友情鏈結', '0', 0);
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
INSERT INTO efood_plus VALUES (88, 8, 'modEdit', 'company', 'main', '0', 0, 0, 0, 0, '0', '0', '0', 0, 0, '0', 0, 0, '0', '<STRONG><FONT color=#ff8000>小湘農家菜館中山店<BR></FONT></STRONG>品味農家菜，新鮮時尚返樸歸真，價格實惠。11月2日中山店全新裝修開業，吃100送50優惠酬賓。歡迎您的惠顧！', 1);
INSERT INTO efood_plus VALUES (89, 8, 'modEdit', 'company', 'main', '0', 0, 0, 0, 0, '0', '0', '0', 0, 0, '0', 0, 0, '0', '<FONT color=#ff8000><STRONG>歐亞咖啡茶樓</STRONG><BR></FONT>香香的咖啡、濃濃的綠茶，歐亞咖啡茶樓是您休閒、商務洽談的好去處。各式小吃贈送，歡迎新老客戶惠顧！', 2);
INSERT INTO efood_plus VALUES (91, 8, 'modCompanyTj', 'company', 'main', '0', 0, 0, 0, 0, '0', '0', '0', 0, 0, '0', 2, 8, '0', '0', 1);
INSERT INTO efood_plus VALUES (92, 8, 'modCompanyTj', 'company', 'main', '0', 0, 0, 0, 0, '0', '0', '0', 0, 0, '0', 28, 8, '0', '0', 2);
INSERT INTO efood_plus VALUES (94, 8, 'modCompanyList', 'company', 'main', '0', 0, 0, 0, 0, '0', '0', '0', 0, 0, '0', 2, 8, '0', '0', 1);
INSERT INTO efood_plus VALUES (95, 8, 'modCompanyList', 'company', 'main', '0', 0, 0, 0, 0, '0', '0', '0', 0, 0, '0', 28, 8, '0', '0', 2);
INSERT INTO efood_plus VALUES (97, 9, 'modSellList', 'sell', 'main', '0', 0, 0, 0, 0, '0', '0', '0', 0, 0, '0', 2, 9, '[更多資訊>]', '0', 1);
INSERT INTO efood_plus VALUES (98, 9, 'modSellList', 'sell', 'main', '0', 0, 0, 0, 0, '0', '0', '0', 0, 0, '0', 3, 9, '[更多資訊>]', '0', 2);
INSERT INTO efood_plus VALUES (99, 9, 'modSellList', 'sell', 'main', '0', 0, 0, 0, 0, '0', '0', '0', 0, 0, '0', 6, 9, '[更多資訊>]', '0', 3);
INSERT INTO efood_plus VALUES (100, 9, 'modSellList', 'sell', 'main', '0', 0, 0, 0, 0, '0', '0', '0', 0, 0, '0', 7, 9, '[更多資訊>]', '0', 4);
INSERT INTO efood_plus VALUES (101, 9, 'modSellList', 'sell', 'main', '0', 0, 0, 0, 0, '0', '0', '0', 0, 0, '0', 4, 9, '[更多資訊>]', '0', 5);
INSERT INTO efood_plus VALUES (102, 9, 'modSellList', 'sell', 'main', '0', 0, 0, 0, 0, '0', '0', '0', 0, 0, '0', 5, 9, '[更多資訊>]', '0', 6);
INSERT INTO efood_plus VALUES (103, 9, 'modSellList', 'sell', 'main', '0', 0, 0, 0, 0, '0', '0', '0', 0, 0, '0', 1, 9, '[更多資訊>]', '0', 7);
INSERT INTO efood_plus VALUES (104, 9, 'modSellList', 'sell', 'main', '0', 0, 0, 0, 0, '0', '0', '0', 0, 0, '0', 8, 9, '[更多資訊>]', '0', 8);
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
INSERT INTO efood_plus VALUES (137, 1, 'modEdit', 'index', 'index', '0', 0, 0, 0, 0, '0', '0', '0', 0, 0, '0', 0, 0, '0', '<A href="hd/main/"><FONT color=#ff8000>免費FB活動火熱進行中!!!</FONT></A>', 9);
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
# 資料表的結構 `efood_plus_set`
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
);

#
# 導出下面的資料庫內容 `efood_plus_set`
#

INSERT INTO efood_plus_set VALUES (1, 'modNewsQuery', '[模組插件]文章翻頁檢索', 'news', 'query', 1, 0, 1, 0, 0, 1, 1, 1, 0, 1, 1, 0, 0, 0, 0, 'news');
INSERT INTO efood_plus_set VALUES (2, 'modNewsClass', '[全站插件]文章一級分類', 'all', 'all', 1, 1, 1, 0, 0, 1, 1, 0, 1, 0, 1, 1, 0, 0, 1, 'news');
INSERT INTO efood_plus_set VALUES (3, 'modNewsTwoClass', '[全站插件]文章二級分類', 'all', 'all', 1, 1, 1, 0, 0, 1, 1, 0, 1, 0, 1, 1, 0, 0, 1, 'news');
INSERT INTO efood_plus_set VALUES (4, 'modNewsTreeClass', '[全站插件]文章樹形分類', 'all', 'all', 0, 0, 0, 0, 0, 1, 1, 0, 1, 0, 1, 1, 0, 0, 1, 'news');
INSERT INTO efood_plus_set VALUES (5, 'modNewsSameCat', '[模組插件]本類最新文章', 'news', 'all', 1, 0, 1, 0, 0, 1, 1, 1, 1, 1, 1, 0, 1, 0, 1, 'news');
INSERT INTO efood_plus_set VALUES (6, 'modNewsRel', '[模組插件]同專題相關文章', 'news', 'detail', 1, 0, 1, 0, 0, 1, 1, 1, 1, 1, 1, 0, 1, 0, 1, 'news');
INSERT INTO efood_plus_set VALUES (7, 'modNewsSameAuthor', '[模組插件]同作者相關文章', 'news', 'detail', 1, 0, 1, 0, 0, 1, 1, 1, 1, 1, 1, 0, 1, 0, 1, 'news');
INSERT INTO efood_plus_set VALUES (8, 'modNavPath', '[全站插件]類別導航條', 'all', 'all', 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 1, 0, 0, 0, 0, 'mod');
INSERT INTO efood_plus_set VALUES (9, 'modNewsPicRel', '[模組插件]同專題文章圖片', 'news', 'detail', 1, 1, 1, 1, 1, 1, 1, 0, 1, 1, 1, 0, 1, 0, 1, 'news');
INSERT INTO efood_plus_set VALUES (10, 'modNewsSameCatHot', '[模組插件]本類熱門文章', 'news', 'all', 1, 0, 1, 0, 0, 1, 1, 0, 1, 1, 1, 0, 1, 0, 1, 'news');
INSERT INTO efood_plus_set VALUES (11, 'modNewsSameCatRec', '[模組插件]本類推薦文章', 'news', 'all', 1, 0, 1, 0, 0, 1, 1, 1, 1, 1, 1, 0, 1, 0, 1, 'news');
INSERT INTO efood_plus_set VALUES (12, 'modNewsClassFc', '[模組插件]文章下一級分類', 'news', 'query', 1, 1, 1, 0, 0, 1, 1, 0, 1, 0, 1, 0, 0, 0, 1, 'news');
INSERT INTO efood_plus_set VALUES (13, 'modNewsPicSameCat', '[模組插件]本類最新文章圖片', 'news', 'all', 1, 1, 1, 1, 1, 1, 1, 0, 1, 1, 1, 0, 1, 0, 1, 'news');
INSERT INTO efood_plus_set VALUES (14, 'modNewsPic', '[全站插件]最新文章圖片', 'all', 'all', 1, 1, 1, 1, 1, 1, 1, 0, 1, 1, 1, 1, 1, 0, 1, 'news');
INSERT INTO efood_plus_set VALUES (15, 'modNewsList', '[全站插件]最新文章', 'all', 'all', 1, 0, 1, 0, 0, 1, 1, 1, 1, 1, 1, 1, 1, 0, 1, 'news');
INSERT INTO efood_plus_set VALUES (16, 'modNewsHot', '[全站插件]熱門文章', 'all', 'all', 1, 0, 1, 0, 0, 1, 1, 1, 1, 1, 1, 1, 1, 0, 1, 'news');
INSERT INTO efood_plus_set VALUES (17, 'modNewsRec', '[全站插件]推薦文章', 'all', 'all', 1, 0, 1, 0, 0, 1, 1, 1, 1, 1, 1, 1, 1, 0, 1, 'news');
INSERT INTO efood_plus_set VALUES (18, 'modNewsPicRec', '[全站插件]推薦文章圖片', 'all', 'all', 1, 1, 1, 1, 1, 1, 1, 0, 1, 1, 1, 1, 1, 0, 1, 'news');
INSERT INTO efood_plus_set VALUES (19, 'modNewsPicHot', '[全站插件]熱門文章圖片', 'all', 'all', 1, 1, 1, 1, 1, 1, 1, 0, 1, 1, 1, 1, 1, 0, 1, 'news');
INSERT INTO efood_plus_set VALUES (20, 'modEdit', '[全站插件]自由編輯區域', 'all', 'all', 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 1, 1, 'mod');
INSERT INTO efood_plus_set VALUES (21, 'modMemberMenu', '[模組插件]會員功能功能表', 'member', 'all', 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 1, 0, 0, 0, 1, 'mod');
INSERT INTO efood_plus_set VALUES (22, 'modMemberNotice', '[模組插件]最新會員公告', 'member', 'all', 1, 0, 1, 0, 0, 1, 1, 1, 0, 1, 1, 0, 0, 0, 1, 'mod');
INSERT INTO efood_plus_set VALUES (24, 'modNewsMenu', '[欄目功能表]文章大類功能表', 'all', 'all', 1, 1, 1, 0, 0, 1, 1, 0, 1, 0, 1, 1, 0, 0, 1, 'news');
INSERT INTO efood_plus_set VALUES (25, 'modNewsMenuAll', '[欄目功能表]文章分類功能表', 'all', 'all', 1, 1, 1, 0, 0, 1, 1, 0, 1, 0, 1, 1, 0, 0, 1, 'news');
INSERT INTO efood_plus_set VALUES (26, 'modSecondMenu', '[欄目菜單]橫式二級欄目菜單', 'all', 'all', 1, 1, 1, 0, 0, 1, 1, 0, 0, 0, 0, 0, 0, 0, 1, 'mod');
INSERT INTO efood_plus_set VALUES (27, 'modMainMenu', '[欄目功能表]橫式頻道主功能表', 'all', 'all', 1, 1, 1, 0, 0, 1, 1, 0, 0, 0, 0, 0, 0, 0, 1, 'mod');
INSERT INTO efood_plus_set VALUES (28, 'modCpQuery', '[模組插件]圖文內容檢索', 'cp', 'query', 1, 1, 1, 1, 1, 1, 1, 0, 0, 1, 1, 0, 0, 0, 0, 'cp');
INSERT INTO efood_plus_set VALUES (29, 'modCpClass', '[全站插件]圖文一級分類', 'all', 'all', 1, 1, 1, 0, 0, 1, 1, 0, 1, 0, 1, 1, 0, 0, 1, 'cp');
INSERT INTO efood_plus_set VALUES (30, 'modCpTwoClass', '[全站插件]圖文二級分類', 'all', 'all', 1, 1, 1, 0, 0, 1, 1, 0, 1, 0, 1, 1, 0, 0, 1, 'cp');
INSERT INTO efood_plus_set VALUES (31, 'modCpTreeClass', '[全站插件]圖文樹型分類', 'all', 'all', 0, 0, 0, 0, 0, 1, 1, 0, 1, 0, 1, 1, 0, 0, 1, 'cp');
INSERT INTO efood_plus_set VALUES (32, 'modCpClassFc', '[模組插件]圖文下一級分類', 'cp', 'query', 1, 1, 1, 0, 0, 1, 1, 0, 1, 0, 1, 0, 0, 0, 1, 'cp');
INSERT INTO efood_plus_set VALUES (33, 'modCpMenu', '[欄目菜單]圖文大類菜單', 'all', 'all', 1, 1, 1, 0, 0, 1, 1, 0, 1, 0, 1, 1, 0, 0, 1, 'cp');
INSERT INTO efood_plus_set VALUES (34, 'modCpMenuAll', '[欄目功能表]圖文分類功能表', 'all', 'all', 1, 1, 1, 0, 0, 1, 1, 0, 1, 0, 1, 1, 0, 0, 1, 'cp');
INSERT INTO efood_plus_set VALUES (35, 'modCpPic', '[全站插件]圖文頻道最新圖片', 'all', 'all', 1, 1, 1, 1, 1, 1, 1, 0, 1, 1, 1, 1, 1, 0, 1, 'cp');
INSERT INTO efood_plus_set VALUES (36, 'modCpPicRel', '[模組插件]圖文頻道同專題圖片', 'cp', 'detail', 1, 1, 1, 1, 1, 1, 1, 0, 1, 1, 1, 0, 1, 0, 1, 'cp');
INSERT INTO efood_plus_set VALUES (37, 'modCpPicSameCat', '[模組插件]圖文頻道本類圖片', 'cp', 'all', 1, 1, 1, 1, 1, 1, 1, 0, 1, 1, 1, 0, 1, 0, 1, 'cp');
INSERT INTO efood_plus_set VALUES (38, 'modCpPicRec', '[全站插件]圖文頻道推薦圖片', 'all', 'all', 1, 1, 1, 1, 1, 1, 1, 0, 1, 1, 1, 1, 1, 0, 1, 'cp');
INSERT INTO efood_plus_set VALUES (39, 'modCpPicHot', '[全站插件]圖文頻道熱門圖片', 'all', 'all', 1, 1, 1, 1, 1, 1, 1, 0, 1, 1, 1, 1, 1, 0, 1, 'cp');
INSERT INTO efood_plus_set VALUES (40, 'modCpProp', '[模組插件]圖文參數列表', 'cp', 'detail', 1, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 'cp');
INSERT INTO efood_plus_set VALUES (41, 'modDownQuery', '[模組插件]下載翻頁檢索', 'down', 'query', 1, 0, 1, 0, 0, 1, 1, 1, 0, 1, 1, 0, 0, 0, 0, 'down');
INSERT INTO efood_plus_set VALUES (42, 'modDownQuery', '[模組插件]下載翻頁檢索', 'down', 'query', 1, 0, 1, 0, 0, 1, 1, 1, 0, 1, 1, 0, 0, 0, 0, 'down');
INSERT INTO efood_plus_set VALUES (43, 'modDownClass', '[全站插件]下載一級分類', 'all', 'all', 1, 1, 1, 0, 0, 1, 1, 0, 1, 0, 1, 1, 0, 0, 1, 'down');
INSERT INTO efood_plus_set VALUES (44, 'modDownTwoClass', '[全站插件]下載二級分類', 'all', 'all', 1, 1, 1, 0, 0, 1, 1, 0, 1, 0, 1, 1, 0, 0, 1, 'down');
INSERT INTO efood_plus_set VALUES (45, 'modDownTreeClass', '[全站插件]下載樹形分類', 'all', 'all', 0, 0, 0, 0, 0, 1, 1, 0, 1, 0, 1, 1, 0, 0, 1, 'down');
INSERT INTO efood_plus_set VALUES (46, 'modDownClassFc', '[模組插件]下載下一級分類', 'down', 'query', 1, 1, 1, 0, 0, 1, 1, 0, 1, 0, 1, 0, 0, 0, 1, 'down');
INSERT INTO efood_plus_set VALUES (47, 'modDownMenu', '[欄目菜單]下載大類菜單', 'all', 'all', 1, 1, 1, 0, 0, 1, 1, 0, 1, 0, 1, 1, 0, 0, 1, 'down');
INSERT INTO efood_plus_set VALUES (48, 'modDownMenuAll', '[欄目功能表]下載分類功能表', 'all', 'all', 1, 1, 1, 0, 0, 1, 1, 0, 1, 0, 1, 1, 0, 0, 1, 'down');
INSERT INTO efood_plus_set VALUES (49, 'modDownList', '[全站插件]最新下載', 'all', 'all', 1, 0, 1, 0, 0, 1, 1, 1, 1, 1, 1, 1, 1, 0, 1, 'down');
INSERT INTO efood_plus_set VALUES (50, 'modDownHot', '[全站插件]熱門下載', 'all', 'all', 1, 0, 1, 0, 0, 1, 1, 1, 1, 1, 1, 1, 1, 0, 1, 'down');
INSERT INTO efood_plus_set VALUES (51, 'modDownRec', '[全站插件]推薦下載', 'all', 'all', 1, 0, 1, 0, 0, 1, 1, 1, 1, 1, 1, 1, 1, 0, 1, 'down');
INSERT INTO efood_plus_set VALUES (52, 'modDownSameCat', '[模組插件]本類最新下載', 'down', 'all', 1, 0, 1, 0, 0, 1, 1, 1, 1, 1, 1, 0, 1, 0, 1, 'down');
INSERT INTO efood_plus_set VALUES (53, 'modDownRel', '[模組插件]同專題相關下載', 'down', 'detail', 1, 0, 1, 0, 0, 1, 1, 1, 1, 1, 1, 0, 1, 0, 1, 'down');
INSERT INTO efood_plus_set VALUES (54, 'modDownSameCatHot', '[模組插件]本類熱門下載', 'down', 'all', 1, 0, 1, 0, 0, 1, 1, 0, 1, 1, 1, 0, 1, 0, 1, 'down');
INSERT INTO efood_plus_set VALUES (55, 'modDownSameCatRec', '[模組插件]本類推薦下載', 'down', 'all', 1, 0, 1, 0, 0, 1, 1, 1, 1, 1, 1, 0, 1, 0, 1, 'down');
INSERT INTO efood_plus_set VALUES (56, 'modDownNewsRel', '[模組插件]下載頻道相關文章', 'down', 'detail', 1, 0, 1, 0, 0, 1, 1, 1, 1, 1, 1, 0, 0, 0, 1, 'down');
INSERT INTO efood_plus_set VALUES (57, 'modCpNewsRel', '[模組插件]圖文頻道相關文章', 'cp', 'detail', 1, 0, 1, 0, 0, 1, 1, 1, 1, 1, 1, 0, 0, 0, 1, 'cp');
INSERT INTO efood_plus_set VALUES (58, 'modNewsDownRel', '[模組插件]文章頻道相關下載', 'news', 'detail', 1, 0, 1, 0, 0, 1, 1, 1, 1, 1, 1, 0, 0, 0, 1, 'news');
INSERT INTO efood_plus_set VALUES (59, 'modCpDownRel', '[模組插件]圖文頻道相關下載', 'cp', 'detail', 1, 0, 1, 0, 0, 1, 1, 1, 1, 1, 1, 0, 0, 0, 1, 'cp');
INSERT INTO efood_plus_set VALUES (60, 'modNewsCpPicRel', '[模組插件]文章頻道相關圖文', 'news', 'detail', 1, 1, 1, 1, 1, 1, 1, 0, 1, 1, 1, 0, 0, 0, 1, 'news');
INSERT INTO efood_plus_set VALUES (61, 'modDownCpPicRel', '[模組插件]下載頻道相關圖文', 'down', 'detail', 1, 1, 1, 1, 1, 1, 1, 0, 1, 1, 1, 0, 0, 0, 1, 'down');
INSERT INTO efood_plus_set VALUES (62, 'modDownProp', '[模組插件]下載參數列表', 'down', 'detail', 1, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 'down');
INSERT INTO efood_plus_set VALUES (63, 'modForm', '[模組插件]自定表單', 'form', 'form', 1, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 'news');
INSERT INTO efood_plus_set VALUES (67, 'modBottomMenu', '[欄目功能表]註腳欄目功能表', 'all', 'all', 1, 1, 1, 0, 0, 1, 1, 0, 0, 0, 0, 0, 0, 0, 1, 'mod');
INSERT INTO efood_plus_set VALUES (68, 'modSecondMenuAll', '[欄目菜單]所有二級欄目菜單', 'all', 'all', 1, 1, 1, 0, 0, 1, 1, 0, 0, 0, 0, 0, 0, 0, 1, 'mod');
INSERT INTO efood_plus_set VALUES (66, 'modLogo', '[廣告插件]網站標誌', 'all', 'all', 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 'news');
INSERT INTO efood_plus_set VALUES (69, 'modMainMenuV', '[欄目功能表]豎式頻道主功能表', 'all', 'all', 1, 1, 1, 0, 0, 1, 1, 0, 0, 0, 0, 0, 0, 0, 1, 'mod');
INSERT INTO efood_plus_set VALUES (70, 'modSecondMenuV', '[欄目菜單]豎式二級欄目菜單', 'all', 'all', 1, 1, 1, 0, 0, 1, 1, 0, 0, 0, 0, 0, 0, 0, 1, 'mod');
INSERT INTO efood_plus_set VALUES (71, 'modCommentForm', '[全站插件]評論發佈表單', 'all', 'detail', 1, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 1, 'news');
INSERT INTO efood_plus_set VALUES (72, 'modNewsCommentList', '[全站插件]最新文章評論', 'all', 'all', 1, 0, 1, 0, 0, 1, 1, 1, 1, 1, 1, 0, 1, 0, 1, 'news');
INSERT INTO efood_plus_set VALUES (73, 'modDownCommentList', '[全站插件]最新下載評論', 'all', 'all', 1, 0, 1, 0, 0, 1, 1, 1, 1, 1, 1, 0, 1, 0, 1, 'news');
INSERT INTO efood_plus_set VALUES (74, 'modCpCommentList', '[全站插件]最新圖文評論', 'all', 'all', 1, 0, 1, 0, 0, 1, 1, 1, 1, 1, 1, 0, 1, 0, 1, 'news');
INSERT INTO efood_plus_set VALUES (75, 'modCommentList', '[全站插件]社區最新文章', 'all', 'all', 1, 0, 1, 0, 0, 1, 1, 1, 1, 1, 1, 0, 1, 0, 1, 'news');
INSERT INTO efood_plus_set VALUES (76, 'modCommentQuery', '[模組插件]社區文章檢索', 'comment', 'query', 1, 0, 1, 0, 0, 1, 1, 1, 0, 1, 1, 0, 0, 0, 0, 'news');
INSERT INTO efood_plus_set VALUES (77, 'modCommentClass', '[全站插件]社區文章分類', 'all', 'all', 1, 1, 0, 0, 0, 1, 1, 0, 0, 0, 1, 0, 0, 0, 1, 'news');
INSERT INTO efood_plus_set VALUES (78, 'modCommentListForm', '[模組插件]社區文章發佈表單', 'comment', 'query', 1, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 'news');
INSERT INTO efood_plus_set VALUES (79, 'modLinkPic', '[全站插件]圖片友情鏈結', 'all', 'all', 1, 1, 1, 1, 1, 1, 1, 0, 0, 0, 1, 0, 1, 0, 1, 'news');
INSERT INTO efood_plus_set VALUES (80, 'modLinkText', '[全站插件]文字友情鏈結', 'all', 'all', 1, 1, 1, 0, 0, 1, 1, 0, 0, 0, 1, 0, 1, 0, 1, 'news');
INSERT INTO efood_plus_set VALUES (81, 'modButtomInfo', '[全站插件]網頁註腳信息', 'all', 'all', 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 1, 0, 'news');
INSERT INTO efood_plus_set VALUES (82, 'modShowCount', '[全站插件]訪問統計', 'all', 'all', 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 'news');
INSERT INTO efood_plus_set VALUES (83, 'modSearch', '[模組插件]站內搜索結果', 'page', 'page', 1, 0, 1, 0, 0, 1, 1, 1, 0, 1, 1, 0, 0, 0, 0, 'news');
INSERT INTO efood_plus_set VALUES (84, 'modLoginForm', '[全站插件]會員登錄表單', 'all', 'all', 1, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 1, 'news');
INSERT INTO efood_plus_set VALUES (85, 'modCompanyClassAll', '[全站插件]餐館分類列表', 'all', 'all', 1, 1, 0, 0, 0, 1, 1, 0, 1, 1, 1, 0, 1, 0, 1, 'company');
INSERT INTO efood_plus_set VALUES (86, 'modCompanyQuery', '[模組插件]餐館分類檢索', 'company', 'query', 1, 0, 1, 1, 1, 1, 1, 0, 0, 1, 1, 0, 0, 0, 0, 'company');
INSERT INTO efood_plus_set VALUES (87, 'modCompanyClassFc', '[模組插件]餐館下一級分類', 'company', 'query', 1, 1, 1, 0, 0, 1, 1, 0, 1, 0, 1, 0, 0, 0, 0, 'company');
INSERT INTO efood_plus_set VALUES (88, 'modCompanySearchForm', '[全站插件]餐館組合搜索', 'all', 'all', 1, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 1, 'company');
INSERT INTO efood_plus_set VALUES (89, 'modCompanyMenu', '[模組插件]餐館主頁左側功能表', 'company', 'all', 1, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 'company');
INSERT INTO efood_plus_set VALUES (90, 'modSellClassAll', '[全站插件]餐飲資訊分類列表', 'all', 'all', 1, 1, 0, 0, 0, 1, 1, 0, 1, 1, 1, 0, 1, 0, 1, 'company');
INSERT INTO efood_plus_set VALUES (92, 'modSellQuery', '[模組插件]餐飲資訊檢索', 'sell', 'query', 1, 0, 1, 0, 0, 1, 1, 1, 0, 1, 1, 0, 0, 0, 0, 'info');
INSERT INTO efood_plus_set VALUES (93, 'modCompanySellQuery', '[模組插件]餐館主頁資訊檢索', 'sell', 'list', 1, 0, 1, 0, 0, 1, 1, 1, 0, 1, 1, 0, 0, 0, 0, 'info');
INSERT INTO efood_plus_set VALUES (96, 'modSellSearchForm', '[全站插件]餐飲資訊組合搜索', 'all', 'all', 1, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 1, 'info');
INSERT INTO efood_plus_set VALUES (98, 'modProdClassAll', '[全站插件]美食分類列表', 'all', 'all', 1, 1, 0, 0, 0, 1, 1, 0, 1, 1, 1, 0, 1, 0, 1, 'products');
INSERT INTO efood_plus_set VALUES (99, 'modProdQuery', '[模組插件]美食分類檢索', 'products', 'query', 1, 0, 1, 0, 0, 1, 1, 1, 0, 1, 1, 0, 0, 0, 0, 'products');
INSERT INTO efood_plus_set VALUES (100, 'modCompanyProdQuery', '[模組插件]餐館主頁菜式檢索', 'products', 'list', 1, 0, 1, 0, 0, 1, 1, 1, 0, 1, 1, 0, 0, 0, 0, 'products');
INSERT INTO efood_plus_set VALUES (101, 'modCompanyLicQuery', '[模組插件]餐館圖片檢索', 'company', 'lic', 1, 1, 1, 1, 1, 1, 1, 0, 0, 1, 1, 0, 0, 0, 0, 'products');
INSERT INTO efood_plus_set VALUES (103, 'modProdSearchForm', '[全站插件]美食組合搜索', 'all', 'all', 1, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 1, 'products');
INSERT INTO efood_plus_set VALUES (104, 'modCompanyList', '[全站插件]最新餐館', 'all', 'all', 1, 0, 1, 0, 0, 1, 1, 0, 1, 1, 1, 1, 1, 0, 1, 'company');
INSERT INTO efood_plus_set VALUES (105, 'modCompanyTj', '[全站插件]推薦餐館', 'all', 'all', 1, 0, 1, 0, 0, 1, 1, 1, 0, 1, 1, 1, 1, 0, 1, 'company');
INSERT INTO efood_plus_set VALUES (107, 'modSellClassFc', '[模組插件]餐飲資訊下一級分類', 'sell', 'query', 1, 1, 1, 0, 0, 1, 1, 0, 1, 0, 1, 0, 0, 0, 0, 'info');
INSERT INTO efood_plus_set VALUES (108, 'modProdClassFc', '[模組插件]美食檢索下一級分類', 'products', 'query', 1, 1, 1, 0, 0, 1, 1, 0, 1, 0, 1, 0, 0, 0, 0, 'products');
INSERT INTO efood_plus_set VALUES (109, 'modCompanyCatTj', '[模組插件]本類推薦餐館', 'company', 'query', 1, 0, 1, 0, 0, 1, 1, 0, 0, 1, 1, 0, 1, 0, 1, 'company');
INSERT INTO efood_plus_set VALUES (111, 'modSellCatTj', '[模組插件]本類推薦餐飲資訊', 'sell', 'query', 1, 0, 1, 0, 0, 1, 1, 0, 0, 1, 1, 0, 1, 0, 1, 'info');
INSERT INTO efood_plus_set VALUES (114, 'modSellList', '[全站插件]最新餐飲資訊', 'all', 'all', 1, 1, 1, 0, 0, 1, 1, 0, 1, 1, 1, 1, 1, 0, 1, 'info');
INSERT INTO efood_plus_set VALUES (116, 'modSellTj', '[全站插件]推薦餐飲資訊', 'all', 'all', 1, 0, 1, 0, 0, 1, 1, 0, 0, 1, 1, 1, 1, 0, 1, 'info');
INSERT INTO efood_plus_set VALUES (117, 'modProdPic', '[全站插件]最新美食圖片', 'all', 'all', 1, 1, 1, 1, 1, 1, 1, 0, 1, 1, 1, 1, 1, 0, 1, 'products');
INSERT INTO efood_plus_set VALUES (118, 'modProdPicTj', '[全站插件]推薦美食圖片', 'all', 'all', 1, 1, 1, 1, 1, 1, 1, 0, 0, 1, 1, 1, 1, 0, 1, 'products');
INSERT INTO efood_plus_set VALUES (119, 'modProdPicCatTj', '[模組插件]本類推薦美食圖片', 'products', 'query', 1, 1, 1, 1, 1, 1, 1, 0, 0, 1, 1, 0, 1, 0, 1, 'products');
INSERT INTO efood_plus_set VALUES (121, 'modAdvsLb', '[全站插件]圖片輪播廣告', 'all', 'all', 0, 0, 1, 1, 1, 0, 0, 0, 0, 0, 0, 0, 0, 0, 1, 'news');
INSERT INTO efood_plus_set VALUES (122, 'modCompanyCommentList', '[模組插件]餐館相關評論', 'company', 'detail', 1, 0, 1, 0, 0, 1, 1, 1, 1, 1, 1, 0, 1, 0, 1, 'company');
INSERT INTO efood_plus_set VALUES (123, 'modCompanyZsPic', '[模組插件]餐館主頁最新餐廳圖片', 'company', 'detail', 1, 1, 1, 1, 1, 1, 1, 0, 0, 1, 1, 0, 1, 0, 1, 'company');
INSERT INTO efood_plus_set VALUES (124, 'modCompanyPicTj', '[全站插件]餐館圖片推薦', 'all', 'all', 1, 1, 1, 1, 1, 1, 1, 0, 0, 1, 1, 1, 1, 0, 1, 'company');
INSERT INTO efood_plus_set VALUES (125, 'modCompanyFoodTj', '[全站插件]餐館+菜組合推薦', 'all', 'all', 1, 1, 1, 1, 1, 1, 1, 0, 0, 1, 1, 1, 1, 0, 1, 'company');
INSERT INTO efood_plus_set VALUES (126, 'modSellCommentList', '[模組插件]資訊相關評論', 'sell', 'detail', 1, 0, 1, 0, 0, 1, 1, 1, 1, 1, 1, 0, 1, 0, 1, 'info');
INSERT INTO efood_plus_set VALUES (127, 'modCompanyCommentListAll', '[全站插件]最新餐館評論', 'all', 'all', 1, 0, 1, 0, 0, 1, 1, 1, 1, 1, 1, 0, 1, 0, 1, 'company');
INSERT INTO efood_plus_set VALUES (128, 'modSellCommentListAll', '[全站插件]最新資訊評論', 'all', 'all', 1, 0, 1, 0, 0, 1, 1, 1, 1, 1, 1, 0, 1, 0, 1, 'info');
INSERT INTO efood_plus_set VALUES (129, 'modCompanyPic', '[全站插件]最新餐館圖片', 'all', 'all', 1, 1, 1, 1, 1, 1, 1, 0, 1, 1, 1, 1, 1, 0, 1, 'company');
INSERT INTO efood_plus_set VALUES (130, 'modFoodTj', '[全站插件]美食圖名組合推薦', 'all', 'all', 1, 0, 0, 1, 1, 1, 1, 0, 0, 1, 1, 1, 0, 0, 1, 'products');
INSERT INTO efood_plus_set VALUES (131, 'modProdCommentList', '[模組插件]美食相關評論', 'products', 'detail', 1, 0, 1, 0, 0, 1, 1, 1, 1, 1, 1, 0, 1, 0, 1, 'products');
INSERT INTO efood_plus_set VALUES (132, 'modProdCommentListAll', '[全站插件]最新美食評論', 'all', 'all', 1, 0, 1, 0, 0, 1, 1, 1, 1, 1, 1, 0, 1, 0, 1, 'products');
INSERT INTO efood_plus_set VALUES (133, 'modCompanyProdPic', '[模組插件]餐館主頁最新美食圖片', 'company', 'detail', 1, 1, 1, 1, 1, 1, 1, 0, 0, 1, 1, 0, 1, 0, 1, 'products');
INSERT INTO efood_plus_set VALUES (134, 'modHdPic', '[全站插件]最新活動圖片', 'all', 'all', 1, 1, 1, 1, 1, 1, 1, 0, 1, 1, 1, 0, 1, 0, 1, 'company');
INSERT INTO efood_plus_set VALUES (135, 'modHdList', '[全站插件]最新活動列表', 'all', 'all', 1, 1, 1, 0, 0, 1, 1, 0, 1, 1, 1, 0, 1, 0, 1, 'company');
INSERT INTO efood_plus_set VALUES (136, 'modHdQuery', '[模組插件]活動聚會檢索', 'hd', 'query', 1, 0, 1, 0, 0, 1, 1, 1, 0, 1, 1, 0, 0, 0, 0, 'company');
INSERT INTO efood_plus_set VALUES (137, 'modHdCommentList', '[模組插件]活動相關評論', 'hd', 'detail', 1, 0, 1, 0, 0, 1, 1, 1, 1, 1, 1, 0, 1, 0, 1, 'company');
INSERT INTO efood_plus_set VALUES (138, 'modHdCommentForm', '[模組插件]活動評論發佈表單', 'hd', 'detail', 1, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 1, 'company');
INSERT INTO efood_plus_set VALUES (139, 'modIndexSearchForm', '[全站插件]餐館組合搜索(橫式)', 'all', 'all', 1, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 1, 'company');
# --------------------------------------------------------

#
# 資料表的結構 `efood_poll_config`
#

CREATE TABLE efood_poll_config (
  config_id smallint(5) unsigned NOT NULL auto_increment,
  img_height int(5) NOT NULL default '0',
  img_length int(5) NOT NULL default '0',
  vodinfo varchar(225) NOT NULL default '0',
  def_options smallint(3) unsigned NOT NULL default '0',
  PRIMARY KEY  (config_id)
);

#
# 導出下面的資料庫內容 `efood_poll_config`
#


INSERT INTO efood_poll_config VALUES (1, 20, 10, '對不起,您已經投過票了', 10);
# --------------------------------------------------------

#
# 資料表的結構 `efood_poll_data`
#

CREATE TABLE efood_poll_data (
  id int(11) unsigned NOT NULL auto_increment,
  poll_id int(11) NOT NULL default '0',
  option_id int(11) NOT NULL default '0',
  option_text varchar(200) NOT NULL default '',
  color varchar(20) NOT NULL default '',
  votes int(14) NOT NULL default '0',
  PRIMARY KEY  (id)
);

#
# 導出下面的資料庫內容 `efood_poll_data`
#

# --------------------------------------------------------

#
# 資料表的結構 `efood_poll_index`
#

CREATE TABLE efood_poll_index (
  poll_id int(11) unsigned NOT NULL auto_increment,
  question varchar(100) NOT NULL default '0',
  `timestamp` int(11) NOT NULL default '0',
  `status` smallint(2) NOT NULL default '0',
  exp_time int(11) NOT NULL default '0',
  expire smallint(2) NOT NULL default '0',
  PRIMARY KEY  (poll_id)
);

#
# 導出下面的資料庫內容 `efood_poll_index`
#

# --------------------------------------------------------

#
# 資料表的結構 `efood_products`
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
);

#
# 導出下面的資料庫內容 `efood_products`
#

INSERT INTO efood_products VALUES (1, 3, 2, '0002:;', 2, '0002:', '大班燕窩粥', '   燕窩一向被人們視為矜貴之物，舊時王謝堂前燕，今日卻飛入尋常百姓家。大班燕窩粥的誕生是現代的文明與進步，也是社會對餐飲文化的推動與創新的又一成果。粥城的經營宗旨是將"燕窩平民化"，品質卻是第一的信守。在這裏，即使是一碗普通的麵食或粥品，你可盡享"豪門"的尊貴與服務，而價格卻令你消費得很實在，同時在管理方面引入規範化經營，通過"五常"法管理技術，令店內的衛生、環境、出品、服務得以更好的改善和提高,因此較深入人心，受到各個層次的消費者追捧。燕窩做法應有盡有，鮮奶、椰汁、薑汁等，招牌菜大班燕窩粥更是將鮑參翅肚等珍貴食品"一碗打盡" ，巧妙搭配不同的配料，風味各別，每次你的光臨，都有新驚喜。\r\n', '', '', 'gif', 'com/100003/images/1162921353.jpg', 1162921353, 1162921353, 0, '192.168.2.201', 1, 1, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '0.00', '人民幣');
INSERT INTO efood_products VALUES (2, 3, 23, '0023:;', 2, '0002:', '灃生水起', '灃生水起 秘制私', '', '', 'gif', 'com/100003/images/1162921401.jpg', 1162921401, 1163527555, 1163527555, '192.168.2.201', 1, 1, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '0.00', '');
INSERT INTO efood_products VALUES (3, 3, 23, '0023:;', 2, '0002:', '在水一舫', '在水一舫', '', '', 'gif', 'com/100003/images/1162921480.jpg', 1162921480, 1163527836, 1163527836, '192.168.2.201', 1, 1, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '0.00', '');
INSERT INTO efood_products VALUES (27, 7, 9, '0009:;', 6, '0006:', '九味鮮蔬湯', '九味鮮蔬湯', '', '', '', '', 1163521808, 1163521808, 0, '192.168.2.201', 1, 1, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '0.00', '');
INSERT INTO efood_products VALUES (25, 7, 9, '0009:;', 6, '0006:', '特色火鍋', '特色火鍋', '', '', '', '', 1163521754, 1163521754, 0, '192.168.2.201', 1, 1, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '0.00', '');
INSERT INTO efood_products VALUES (26, 7, 9, '0009:;', 6, '0006:', '特色調料', '特色調料', '', '', '', '', 1163521778, 1163521778, 0, '192.168.2.201', 1, 1, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '0.00', '');
INSERT INTO efood_products VALUES (23, 7, 9, '0009:;', 6, '0006:', '香辣火鍋', '香辣火鍋香辣火鍋', '', '', '', '', 1163521712, 1163521712, 0, '192.168.2.201', 1, 1, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '0.00', '');
INSERT INTO efood_products VALUES (24, 7, 9, '0009:;', 6, '0006:', '雙魚火鍋', '雙魚火鍋', '', '', '', '', 1163521730, 1163521730, 0, '192.168.2.201', 1, 1, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '0.00', '');
INSERT INTO efood_products VALUES (8, 3, 23, '0023:;', 2, '0002:', '酒香油雞', '酒香雞油', '', '', 'gif', 'com/100003/images/1163527102.jpg', 1162921540, 1163527878, 1163527878, '192.168.2.201', 1, 1, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '0.00', '');
INSERT INTO efood_products VALUES (10, 3, 9, '0009:;', 2, '0002:', '過橋米線', '這是雲南省蒙自縣的特色小吃，已經有幾百年歷史了，凡到蒙自旅遊的朋友無不喜歡品嘗。現在雖然在全國各地都有了賣過橋米線的飯店，但是一物離了家鄉就會變了實質，如上面介紹的做法，就和傳統做法不同，在蒙自沒有人往湯里加芝麻油和黑魚片，但是在秋天時我們往裏面加菊花，這就是有名的菊花米線。現在這個季節正是吃菊花米線的時候，沒吃過的人根本無法想像其鮮美。', '', '', 'gif', 'com/100003/images/1163430946.jpg', 1163430946, 1163527710, 1163527710, '192.168.2.201', 1, 1, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '0.00', '');
INSERT INTO efood_products VALUES (11, 5, 23, '0023:;', 4, '0004:', '東北大拉皮', '我國歷史悠久、富有特色的地方風味菜肴', '', '', 'gif', 'com/100005/images/1163432553.jpg', 1163431113, 1163527793, 1163527793, '192.168.2.201', 1, 1, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '0.00', '');
INSERT INTO efood_products VALUES (13, 5, 2, '0002:;', 4, '0004:', '尖椒炒牛柳', '五花肉營養豐富，容易吸收，有補充皮膚養分、美容的效果', '', '', 'gif', 'com/100005/images/1164041080.jpg', 1163432947, 1164041080, 1164041080, '192.168.2.201', 1, 1, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '0.00', '');
INSERT INTO efood_products VALUES (14, 5, 1, '0001:;', 4, '0004:', '香蕉酪餅', '香蕉酪餅香蕉酪餅香蕉酪餅', '', '', 'gif', 'com/100005/images/1164041042.jpg', 1163434089, 1164041042, 1164041042, '192.168.2.201', 1, 1, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '0.00', '');
INSERT INTO efood_products VALUES (15, 5, 2, '0002:;', 4, '0004:', '花椒魚', '花椒魚花椒魚花椒魚花椒魚花椒魚', '', '', 'gif', 'com/100005/images/1163434148.jpg', 1163434148, 1163434148, 0, '192.168.2.201', 1, 1, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '0.00', '');
INSERT INTO efood_products VALUES (16, 5, 4, '0004:;', 4, '0004:', '五味手撕鵝', '五味手撕鵝五味手撕鵝', '', '', 'gif', 'com/100005/images/1163434450.jpg', 1163434450, 1163528067, 1163528067, '192.168.2.201', 1, 1, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '0.00', '');
INSERT INTO efood_products VALUES (17, 5, 3, '0003:;', 4, '0004:', '盆仔村邊鵝', '盆仔村邊鵝', '', '', 'gif', 'com/100005/images/1163434493.jpg', 1163434482, 1163434493, 1163434493, '192.168.2.201', 1, 1, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '0.00', '');
INSERT INTO efood_products VALUES (18, 5, 2, '0002:;', 4, '0004:', '飛毛腿', '飛毛腿飛毛腿飛毛腿', '', '', 'gif', 'com/100005/images/1164040736.jpg', 1163434551, 1164040736, 1164040736, '192.168.2.201', 1, 1, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '0.00', '');
INSERT INTO efood_products VALUES (28, 7, 4, '0004:;', 6, '0006:', '精美小炒', '精美小炒', '', '', '', '', 1163521843, 1163521843, 0, '192.168.2.201', 1, 1, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '0.00', '');
INSERT INTO efood_products VALUES (22, 3, 23, '0023:;', 2, '0002:', '薑蔥土雞', '薑蔥', '', '', 'gif', 'com/100003/images/1163517950.jpg', 1163517950, 1163517950, 0, '192.168.2.201', 1, 1, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '0.00', '');
INSERT INTO efood_products VALUES (29, 6, 2, '0002:;', 1, '0001:', '八寶豆辣雞', '八寶豆辣雞', '', '', 'gif', 'com/100006/images/1163521927.jpg', 1163521927, 1163521927, 0, '192.168.2.201', 1, 1, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '0.00', '');
INSERT INTO efood_products VALUES (30, 6, 4, '0004:;', 1, '0001:', '酸溜溜小菜', '酸溜溜小菜', '', '', '', '', 1163521954, 1163521954, 0, '192.168.2.201', 1, 1, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '0.00', '');
INSERT INTO efood_products VALUES (31, 6, 23, '0023:;', 1, '0001:', '香酥鵝肉', '香酥鵝肉', '', '', 'gif', 'com/100006/images/1163522028.jpg', 1163522028, 1163527651, 1163527651, '192.168.2.201', 1, 1, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '0.00', '');
INSERT INTO efood_products VALUES (33, 6, 4, '0004:;', 1, '0001:', '烤扁土豆', '烤扁土豆', '', '', '', '', 1163522129, 1163522129, 0, '192.168.2.201', 1, 1, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '0.00', '');
INSERT INTO efood_products VALUES (34, 6, 4, '0004:;', 1, '0001:', '排骨燉春筍', '排骨燉春筍', '', '', '', '', 1163522161, 1163522161, 0, '192.168.2.201', 1, 1, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '0.00', '');
INSERT INTO efood_products VALUES (35, 6, 4, '0004:;', 1, '0001:', '香辣狗肉煲', '香辣狗肉煲', '', '', 'gif', 'com/100006/images/1163522282.jpg', 1163522190, 1163522282, 1163522282, '192.168.2.201', 1, 1, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '0.00', '');
INSERT INTO efood_products VALUES (36, 4, 1, '0001:;', 2, '0002:', '香乾回鍋肉', '香乾回鍋肉', '', '', 'gif', 'com/100004/images/1163522334.jpg', 1163522334, 1163522334, 0, '192.168.2.201', 1, 1, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '0.00', '');
INSERT INTO efood_products VALUES (37, 4, 1, '0001:;', 2, '0002:', '盆仔村邊鵝', '盆仔村邊鵝', '', '', 'gif', 'com/100004/images/1163522377.jpg', 1163522377, 1163522377, 0, '192.168.2.201', 1, 1, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '0.00', '');
INSERT INTO efood_products VALUES (38, 9, 10, '0010:;', 1, '0001:', '水煮大黃魚', '水煮大黃魚', '', '', '', '', 1163522480, 1163522480, 0, '192.168.2.201', 1, 1, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '0.00', '');
INSERT INTO efood_products VALUES (39, 9, 10, '0010:;', 1, '0001:', '清甄大黃魚', '清甄大黃魚', '', '', '', '', 1163522501, 1163522501, 0, '192.168.2.201', 1, 1, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '0.00', '');
INSERT INTO efood_products VALUES (40, 9, 10, '0010:;', 1, '0001:', '清口海水草', '清口海水草', '', '', '', '', 1163522537, 1163522537, 0, '192.168.2.201', 1, 1, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '0.00', '');
INSERT INTO efood_products VALUES (41, 9, 10, '0010:;', 1, '0001:', '海蟹煲', '海蟹煲', '', '', '', '', 1163522584, 1163522584, 0, '192.168.2.201', 1, 1, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '0.00', '');
INSERT INTO efood_products VALUES (42, 9, 10, '0010:;', 1, '0001:', '泡椒龍蝦', '泡椒龍蝦', '', '', 'gif', 'com/100009/images/1163522600.jpg', 1163522600, 1163527751, 1163527751, '192.168.2.201', 1, 1, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '0.00', '');
INSERT INTO efood_products VALUES (43, 9, 10, '0010:;', 1, '0001:', '蔥烤小鮑魚', '蔥烤小鮑魚', '', '', 'gif', 'com/100009/images/1163522775.jpg', 1163522775, 1163522775, 0, '192.168.2.201', 1, 1, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '0.00', '');
INSERT INTO efood_products VALUES (44, 4, 1, '0001:;', 2, '0002:', '香菇嘗粉', '香菇嘗粉', '', '', '', '', 1163522929, 1163522929, 0, '192.168.2.201', 1, 1, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '0.00', '');
INSERT INTO efood_products VALUES (45, 4, 1, '0001:;', 2, '0002:', '廣式小肉餅', '廣式小肉餅', '', '', 'gif', 'com/100004/images/1163522993.jpg', 1163522993, 1163528001, 1163528001, '192.168.2.201', 1, 1, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '0.00', '');
INSERT INTO efood_products VALUES (46, 4, 1, '0001:;', 2, '0002:', '上湯西蘭花', '上湯西蘭花', '', '', 'gif', 'com/100004/images/1163523022.jpg', 1163523022, 1163523022, 0, '192.168.2.201', 1, 1, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '0.00', '');
INSERT INTO efood_products VALUES (47, 4, 2, '0002:;', 2, '0002:', '紅湯回魚', '紅湯回魚', '', '', 'gif', 'com/100004/images/1163523046.jpg', 1163523046, 1163527916, 1163527916, '192.168.2.201', 1, 1, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '0.00', '');
# --------------------------------------------------------

#
# 資料表的結構 `efood_products_cat`
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
);

#
# 導出下面的資料庫內容 `efood_products_cat`
#

INSERT INTO efood_products_cat VALUES (1, 0, '粵菜', 1, '0001:', 6, 0);
INSERT INTO efood_products_cat VALUES (2, 0, '川菜', 2, '0002:', 6, 0);
INSERT INTO efood_products_cat VALUES (3, 0, '湘菜', 3, '0003:', 1, 0);
INSERT INTO efood_products_cat VALUES (4, 0, '浙菜', 4, '0004:', 6, 0);
INSERT INTO efood_products_cat VALUES (5, 0, '魯菜', 5, '0005:', 1, 0);
INSERT INTO efood_products_cat VALUES (6, 0, '徽菜', 6, '0006:', 0, 0);
INSERT INTO efood_products_cat VALUES (7, 0, '閩菜', 7, '0007:', 1, 0);
INSERT INTO efood_products_cat VALUES (8, 0, '蘇菜', 8, '0008:', 0, 0);
INSERT INTO efood_products_cat VALUES (29, 0, '時尚特色', 24, '0029:', 0, 0);
INSERT INTO efood_products_cat VALUES (9, 0, '火鍋', 9, '0009:', 6, 0);
INSERT INTO efood_products_cat VALUES (10, 0, '海鮮', 10, '0010:', 6, 0);
INSERT INTO efood_products_cat VALUES (11, 0, '燒烤', 11, '0011:', 0, 0);
INSERT INTO efood_products_cat VALUES (12, 0, '素菜', 12, '0012:', 1, 0);
INSERT INTO efood_products_cat VALUES (13, 0, '臺灣菜', 13, '0013:', 0, 0);
INSERT INTO efood_products_cat VALUES (14, 0, '野味', 14, '0014:', 0, 0);
INSERT INTO efood_products_cat VALUES (15, 0, '清真', 15, '0015:', 0, 0);
INSERT INTO efood_products_cat VALUES (16, 0, '自助餐', 16, '0016:', 0, 0);
INSERT INTO efood_products_cat VALUES (17, 0, '西餐', 17, '0017:', 0, 0);
INSERT INTO efood_products_cat VALUES (18, 0, '韓國料理', 18, '0018:', 0, 0);
INSERT INTO efood_products_cat VALUES (19, 0, '日本料理', 19, '0019:', 0, 0);
INSERT INTO efood_products_cat VALUES (20, 0, '麵食', 20, '0020:', 1, 0);
INSERT INTO efood_products_cat VALUES (21, 0, '小吃', 21, '0021:', 2, 0);
INSERT INTO efood_products_cat VALUES (22, 0, '速食', 22, '0022:', 0, 0);
INSERT INTO efood_products_cat VALUES (23, 0, '農家菜', 23, '0023:', 6, 0);
INSERT INTO efood_products_cat VALUES (28, 0, '京菜', 9, '0028:', 0, 0);
# --------------------------------------------------------

#
# 資料表的結構 `efood_proj`
#

CREATE TABLE efood_proj (
  id int(12) NOT NULL auto_increment,
  project varchar(50) default '',
  intro text,
  PRIMARY KEY  (id)
);

#
# 導出下面的資料庫內容 `efood_proj`
#

# --------------------------------------------------------

#
# 資料表的結構 `efood_prop`
#

CREATE TABLE efood_prop (
  id int(20) NOT NULL auto_increment,
  menuid int(12) default NULL,
  catid int(20) NOT NULL default '0',
  propname char(30) default NULL,
  xuhao int(20) default NULL,
  PRIMARY KEY  (id),
  KEY xuhao (xuhao)
);

#
# 導出下面的資料庫內容 `efood_prop`
#

# --------------------------------------------------------

#
# 資料表的結構 `efood_secure`
#

CREATE TABLE efood_secure (
  id int(12) NOT NULL auto_increment,
  securename char(100) NOT NULL default '',
  securetype char(30) NOT NULL default '',
  securecode char(50) NOT NULL default '',
  xuhao int(12) NOT NULL default '0',
  PRIMARY KEY  (id)
);

#
# 導出下面的資料庫內容 `efood_secure`
#

INSERT INTO efood_secure VALUES (2, '修改會員資料', 'func', 'membermodify', 2);
INSERT INTO efood_secure VALUES (3, '欄目訪問許可權', 'menu', 'menuread', 3);
INSERT INTO efood_secure VALUES (4, '內容訪問許可權', 'con', 'conread', 4);
INSERT INTO efood_secure VALUES (6, '社區評論發表許可權', 'func', 'bbssend', 5);
INSERT INTO efood_secure VALUES (7, '社區評論回復許可權', 'func', 'bbsback', 6);
INSERT INTO efood_secure VALUES (8, '文章投稿發佈許可權', 'func', 'NewsFabu', 7);
INSERT INTO efood_secure VALUES (10, '文章投稿修改許可權', 'func', 'NewsModify', 8);
INSERT INTO efood_secure VALUES (9, '文章投稿免審核許可權', 'func', 'NewsNoCheck', 9);
INSERT INTO efood_secure VALUES (11, '餐廳介紹發佈許可權', 'func', 'CompanyFb', 10);
INSERT INTO efood_secure VALUES (13, '餐廳介紹免審核許可權', 'func', 'CompanyFbCheck', 11);
INSERT INTO efood_secure VALUES (16, '餐飲資訊發佈許可權', 'func', 'InfoFb', 16);
INSERT INTO efood_secure VALUES (17, '餐飲資訊發佈免審核許可權', 'func', 'InfoFbCheck', 17);
INSERT INTO efood_secure VALUES (18, '餐飲資訊發佈數量限制', 'nums', 'InfoNums', 18);
INSERT INTO efood_secure VALUES (19, '菜式發佈許可權', 'func', 'ProdFb', 19);
INSERT INTO efood_secure VALUES (20, '菜式發佈免審核許可權', 'func', 'ProdFbCheck', 20);
INSERT INTO efood_secure VALUES (21, '菜式發佈數量限制', 'nums', 'ProdNums', 21);
INSERT INTO efood_secure VALUES (22, '餐廳圖片上傳許可權', 'func', 'ZsFb', 22);
INSERT INTO efood_secure VALUES (23, '餐廳圖片上傳免審核許可權', 'func', 'ZsFbCheck', 23);
INSERT INTO efood_secure VALUES (24, '餐廳圖片上傳數量限制', 'nums', 'ZsNums', 24);
INSERT INTO efood_secure VALUES (28, '活動聚會發起許可權', 'func', 'FbPub', 28);
INSERT INTO efood_secure VALUES (29, '活動聚會發起免審核許可權', 'func', 'FbCheck', 29);
INSERT INTO efood_secure VALUES (30, '評論發佈免審核許可權', 'func', 'BbsNoCheck', 7);
# --------------------------------------------------------

#
# 資料表的結構 `efood_stat_base`
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
);

#
# 導出下面的資料庫內容 `efood_stat_base`
#

INSERT INTO efood_stat_base VALUES (1, 17, 8, 2, 0, 1164038400, 0);
# --------------------------------------------------------

#
# 資料表的結構 `efood_stat_come`
#

CREATE TABLE efood_stat_come (
  id int(12) NOT NULL auto_increment,
  url varchar(255) NOT NULL default '',
  count int(5) NOT NULL default '0',
  begingtime int(11) NOT NULL default '0',
  lasttime int(11) NOT NULL default '0',
  PRIMARY KEY  (id)
);

#
# 導出下面的資料庫內容 `efood_stat_come`
#

# --------------------------------------------------------

#
# 資料表的結構 `efood_stat_count`
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
);

#
# 導出下面的資料庫內容 `efood_stat_count`
#

# --------------------------------------------------------

#
# 資料表的結構 `efood_stat_date`
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
);

#
# 導出下面的資料庫內容 `efood_stat_date`
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
# 資料表的結構 `efood_temp`
#

CREATE TABLE efood_temp (
  id int(12) NOT NULL auto_increment,
  bn varchar(20) default NULL,
  fold varchar(20) default NULL,
  name varchar(50) default NULL,
  PRIMARY KEY  (id)
);

#
# 導出下面的資料庫內容 `efood_temp`
#

# --------------------------------------------------------

#
# 資料表的結構 `efood_tradetype`
#

CREATE TABLE efood_tradetype (
  id int(12) NOT NULL auto_increment,
  tradetype char(100) default NULL,
  PRIMARY KEY  (id)
);

#
# 導出下面的資料庫內容 `efood_tradetype`
#

INSERT INTO efood_tradetype VALUES (1, '大型酒宴');
INSERT INTO efood_tradetype VALUES (2, '多人聚餐');
INSERT INTO efood_tradetype VALUES (3, '商務宴請');
INSERT INTO efood_tradetype VALUES (4, '好友小聚');
INSERT INTO efood_tradetype VALUES (5, '家庭聚餐');
INSERT INTO efood_tradetype VALUES (6, '品茶聊天');
INSERT INTO efood_tradetype VALUES (7, '情侶約會');
INSERT INTO efood_tradetype VALUES (8, '生日聚會');
INSERT INTO efood_tradetype VALUES (9, '省時速食');
INSERT INTO efood_tradetype VALUES (10, '喜慶婚宴');
INSERT INTO efood_tradetype VALUES (11, '休閒社交');
INSERT INTO efood_tradetype VALUES (12, '隨便吃吃');
INSERT INTO efood_tradetype VALUES (13, '學生用餐');
INSERT INTO efood_tradetype VALUES (14, '夜宵小酌');
INSERT INTO efood_tradetype VALUES (15, '外賣送餐');
INSERT INTO efood_tradetype VALUES (16, '有停車場');
INSERT INTO efood_tradetype VALUES (17, '刷卡消費');
# --------------------------------------------------------

#
# 資料表的結構 `efood_zs`
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
);

#
# 導出下面的資料庫內容 `efood_zs`
#
