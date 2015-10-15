<?php

/*
	[插件名称] 文章大类栏目菜单 - 替换模版标签{#modNewsMenu#}
	[适用范围] 文章检索页,内容页
	[文 件 名] NewsMenu.php
	[更新时间] 2006/7/30
*/

function NewsMenu(){

		global $msql,$tbl_news_cat,$CatchOpen;
		global $NowMenuid,$MenuInfo;


		$PSET=PlusSet("modNewsMenu");

		$showmenuid=PlusDef($PSET["showmenuid"],MenuDef("news",$NowMenuid));
		$catid=PlusDef($PSET["catid"],"0");
		$shownums=PlusDef($PSET["shownums"],"16");
		$hangnums=PlusDef($PSET["hangnums"],"8");
		$ord=PlusDef($PSET["ord"],"xuhao");
		$sc=PlusDef($PSET["sc"],"asc");
		$onlytj=PlusDef($PSET["onlytj"],"0");
		$target=PlusDef($PSET["target"],"_self");
		$tempname=PlusDef($PSET["tempname"],"tpl_classmenu.htm");

		$scl="  pid='0' ";
		
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
				$ArrayMenuid[$i]=$msql->f("menuid");
				$ArrayCatid[$i]=$msql->f("catid");
				$ArrayCat[$i]=$msql->f("cat");
				$ArrayCatpath[$i]=$msql->f("catpath");
				$ArrayCatNums[$i]=$msql->f("nums");
		$i++;
		}
		$TotalCat=$i;

        


		$tdwidth=ceil(100/$hangnums);

		
		//模版解释
		$Temp=LoadTemp(ROOTPATH."templates/".$MenuInfo["skin"]."/".$tempname);
		$TempArr=SplitTblTemp($Temp);

		
		//循环开始
		$bigcat=$TempArr["start"];

		$s=1;
		$kk=1;
		for($t=0;$t<$TotalCat;$t++){
			if($ArrayPid[$t]=="0"){
				
				if($kk==1){
					$bigcat.=$TempArr["rowstart"].$TempArr["menudivide"];
				}
				
				
				$fold=MenuFold($ArrayMenuid[$t]);

				if($CatchOpen=="1"){
					$u=ROOTPATH.$fold."/class/";
				}else{
					$u=ROOTPATH.$fold."/class/?";
				}


				$catstr=str_replace("{#TopClass#}",$ArrayCat[$t],$TempArr["menu"]);
				$catstr=str_replace("{#TopClassUrl#}",$u.$ArrayCatid[$t].".html",$catstr);
				$catstr=str_replace("{#ClassNums#}",$ArrayCatNums[$t],$catstr);
				$catstr=str_replace("{#width#}","width=".$tdwidth."%",$catstr);
				$catstr=str_replace("{#target#}",$target,$catstr);

				
				$bigcat.=$catstr;

				
				if($kk==$hangnums){
					$bigcat.=$TempArr["menudivide"].$TempArr["rowend"];
					$kk=0;
				}else{
					$bigcat.=$TempArr["menudivide"];
				}

				
				$kk++;

				if($s>=$shownums && $shownums!=0){
					break;
				}
				$s++;
			
			}
		}
		
		if($kk!=1 && $hangnums<$TotalCat){
			$needtd=$hangnums-$kk;
			for($u=1;$u<=$needtd;$u++){
				$bigcat.=$TempArr["blank"].$TempArr["blankdivide"];
			}
			$bigcat.=$TempArr["blank"];
			$bigcat.=$TempArr["rowend"];
		}
		
        $bigcat.=$TempArr["end"];
       
		return $bigcat;

		
}


?>