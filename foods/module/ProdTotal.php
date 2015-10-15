<?php

/*
	[插件名称] 产品总数 - 替换模版标签{#modProdTotal#}
	[适用范围] 全站
	[文 件 名] ProdTotal.php
	[更新时间] 2006/10/4
*/


function ProdTotal(){

	global $fsql,$tbl_products;


	$fsql->query("select count(id) from $tbl_products where iffb='1'");
		
	if($fsql->next_record()){
		$count=$fsql->f('count(id)');
	}

	return $count;


}

?>