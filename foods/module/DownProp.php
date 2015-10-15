<?php

/*
	[插件名称] 下载参数列表 - 替换模版标签{#modDownProp#}
	[适用范围] 图文频道内容详情页
	[文 件 名] DownProp.php
	[更新时间] 2006/8/5
*/

function DownProp(){

	global $msql,$tbl_prop,$NowMenuid,$ArrayDownDetail,$MenuInfo;

	$PSET=PlusSet("modDownProp");

	$tempname=PlusDef($PSET["tempname"],"tpl_downprop.htm");

	$catid=$ArrayDownDetail["catid"];


	//模版解释
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