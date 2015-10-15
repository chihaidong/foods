<?php
require_once ('nusoap/nusoap.php');
$server   = "http://bbs.eb2000.cn/webservice/soapserver.php";
$customer = new soapclient ($server);
error_reporting(E_ERROR | E_WARNING | E_PARSE);
set_magic_quotes_runtime(0);


//相关函数

function remove_remarks($sql)
    {
        $i = 0;

        while ($i < strlen($sql)) {

            if ($sql[$i] == '#' && ($i == 0 || $sql[$i-1] == "\n")) {
                $j = 1;
                while ($sql[$i+$j] != "\n") {
                    $j++;
                    if ($j+$i > strlen($sql)) {
                        break;
                    }
                } 
                $sql = substr($sql, 0, $i) . substr($sql, $i+$j);
            } 
            $i++;
        } 

        return $sql;
} 


function split_sql_file($sql, $delimiter)
    {
        $sql               = trim($sql);
        $char              = '';
        $last_char         = '';
        $ret               = array();
        $string_start      = '';
        $in_string         = FALSE;
        $escaped_backslash = FALSE;

        for ($i = 0; $i < strlen($sql); ++$i) {
            $char = $sql[$i];

            // if delimiter found, add the parsed part to the returned array
            if ($char == $delimiter && !$in_string) {
                $ret[]     = substr($sql, 0, $i);
                $sql       = substr($sql, $i + 1);
                $i         = 0;
                $last_char = '';
            }

            if ($in_string) {
                // We are in a string, first check for escaped backslashes
                if ($char == '\\') {
                    if ($last_char != '\\') {
                        $escaped_backslash = FALSE;
                    } else {
                        $escaped_backslash = !$escaped_backslash;
                    }
                }
                // then check for not escaped end of strings except for
                // backquotes than cannot be escaped
                if (($char == $string_start)
                    && ($char == '`' || !(($last_char == '\\') && !$escaped_backslash))) {
                    $in_string    = FALSE;
                    $string_start = '';
                }
            } else {
                // we are not in a string, check for start of strings
                if (($char == '"') || ($char == '\'') || ($char == '`')) {
                    $in_string    = TRUE;
                    $string_start = $char;
                }
            }
            $last_char = $char;
        } // end for

        // add any rest to the returned array
        if (!empty($sql)) {
            $ret[] = $sql;
        }
        return $ret;
    }

function seld($t,$v){
	
	if($t==$v){
		return " selected ";
	}else{
		return " ";
	}

}
?>
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=gb2312">
<link id="style_sheet" href="css.css" type="text/css" rel="stylesheet">
<title>安装向导 - Powered by 网域餐炊美食网站系统正式版</title>
<script>
function CheckForm (src, step) {
	if (src.command.value == "goprev") return true;
	if (step == "1" && src.skip.value != "allow") {
		var letter = "abcdefghijklmnopqrstuvwxyz_0123456789ABCDEFGHIJKLMNOPQRSTUVWXYZ~!@#$%^&*[{]}/";
		if (src.username.value == "") {
			alert ('请输入用户名');
			src.username.focus ();
			return false;
		}
		if (src.password.value == "") {
			alert ('请输入登录密码');
			src.password.focus ();
			return false;
		}
		if(src.username.value.length > 20)
		  {
			alert ('请输入2-20位用户名');
			src.username.focus ();
			return false;
		  }
		  if(src.username.value.length < 2)
		  {
			alert ('请输入2-20位用户名');
			src.username.focus ();
			return false;
		  }
		  if (src.usercompany.value == "") {
			alert ('请输入公司名称或您的姓名');
			src.username.focus ();
			return false;
		  }
		if (src.name.value == "") {
			alert ('请输入联系人姓名');
			src.name.focus ();
			return false;
		  }


		if (src.useremail.value == "") {
			alert ('请输入电子邮箱');
			src.useremail.focus ();
			return false;
		}
		
		if (src.useremail.value.indexOf("@") == -1 || src.useremail.value.indexOf(".") == -1) {
			alert ("电子邮箱格式不正确！如：abc@abc.com！");
			src.useremail.focus ();
			return false;
		}
		src.user_email.value   = src.useremail.value;

		return true;

	}  else if (step == "3") {
		
		if (src.dbname.value == "") {
			alert ("请输入数据库名");
			src.dbname.focus ();
			return false;
		}
		if (src.dbuser.value == "") {
			alert ("请输入数据库用户名");
			src.dbuser.focus ();
			return false;
		}
		if (src.dbpwd.value == "") {
			alert ("请输入数据库密码");
			src.dbpwd.focus ();
			return false;
		}
	} else if (step == "5") {
		if (src.admin_user.value == "") {
			alert ("请输入系统管理员");
			src.admin_user.focus ();
			return false;
		}
		if (src.admin_pass.value == "") {
			alert ("请输入管理员密码");
			src.admin_pass.focus ();
			return false;
		}
		
		
	}
	return true;
}
</script>



<style>

