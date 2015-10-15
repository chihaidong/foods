<?php

/*
	[插件名称] 供应总数 - 替换模版标签{#modSellTotal#}
	[适用范围] 全站
	[文 件 名] SellTotal.php
	[更新时间] 2006/10/4
*/


function SellTotal(){

	global $fsql,$tbl_info;


	$fsql->query("select count(id) from $tbl_info where bstype='1' and  iffb='1'");
		
	if($fsql->next_record()){
		$count=$fsql->f('count(id)');
	}

	return $count;


}

?>