<?php
require_once ('nusoap/nusoap.php');
$server   = "http://bbs.eb2000.cn/webservice/soapserver.php";
$customer = new soapclient ($server);
error_reporting(E_ERROR | E_WARNING | E_PARSE);
set_magic_quotes_runtime(0);


//��غ���

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
<title>��װ�� - Powered by ����ʹ���ʳ��վϵͳ��ʽ��</title>
<script>
function CheckForm (src, step) {
	if (src.command.value == "goprev") return true;
	if (step == "1" && src.skip.value != "allow") {
		var letter = "abcdefghijklmnopqrstuvwxyz_0123456789ABCDEFGHIJKLMNOPQRSTUVWXYZ~!@#$%^&*[{]}/";
		if (src.username.value == "") {
			alert ('�������û���');
			src.username.focus ();
			return false;
		}
		if (src.password.value == "") {
			alert ('�������¼����');
			src.password.focus ();
			return false;
		}
		if(src.username.value.length > 20)
		  {
			alert ('������2-20λ�û���');
			src.username.focus ();
			return false;
		  }
		  if(src.username.value.length < 2)
		  {
			alert ('������2-20λ�û���');
			src.username.focus ();
			return false;
		  }
		  if (src.usercompany.value == "") {
			alert ('�����빫˾���ƻ���������');
			src.username.focus ();
			return false;
		  }
		if (src.name.value == "") {
			alert ('��������ϵ������');
			src.name.focus ();
			return false;
		  }


		if (src.useremail.value == "") {
			alert ('�������������');
			src.useremail.focus ();
			return false;
		}
		
		if (src.useremail.value.indexOf("@") == -1 || src.useremail.value.indexOf(".") == -1) {
			alert ("���������ʽ����ȷ���磺abc@abc.com��");
			src.useremail.focus ();
			return false;
		}
		src.user_email.value   = src.useremail.value;

		return true;

	}  else if (step == "3") {
		
		if (src.dbname.value == "") {
			alert ("���������ݿ���");
			src.dbname.focus ();
			return false;
		}
		if (src.dbuser.value == "") {
			alert ("���������ݿ��û���");
			src.dbuser.focus ();
			return false;
		}
		if (src.dbpwd.value == "") {
			alert ("���������ݿ�����");
			src.dbpwd.focus ();
			return false;
		}
	} else if (step == "5") {
		if (src.admin_user.value == "") {
			alert ("������ϵͳ����Ա");
			src.admin_user.focus ();
			return false;
		}
		if (src.admin_pass.value == "") {
			alert ("���������Ա����");
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
					$error_msg = "<font style=\"font-size: 14px; color: red;\">������վ�޷����ӵ�ע��������������Ƿ����������磬���Ժ����ԣ�</font>";
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
			$error_msg = "<font color=red style='font-size: 14px; font-weight:normal;'>���ݿ����������ʧ�ܡ�����������Ϣ�Ƿ���ȷ��</font>";
			$donext    = false;
			
		} else {

				$caninstall=1;

				$mysqlvision=substr(mysql_get_server_info(),0,4);
				
				if($mysqlvision<3.23){
					$error_msg = "<font color=red style='font-size: 14px; font-weight:normal;'>Mysql���ݿ�汾���ɵ���3.23</font>";
					$donext    = false;
					$caninstall=0;
					
				}

				if($mysqlvision>=4.1){
					mysql_query("SET character_set_connection=$dbcharset, character_set_results=$dbcharset, character_set_client=$dbcharset");
				}


		
				//��װ���ݿ�
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
				
					$error_msg = "<font color=red style='font-size: 14px; font-weight:normal;'>���ݿ⵼���ļ�".$sql_file."������</font>";
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
										$error_msg = "<font color=red style='font-size: 14px; font-weight:normal;'>���ݿ⵼��ʧ�ܣ�</font>";
										$donext    = false;
									
									}
								}
							} 
						}else{
							$error_msg = "<font color=red style='font-size: 14px; font-weight:normal;'>����ʹ�����ݿ⣬�������ݿ��Ƿ���ڡ��û��Ƿ���Ȩ���ʸ����ݿ⣡</font>";
							$donext    = false;
							$caninstall=0;

						}
					
				} 

				if($caninstall=="1"){
					$result=mysql_list_tables($dbname,$connect);
					
					$i = 0;
					while ($i < mysql_num_rows ($result)) {
						$tb_names[$i] = mysql_tablename ($result, $i);
						$table_name.="�������ݱ� ".$tb_names[$i] . "&nbsp;&nbsp; .........OK<BR>";
						$i++;
					}

					$table_num=$i;


					//�޸������ļ�

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
					$step_content .= "<tr><td style=\"font-size: 15px; color: #003399; font-weight:bold;\">�� <strong>5</strong> ��������ϵͳ��ʼ���� <br><hr size=\"1\" width=\"98%\" align=\"left\">" . $error_msg . "</td></tr>";
					$step_content .= "<tr><td style=\"font-size: 14px; color: #999999;\">" . $table_name . "</td></tr>";
					$step_content .= "<tr><td style=\"font-size: 14px; color: #999999; line-height: 150%\">" . $table_num . " �����ݱ��ѵ���</td></tr>";
					$step_content .= "<tr><td style=\"font-size: 14px; color: #999999;\"><hr size=\"1\" width=\"98%\" align=\"left\"></td></tr>";
					$step_content .= "</table>";
				
					$donext = true;
				}
			}
		}
	}
	if ($_POST['nextstep'] == 4)  $donext = true;
	if ($_POST['nextstep'] == 5) {
		
		//�޸Ĺ���Ա����
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
	$prev = "<input id=\"ddd\" type=\"submit\" value=\"<< ��һ��\" onClick=\"command.value='goprev'\">";
	$next = "<input id=\"subm\" type=\"submit\" value=\">> ��һ��\" onClick=\"command.value='gonext'\">";
}
if ($step == 0) {
	$next    = "<input id=\"subm\" type=\"submit\" value=\"����Э��\" onClick=\"command.value='gonext'\" style='border:1px outset'><br>";
	$unagree = "<input type=\"button\" value=\"������Э��\" onClick=\"window.location.href='http://www.wygk.cn'\" style='border:1px outset'>";

	$step_caption = array (
		"0" => array ("bgcolor" => "#dddddd", "fontcolor" => "#999999", "tag" => "->"),
		"1" => array ("bgcolor" => "#244A6C", "fontcolor" => "#ffffff", "tag" => ""),
		"2" => array ("bgcolor" => "#244A6C", "fontcolor" => "#ffffff", "tag" => ""),
		"3" => array ("bgcolor" => "#244A6C", "fontcolor" => "#ffffff", "tag" => ""),
		"4" => array ("bgcolor" => "#244A6C", "fontcolor" => "#ffffff", "tag" => ""),
		"5" => array ("bgcolor" => "#244A6C", "fontcolor" => "#ffffff", "tag" => ""),
		"6" => array ("bgcolor" => "#244A6C", "fontcolor" => "#ffffff", "tag" => "")
	);
	$protocol_con = "&nbsp;&nbsp;&nbsp;&nbsp;����߿Ƴ�����ʳ��վϵͳ����PHP+MYSQL���������в͹ݷ�������ʽ��������Ϣ������FB��ۻ�ͻ�Ա�����Ȼ������ܺ�ǿ������·�����ͼƬչʾ�����ء����������վ���ݹ����ܡ��������Ļ�ԱȨ�޿��ƺͻ�Ա����ϵͳ�����Ŀ��ӻ�ģ�������������Ի�����ʳ�Ż���վ����֧��HTML��̬ҳ�����ɺͶ�����֧�֣����ڴ���������ʳ�Ż���վ��

	һ����վǰ̨��Ҫ��ĿƵ������

	1����վ��ҳ
	�������Ŀ��ӻ�ģ����������������վ��ҳ���������Ű沼�֡�������ø������ʾ�����ݣ�����Ƽ��͹ݡ���ʳ�͸������¡�ͼƬ���ݣ���϶������Ĺ�淢��ϵͳ���ɴ���һ�����ݷḻ���Ż�ζʮ�����ҳ��

	2���͹�����
	����Ƶ����ҳ���ɰ���ϵ���ࡢ�������򡢲͹ݻ��������������������������ѯ�͹ݣ�ÿ���͹ݾ���һ���ۺ�չʾҳ��չʾ�͹ݵĵ���ͼƬ����ʽ�����ѵ�����

	3����ʳ��̬
	ϵͳ��ʼ��������ʳ��̬��Ŀ��������ʳ��̬���µ꿪�š��Żݴ���������������𣬿�ͨ����̨�������¡��û�Ҳ�����Զ��崴��������Ŀ�ͷ��ࡣ

	4����ʳ��ȫ
	����Ƶ����ҳ��ͨ������������������ֱ�Ӳ�ѯ��ʳ���ܡ���ز͹ݵ���Ϣ��

	5��������Ϣ
	ͨ�������������ɲ�ѯ��Ա�����ĸ�����Ϣ���磺�����豸�������˲š�����ת�á��Żݴ������µ꿪�š�������Ϣ�ȣ��û����Զ��崴����Ϣ���ࡣ

	6���ۻ�
	��Ա�ɷ�����֯�ۻ���FB��������л���𡢱��������۵Ȼ������ܡ�

	7����ʳ�Ļ�
	ϵͳ��ʼ��������ʳ�Ļ���Ŀ��������ʳ�Ļ�����ʳ���������ֳ�������ʳ���׵����·��࣬��ͨ����̨�������¡��û�Ҳ�����Զ��崴��������Ŀ�ͷ��ࡣ

	8����ʳ����
	һ����Ա����������С������ϵͳ������վ�и������ݾ������õĽ����������ܣ������͹ݵ�������ʳ���ۡ��ۻ����۵������û�Ҳ���Զ��崴����������

	9����Ա����
	��ͬ��Ա���͵�¼��ɾ��в�ͬ�Ĺ��ܣ�ͨ����̨�������û�Ա���ͣ�����Ա������Ҫ��Ϊ�����ࣺ
	�̼��๦�ܣ������͹ݽ��ܡ���ʽ�������͹�ͼƬ��������Ϣ����
	�����๦�ܣ����֯������Ͷ�塢վ�ڶ���


	������Ҫ����ģ�� 

	�͹ݷ���ϵͳ - �����͹ݽ��ܡ��͹�ͼƬչʾ����ʽչʾ 
	��Ϣ����ϵͳ - ���������˲ŵȸ�����Ϣ 
	վ�ڶ���ϵͳ - ��Ա֮�以�෢��ѶϢ 
	��Ա���͹��� - ���ɴ������ֻ�Ա���ͣ����ò�ͬ�Ļ�ԱȨ�� 
	��Ա����ϵͳ - ��Աע�ᡢ��¼���������롢��Ա�����޸� 
	Ȩ�޿���ϵͳ - ��Ի�Ա���ͻ򵥸���Ա���ø����Ķ�������Ȩ�� 
	��Ŀ����ϵͳ - ���ɴ����͹�����Ŀ��������Ŀ��ʾ���� 
	��������ϵͳ - ���ⴴ���������Ƶ�����������Ƶ����ҳ��֧�ֻ�ԱͶ�� 
	ͼ�ķ���ϵͳ - ���ⴴ�����ͼ��Ƶ�����������Ƶ����ҳ 
	���ع���ϵͳ - ���ⴴ���������Ƶ�����������Ƶ����ҳ 
	������������ - С������ϵͳ������վ�и������ݾ������õĽ����������� 
	��վ���ϵͳ - �����ֲ���桢ҳ�ڹ�桢������桢�������ڡ��ҽǹ��ȶ�����ʽ 
	����ͳ��ϵͳ - ��ҳ����ͳ�Ʒ��� 
	�ʼ�Ⱥ��ϵͳ - �ʼ������ã���Ա�ʼ�Ⱥ�� 
	ͶƱ����ϵͳ - ����ͶƱ�飬�������ģ�� 
	��������ϵͳ - ֧���ı���ͼƬ���� 
	ģ����ϵͳ - ͨ����̨����ģ��������ʾ���� 
	����Ȩ��ϵͳ - ����������Ա�����ɷ�����ֹ���Ȩ�� 


��-ϵͳ��ʾ

<a href='http://serv.wygk.net.cn/foods' target='_blank'>http://serv.wygk.net.cn/foods</a>

��-��װЭ��

1���û���װ��������ɻ��30�����������Ȩ
2���û��������ڼ���һ���Ĺ�������
3���û�����Ȩʹ������������������κ��ַ������Ȩ��Ȩ��֮��Ϊ
4���û�����ʹ�ñ���������Ƿ���վ������˹��ɵ�Υ����Ϊ��������߿�����޹�
5�����ñ������������ҵ��Ϊ�����û����и��������ñ����������ҵ��Ϊ��������һ�о��׾�������߿�����޹�
6���û��ڰ�װ�������Զ�����û�֧����̳(<a href='http://www.wygk.cn' target=_blank>www.wygk.cn</a>)���û�ID���û��ɵ�¼��̳���ʹ�ð���
7���û������ý����󣬿�������߿����������ʽ��Ȩ��������ʽ��Ȩ�󣬿��Եõ��绰��QQ������֧�ַ���

	";
	$protocol_con=str_replace("\n","<br>",$protocol_con);
	$step_content .= "<table width=\"100%\"  border=\"0\" cellspacing=\"0\" cellpadding=\"5\">";
	$step_content .= "<tr><td style=\"font-size: 15px; color: #003399; font-weight:bold;\">�� <strong>1</strong> ����������ܺͰ�װЭ��<br><hr size=\"1\" width=\"98%\" align=\"left\"></td></tr>";
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
		$error_msg = "<font style=\"font-size: 14px; color: #666666;\">ע��������Ϣ���ڻ�ȡ���������Ȩ��ͬʱ�����֧����̳ע���û�</font>";
	}
	
	$step_content .= "<table width=\"100%\"  border=\"0\" cellspacing=\"0\" cellpadding=\"3\">";
	$step_content .= "<tr><input type=\"hidden\" name=\"skip\" value=\"" . $skip_step . "\"><td colspan=\"2\" style=\"font-size: 15px; color: #003399; font-weight:bold;\">�� <strong>2</strong> ������д�û���Ϣ<br><hr size=\"1\" width=\"98%\" align=\"left\"></td><tr><td colspan=2 height=36>". $error_msg . "</td></tr></tr>";
	$step_content .= "<tr><td align=\"right\" style=\"font-size: 14px; color: #666666;\">�� �� ��</td><td style=\"font-size: 12px;\"><input type=\"text\" name=\"username\" value='".$_POST[username]."'><select name=\"usersex\"><option value=\"1\">����</option><option value=\"2\">Ůʿ/С��</option></select> ֧����̳��¼�� [ ���� ] </td></tr>";
	$step_content .= "<tr><td align=\"right\" style=\"font-size: 14px; color: #666666;\">��¼����</td><td style=\"font-size: 12px;\"><input name=\"password\" type=\"password\" size=\"32\"  value='".$_POST[password]."'> ֧����̳��¼���� [ ���� ] </td></tr>";
	$step_content .= "<tr><td align=\"right\" style=\"font-size: 14px; color: #666666;\">��˾����</td><td style=\"font-size: 12px;\"><input name=\"usercompany\" type=\"text\" size=\"32\"  value='".$_POST[usercompany]."'> ��������д���� [ ���� ]</td></tr>";
	$step_content .= "<tr><td align=\"right\" style=\"font-size: 14px; color: #666666;\">�� ϵ ��</td><td style=\"font-size: 12px;\"><input name=\"name\" type=\"text\" size=\"32\"  value='".$_POST[name]."'> ����д��ʵ���� [ ���� ]</td></tr>";
	$step_content .= "<tr><td align=\"right\" style=\"font-size: 14px; color: #666666;\">��������</td><td style=\"font-size: 12px;\"><input name=\"useremail\" type=\"text\" size=\"32\"  value='".$_POST[useremail]."'> ����ȷ��д [ ���� ] </td></tr>";
	$step_content .= "<tr><td align=\"right\" style=\"font-size: 14px; color: #666666;\">��ϵ�绰</td><td style=\"font-size: 12px;\"><input name=\"usertelphone\" type=\"text\"  value='".$_POST[usertelphone]."'> ������д������ϵ [ �ɲ��� ]</td></tr>";
	$step_content .= "<tr><td align=\"right\" style=\"font-size: 14px; color: #666666;\">��վURL</td><td style=\"font-size: 12px;\"><input name=\"userwebsite\" type=\"text\" size=\"32\"  value='".$_POST[userwebsite]."' > ������д [ �ɲ��� ]</td></tr>";
	$step_content .= "<tr><td align=\"right\" style=\"font-size: 14px; color: #666666;\">��������</td><td style=\"font-size: 12px;\"><select name=\"year\">" . $year . "</select> �� <select name=\"month\">" . $month . "</select> �� <select name=\"day\">" . $day . "</select> �� ������д [ �ɲ��� ]</td></tr>";
	$step_content .= "<tr><td align=\"right\" style=\"font-size: 14px; color: #666666;\">QQ����</td><td style=\"font-size: 12px;\"><input name=\"userqq\" type=\"text\"  value='".$_POST[userqq]."'> ������д������ϵ [ �ɲ��� ]</td></tr>";
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
	

	//php�汾���
	$php_version = substr(PHP_VERSION,0,3)+0;
	if ($php_version < 4.2 || $php_version > 5.2 ){
		$phpmsg = "<font color=red style='font-size: 14px; '>�� (����ʹ��PHP4.2.x��5.2.x�汾)</font>";
		$noinstall      = "<script>document.all['subm'].disabled = true;</script>";
	}else{
		$phpmsg = "<font color=#666666 style='font-size: 14px; '>��</font>";
	}
	
	//��ȫģʽ���
	if (get_cfg_var ("safe_mode") == 1) {
		$safe_mode_caption = "ON";
		$safemsg = "<font color=red style='font-size: 14px; '>�� (��ϵͳ��PHP��ȫģʽ�²�������)</font>";
		$noinstall         = "<script>document.all['subm'].disabled = true;</script>";
	} else {
		
		$safe_mode_caption = "OFF";
		$safemsg = "<font color=#666666 style='font-size: 14px; '>��</font>";
	}

	

	//Ŀ¼Ȩ�޼��
	if (!is_writable("../advs") || !is_writable("../cp") || !is_writable("../com")  || !is_writable("../down")  || !is_writable("../pic")  || !is_writable("../form")  || !is_writable("../includes") || !is_writable("../link") || !is_writable("../news")  || !is_writable("../page") || !is_writable("../templates")) {
		$tempdir = "����д";
		$tempmsg = "<font color=red style='font-size: 14px; '>�� (������advs,cp,down,pic,form,includes,link,news,page,templatesĿ¼Ϊ�ɶ�д����777�������޷�����HTML�ͽ�������)</font>";
		$noinstall   = "<script>document.all['subm'].disabled = true;</script>";

	}else{
		$tempdir = "�ɶ�д";
		$tempmsg = "<font color=#666666 style='font-size: 14px; '>��</font>";

	}

	//config�ļ�Ȩ�޼��
	if (!is_writable("../config.inc.php")) {
		$confdir = "����д";
		$confmsg = "<font color=red style='font-size: 14px; '>�� (������config.inc.php�ļ�Ϊ�ɶ�д����666)</font>";
		$noinstall = "<script>document.all['subm'].disabled = true;</script>";

	}else{
		$confdir = "�ɶ�д";
		$confmsg = "<font color=#666666 style='font-size: 14px; '>��</font>";

	}


	//file_uploads���
	$upload = get_cfg_var ("file_uploads");
	if ($upload != "1") {
		$uploadsay="Off";
		$uploadmsg = "<font color=red style='font-size: 14px; '>�� (����php.ini������file_uploads = On)</font>";
		$noinstall      = "<script>document.all['subm'].disabled = true;</script>";
	}else{
		$uploadsay="On";
		$uploadmsg = "<font color=#666666 style='font-size: 14px; '>��</font>";
	}


	$step_content .= "<table width=\"100%\"  border=\"0\" cellspacing=\"0\" cellpadding=\"3\">";
	$step_content .= "<tr><td style=\"font-size: 15px; color: #003399; font-weight:bold;\">�� <strong>3</strong> ����������������<br><hr size=\"1\" width=\"98%\" align=\"left\">" . $error_msg . "</td></tr>";
	$step_content .= "<tr><td style=\"font-size: 14px; color: #999999;\">����ϵͳ��" . PHP_OS . "  ...��</td></tr>";
	$step_content .= "<tr><td style=\"font-size: 14px; color: #999999;\">�����������" . $_ENV['SERVER_SOFTWARE'] . "  ...��</td></tr>";
	$step_content .= "<tr><td style=\"font-size: 14px; color: #999999;\">PHP�汾��" . $php_version . "  ...".$phpmsg."</td></tr>";
	$step_content .= "<tr><td style=\"font-size: 14px; color: #999999;\">��ȫģʽ��" . $safe_mode_caption . "  ..." . $safemsg . "</td></tr>";
	$step_content .= "<tr><td style=\"font-size: 14px; color: #999999;\">Ŀ¼Ȩ�ޣ� ".$tempdir."  ..." . $tempmsg. "</td></tr>";
	$step_content .= "<tr><td style=\"font-size: 14px; color: #999999;\">�����ļ�Ȩ�ޣ� ".$confdir."  ..." . $confmsg. "</td></tr>";
	$step_content .= "<tr><td style=\"font-size: 14px; color: #999999;\">�ļ��ϴ���" . $uploadsay . "  ...".$uploadmsg."</td></tr>";
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
	$step_content .= "<tr><td colspan=\"2\" style=\"font-size: 15px; color: #003399; font-weight:bold;\">�� <strong>4</strong> �������Ժ����ݿ��������<br><hr size=\"1\" width=\"98%\" align=\"left\">" . $error_msg . "</td></tr>";
	$step_content .= "<tr><td align=\"right\" style=\"font-size: 14px; color: #000000;\">ѡ�����԰汾</td><td>
	<select name='language'>
  <option value='zh_cn_utf8' ".seld($language,"zh_cn_utf8").">��������(UTF-8)</option>
  <option value='zh_tw_utf8' ".seld($language,"zh_tw_utf8").">��������(UTF-8)</option>
 
