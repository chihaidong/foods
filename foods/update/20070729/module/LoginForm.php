<?php

/*
	[�������] ��Ա��¼�� - �滻ģ���ǩ{#modLoginForm#}
	[���÷�Χ] ȫվ
	[�� �� ��] LoginForm.php
	[����ʱ��] 2006/8/15
*/

function LoginForm(){


global $fsql,$charset,$MenuInfo,$MenuInfo;


$PSET=PlusSet("modLoginForm");
$tempname=PlusDef($PSET["tempname"],"tpl_login1.htm");

$tempname=$MenuInfo["skin"]."/".$tempname;

$str="<script src='".ROOTPATH."loginform.php?path=".ROOTPATH."&skin=".$MenuInfo["skin"]."&tempname=".$tempname."'></script>";
return $str;

/*
	global $fsql,$charset;


		$PSET=PlusSet("modLoginForm");

		$tempname=PlusDef($PSET["tempname"],"tpl_login.htm");

		//ģ�����
		$Temp=LoadTemp(ROOTPATH."templates/".$MenuInfo["skin"]."/".$tempname);
		$TempArr=SplitTblTemp($Temp);

		if(isset($_COOKIE["MUSER"]) && $_COOKIE["MUSER"]!=""){
			$LoginString=$TempArr["menunow"];
			$LoginString=str_replace("{#user#}",$_COOKIE["MUSER"],$LoginString);
		}else{
			$LoginString=$TempArr["menu"];
		}

		return $LoginString;
*/
}

?>