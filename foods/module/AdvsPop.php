<?php

/*
	[�������] ���������ж� - �滻ģ���ǩ{#modAdvsPop#}
	[���÷�Χ] foot.html
	[�� �� ��] AdvsPop.php
	[����ʱ��] 2006/7/30
*/

function AdvsPop(){

	global $msql,$tbl_pop,$NowMenuid,$MenuInfo;



	$advsstr="";
	$msql->query("select * from $tbl_pop where menuid='$NowMenuid' and ifpop='1'");
	if($msql->next_record()){
		$popid=$msql->f('id');
		$popwidth=$msql->f('popwidth');
		$popheight=$msql->f('popheight');
		$popleft=$msql->f('popleft');
		$poptop=$msql->f('poptop');
		$poptoolbar=$msql->f('poptoolbar');
		$popmenubar=$msql->f('popmenubar');
		$popstatus=$msql->f('popstatus');
		$poplocation=$msql->f('poplocation');
		$popscrollbars=$msql->f('popscrollbars');
		$popresizable=$msql->f('popresizable');
		$advsstr.="<script>window.open('".ROOTPATH."pop.php?menuid=".$NowMenuid."','','width=".$popwidth.",height=".$popheight.",left=".$popleft.",top=".$poptop.",toolbar=".$poptoolbar.",menubar=".$popmenubar.",status=".$popstatus.",location=".$poplocation.",scrollbars=".$popscrollbars.",resizable=".$popresizable."')</script>";
	}

	return $advsstr;
}



?>