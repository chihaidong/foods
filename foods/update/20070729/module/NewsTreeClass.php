<?php

/*
	[插件名称] 树型分类菜单 - 替换模版标签{#modNewsTreeClass#}
	[适用范围] 所有页面
	[文 件 名] NewsTreeClass.php
	[更新时间] 2006/8/5
*/


function NewsTreeClass(){

		global $msql,$tbl_news_cat,$CatchOpen;
		global $NowMenuid,$strSelClass,$MenuInfo;

		$PSET=PlusSet("modNewsTreeClass");

		$showmenuid=PlusDef($PSET["showmenuid"],MenuDef("news",$NowMenuid));
		$catid=PlusDef($PSET["catid"],"0");

		$ord=PlusDef($PSET["ord"],"xuhao");
		$sc=PlusDef($PSET["sc"],"asc");
		$onlytj=PlusDef($PSET["onlytj"],"0");
		$target=PlusDef($PSET["target"],"_self");


		$scl=" menuid!='0' ";

		if($showmenuid!="0" && $showmenuid!=""){
			$scl.=" and menuid='$showmenuid' ";
		}
		

		if($catid!=0 && $catid!=""){
			$catid=fmpath($catid);
			$scl.=" and catpath regexp '$catid' ";
		}

		if($onlytj=="1"){
			$scl.=" and tj='1' ";
		}


		$msql->query("select * from $tbl_news_cat where $scl order by $ord $sc");
		$i=0;
		while($msql->next_record()){
				$ArrayPid[$i]=$msql->f("pid");
				$ArrayCatid[$i]=$msql->f("catid");
				$ArrayMenuid[$i]=$msql->f("menuid");
				$ArrayCat[$i]=$msql->f("cat");
				$ArrayCatpath[$i]=$msql->f("catpath");
				$ArrayCatNums[$i]=$msql->f("nums");
		$i++;
		}
		$TotalCat=$i;

		$FormString.="<table width=100% border=0 cellspacing=3 cellpadding=3><tr><td class=dtree>";
		$FormString.="<script type=text/javascript src=../../js/dtree.js></script>";
		$FormString.="<script  type=text/javascript> <!-- \n";
		$FormString.="function dtree(){";
		$FormString.="d = new dTree('d');";
		$FormString.="d.add(0,-1,'$strSelClass','./','','$target');";

		

		for($t=0;$t<$TotalCat;$t++){
			
			$catstr=$ArrayCat[$t]." (".$ArrayCatNums[$t].")";
			

			$fold=MenuFold($ArrayMenuid[$t]);

			if($CatchOpen=="1"){
				$u=ROOTPATH.$fold."/class/";
			}else{
				$u=ROOTPATH.$fold."/class/?";
			}

			$link=$u.$ArrayCatid[$t].".html";
			
			$FormString.="d.add('$ArrayCatid[$t]','$ArrayPid[$t]','$catstr','$link','','$target'); \n";
        }	
		$FormString.="document.write(d); } \n //--></script><script>dtree();</script>";
		$FormString.="</td></tr></table>";

		return $FormString;

				
}



?>