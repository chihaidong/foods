<?php

/*
	[插件名称] 餐馆主页左侧菜单 - 替换模版标签{#modCompanyMenu#}
	[适用范围] 餐馆主页左侧
	[文 件 名] CompanyMenu.php
	[更新时间] 2006/9/18
*/

function CompanyMenu(){

	global $fsql,$charset,$MenuInfo,$CatchOpen,$NowCompanyId;

		$id=$NowCompanyId;

		
		
		$PSET=PlusSet("modCompanyMenu");

		$tempname=PlusDef($PSET["tempname"],"tpl_companymenu.htm");
		$Temp=LoadTemp(ROOTPATH."templates/".$MenuInfo["skin"]."/".$tempname);


		$comdir=$id+100000;

		if($CatchOpen=="1" && file_exists(ROOTPATH."com/".$comdir."/index.html")){
			$link1=ROOTPATH."com/".$comdir."/index.html";
		}else{
			$link1=ROOTPATH."com/".$comdir."/index.php";
		}

		if($CatchOpen=="1" && file_exists(ROOTPATH."com/".$comdir."/sell/class/0.html")){
			$link2=ROOTPATH."com/".$comdir."/sell/class/0.html";
		}else{
			$link2=ROOTPATH."com/".$comdir."/sell/class/";
		}

		if($CatchOpen=="1" && file_exists(ROOTPATH."com/".$comdir."/products/class/0.html")){
			$link3=ROOTPATH."com/".$comdir."/products/class/0.html";
		}else{
			$link3=ROOTPATH."com/".$comdir."/products/class/";
		}

		if($CatchOpen=="1" && file_exists(ROOTPATH."com/".$comdir."/buy/class/0.html")){
			$link4=ROOTPATH."com/".$comdir."/buy/class/0.html";
		}else{
			$link4=ROOTPATH."com/".$comdir."/buy/class/";
		}

		if($CatchOpen=="1" && file_exists(ROOTPATH."com/".$comdir."/license/class/0.html")){
			$link5=ROOTPATH."com/".$comdir."/license/class/0.html";
		}else{
			$link5=ROOTPATH."com/".$comdir."/license/class/";
		}

		

		if($CatchOpen=="1" && file_exists(ROOTPATH."com/".$comdir."/job/class/0.html")){
			$link7=ROOTPATH."com/".$comdir."/job/class/0.html";
		}else{
			$link7=ROOTPATH."com/".$comdir."/job/class/";
		}

		
		$link8=ROOTPATH."com/".$comdir."/contact.php";
		$link9=ROOTPATH."com/".$comdir."/feedback.php";
		
	

	$var=array (
	'link1'=>$link1,
	'link2'=>$link2,
	'link3'=>$link3,
	'link4'=>$link4,
	'link5'=>$link5,
	'link6'=>$link6,
	'link7'=>$link7,
	'link8'=>$link8,
	'link9'=>$link9

	);
	$str=ShowTplTemp($Temp,$var);


	return $str;
		

}

?>