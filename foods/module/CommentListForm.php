<?php

/*
	[插件名称] 新评论发布表单 - 替换模版标签{#modCommentListForm#}
	[适用范围] 评论检索页
	[文 件 名] CommentListForm.php
	[更新时间] 2006/8/11
*/



function CommentListForm(){

	global $fsql,$id;
	global $title,$MenuInfo,$NowMenuid,$MenuInfo;

	$PSET=PlusSet("modCommentListForm");

	$tempname=PlusDef($PSET["tempname"],"tpl_comment.htm");

	for($i=0;$i<=3;$i++){
			$zz=rand(1,9);
			$code.=$zz;
		}

	setCookie("CODEIMG",$code,time()+3600,"/");


	if($_GET["nowmenuid"]!=""){
		$nowmenuid=$_GET["nowmenuid"];
	}else{
		$nowmenuid="0";
	}

	if($_GET["rid"]!=""){
		$rid=$_GET["rid"];
	}else{
		$rid="0";
	}

	if($_GET["coltype"]!=""){
		$nowcoltype=$_GET["coltype"];

		$Temp=LoadTemp(ROOTPATH."templates/".$MenuInfo["skin"]."/".$tempname);

		$str=str_replace("{#nowmenuid#}",$nowmenuid,$Temp);
		$str=str_replace("{#nowcoltype#}",$nowcoltype,$str);
		$str=str_replace("{#title#}",$title,$str);
		$str=str_replace("{#id#}",$rid,$str);
		$str=str_replace("{#pid#}","0",$str);
		$str=str_replace("{#RP#}",ROOTPATH,$str);

	
	
	}else{
		$str="";	
	}

	

	return $str;


		

		
}


?>