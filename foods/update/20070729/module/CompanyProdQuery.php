<?php

/*
	[插件名称] 餐馆主页菜式检索 - 替换模版的{#modCompanyProdQuery#}
	[适用范围] 餐馆主页菜式检索页
	[文 件 名] CompanyProdQuery.php
	[更新时间] 2006/9/23
*/


function CompanyProdQuery(){

	global $fsql,$tsql,$charset,$tbl_products,$tbl_company,$PagesInfo,$ShowPages,$htmlstr,$CatchOpen;
	global $NowCatid,$NowFold,$MenuInfo,$NowCompanyId;

	$catid=$NowCatid;
	
	$PSET=PlusSet("modCompanyProdQuery");
	
	$shownums=PlusDef($PSET["shownums"],"10");
	$ord=PlusDef($PSET["ord"],"uptime");
	$sc=PlusDef($PSET["sc"],"desc");
	$cutword=PlusDef($PSET["cutword"],"90");
	$target=PlusDef($PSET["target"],"_self");
	$showtime=PlusDef($PSET["showtime"],"Y/m/d H:i");
	$tempname=PlusDef($PSET["tempname"],"tpl_prodquery.htm");
	

	$tp=$_GET["tp"];
	
	$showtj=$_GET["showtj"];
	$page=$_GET["page"];
	
	
	if($tp=="search"){
		$catid=$_GET["catid"];
		$key=$_GET["key"];
		$zoneid=$_GET["zoneid"];
		$Province=$_GET["Province"];
	}

	$htmlstr=$catid.".html";


	//模版解释
	$Temp=LoadTemp(ROOTPATH."templates/".$MenuInfo["skin"]."/".$tempname);
	$TempArr=SplitTblTemp($Temp);

	$str=$TempArr["start"];

	$now=time();
	$scl="  iffb='1' and memberid='$NowCompanyId' ";

	if($catid!="0" && $catid!=""){
		$fmdpath=fmpath($catid);
		$scl.=" and catpath regexp '$fmdpath' ";

	}

	if($zoneid!="0" && $zoneid!=""){
		$zfmdpath=fmpath($zoneid);
		$scl.=" and zonepath regexp '$zfmdpath' ";
	}

	if($showtj!="" && $showtj!="all"){
	$scl.=" and tj='$showtj' ";

	}




	if($key!=""){
		
		$scl.=" and (title regexp '$key' or body regexp '$key') ";
	}
	
	
	include(ROOTPATH."includes/func/pages.inc.php");
	$pages=new pages;

	$totalnums=TblCount($tbl_products,"id",$scl);
	
	$pages->setvar(array("tp" => $tp,"showtj" => $showtj,"key" => $key,"catid" => $catid,"zoneid" => $zoneid,"Province" => $Province));

	$pages->set($shownums,$totalnums);		                          
		
	$pagelimit=$pages->limit();	  

	$fsql->query("select * from $tbl_products where $scl order by $ord $sc limit $pagelimit");

	while($fsql->next_record()){
		
		$id=$fsql->f('id');
		$memberid=$fsql->f('memberid');
		$catid=$fsql->f('catid');
		$catpath=$fsql->f('catpath');
		$zoneid=$fsql->f('zoneid');
		$zonepath=$fsql->f('zonepath');
		$fundstype=$fsql->f('fundstype');
		$price=$fsql->f('price');
		$dw=$fsql->f('dw');
		$xh=$fsql->f('xh');
		$title=$fsql->f('title');
		$body=$fsql->f('body');
		$pictype=$fsql->f('pictype');
		$picsrc=$fsql->f('picsrc');
		$dtime=$fsql->f('dtime');
		$uptime=$fsql->f('uptime');
		$exptime=$fsql->f('exptime');


		$comdir=$memberid+100000;

		if($CatchOpen=="1" && file_exists(ROOTPATH."com/".$comdir."/products/html/".$id.".html")){
			$link=ROOTPATH."com/".$comdir."/products/html/".$id.".html";
		}else{
			$link=ROOTPATH."com/".$comdir."/products/html/?".$id.".html";
		}

		if($picsrc!=""){
			$src=ROOTPATH.$picsrc;
		}else{
			$src=ROOTPATH."images/nophoto.gif";
		}

		$body=strip_tags($body);
		if($cutword!="0"){$body=csubstr($body,0,$cutword,$charset)." ...";}

		//取出公司名称
		$tsql->query("select company,zcaddr from $tbl_company where memberid='$memberid'");
		if($tsql->next_record()){
			$company=$tsql->f('company');
			$zcaddr=$tsql->f('zcaddr');
		}

		if($CatchOpen=="1" && file_exists(ROOTPATH."com/".$comdir."/index.html")){
			$companylink=ROOTPATH."com/".$comdir."/index.html";
		}else{
			$companylink=ROOTPATH."com/".$comdir."/index.php";
		}

		$feedbacklink=ROOTPATH."com/".$comdir."/feedback.php";

		$uptime=date($showtime,$uptime);

		$var=array (
		'title' => $title, 
		'company' => $company, 
		'companylink' => $companylink, 
		'feedbacklink' => $feedbacklink, 
		'uptime' => $uptime, 
		'body' => $body, 
		'src' => $src,
		'link' => $link,
		'price' => $price, 
		'xh' => $xh, 
		'dw' => $dw, 
		'fundstype' => $fundstype, 
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