</select> *</td></tr>";
	$step_content .= "<tr><td align=\"right\" style=\"font-size: 14px; color: #000000;\">���ݿ������</td><td><input name=\"dbhost\" type=\"text\" value=\"localhost\" size=\"20\"> *</td></tr>";
	$step_content .= "<tr><td align=\"right\" style=\"font-size: 14px; color: #000000;\">���ݿ�����</td><td><input name=\"dbname\" type=\"text\" size=\"20\" value='".$_POST[dbname]."'> *</td></tr>";
	$step_content .= "<tr><td align=\"right\" style=\"font-size: 14px; color: #000000;\">���ݿ��û�</td><td><input name=\"dbuser\" type=\"text\" size=\"20\" value='".$_POST[dbuser]."'> *</td></tr>";
	$step_content .= "<tr><td align=\"right\" style=\"font-size: 14px; color: #000000;\">���ݿ�����</td><td><input name=\"dbpwd\" type=\"text\" size=\"20\" value='".$_POST[dbpwd]."'> *</td></tr>";
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
	$step_content .= "<tr><td colspan=\"2\" style=\"font-size: 15px; color: #003399; font-weight:bold;\">�� <strong>6</strong> ����������վ����Ա����<br><hr size=\"1\" width=\"98%\" align=\"left\">" . $error_msg . "</td></tr>";
	$step_content .= "<tr><td align=\"right\" width=120 style=\"font-size: 14px; \">��վ����Ա�û���</td><td><input type=\"text\" name=\"admin_user\" value=\"admin\"> * </td></tr>";
	$step_content .= "<tr><td align=\"right\" style=\"font-size: 14px; ;\">��վ����Ա����</td><td><input type=\"text\" name=\"admin_pass\"> *</td></tr>";
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
	$next          = "<input id=\"subm\" type=\"button\" value=\"�鿴��վ\" onClick=\"window.location='../'\">&nbsp;<input id=\"sys\" type=\"button\" value=\"�����¼\" onClick=\"window.open('../adm/','_blank')\">";
	$step_content .= "<table width=\"100%\"  border=\"0\" cellspacing=\"0\" cellpadding=\"4\">";
	$step_content .= "<tr><td style=\"font-size: 15px; color: #003399; font-weight:bold;\">�� <strong>7</strong> ������װ���<br><hr width=\"98%\" size=\"1\" align=\"left\"></td></tr>";
	$step_content .= "<tr><td style=\"font-size: 14px; color: #666666; line-height: 130%\">ϵͳ��װ��ɣ�<br><br>��ɾ�� [ install ] Ŀ¼<br><br></td></tr>";
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
            <td align="right" bgcolor="<?php echo $step_caption[0]["bgcolor"]?>" class="font_13_w" style="border-top: 1 solid #ffffff; border-bottom: 1 solid #ffffff; border-right: 3 solid #ffcc00; color: <?php echo $step_caption[0]["fontcolor"]?>"><?php echo $step_caption[0]["tag"];?>&nbsp;������ܺͰ�װЭ��</td>
          </tr>
          <tr> 
            <td align="right" bgcolor="<?php echo $step_caption[1]["bgcolor"]?>" class="font_13_w" style="border-right: 3 solid #ffcc00; color: <?php echo $step_caption[1]["fontcolor"]?>"><?php echo $step_caption[1]["tag"];?>&nbsp;��д�û���Ϣ</td>
          </tr>
          <tr> 
            <td align="right" bgcolor="<?php echo $step_caption[2]["bgcolor"]?>" class="font_13_w" style="border-top: 1 solid #ffffff; border-right: 3 solid #ffcc00; color: <?php echo $step_caption[2]["fontcolor"]?>"><?php echo $step_caption[2]["tag"];?>&nbsp;������������</td>
          </tr>
          <tr> 
            <td align="right" bgcolor="<?php echo $step_caption[3]["bgcolor"]?>" class="font_13_w" style="border-top: 1 solid #ffffff; border-right: 3 solid #ffcc00; color: <?php echo $step_caption[3]["fontcolor"]?>"><?php echo $step_caption[3]["tag"];?>&nbsp;�������Ժ����ݿ����</td>
          </tr>
          <tr> 
            <td align="right" bgcolor="<?php echo $step_caption[4]["bgcolor"]?>" class="font_13_w" style="border-top: 1 solid #ffffff; border-bottom: 1 solid #ffffff; border-right: 3 solid #ffcc00; color: <?php echo $step_caption[4]["fontcolor"]?>"><?php echo $step_caption[4]["tag"];?>&nbsp;����ϵͳ��ʼ����</td>
          </tr>
          <tr> 
            <td align="right" bgcolor="<?php echo $step_caption[5]["bgcolor"]?>" class="font_13_w" style="border-right: 3 solid #ffcc00; color: <?php echo $step_caption[5]["fontcolor"]?>"><?php echo $step_caption[5]["tag"];?>&nbsp;������վ����Ա����</td>
          </tr>
          <tr> 
            <td align="right" bgcolor="<?php echo $step_caption[6]["bgcolor"]?>" class="font_13_w" style="border-top: 1 solid #ffffff; border-bottom: 1 solid #ffffff; border-right: 3 solid #ffcc00; color: <?php echo $step_caption[6]["fontcolor"]?>"><?php echo $step_caption[6]["tag"];?>&nbsp;��װ���</td>
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