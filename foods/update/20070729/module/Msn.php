<?php

/*
	[插件名称] 短消息提示功能{#modMsn#}
	[适用范围] foot.html
	[文 件 名] Msn.php
	[更新时间] 2006/12/23
*/

function Msn(){


global $charset,$MenuInfo;

$tempname="tpl_msn.htm";

$tempname=$MenuInfo["skin"]."/".$tempname;

$str="<script src='".ROOTPATH."msn.php?path=".ROOTPATH."&skin=".$MenuInfo["skin"]."&tempname=".$tempname."'></script>";
return $str;


}

?>