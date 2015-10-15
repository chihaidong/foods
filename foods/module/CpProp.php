<?php

/*
	[插件名称] 图文参数列表 - 替换模版标签{#modCpProp#}
	[适用范围] 图文频道内容详情页
	[文 件 名] CpProp.php
	[更新时间] 2006/8/4
*/

function CpProp(){

	global $msql,$tbl_prop,$NowMenuid,$ArrayCpDetail,$MenuInfo;

	$PSET=PlusSet("modCpProp");

	$tempname=PlusDef($PSET["tempname"],"tpl_cpprop.htm");

	$catid=$ArrayCpDetail["catid"];


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
		$pstr=str_replace("{#prop#}",$ArrayCpDetail[$pn],$pstr);

		$str.=$pstr;

	$i++;
	}

	$str.=$TempArr["end"];


	return $str;



}

?>