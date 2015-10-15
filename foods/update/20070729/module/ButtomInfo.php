<?php

/*
	[插件名称] 脚注信息 - 替换模版标签{#modButtomInfo#}
	[适用范围] 全站统一
	[文 件 名] ButtomInfo.php
	[更新时间] 2006/8/13
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