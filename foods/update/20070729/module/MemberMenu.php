<?php

/*
	[插件名称] 会员区功能菜单 - 替换模版标签{#modMemberMenu#}
	[适用范围] 会员专区
	[文 件 名] MemberMenu.php
	[更新时间] 2006/7/23
*/

function MemberMenu(){

        global $fsql,$tbl_member_func,$strMemberFunc,$MenuInfo;
		
		$nowfunctbl=$tbl_member_func."_".$_COOKIE["MEMBERTYPEID"];
		
		$PSET=PlusSet("modMemberMenu");
		
		$target=PlusDef($PSET["target"],"_self");


		$FormString.="<table width=100% border=0 cellspacing=3 cellpadding=3><tr><td>";
		$FormString.="<LINK href='css/dtree.css' type=text/css rel=stylesheet><script type=text/javascript src=js/dirtree.js></script>";
		$FormString.="<script  type=text/javascript> <!-- \n";
		$FormString.="function dtree(){";
		$FormString.="x = new dTree('x');";
		$FormString.="x.add(0,-1,'$strMemberFunc','member.php','','$target');";

		$fsql->query("select * from $nowfunctbl where  used='1' order by xuhao");
		while($fsql->next_record()){
			$id=$fsql->f('id');
			$pid=$fsql->f('pid');
			$menu=$fsql->f('menu');
			$link=$fsql->f('link');
			if($link!=""){
					$FormString.="x.add('$id','$pid','$menu','$link'); \n";
			}else{
					$FormString.="x.add('$id','$pid','$menu'); \n";
			
			}
			
        }	
		$FormString.="document.write(x); } \n //--></script><script>dtree();</script>";
		$FormString.="</td></tr></table>";
		
		return $FormString;
		

}


?>