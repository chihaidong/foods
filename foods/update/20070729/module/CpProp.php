<?php

/*
	[�������] ͼ�Ĳ����б� - �滻ģ���ǩ{#modCpProp#}
	[���÷�Χ] ͼ��Ƶ����������ҳ
	[�� �� ��] CpProp.php
	[����ʱ��] 2006/8/4
*/

function CpProp(){

	global $msql,$tbl_prop,$NowMenuid,$ArrayCpDetail,$MenuInfo;

	$PSET=PlusSet("modCpProp");

	$tempname=PlusDef($PSET["tempname"],"tpl_cpprop.htm");

	$catid=$ArrayCpDetail["catid"];


	//ģ�����
	$Temp=LoadTemp(ROOTPATH."templates/".$MenuInfo["skin"]."/".$tempname);
	$TempArr=SplitTblTemp($Temp);

	$str=$TempArr["start"];

	$propstr=$TempArr["list"];

	$i=1;
	$msql->query("select * from $tbl_prop where menuid='$NowMenuid' and catid='$catid' order by xuhao");
	while($msql->next_record()){
		$propname=$msql->f('propname');
		$pn="prop".$i;

		$pstr=str_replace("{#propname#}",$propname,$propstr);
		$pstr=str_replace("{#prop#}",$ArrayCpDetail[$pn],$pstr);

		$str.=$pstr;

	$i++;
	}

	$str.=$TempArr["end"];


	return $str;



}

?>