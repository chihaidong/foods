<?php

/*
	[�������] �̼����� - �滻ģ���ǩ{#modCompanyTotal#}
	[���÷�Χ] ȫվ
	[�� �� ��] CompanyTotal.php
	[����ʱ��] 2006/10/4
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