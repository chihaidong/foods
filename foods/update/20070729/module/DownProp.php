<?php

/*
	[�������] ���ز����б� - �滻ģ���ǩ{#modDownProp#}
	[���÷�Χ] ͼ��Ƶ����������ҳ
	[�� �� ��] DownProp.php
	[����ʱ��] 2006/8/5
*/

function DownProp(){

	global $msql,$tbl_prop,$NowMenuid,$ArrayDownDetail,$MenuInfo;

	$PSET=PlusSet("modDownProp");

	$tempname=PlusDef($PSET["tempname"],"tpl_downprop.htm");

	$catid=$ArrayDownDetail["catid"];


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
		$pstr=str_replace("{#prop#}",$ArrayDownDetail[$pn],$pstr);

		$str.=$pstr;

	$i++;
	}

	$str.=$TempArr["end"];

	$var=array (
		'title' => $ArrayDownDetail["title"], 
		'dtime' => $ArrayDownDetail["dtime"], 
		'uptime' => $ArrayDownDetail["uptime"], 
		'url' => $ArrayDownDetail["url"], 
		'type' => $ArrayDownDetail["type"], 
		'cl' => $ArrayDownDetail["cl"], 
		'filesize' => $ArrayDownDetail["filesize"]
		);
		
		$str=ShowTplTemp($str,$var);


	return $str;



}

?>