<?php

/*
	[�������] ��������Ϣ- �滻ģ�浼������{#modNavPath#}
	[���÷�Χ] �������ҳ��������������ҳ
	[�� �� ��] NavPath.php
	[����ʱ��] 2006/7/30
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