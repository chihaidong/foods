<?php

/*
	[�������] ����Ϣ��ʾ����{#modMsn#}
	[���÷�Χ] foot.html
	[�� �� ��] Msn.php
	[����ʱ��] 2006/12/23
*/

function Msn(){


global $charset,$MenuInfo;

$tempname="tpl_msn.htm";

$tempname=$MenuInfo["skin"]."/".$tempname;

$str="<script src='".ROOTPATH."msn.php?path=".ROOTPATH."&skin=".$MenuInfo["skin"]."&tempname=".$tempname."'></script>";
return $str;


}

?>