BODY {color:#666666;font-size:14px;line-height:150%;}  
TD,A,P {color:#666666;font-size:14px;line-height:150%;}
input {font-size: 12px;}
SELECT {font-size: 12px;}
A:link {TEXT-DECORATION: none;}
A:visited {TEXT-DECORATION: none;}
A:active {TEXT-DECORATION: none;}
A:hover {TEXT-DECORATION: underline;color:#ff6600}
td.font_13_w {
	font-size: 14px; color: #ffffff; font-weight:bold;
}

</style>
</head>
<?php
$step = 0;


if ($_POST['command'] == "gonext") {
	if ($_POST['nextstep'] == 0) {
		$donext = true;

	}
	if ($_POST['nextstep'] == 1) {
		
			

		if(!file_exists("../license.php")){
			$c_params = array ('username' => $_POST['username'], 'useremail' => $_POST['useremail'],'domain' => $_SERVER['HTTP_HOST']);
			$ans = $customer -> call ("Check_user", $c_params);
		
				if($ans==false){
					$error_msg = "<font style=\"font-size: 14px; color: red;\">您的网站无法连接到注册服务器，请检查是否已连接网络，或稍侯再试！</font>";
					$noinstall      = "<script>document.all['subm'].disabled = true;</script>";
					$donext    = false;
				}elseif (strlen ($ans) > 1) {
					$error_msg = "<font color=red style='font-size: 14px; font-weight:normal;'>" . $ans . "</font>";
					$donext    = false;
				} else {
					$regtime      = time ();
					$userbirthday = mktime (12, 12, 12, $_POST['month'], $_POST['day'], $_POST['year']);
					$r_params     = array (
						'username'     => $_POST['username'], 
						'password'     => $_POST['password'],
						'usercompany'  => $_POST['usercompany'], 
						'name'         => $_POST['name'], 
						'domain'       => $_SERVER['HTTP_HOST'], 
						'useremail'    => $_POST['useremail'],
						'usersex'      => $_POST['usersex'],
						'userwebsite'  => $_POST['userwebsite'],
						'userqq'       => $_POST['userqq'],
						'usermsn'      => "mediproefood",
						'regtime'      => $regtime,
						'userbirthday' => $userbirthday,
						'ipaddress'    => $_SERVER['REMOTE_ADDR']
					);
					$lic=$customer -> call ("Register_user", $r_params);
					$fk=fopen("../license.php","w");
					fwrite($fk,$lic,2000);
					fclose($fk);
					@chmod("../license.php",0666);
					
					$donext      = true;
				}
		}else{
			$donext      = true;
		}
	}
	if ($_POST['nextstep'] == 2) $donext = true;
	if ($_POST['nextstep'] == 3) {
		
		$connect =  @mysql_connect($_POST['dbhost'],$_POST['dbuser'],$_POST['dbpwd']);

		$dbhost=$_POST['dbhost'];
		$dbuser=$_POST['dbuser'];
		$dbpwd=$_POST['dbpwd'];
		$dbname=$_POST['dbname'];
		$language=$_POST['language'];

		$sLan=substr($language,0,5);
		$dbcharset=substr($language,6);

		if($dbcharset=="utf8"){
			$charset="utf-8";
		}else{
			$charset=$dbcharset;
		}
		
		

		if (!$connect) {
			$error_msg = "<font color=red style='font-size: 14px; font-weight:normal;'>数据库服务器连接失败。请检查输入信息是否正确！</font>";
			$donext    = false;
			
		} else {

				$caninstall=1;

				$mysqlvision=substr(mysql_get_server_info(),0,4);
				
				if($mysqlvision<3.23){
					$error_msg = "<font color=red style='font-size: 14px; font-weight:normal;'>Mysql数据库版本不可低于3.23</font>";
					$donext    = false;
					$caninstall=0;
					
				}

				if($mysqlvision>=4.1){
					mysql_query("SET character_set_connection=$dbcharset, character_set_results=$dbcharset, character_set_client=$dbcharset");
				}


		
				//安装数据库
				$table_num=0;
				$dbname=$_POST['dbname'];



				if($mysqlvision<4.1){
					$sql_file="./db/db_".$language.".mysql3x.sql";
				}else{
					$sql_file="./db/db_".$language.".sql";
				
				}



				$view_bookmark = 0;

				if (file_exists($sql_file)) {

					$sql_query = fread(fopen($sql_file, 'r'), filesize($sql_file));
					
					if (get_magic_quotes_runtime() == 1) {
						$sql_query = stripslashes($sql_query);
					}

				}else{
				
					$error_msg = "<font color=red style='font-size: 14px; font-weight:normal;'>数据库导入文件".$sql_file."不存在</font>";
					$donext    = false;
					$caninstall=0;

				}

				if($caninstall=="1"){

					$sql_query = trim($sql_query);


					if ($sql_query != '') {
						$sql_query    = remove_remarks($sql_query);
						$pieces       = split_sql_file($sql_query, ';');
						$pieces_count = count($pieces);

					
					
						if (mysql_select_db($dbname, $connect)) {
							for ($i = 0; $i < $pieces_count; $i++) {
								$a_sql_query = trim($pieces[$i]);
								if (!empty($a_sql_query) && $a_sql_query[0] != '#') {
									$result = mysql_query($a_sql_query);
									if ($result == FALSE) { 
										$error_msg = "<font color=red style='font-size: 14px; font-weight:normal;'>数据库导入失败！</font>";
										$donext    = false;
									
									}
								}
							} 
						}else{
							$error_msg = "<font color=red style='font-size: 14px; font-weight:normal;'>不可使用数据库，请检查数据库是否存在、用户是否有权访问该数据库！</font>";
							$donext    = false;
							$caninstall=0;

						}
					
				} 

				if($caninstall=="1"){
					$result=mysql_list_tables($dbname,$connect);
					
					$i = 0;
					while ($i < mysql_num_rows ($result)) {
						$tb_names[$i] = mysql_tablename ($result, $i);
						$table_name.="导入数据表 ".$tb_names[$i] . "&nbsp;&nbsp; .........OK<BR>";
						$i++;
					}

					$table_num=$i;


					//修改配置文件

					$ConFile="../config.inc.php";
					$SysConfigFile="./inc.php";

					
					$siteurl="http://".$_SERVER["HTTP_HOST"]."/";

					$filestr = fread(fopen($SysConfigFile, 'r'),30000);
					$filestr=str_replace(" ","",$filestr);
					$filestr=str_replace("DefaultWaStarPath","",$filestr);
					$filestr=str_replace("DefaultDbHost",$dbhost,$filestr);
					$filestr=str_replace("DefaultDbName",$dbname,$filestr);
					$filestr=str_replace("DefaultDbUser",$dbuser,$filestr);
					$filestr=str_replace("DefaultDbPass",$dbpwd,$filestr);
					$filestr=str_replace("DefaultsLan",$sLan,$filestr);
					$filestr=str_replace("DefaultaLan",$sLan,$filestr);
					$filestr=str_replace("DefaulCharset",$charset,$filestr);
					$filestr=str_replace("DefaulDbCharset",$dbcharset,$filestr);
					$filestr=str_replace("DefaultSiteUrl",$siteurl,$filestr);

					
					fwrite(fopen($ConFile,"w"),$filestr,30000);

					$step_content .= "<table width=\"100%\"  border=\"0\" cellspacing=\"0\" cellpadding=\"4\"><input type=\"hidden\" name=\"db_host\" value=\"" . $_POST['dbhost'] . "\"><input type=\"hidden\" name=\"db_name\" value=\"" . $_POST['dbname'] . "\"><input name=\"db_user\" type=\"hidden\" value=\"" . $_POST['dbuser'] . "\"><input name=\"db_pwd\" type=\"hidden\" value=\"" . $_POST['dbpwd'] . "\">";
					$step_content .= "<tr><td style=\"font-size: 15px; color: #003399; font-weight:bold;\">第 <strong>5</strong> 步：导入系统初始数据 <br><hr size=\"1\" width=\"98%\" align=\"left\">" . $error_msg . "</td></tr>";
					$step_content .= "<tr><td style=\"font-size: 14px; color: #999999;\">" . $table_name . "</td></tr>";
					$step_content .= "<tr><td style=\"font-size: 14px; color: #999999; line-height: 150%\">" . $table_num . " 个数据表已导入</td></tr>";
					$step_content .= "<tr><td style=\"font-size: 14px; color: #999999;\"><hr size=\"1\" width=\"98%\" align=\"left\"></td></tr>";
					$step_content .= "</table>";
				
					$donext = true;
				}
			}
		}
	}
	if ($_POST['nextstep'] == 4)  $donext = true;
	if ($_POST['nextstep'] == 5) {
		
		//修改管理员密码
		$admin_user=$_POST["admin_user"];
		$admin_pass=$_POST["admin_pass"];
		$dbhost=$_POST["dbhost"];
		$dbuser=$_POST["dbuser"];
		$dbpwd=$_POST["dbpwd"];
		$dbname=$_POST["dbname"];

		$mdpass=md5($admin_pass);

		$connect = @mysql_connect($dbhost, $dbuser, $dbpwd);
		if ($connect) {
		$Qsql="update ".$dbname.".efood_admin set user='$admin_user',password='$mdpass'";
		$Asql="update ".$dbname.".efood_admin_rights set user='$admin_user'";
		mysql_query($Qsql, $connect);
		mysql_query($Asql, $connect);
		}


		$donext = true;
	}

	if ($_POST['nextstep'] == 6){
		
		echo "<script>window.location.href = 'adm/'</script>";
	}
	
	if($donext){
		$step = $_POST['nextstep'] + 1;
		
	}else{
		$step = $_POST['nextstep'];
		
		
	}

	
	

} else if ($_POST['command'] == "goprev"){
	
	$step = $_POST['nextstep'] - 1;
}

if ($step != 0) {
	$prev = "<input id=\"ddd\" type=\"submit\" value=\"<< 上一步\" onClick=\"command.value='goprev'\">";
	$next = "<input id=\"subm\" type=\"submit\" value=\">> 下一步\" onClick=\"command.value='gonext'\">";
}
if ($step == 0) {
	$next    = "<input id=\"subm\" type=\"submit\" value=\"接受协议\" onClick=\"command.value='gonext'\" style='border:1px outset'><br>";
	$unagree = "<input type=\"button\" value=\"不接受协议\" onClick=\"window.location.href='http://www.wygk.cn'\" style='border:1px outset'>";

	$step_caption = array (
		"0" => array ("bgcolor" => "#dddddd", "fontcolor" => "#999999", "tag" => "->"),
		"1" => array ("bgcolor" => "#244A6C", "fontcolor" => "#ffffff", "tag" => ""),
		"2" => array ("bgcolor" => "#244A6C", "fontcolor" => "#ffffff", "tag" => ""),
		"3" => array ("bgcolor" => "#244A6C", "fontcolor" => "#ffffff", "tag" => ""),
		"4" => array ("bgcolor" => "#244A6C", "fontcolor" => "#ffffff", "tag" => ""),
		"5" => array ("bgcolor" => "#244A6C", "fontcolor" => "#ffffff", "tag" => ""),
		"6" => array ("bgcolor" => "#244A6C", "fontcolor" => "#ffffff", "tag" => "")
	);
	$protocol_con = "&nbsp;&nbsp;&nbsp;&nbsp;网域高科城市美食网站系统基于PHP+MYSQL开发，具有餐馆发布、菜式发布、信息发布、FB活动聚会和会员交流等互动功能和强大的文章发布、图片展示、下载、广告管理等网站内容管理功能。具有灵活的会员权限控制和会员管理系统；灵活的可视化模版引擎可满足个性化的美食门户建站需求；支持HTML静态页面生成和多语言支持；适于创建城市美食门户网站。

	一、网站前台主要栏目频道介绍

	1、网站首页
	基于灵活的可视化模版引擎所构建的网站首页可以任意排版布局、灵活设置各版块显示的内容；灵活推荐餐馆、美食和各种文章、图片内容，结合多样化的广告发布系统，可创建一个内容丰富、门户味十足的首页。

	2、餐馆搜索
	具有频道首页，可按菜系分类、地区区域、餐馆环境等条件组合搜索或分类检索查询餐馆，每个餐馆具有一个综合展示页，展示餐馆的店堂图片、菜式和网友点评。

	3、美食动态
	系统初始创建了美食动态栏目，包括美食动态、新店开张、优惠促销等三个文章类别，可通过后台发布文章。用户也可以自定义创建文章栏目和分类。

	4、美食大全
	具有频道首页，通过搜索或分类检索，可直接查询美食介绍、相关餐馆等信息。

	5、餐饮信息
	通过搜索、检索可查询会员发布的各种信息，如：餐饮设备、餐饮人才、店面转让、优惠促销、新店开张、供求信息等，用户可自定义创建信息分类。

	6、聚会活动
	会员可发起组织聚会活动（FB活动），具有活动发起、报名、评论等互动功能。

	7、美食文化
	系统初始创建了美食文化栏目，包括饮食文化、饮食健康、快乐厨房、美食菜谱等文章分类，可通过后台发布文章。用户也可以自定义创建文章栏目和分类。

	8、美食社区
	一个会员互动交流的小型社区系统，和网站中各种内容具有良好的交互点评功能，包括餐馆点评、美食评论、聚会活动讨论等区域，用户也可自定义创建讨论区。

	9、会员中心
	不同会员类型登录后可具有不同的功能（通过后台自由设置会员类型），会员功能主要分为两大类：
	商家类功能：发布餐馆介绍、菜式发布、餐馆图片发布、信息发布
	个人类功能：活动组织、文章投稿、站内短信


	二、主要功能模块 

	餐馆发布系统 - 发布餐馆介绍、餐馆图片展示、菜式展示 
	信息发布系统 - 发布供求、人才等各类信息 
	站内短信系统 - 会员之间互相发送讯息 
	会员类型管理 - 自由创建多种会员类型，设置不同的会员权限 
	会员管理系统 - 会员注册、登录、重设密码、会员资料修改 
	权限控制系统 - 针对会员类型或单个会员设置各种阅读、发布权限 
	栏目管理系统 - 自由创建和管理栏目、设置栏目显示参数 
	新闻文章系统 - 任意创建多个文章频道，灵活设置频道首页，支持会员投稿 
	图文发布系统 - 任意创建多个图文频道，灵活设置频道首页 
	下载管理系统 - 任意创建多个下载频道，灵活设置频道首页 
	互动交流社区 - 小型社区系统，和网站中各种内容具有良好的交互点评功能 
	网站广告系统 - 具有轮播广告、页内广告、浮动广告、弹出窗口、挂角广告等多种形式 
	访问统计系统 - 网页访问统计分析 
	邮件群发系统 - 邮件组设置，会员邮件群发 
	投票调查系统 - 设置投票组，任意插入模版 
	友情链接系统 - 支持文本和图片链接 
	模版插件系统 - 通过后台设置模版插件的显示参数 
	管理权限系统 - 可设多个管理员，自由分配各种管理权限 


□-系统演示

<a href='http://serv.wygk.net.cn/foods' target='_blank'>http://serv.wygk.net.cn/foods</a>

□-安装协议

1、用户安装本软件，可获得30天免费试用授权
2、用户在试用期间有一定的功能限制
3、用户被授权使用试用软件，不得有任何侵犯软件版权或权益之行为
4、用户不得使用本软件建立非法网站，若因此构成的违法行为均与网域高科软件无关
5、利用本软件发生的商业行为均由用户自行负责，因利用本软件进行商业行为所产生的一切纠纷均与网域高科软件无关
6、用户在安装过程中自动获得用户支持论坛(<a href='http://www.wygk.cn' target=_blank>www.wygk.cn</a>)的用户ID，用户可登录论坛获得使用帮助
7、用户在试用结束后，可向网域高科软件购买正式授权，购买正式授权后，可以得到电话、QQ等在线支持服务。

	";
	$protocol_con=str_replace("\n","<br>",$protocol_con);
	$step_content .= "<table width=\"100%\"  border=\"0\" cellspacing=\"0\" cellpadding=\"5\">";
	$step_content .= "<tr><td style=\"font-size: 15px; color: #003399; font-weight:bold;\">第 <strong>1</strong> 步：软件介绍和安装协议<br><hr size=\"1\" width=\"98%\" align=\"left\"></td></tr>";
	$step_content .= "<tr><td style='font-size:14px;color:#666666;line-height:20px'>" . $protocol_con . "</td></tr>";
	$step_content .= "</table>";
} else if ($step == 1) {
	$step_caption = array (
		"0" => array ("bgcolor" => "#244A6C", "fontcolor" => "#ffffff", "tag" => ""),
		"1" => array ("bgcolor" => "#dddddd", "fontcolor" => "#999999", "tag" => "->"),
		"2" => array ("bgcolor" => "#244A6C", "fontcolor" => "#ffffff", "tag" => ""),
		"3" => array ("bgcolor" => "#244A6C", "fontcolor" => "#ffffff", "tag" => ""),
		"4" => array ("bgcolor" => "#244A6C", "fontcolor" => "#ffffff", "tag" => ""),
		"5" => array ("bgcolor" => "#244A6C", "fontcolor" => "#ffffff", "tag" => ""),
		"6" => array ("bgcolor" => "#244A6C", "fontcolor" => "#ffffff", "tag" => "")
	);
	$year = "<option value=''></option>"; 
	$month = "<option value=''></option>";
	$day = "<option value=''></option>";
	for ($y = 1930; $y <= 1996; $y ++) {
		
		$year .= "<option value=\"" . $y . "\"" . $y_selected . ">" . $y . "</option>"; 
	}
	for ($m = 1; $m <= 12; $m ++) {
		
		$month .= "<option value=\"" . $m . "\"" . $m_selected . ">" . $m . "</option>"; 
	}
	for ($d = 1; $d <= 31; $d ++) {
		
		$day .= "<option value=\"" . $d . "\"" . $d_selected . ">" . $d . "</option>"; 
	}
	
	if($_POST['nextstep']!=1){
		$error_msg = "<font style=\"font-size: 14px; color: #666666;\">注：以下信息用于获取软件试用授权，同时在软件支持论坛注册用户</font>";
	}
	
	$step_content .= "<table width=\"100%\"  border=\"0\" cellspacing=\"0\" cellpadding=\"3\">";
	$step_content .= "<tr><input type=\"hidden\" name=\"skip\" value=\"" . $skip_step . "\"><td colspan=\"2\" style=\"font-size: 15px; color: #003399; font-weight:bold;\">第 <strong>2</strong> 步：填写用户信息<br><hr size=\"1\" width=\"98%\" align=\"left\"></td><tr><td colspan=2 height=36>". $error_msg . "</td></tr></tr>";
	$step_content .= "<tr><td align=\"right\" style=\"font-size: 14px; color: #666666;\">用 户 名</td><td style=\"font-size: 12px;\"><input type=\"text\" name=\"username\" value='".$_POST[username]."'><select name=\"usersex\"><option value=\"1\">先生</option><option value=\"2\">女士/小姐</option></select> 支持论坛登录名 [ 必填 ] </td></tr>";
	$step_content .= "<tr><td align=\"right\" style=\"font-size: 14px; color: #666666;\">登录密码</td><td style=\"font-size: 12px;\"><input name=\"password\" type=\"password\" size=\"32\"  value='".$_POST[password]."'> 支持论坛登录密码 [ 必填 ] </td></tr>";
	$step_content .= "<tr><td align=\"right\" style=\"font-size: 14px; color: #666666;\">公司名称</td><td style=\"font-size: 12px;\"><input name=\"usercompany\" type=\"text\" size=\"32\"  value='".$_POST[usercompany]."'> 个人请填写姓名 [ 必填 ]</td></tr>";
	$step_content .= "<tr><td align=\"right\" style=\"font-size: 14px; color: #666666;\">联 系 人</td><td style=\"font-size: 12px;\"><input name=\"name\" type=\"text\" size=\"32\"  value='".$_POST[name]."'> 请填写真实姓名 [ 必填 ]</td></tr>";
	$step_content .= "<tr><td align=\"right\" style=\"font-size: 14px; color: #666666;\">电子邮箱</td><td style=\"font-size: 12px;\"><input name=\"useremail\" type=\"text\" size=\"32\"  value='".$_POST[useremail]."'> 请正确填写 [ 必填 ] </td></tr>";
	$step_content .= "<tr><td align=\"right\" style=\"font-size: 14px; color: #666666;\">联系电话</td><td style=\"font-size: 12px;\"><input name=\"usertelphone\" type=\"text\"  value='".$_POST[usertelphone]."'> 建议填写方便联系 [ 可不填 ]</td></tr>";
	$step_content .= "<tr><td align=\"right\" style=\"font-size: 14px; color: #666666;\">网站URL</td><td style=\"font-size: 12px;\"><input name=\"userwebsite\" type=\"text\" size=\"32\"  value='".$_POST[userwebsite]."' > 建议填写 [ 可不填 ]</td></tr>";
	$step_content .= "<tr><td align=\"right\" style=\"font-size: 14px; color: #666666;\">您的生日</td><td style=\"font-size: 12px;\"><select name=\"year\">" . $year . "</select> 年 <select name=\"month\">" . $month . "</select> 月 <select name=\"day\">" . $day . "</select> 日 建议填写 [ 可不填 ]</td></tr>";
	$step_content .= "<tr><td align=\"right\" style=\"font-size: 14px; color: #666666;\">QQ号码</td><td style=\"font-size: 12px;\"><input name=\"userqq\" type=\"text\"  value='".$_POST[userqq]."'> 建议填写方便联系 [ 可不填 ]</td></tr>";
	$step_content .= "<tr><td colspan=\"2\" style=\"font-size: 14px; color: #999999;\"><hr size=\"1\" width=\"98%\" align=\"left\"></td></tr>";
	$step_content .= "</table>";
} else if ($step == 2) {
	$step_caption = array (
		"0" => array ("bgcolor" => "#244A6C", "fontcolor" => "#ffffff", "tag" => ""),
		"1" => array ("bgcolor" => "#244A6C", "fontcolor" => "#ffffff", "tag" => ""),
		"2" => array ("bgcolor" => "#dddddd", "fontcolor" => "#999999", "tag" => "->"),
		"3" => array ("bgcolor" => "#244A6C", "fontcolor" => "#ffffff", "tag" => ""),
		"4" => array ("bgcolor" => "#244A6C", "fontcolor" => "#ffffff", "tag" => ""),
		"5" => array ("bgcolor" => "#244A6C", "fontcolor" => "#ffffff", "tag" => ""),
		"6" => array ("bgcolor" => "#244A6C", "fontcolor" => "#ffffff", "tag" => "")
	);
	

	//php版本检测
	$php_version = substr(PHP_VERSION,0,3)+0;
	if ($php_version < 4.2 || $php_version > 5.2 ){
		$phpmsg = "<font color=red style='font-size: 14px; '>× (建议使用PHP4.2.x至5.2.x版本)</font>";
		$noinstall      = "<script>document.all['subm'].disabled = true;</script>";
	}else{
		$phpmsg = "<font color=#666666 style='font-size: 14px; '>√</font>";
	}
	
	//安全模式检测
	if (get_cfg_var ("safe_mode") == 1) {
		$safe_mode_caption = "ON";
		$safemsg = "<font color=red style='font-size: 14px; '>× (本系统在PHP安全模式下不可运行)</font>";
		$noinstall         = "<script>document.all['subm'].disabled = true;</script>";
	} else {
		
		$safe_mode_caption = "OFF";
		$safemsg = "<font color=#666666 style='font-size: 14px; '>√</font>";
	}

	

	//目录权限检测
	if (!is_writable("../advs") || !is_writable("../cp") || !is_writable("../com")  || !is_writable("../down")  || !is_writable("../pic")  || !is_writable("../form")  || !is_writable("../includes") || !is_writable("../link") || !is_writable("../news")  || !is_writable("../page") || !is_writable("../templates")) {
		$tempdir = "不可写";
		$tempmsg = "<font color=red style='font-size: 14px; '>× (请设置advs,cp,down,pic,form,includes,link,news,page,templates目录为可读写，如777，否则无法生成HTML和进行升级)</font>";
		$noinstall   = "<script>document.all['subm'].disabled = true;</script>";

	}else{
		$tempdir = "可读写";
		$tempmsg = "<font color=#666666 style='font-size: 14px; '>√</font>";

	}

	//config文件权限检测
	if (!is_writable("../config.inc.php")) {
		$confdir = "不可写";
		$confmsg = "<font color=red style='font-size: 14px; '>× (请设置config.inc.php文件为可读写，如666)</font>";
		$noinstall = "<script>document.all['subm'].disabled = true;</script>";

	}else{
		$confdir = "可读写";
		$confmsg = "<font color=#666666 style='font-size: 14px; '>√</font>";

	}


	//file_uploads检测
	$upload = get_cfg_var ("file_uploads");
	if ($upload != "1") {
		$uploadsay="Off";
		$uploadmsg = "<font color=red style='font-size: 14px; '>× (请在php.ini中设置file_uploads = On)</font>";
		$noinstall      = "<script>document.all['subm'].disabled = true;</script>";
	}else{
		$uploadsay="On";
		$uploadmsg = "<font color=#666666 style='font-size: 14px; '>√</font>";
	}


	$step_content .= "<table width=\"100%\"  border=\"0\" cellspacing=\"0\" cellpadding=\"3\">";
	$step_content .= "<tr><td style=\"font-size: 15px; color: #003399; font-weight:bold;\">第 <strong>3</strong> 步：检测服务器环境<br><hr size=\"1\" width=\"98%\" align=\"left\">" . $error_msg . "</td></tr>";
	$step_content .= "<tr><td style=\"font-size: 14px; color: #999999;\">操作系统：" . PHP_OS . "  ...√</td></tr>";
	$step_content .= "<tr><td style=\"font-size: 14px; color: #999999;\">服务器软件：" . $_ENV['SERVER_SOFTWARE'] . "  ...√</td></tr>";
	$step_content .= "<tr><td style=\"font-size: 14px; color: #999999;\">PHP版本：" . $php_version . "  ...".$phpmsg."</td></tr>";
	$step_content .= "<tr><td style=\"font-size: 14px; color: #999999;\">安全模式：" . $safe_mode_caption . "  ..." . $safemsg . "</td></tr>";
	$step_content .= "<tr><td style=\"font-size: 14px; color: #999999;\">目录权限： ".$tempdir."  ..." . $tempmsg. "</td></tr>";
	$step_content .= "<tr><td style=\"font-size: 14px; color: #999999;\">设置文件权限： ".$confdir."  ..." . $confmsg. "</td></tr>";
	$step_content .= "<tr><td style=\"font-size: 14px; color: #999999;\">文件上传：" . $uploadsay . "  ...".$uploadmsg."</td></tr>";
	$step_content .= "</table>";

} else if ($step == 3) {
	$step_caption = array (
		"0" => array ("bgcolor" => "#244A6C", "fontcolor" => "#ffffff", "tag" => ""),
		"1" => array ("bgcolor" => "#244A6C", "fontcolor" => "#ffffff", "tag" => ""),
		"2" => array ("bgcolor" => "#244A6C", "fontcolor" => "#ffffff", "tag" => ""),
		"3" => array ("bgcolor" => "#dddddd", "fontcolor" => "#999999", "tag" => "->"),
		"4" => array ("bgcolor" => "#244A6C", "fontcolor" => "#ffffff", "tag" => ""),
		"5" => array ("bgcolor" => "#244A6C", "fontcolor" => "#ffffff", "tag" => ""),
		"6" => array ("bgcolor" => "#244A6C", "fontcolor" => "#ffffff", "tag" => "")
	);
	

	
	
	$step_content .= "<table width=\"100%\"  border=\"0\" cellspacing=\"0\" cellpadding=\"3\">";
	$step_content .= "<tr><td colspan=\"2\" style=\"font-size: 15px; color: #003399; font-weight:bold;\">第 <strong>4</strong> 步：语言和数据库参数设置<br><hr size=\"1\" width=\"98%\" align=\"left\">" . $error_msg . "</td></tr>";
	$step_content .= "<tr><td align=\"right\" style=\"font-size: 14px; color: #000000;\">选择语言版本</td><td>
	<select name='language'>
  <option value='zh_cn_utf8' ".seld($language,"zh_cn_utf8").">简体中文(UTF-8)</option>
  <option value='zh_tw_utf8' ".seld($language,"zh_tw_utf8").">繁体中文(UTF-8)</option>
 
</select> *</td></tr>";
	$step_content .= "<tr><td align=\"right\" style=\"font-size: 14px; color: #000000;\">数据库服务器</td><td><input name=\"dbhost\" type=\"text\" value=\"localhost\" size=\"20\"> *</td></tr>";
	$step_content .= "<tr><td align=\"right\" style=\"font-size: 14px; color: #000000;\">数据库名称</td><td><input name=\"dbname\" type=\"text\" size=\"20\" value='".$_POST[dbname]."'> *</td></tr>";
	$step_content .= "<tr><td align=\"right\" style=\"font-size: 14px; color: #000000;\">数据库用户</td><td><input name=\"dbuser\" type=\"text\" size=\"20\" value='".$_POST[dbuser]."'> *</td></tr>";
	$step_content .= "<tr><td align=\"right\" style=\"font-size: 14px; color: #000000;\">数据库密码</td><td><input name=\"dbpwd\" type=\"text\" size=\"20\" value='".$_POST[dbpwd]."'> *</td></tr>";
	$step_content .= "<tr><td colspan=\"2\" style=\"font-size: 14px; color: #999999;\"><hr size=\"1\" width=\"98%\" align=\"left\"></td></tr>";
	$step_content .= "</table>";
} else if ($step == 4) {
	$step_caption = array (
		"0" => array ("bgcolor" => "#244A6C", "fontcolor" => "#ffffff", "tag" => ""),
		"1" => array ("bgcolor" => "#244A6C", "fontcolor" => "#ffffff", "tag" => ""),
		"2" => array ("bgcolor" => "#244A6C", "fontcolor" => "#ffffff", "tag" => ""),
		"3" => array ("bgcolor" => "#244A6C", "fontcolor" => "#ffffff", "tag" => ""),
		"4" => array ("bgcolor" => "#dddddd", "fontcolor" => "#999999", "tag" => "->"),
		"5" => array ("bgcolor" => "#244A6C", "fontcolor" => "#ffffff", "tag" => ""),
		"6" => array ("bgcolor" => "#244A6C", "fontcolor" => "#ffffff", "tag" => "")
	);
} else if ($step == 5) {
	$step_caption = array (
		"0" => array ("bgcolor" => "#244A6C", "fontcolor" => "#ffffff", "tag" => ""),
		"1" => array ("bgcolor" => "#244A6C", "fontcolor" => "#ffffff", "tag" => ""),
		"2" => array ("bgcolor" => "#244A6C", "fontcolor" => "#ffffff", "tag" => ""),
		"3" => array ("bgcolor" => "#244A6C", "fontcolor" => "#ffffff", "tag" => ""),
		"4" => array ("bgcolor" => "#244A6C", "fontcolor" => "#ffffff", "tag" => ""),
		"5" => array ("bgcolor" => "#dddddd", "fontcolor" => "#999999", "tag" => "->"),
		"6" => array ("bgcolor" => "#244A6C", "fontcolor" => "#ffffff", "tag" => "")
	);
	
	$step_content .= "<table width=\"100%\"  border=\"0\" cellspacing=\"0\" cellpadding=\"3\"><input type=\"hidden\" name=\"dbhost\" value=\"" . $_POST['db_host'] . "\"><input type=\"hidden\" name=\"dbname\" value=\"" . $_POST['db_name'] . "\"><input name=\"dbuser\" type=\"hidden\" value=\"" . $_POST['db_user'] . "\"><input name=\"dbpwd\" type=\"hidden\" value=\"" . $_POST['db_pwd'] . "\">";
	$step_content .= "<tr><td colspan=\"2\" style=\"font-size: 15px; color: #003399; font-weight:bold;\">第 <strong>6</strong> 步：设置网站管理员密码<br><hr size=\"1\" width=\"98%\" align=\"left\">" . $error_msg . "</td></tr>";
	$step_content .= "<tr><td align=\"right\" width=120 style=\"font-size: 14px; \">网站管理员用户名</td><td><input type=\"text\" name=\"admin_user\" value=\"admin\"> * </td></tr>";
	$step_content .= "<tr><td align=\"right\" style=\"font-size: 14px; ;\">网站管理员密码</td><td><input type=\"text\" name=\"admin_pass\"> *</td></tr>";
	$step_content .= "<tr><td colspan=\"2\" style=\"font-size: 14px; \"><hr size=\"1\" width=\"98%\" align=\"left\"></td></tr>";
	$step_content .= "</table>";
} else if ($step == 6) {
	$step_caption = array (
		"0" => array ("bgcolor" => "#244A6C", "fontcolor" => "#ffffff", "tag" => ""),
		"1" => array ("bgcolor" => "#244A6C", "fontcolor" => "#ffffff", "tag" => ""),
		"2" => array ("bgcolor" => "#244A6C", "fontcolor" => "#ffffff", "tag" => ""),
		"3" => array ("bgcolor" => "#244A6C", "fontcolor" => "#ffffff", "tag" => ""),
		"4" => array ("bgcolor" => "#244A6C", "fontcolor" => "#ffffff", "tag" => ""),
		"5" => array ("bgcolor" => "#244A6C", "fontcolor" => "#ffffff", "tag" => ""),
		"6" => array ("bgcolor" => "#dddddd", "fontcolor" => "#999999", "tag" => "->")
	);
	$prev ="";
	$next          = "<input id=\"subm\" type=\"button\" value=\"查看网站\" onClick=\"window.location='../'\">&nbsp;<input id=\"sys\" type=\"button\" value=\"管理登录\" onClick=\"window.open('../adm/','_blank')\">";
	$step_content .= "<table width=\"100%\"  border=\"0\" cellspacing=\"0\" cellpadding=\"4\">";
	$step_content .= "<tr><td style=\"font-size: 15px; color: #003399; font-weight:bold;\">第 <strong>7</strong> 步：安装完成<br><hr width=\"98%\" size=\"1\" align=\"left\"></td></tr>";
	$step_content .= "<tr><td style=\"font-size: 14px; color: #666666; line-height: 130%\">系统安装完成！<br><br>请删除 [ install ] 目录<br><br></td></tr>";
	$step_content .= "</table>";
}
?>
<body topmargin="0" leftmargin="0" bgcolor="#396DA5">
<center>
  <table width="100%" height="100%"  border="0" cellpadding="0" cellspacing="0">
    <tr>
      <td width="229" valign="top" align="center"> 
        <table width="100%"  border="0" cellpadding="5" cellspacing="0">
          <tr> 
            <td align="center"><img src="images/installlogo.gif" width="229" height="75"></td>
          </tr>
          <tr> 
            <td height="130" valign="top" style="font-size:12px;color:#ffffff">&nbsp; 
            </td>
          </tr>
          <tr> 
            <td align="right" bgcolor="<?php echo $step_caption[0]["bgcolor"]?>" class="font_13_w" style="border-top: 1 solid #ffffff; border-bottom: 1 solid #ffffff; border-right: 3 solid #ffcc00; color: <?php echo $step_caption[0]["fontcolor"]?>"><?php echo $step_caption[0]["tag"];?>&nbsp;软件介绍和安装协议</td>
          </tr>
          <tr> 
            <td align="right" bgcolor="<?php echo $step_caption[1]["bgcolor"]?>" class="font_13_w" style="border-right: 3 solid #ffcc00; color: <?php echo $step_caption[1]["fontcolor"]?>"><?php echo $step_caption[1]["tag"];?>&nbsp;填写用户信息</td>
          </tr>
          <tr> 
            <td align="right" bgcolor="<?php echo $step_caption[2]["bgcolor"]?>" class="font_13_w" style="border-top: 1 solid #ffffff; border-right: 3 solid #ffcc00; color: <?php echo $step_caption[2]["fontcolor"]?>"><?php echo $step_caption[2]["tag"];?>&nbsp;检测服务器环境</td>
          </tr>
          <tr> 
            <td align="right" bgcolor="<?php echo $step_caption[3]["bgcolor"]?>" class="font_13_w" style="border-top: 1 solid #ffffff; border-right: 3 solid #ffcc00; color: <?php echo $step_caption[3]["fontcolor"]?>"><?php echo $step_caption[3]["tag"];?>&nbsp;设置语言和数据库参数</td>
          </tr>
          <tr> 
            <td align="right" bgcolor="<?php echo $step_caption[4]["bgcolor"]?>" class="font_13_w" style="border-top: 1 solid #ffffff; border-bottom: 1 solid #ffffff; border-right: 3 solid #ffcc00; color: <?php echo $step_caption[4]["fontcolor"]?>"><?php echo $step_caption[4]["tag"];?>&nbsp;导入系统初始数据</td>
          </tr>
          <tr> 
            <td align="right" bgcolor="<?php echo $step_caption[5]["bgcolor"]?>" class="font_13_w" style="border-right: 3 solid #ffcc00; color: <?php echo $step_caption[5]["fontcolor"]?>"><?php echo $step_caption[5]["tag"];?>&nbsp;设置网站管理员密码</td>
          </tr>
          <tr> 
            <td align="right" bgcolor="<?php echo $step_caption[6]["bgcolor"]?>" class="font_13_w" style="border-top: 1 solid #ffffff; border-bottom: 1 solid #ffffff; border-right: 3 solid #ffcc00; color: <?php echo $step_caption[6]["fontcolor"]?>"><?php echo $step_caption[6]["tag"];?>&nbsp;安装完成</td>
          </tr>
        </table>
        <br>
        <br>
        <table width="68%" border="0" cellspacing="0" cellpadding="0" align="center">
          <tr> 
            <td><a href="http://www.wygk.cn" target="_blank"><img src="images/medisoft.gif" width="229" height="75" border="0"></a></td>
          </tr>
        </table>
      </td>
      <td valign="top" bgcolor="#FFFFFF"><table width="100%"  border="0" cellpadding="0" cellspacing="0">
          <tr valign="top"> 
            <td height="90"><img src="images/top1.gif" width="764" height="73"></td>
        </tr>
      </table>
        <table width="100%"  border="0" cellspacing="0" cellpadding="0">
		<form name="form" action="" method="post" onSubmit="return CheckForm (this, '<?php echo $step;?>');">
		  <tr>
            <td style="padding-left: 10px; padding-top: 5px; padding-bottom: 5px;" align="left"><?php echo $step_content;?></td>
          </tr>
          <tr>
            <td style="padding-left: 10px;"><?php echo $prev;?>
              <?php echo $unagree . "&nbsp;" . $next . "&nbsp;" . $download;?>
              <input type="hidden" name="nextstep" value="<?php echo $step;?>">
              <input type="hidden" name="command" value="gonext">
              <input type="hidden" name="alertmsg" value="<?php echo $msg;?>">
              <input type="hidden" name="user_email" value="<?php echo $_POST['user_email'];?>">
              </td>
          </tr>
		  </form>
        </table></td>
    </tr>
  </table>
</center>
</body>
</html>
<?php
echo $noinstall;
?>