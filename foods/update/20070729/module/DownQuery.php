<?php

/*
	[插件名称] 下载检索 - 替换模版的{#modDownQuery#}
	[适用范围] 文章分类检索页
	[文 件 名] DownQuery.php
	[更新时间] 2006/7/30
*/


function DownQuery(){

	global $fsql,$charset,$tbl_down_con,$PagesInfo,$ShowPages,$htmlstr,$CatchOpen;
	global $strDownQuery,$NowCatid,$NowMenuid,$NowFold,$MenuInfo;

	$catid=$NowCatid;
	
	$PSET=PlusSet("modDownQuery");
	
	$shownums=PlusDef($PSET["shownums"],"20");
	$ord=PlusDef($PSET["ord"],"id");
	$sc=PlusDef($PSET["sc"],"desc");
	$showtime=PlusDef($PSET["showtime"],"Y-m-d");
	$cutword=PlusDef($PSET["cutword"],"0");
	$target=PlusDef($PSET["target"],"_self");
	$tempname=PlusDef($PSET["tempname"],"tpl_downquery.htm");
	

	$key=$_GET["key"];
	$showtj=$_GET["showtj"];
	$page=$_GET["page"];
	$showhot=$_GET["showhot"];
	$author=$_GET["author"];

	$htmlstr=$catid.".html";


	//模版解释
	$Temp=LoadTemp(ROOTPATH."templates/".$MenuInfo["skin"]."/".$tempname);
	$TempArr=SplitTblTemp($Temp);

	$str=$TempArr["start"];


	$scl=" menuid='$NowMenuid' and iffb='1' ";

	if($catid!="0" && $catid!=""){
		$fmdpath=fmpath($catid);
		$scl.=" and catpath regexp '$fmdpath' ";

	}

	if($showtj!="" && $showtj!="all"){
	$scl.=" and tj='$showtj' ";

	}
	if($author!="" && $author!="all"){
	$scl.=" and author='$author' ";

	}

	if($showhot=="1"){
	
		$ord="cl";
	}

	if($key!=""){
		
		$scl.=" and (title regexp '$key' or body regexp '$key') ";
	}
	
	
	include(ROOTPATH."includes/func/pages.inc.php");
	$pages=new pages;

	$totalnums=TblCount($tbl_down_con,"id",$scl);
	
	$pages->setvar(array("showtj" => $showtj,"showhot" => $showhot,"author" => $author,"key" => $key));

	$pages->set($shownums,$totalnums);		                          
		
	$pagelimit=$pages->limit();	  

	$fsql->query("select * from $tbl_down_con where $scl order by $ord $sc limit $pagelimit");

	while($fsql->next_record()){
		
		$id=$fsql->f('id');
		$title=$fsql->f('title');
		$catpath=$fsql->f('catpath');
		$dtime=$fsql->f('dtime');
		$uptime=$fsql->f('uptime');
		$nowcatid=$fsql->f('catid');
		$filesize=$fsql->f('filesize');
		$url=$fsql->f('url');
		$author=$fsql->f('author');
		$source=$fsql->f('source');
		$cl=$fsql->f('cl');

		$dtime=date($showtime,$dtime);
		$uptime=date($showtime,$uptime);
		
		if($CatchOpen=="1"){
			$link="../html/".$id.".html";
		}else{
			$link="../html/?".$id.".html";
		}

		if(!strstr($url,"http://")){
			$url=ROOTPATH.$url;
		}
		

		if($cutword!="0"){$title=csubstr($title,0,$cutword,$charset);}


		$var=array (
		'title' => $title, 
		'dtime' => $dtime, 
		'uptime' => $uptime, 
		'url' => $url, 
		'author' => $author, 
		'source' => $source,
		'cl' => $cl, 
		'link' => $link,
		'target' => $target,
		'filesize' => $filesize
		);
		$str.=$TempArr["rowstart"];
		$str.=ShowTplTemp($TempArr["list"],$var);
		$str.=$TempArr["rowend"];

		

	}

	$str.=$TempArr["end"];

	$PagesInfo=$pages->ShowNow();
	$ShowPages=$pages->output(1);


		return $str;


}
?>