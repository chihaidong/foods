<?php

/*
	[�������] ��ע��Ϣ - �滻ģ���ǩ{#modButtomInfo#}
	[���÷�Χ] ȫվͳһ
	[�� �� ��] ButtomInfo.php
	[����ʱ��] 2006/8/13
*/

function ButtomInfo(){

	global $fsql,$charset,$tbl_plus,$MenuInfo;


	$scl=" pluslable='modButtomInfo' and  pluslocat='index' and  plustype='index' ";

	$fsql->query("select * from $tbl_plus where $scl ");
	if($fsql->next_record()){
		$body=$fsql->f('body');
		
	}



		return $body;

}

?>