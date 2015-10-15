<?php

/*
	[插件名称] 导航条信息- 替换模版导航条的{#modNavPath#}
	[适用范围] 分类检索页，分类内容详情页
	[文 件 名] NavPath.php
	[更新时间] 2006/7/30
*/


function NavPath(){

	global $TotalCat,$ArrayPid,$ArrayCatid,$ArrayCat,$ArrayCatpath,$ClassCatch,$CatchOpen;
	global $NowCatPath,$MenuInfo;

		$PSET=PlusSet("modNavPath");

		$target=PlusDef($PSET["target"],"_self");
		$tempname=PlusDef($PSET["tempname"],"tpl_navpath.htm");

		
		$tmpstr=LoadTemp(ROOTPATH."templates/".$MenuInfo["skin"]."/".$tempname);


	if(isset($NowCatPath) && $NowCatPath!=""){
		$array=explode(":",$NowCatPath);
		$cpnums=sizeof($array)-1;
		for($i=0;$i<$cpnums;$i++){
		$arr=$array[$i]+0;
			for($t=0;$t<$TotalCat;$t++){
				if($ArrayCatid[$t]==$arr){

					if($CatchOpen=="1"){
						$u="../class/".$ArrayCatid[$t].".html";
					}else{
						$u="../class/?".$ArrayCatid[$t].".html";
					}
					
					$nav.= $tmpstr." <a href='".$u."' class=nav target='".$target."'>".$ArrayCat[$t]."</a> ";

				}
			}
		}

	}
		return $nav;
}

?>