<?php

/*
	[�������] ���۱� - �滻ģ���ǩ{#modCommentForm#}
	[���÷�Χ] ����,����,ͼ������ҳ
	[�� �� ��] CommentForm.php
	[����ʱ��] 2006/8/11
*/



function CommentForm(){

	global $fsql,$id;
	global $title,$MenuInfo,$NowMenuid;
	
	for($i=0;$i<=3;$i++){
			$zz=rand(1,9);
			$code.=$zz;
		}

	setCookie("CODEIMG",$code,time()+3600,"/");
	
	$PSET=PlusSet("modCommentForm");

	$tempname=PlusDef($PSET["tempname"],"tpl_comment.htm");
	
	
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