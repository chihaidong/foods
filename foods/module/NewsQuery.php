<?php

/*
	[插件名称] 文章检索 - 替换文章模版的{#modNewsQuery#}
	[适用范围] 文章分类检索页
	[文 件 名] NewsQuery.php
	[更新时间] 2006/7/30
*/


function NewsQuery(){

	global $fsql,$charset,$tbl_news_con,$PagesInfo,$ShowPages,$htmlstr,$DetailCatch,$CatchOpen;
	global $strNewsQuery,$NowCatid,$NowMenuid,$NowFold,$MenuInfo;

	$catid=$NowCatid;
	
	$PSET=PlusSet("modNewsQuery");
	
	$shownums=PlusDef($PSET["shownums"],"20");
	$ord=PlusDef($PSET["ord"],"id");
	$sc=PlusDef($PSET["sc"],"desc");
	$showtime=PlusDef($PSET["showtime"],"Y-m-d");
	$cutword=PlusDef($PSET["cutword"],"0");
	$target=PlusDef($PSET["target"],"_self");
	$tempname=PlusDef($PSET["tempname"],"tpl_newsquery.htm");
	

	$key=$_GET["key"];
	$showtj=$_GET["showtj"];
	$page=$_GET["page"];
	$showhot=$_GET["showhot"];
	$memberid=$_GET["memberid"];

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
	if($memberid!="" && $memberid!="all"){
	$scl.=" and memberid='$memberid' ";

	}

	if($showhot=="1"){
	
		$ord="cl";
	}

	if($key!=""){
		
		$scl.=" and (title regexp '$key' or body regexp '$key') ";
	}
	
	
	include(ROOTPATH."includes/func/pages.inc.php");
	$pages=new pages;

	$totalnums=TblCount($tbl_news_con,"id",$scl);
	
	$pages->setvar(array("showtj" => $showtj,"showhot" => $showhot,"author" => $author,"key" => $key));

	$pages->set($shownums,$totalnums);		                          
		
	$pagelimit=$pages->limit();	  

	$fsql->query("select * from $tbl_news_con where $scl order by $ord $sc limit $pagelimit");

	while($fsql->next_record()){
		
		$id=$fsql->f('id');
		$title=$fsql->f('title');
		$memo=$fsql->f('memo');
		$catpath=$fsql->f('catpath');
		$dtime=$fsql->f('dtime');
		$nowcatid=$fsql->f('catid');
		$ifbold=$fsql->f('ifbold');
		$ifred=$fsql->f('ifred');
		$author=$fsql->f('author');
		$source=$fsql->f('source');
		$cl=$fsql->f('cl');

		$dtime=date($showtime,$dtime);
		
		if($CatchOpen=="1"){
			$link="../html/".$id.".html";
		}else{
			$link="../html/?".$id.".html";
		}

		if($ifbold=="1"){$bold=" style='font-weight:bold' ";}else{$bold="";}
		if($ifred!="0"){$red=" style='color:".$ifred."' ";}else{$red="";}

		if($cutword!="0"){$title=csubstr($title,0,$cutword,$charset);}


		$var=array (
		'title' => $title, 
		'memo' => $memo, 
		'dtime' => $dtime, 
		'red' => $red, 
		'author' => $author, 
		'source' => $source,
		'cl' => $cl, 
		'link' => $link,
		'target' => $target,
		'bold' => $bold
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