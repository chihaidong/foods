<?php

/*
	[插件名称] 商家总数 - 替换模版标签{#modCompanyTotal#}
	[适用范围] 全站
	[文 件 名] CompanyTotal.php
	[更新时间] 2006/10/4
*/


function CompanyTotal(){

	global $fsql,$tbl_company;


	$fsql->query("select count(id) from $tbl_company where iffb='1'");
		
	if($fsql->next_record()){
		$count=$fsql->f('count(id)');
	}

	return $count;


}

?>