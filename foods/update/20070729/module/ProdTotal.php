<?php

/*
	[�������] ��Ʒ���� - �滻ģ���ǩ{#modProdTotal#}
	[���÷�Χ] ȫվ
	[�� �� ��] ProdTotal.php
	[����ʱ��] 2006/10/4
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