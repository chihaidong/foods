<?php

/*
	[�������] ��Ӧ���� - �滻ģ���ǩ{#modSellTotal#}
	[���÷�Χ] ȫվ
	[�� �� ��] SellTotal.php
	[����ʱ��] 2006/10/4
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