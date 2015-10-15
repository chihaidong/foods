<?php

/*
	[插件名称] 餐馆分类检索 - 替换模版的{#modCompanyQuery#}
	[适用范围] 分类检索页
	[文 件 名] CompanyQuery.php
	[更新时间] 2006/9/18
*/


function CompanyQuery(){

	global $fsql,$tsql,$charset,$tbl_company,$tbl_member_zone,$tbl_member_cat,$PagesInfo,$ShowPages,$htmlstr,$DetailCatch,$CatchOpen;
	global $NowCatid,$NowFold,$MenuInfo;

	$catid=$NowCatid;
	
	$PSET=PlusSet("modCompanyQuery");
	
	$shownums=PlusDef($PSET["shownums"],"20");
	$smallw=PlusDef($PSET["smallw"],"100");
	$smallh=PlusDef($PSET["smallh"],"70");
	$ord=PlusDef($PSET["ord"],"id");
	$sc=PlusDef($PSET["sc"],"desc");
	$cutword=PlusDef($PSET["cutword"],"90");
	$target=PlusDef($PSET["target"],"_self");
	$tempname=PlusDef($PSET["tempname"],"tpl_companyquery.htm");
	

	$tp=$_GET["tp"];
	
	$showtj=$_GET["showtj"];
	$page=$_GET["page"];
	
	
	if($tp=="search"){
		$catid=$_GET["catid"];
		$tradetype=$_GET["tradetype"];
		$key=$_GET["key"];
		$zoneid=$_GET["zoneid"];
		$Province=$_GET["Province"];
	}

	$htmlstr=$catid.".html";


	//模版解释
	$Temp=LoadTemp(ROOTPATH."templates/".$MenuInfo["skin"]."/".$tempname);
	$TempArr=SplitTblTemp($Temp);

	$str=$TempArr["start"];


	$scl="  iffb='1' ";

	if($catid!="0" && $catid!=""){
		$fmdpath=fmpath($catid);
		$scl.=" and catpath regexp '$fmdpath' ";

	}

	if($zoneid!="0" && $zoneid!=""){
		$zfmdpath=fmpath($zoneid);
		$scl.=" and zonepath regexp '$zfmdpath' ";
	}

	if($showtj=="1"){
	$scl.=" and tj='$showtj' ";

	}

	if($tradetype!="" && $tradetype!="0"){
		
		$scl.=" and tradetype regexp '$tradetype' ";
	}



	if($key!=""){
		
		$scl.=" and (company regexp '$key' or intro regexp '$key' or bizprod regexp '$key' or name regexp '$key') ";
	}
	
	
	include(ROOTPATH."includes/func/pages.inc.php");
	$pages=new pages;

	$totalnums=TblCount($tbl_company,"id",$scl);
	
	$pages->setvar(array("tp" => $tp,"showtj" => $showtj,"tradetype" => $tradetype,"key" => $key,"catid" => $catid,"zoneid" => $zoneid,"Province" => $Province));

	$pages->set($shownums,$totalnums);		                          
		
	$pagelimit=$pages->limit();	  

	$fsql->query("select * from $tbl_company where $scl order by $ord $sc limit $pagelimit");

	while($fsql->next_record()){
		
		$id=$fsql->f('id');
		$memberid=$fsql->f('memberid');
		$company=$fsql->f('company');
		$catpath=$fsql->f('catpath');
		$dtime=$fsql->f('dtime');
		$nowcatid=$fsql->f('catid');
		$bizprod=$fsql->f('bizprod');
		$addr=$fsql->f('addr');
		$bizaddr=$fsql->f('bizaddr');
		$companytype=$fsql->f('companytype');
		$tradetype=$fsql->f('tradetype');
		$cl=$fsql->f('cl');
		$intro=$fsql->f('intro');
		$zoneid=$fsql->f('zoneid');
		$src=$fsql->f('picsrc');
		$type=$fsql->f('pictype');
		$tel=$fsql->f('tel');
		$fax=$fsql->f('fax');
		$url=$fsql->f('url');

		if($src==""){
			$src="images/nophoto.gif";
		}
		$src=ROOTPATH.$src;

		$tsql->query("select cat from $tbl_member_zone where catid='$zoneid'");
		if($tsql->next_record()){
			$zone=$tsql->f('cat');
		}
		
		//取出主营菜系
		$companycat="";
		$arr=explode(";",$catpath);
		for($n=0;$n<sizeof($arr)-1;$n++){
			
			$arrey=explode(":",$arr[$n]);
			for($i=0;$i<sizeof($arrey)-1;$i++){
				$cid=$arrey[$i]+0;
				
				$tsql->query("select cat from $tbl_member_cat where catid='$cid'");
				if($tsql->next_record()){
					$companycat.=$tsql->f('cat')."/";
				}
				
			
			}
			$companycat=substr($companycat,0,-1);
			$companycat.=" ";

		}

		$comdir=$memberid+100000;

		if($CatchOpen=="1" && file_exists(ROOTPATH."com/".$comdir."/index.html")){
			$link=ROOTPATH."com/".$comdir."/index.html";
		}else{
			$link=ROOTPATH."com/".$comdir."/index.php";
		}
		
		
		$feedbacklink=ROOTPATH."com/".$comdir."/feedback.php";
		
		if($smallw=="-1"){$xsmallw="";}else{$xsmallw="width='$smallw' ";}
		if($smallh=="-1"){$xsmallh="";}else{$xsmallh="height='$smallh' ";}


		$intro=strip_tags($intro);
		if($cutword!="0"){$intro=csubstr($intro,0,$cutword,$charset)." ...";}


		$var=array (
		'company' => $company, 
		'src' => $src, 
		'smallw' => $xsmallw, 
		'smallh' => $xsmallh, 
		'dtime' => $dtime, 
		'zone' => $zone, 
		'bizprod' => $bizprod, 
		'bizaddr' => $bizaddr,
		'companytype' => $companytype,
		'companycat' => $companycat,
		'tradetype' => $tradetype,
		'feedbacklink' => $feedbacklink,
		'cl' => $cl, 
		'tel' => $tel, 
		'fax' => $fax, 
		'link' => $link,
		'intro' => $intro,
		'addr'=>$addr,
		'url' => $url,
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