<?php

/*
	[插件名称] 会员登录表单 - 替换模版标签{#modLoginForm#}
	[适用范围] 全站
	[文 件 名] LoginForm.php
	[更新时间] 2006/8/15
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

		//模版解释
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