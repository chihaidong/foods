<?php

/*
	[²å¼þÃû³Æ] ²Í¹ÝÍ¼Æ¬¼ìË÷ - Ìæ»»Ä£°æµÄ{#modCompanyLicQuery#}
	[ÊÊÓÃ·¶Î§] ²Í¹ÝÍ¼Æ¬¼ìË÷Ò³
	[ÎÄ ¼þ Ãû] CompanyLicQuery.php
	[¸üÐÂÊ±¼ä] 2006/9/23
*/


function CompanyLicQuery(){

	global $fsql,$tsql,$charset,$tbl_zs,$tbl_company,$PagesInfo,$ShowPages,$htmlstr,$CatchOpen;
	global $NowCatid,$NowFold,$MenuInfo,$NowCompanyId;

	
	$PSET=PlusSet("modCompanyLicQuery");
	
	$shownums=PlusDef($PSET["shownums"],"10");
	$hangnums=PlusDef($PSET["hangnums"],"5");
	$smallw=PlusDef($PSET["smallw"],"122");
	$smallh=PlusDef($PSET["smallh"],"85");
	$ord=PlusDef($PSET["ord"],"uptime");
	$sc=PlusDef($PSET["sc"],"desc");
	$cutword=PlusDef($PSET["cutword"],"12");
	$target=PlusDef($PSET["target"],"_self");
	$showtime=PlusDef($PSET["showtime"],"Y/m/d H:i");
	$tempname=PlusDef($PSET["tempname"],"tpl_zsquery.htm");
	

	
	$page=$_GET["page"];
	
	
	$htmlstr=$catid.".html";
	$tdwidth=ceil(100/$hangnums);


	//Ä£°æ½âÊÍ
	$Temp=LoadTemp(ROOTPATH."templates/".$MenuInfo["skin"]."/".$tempname);
	$TempArr=SplitTblTemp($Temp);

	$str=$TempArr["start"];

	$now=time();
	$scl="  iffb='1' and memberid='$NowCompanyId' ";


	include(ROOTPATH."includes/func/pages.inc.php");
	$pages=new pages;

	$totalnums=TblCount($tbl_zs,"id",$scl);
	
	$pages->setvar(array("key" => $key));

	$pages->set($shownums,$totalnums);		                          
		
	$pagelimit=$pages->limit();	  

	$kk=1;
	$fsql->query("select * from $tbl_zs where $scl order by $ord $sc limit $pagelimit");

	while($fsql->next_record()){
		
		$id=$fsql->f('id');
		$memberid=$fsql->f('memberid');
		$title=$fsql->f('title');
		$body=$fsql->f('body');
		$pictype=$fsql->f('pictype');
		$picsrc=$fsql->f('picsrc');
		$dtime=$fsql->f('dtime');
		$uptime=$fsql->f('uptime');


		$comdir=$memberid+100000;

		if($CatchOpen=="1" && file_exists(ROOTPATH."com/".$comdir."/license/html/".$id.".html")){
			$link=ROOTPATH."com/".$comdir."/license/html/".$id.".html";
		}else{
			$link=ROOTPATH."com/".$comdir."/license/html/?".$id.".html";
		}

		if($picsrc!=""){
			$src=ROOTPATH.$picsrc;
		}else{
			$src=ROOTPATH."images/nophoto.gif";
		}

		
		if($cutword!="0"){$title=csubstr($title,0,$cutword,$charset);}
		if($smallw=="-1"){$xsmallw="";}else{$xsmallw="width='$smallw' ";}
		if($smallh=="-1"){$xsmallh="";}else{$xsmallh="height='$smallh' ";}

		$uptime=date($showtime,$uptime);

		if($kk==1){

			$str.=$TempArr["rowstrat"];
		}

		$var=array (
		'title' => $title, 
		'uptime' => $uptime, 
		'smallw' => $xsmallw, 
		'smallh' => $xsmallh, 
		'body' => $body, 
		'src' => $src,
		'link' => $link,
		'target' => $target

		);
	
		$str.=ShowTplTemp($TempArr["menu"],$var);
		
		
		if($kk==$hangnums){
				$str.=str_replace("{#hangnums#}",$hangnums,$TempArr["rowend"]);
				$kk=0;
		}
		
	$kstr="";
	$kk++;

		

	}

	//²¹³ä¿ÕµÄtd

	if($kk!=1){
		$needtd=$hangnums-$kk+1;
		for($u=1;$u<=$needtd;$u++){
			$str.=$TempArr["blank"];
		}
			$str.=$TempArr["rowend"];
	}

	$str.=$TempArr["end"];

	$PagesInfo=$pages->ShowNow();
	$ShowPages=$pages->output(1);


		return $str;


}
?>