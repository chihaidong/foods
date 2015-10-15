<?php

/*
	[插件名称] 活动报名和评论表单 - 替换模版标签{#modHdCommentForm#}
	[适用范围] 活动详情页
	[文 件 名] HdCommentForm.php
	[更新时间] 2006/11/18
*/



function HdCommentForm(){

	global $fsql,$id;
	global $title,$MenuInfo,$NowMenuid;
	
	for($i=0;$i<=3;$i++){
			$zz=rand(1,9);
			$code.=$zz;
		}

	setCookie("CODEIMG",$code,time()+3600,"/");
	
	$PSET=PlusSet("modHdCommentForm");

	$tempname=PlusDef($PSET["tempname"],"tpl_hdcomment.htm");
	
	
	$Temp=LoadTemp(ROOTPATH."templates/".$MenuInfo["skin"]."/".$tempname);

	$str=str_replace("{#nowmenuid#}",$NowMenuid,$Temp);
	$str=str_replace("{#nowcoltype#}",$MenuInfo["coltype"],$str);
	$str=str_replace("{#title#}",$title,$str);
	$str=str_replace("{#id#}",$id,$str);
	$str=str_replace("{#pid#}","",$str);
	$str=str_replace("{#RP#}",ROOTPATH,$str);

	return $str;


		

		
}


?>