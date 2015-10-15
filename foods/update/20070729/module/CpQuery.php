<?php

/*
	[插件名称] 图文检索 - 替换模版的{#modCpQuery#}
	[适用范围] 图文分类检索页
	[文 件 名] CpQuery.php
	[更新时间] 2006/8/3
*/


function CpQuery(){

	global $fsql,$msql,$charset,$tbl_cp_con,$PagesInfo,$ShowPages,$htmlstr,$CatchOpen;
	global $NowCatid,$NowMenuid,$NowFold,$tbl_prop,$MenuInfo;

	$catid=$NowCatid;
	
	$PSET=PlusSet("modCpQuery");
	
	$shownums=PlusDef($PSET["shownums"],"10");
	$hangnums=PlusDef($PSET["hangnums"],"2");
	$smallw=PlusDef($PSET["smallw"],"100");
	$smallh=PlusDef($PSET["smallh"],"100");
	$ord=PlusDef($PSET["ord"],"id");
	$sc=PlusDef($PSET["sc"],"desc");
	$cutword=PlusDef($PSET["cutword"],"0");
	$target=PlusDef($PSET["target"],"_self");
	$tempname=PlusDef($PSET["tempname"],"tpl_cpquery1.htm");
	

	$key=$_GET["key"];
	$showtj=$_GET["showtj"];
	$page=$_GET["page"];
	$showhot=$_GET["showhot"];

	$htmlstr=$catid.".html";

	$tdwidth=ceil(100/$hangnums);

	//模版解释
	$Temp=LoadTemp(ROOTPATH."templates/".$MenuInfo["skin"]."/".$tempname);
	$TempArr=SplitTblTemp($Temp);

	$propstr=$TempArr["list"];

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

	$totalnums=TblCount($tbl_cp_con,"id",$scl);
	
	$pages->setvar(array("showtj" => $showtj,"showhot" => $showhot,"key" => $key));

	$pages->set($shownums,$totalnums);		                          
		
	$pagelimit=$pages->limit();	  


	$kk=1;
	$fsql->query("select * from $tbl_cp_con where $scl order by $ord $sc limit $pagelimit");

	while($fsql->next_record()){
		
		$id=$fsql->f('id');
		$title=$fsql->f('title');
		$memo=$fsql->f('memo');
		$catpath=$fsql->f('catpath');
		$catid=$fsql->f('catid');
		$dtime=$fsql->f('dtime');
		$nowcatid=$fsql->f('catid');
		$ifbold=$fsql->f('ifbold');
		$ifred=$fsql->f('ifred');
		$author=$fsql->f('author');
		$source=$fsql->f('source');
		$type=$fsql->f('type');
		$src=$fsql->f('src');
		$cl=$fsql->f('cl');
		$prop1=$fsql->f('prop1');
		$prop2=$fsql->f('prop2');
		$prop3=$fsql->f('prop3');
		$prop4=$fsql->f('prop4');
		$prop5=$fsql->f('prop5');
		$prop6=$fsql->f('prop6');
		$prop7=$fsql->f('prop7');
		$prop8=$fsql->f('prop8');
		$prop9=$fsql->f('prop9');
		$prop10=$fsql->f('prop10');
		$prop11=$fsql->f('prop11');
		$prop12=$fsql->f('prop12');
		$prop13=$fsql->f('prop13');
		$prop14=$fsql->f('prop14');
		$prop15=$fsql->f('prop15');
		$prop16=$fsql->f('prop16');
		$prop17=$fsql->f('prop17');
		$prop18=$fsql->f('prop18');
		$prop19=$fsql->f('prop19');
		$prop20=$fsql->f('prop20');

		$i=1;
		$msql->query("select * from $tbl_prop where menuid='$NowMenuid' and catid='$catid' order by xuhao");
		while($msql->next_record()){
			$pn="propname".$i;
			$$pn=$msql->f('propname');
		$i++;
		}

		$memo=str_replace("\n","<br>",$memo);

		if($src==""){
				$src="images/nopic.gif";
		}
		$src=ROOTPATH.$src;
		
		if($CatchOpen=="1"){
			$link="../html/".$id.".html";
		}else{
			$link="../html/?".$id.".html";
		}


		if($cutword!="0"){$title=csubstr($title,0,$cutword,$charset);}
		if($smallw=="-1"){$xsmallw="";}else{$xsmallw="width='$smallw' ";}
		if($smallh=="-1"){$xsmallh="";}else{$xsmallh="height='$smallh' ";}

		if($kk==1){

			$str.=$TempArr["rowstrat"];
		}

		$var=array (
		'tdwidth' => $tdwidth, 
		'title' => $title, 
		'memo' => $memo, 
		'dtime' => $dtime, 
		'src' => $src, 
		'smallw' => $xsmallw, 
		'smallh' => $xsmallh, 
		'author' => $author, 
		'source' => $source,
		'cl' => $cl, 
		'link' => $link,
		'target' => $target,
		'prop1' => $prop1,
		'prop2' => $prop2,
		'prop3' => $prop3,
		'prop4' => $prop4,
		'prop5' => $prop5,
		'prop6' => $prop6,
		'prop7' => $prop7,
		'prop8' => $prop8,
		'prop9' => $prop9,
		'prop10' => $prop10,
		'prop11' => $prop11,
		'prop12' => $prop12,
		'prop13' => $prop13,
		'prop14' => $prop14,
		'prop15' => $prop15,
		'prop16' => $prop16,
		'prop17' => $prop17,
		'prop18' => $prop18,
		'prop19' => $prop19,
		'prop20' => $prop20,
		'propname1' => $propname1,
		'propname2' => $propname2,
		'propname3' => $propname3,
		'propname4' => $propname4,
		'propname5' => $propname5,
		'propname6' => $propname6,
		'propname7' => $propname7,
		'propname8' => $propname8,
		'propname9' => $propname9,
		'propname10' => $propname10,
		'propname11' => $propname11,
		'propname12' => $propname12,
		'propname13' => $propname13,
		'propname14' => $propname14,
		'propname15' => $propname15,
		'propname16' => $propname16,
		'propname17' => $propname17,
		'propname18' => $propname18,
		'propname19' => $propname19,
		'propname20' => $propname20

		);
		

		$str.=ShowTplTemp($TempArr["menu"],$var);
		
		if($kk==$hangnums){
				$str.=str_replace("{#hangnums#}",$hangnums,$TempArr["rowend"]);
				$kk=0;
		}
		
	$kstr="";
	$kk++;
	}
	
	//补充空的td

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