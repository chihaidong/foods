<?php

/*
	[插件名称] 活动检索 - 替换模版的{#modHdQuery#}
	[适用范围] 检索页
	[文 件 名] HdQuery.php
	[更新时间] 2006/11/18
*/


function HdQuery(){

	global $fsql,$tsql,$charset,$tbl_play,$PagesInfo,$ShowPages,$htmlstr,$CatchOpen;
	global $NowFold,$MenuInfo,$lanHdClosed;

	
	
	$PSET=PlusSet("modHdQuery");
	
	$shownums=PlusDef($PSET["shownums"],"20");
	$ord=PlusDef($PSET["ord"],"dtime");
	$sc=PlusDef($PSET["sc"],"desc");
	$cutword=PlusDef($PSET["cutword"],"90");
	$target=PlusDef($PSET["target"],"_self");
	$showtime=PlusDef($PSET["showtime"],"Y-m-d H:i");
	$tempname=PlusDef($PSET["tempname"],"tpl_hdquery.htm");
	

	
	$showtj=$_GET["showtj"];
	$page=$_GET["page"];
	

	$htmlstr=$catid.".html";


	//模版解释
	$Temp=LoadTemp(ROOTPATH."templates/".$MenuInfo["skin"]."/".$tempname);
	$TempArr=SplitTblTemp($Temp);

	$str=$TempArr["start"];

	$now=time();
	$scl=" iffb='1' and exptime>$now ";

	if($showtj=="1"){
	$scl.=" and tj='$showtj' ";

	}


	
	include(ROOTPATH."includes/func/pages.inc.php");
	$pages=new pages;

	$totalnums=TblCount($tbl_play,"id",$scl);
	
	$pages->setvar(array("showtj" => $showtj));

	$pages->set($shownums,$totalnums);		                          
		
	$pagelimit=$pages->limit();	  

	$fsql->query("select * from $tbl_play where $scl order by $ord $sc limit $pagelimit");

	while($fsql->next_record()){
		
			$id=$fsql->f('id');
			$title=$fsql->f('title');
			$body=$fsql->f('body');
			$playtime=$fsql->f('playtime');
			$playaddr=$fsql->f('playaddr');
			$name=$fsql->f('name');
			$xiaofei=$fsql->f('xiaofei');
			$pnums=$fsql->f('pnums');
			$addnums=$fsql->f('addnums');
			$dtime=$fsql->f('dtime');
			$exptime=$fsql->f('exptime');
			$stat=$fsql->f('stat');
			$memberid=$fsql->f('memberid');
			$src=$fsql->f('picsrc');

			if($src==""){
					$src="images/nophoto.gif";
			}
			$src=ROOTPATH.$src;
			
			

			if($CatchOpen=="1" && file_exists(ROOTPATH."hd/html/".$id.".html")){
				$link=ROOTPATH."hd/html/".$id.".html";
			}else{
				$link=ROOTPATH."hd/html/?".$id.".html";
			}



		$body=strip_tags($body);
		if($cutword!="0"){$body=csubstr($body,0,$cutword,$charset)." ...";}


		$comdir=$memberid+100000;

		if($CatchOpen=="1" && file_exists(ROOTPATH."com/".$comdir."/index.html")){
			$companylink=ROOTPATH."com/".$comdir."/index.html";
		}else{
			$companylink=ROOTPATH."com/".$comdir."/index.php";
		}

		$feedbacklink=ROOTPATH."com/".$comdir."/feedback.php";

		$uptime=date($showtime,$dtime);
		$exptime=date($showtime,$exptime);

		if($stat=="1"){
			$saystat=$lanHdClosed;
		}else{
			$saystat="";
		}

		$var=array (
		'title' => $title, 
		'name' => $name, 
		'playtime' => $playtime, 
		'playaddr' => $playaddr, 
		'pnums' => $pnums, 
		'addnums' => $addnums, 
		'xiaofei' => $xiaofei, 
		'companylink' => $companylink, 
		'feedbacklink' => $feedbacklink, 
		'uptime' => $uptime, 
		'exptime' => $exptime, 
		'body' => $body, 
		'saystat' => $saystat, 
		'src' => $src,
		'link' => $link,
		'zcaddr' => $zcaddr,
		'target' => $target

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