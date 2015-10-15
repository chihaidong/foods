<?php

/*
	[插件名称] 二级分类 - 模版标签{#modDownTwoClass#}
	[适用范围] 所有页面
	[文 件 名] DownTwoClass.php
	[更新时间] 2006/8/5
*/


function DownTwoClass(){

		global $msql,$tbl_down_cat,$CatchOpen,$strDownClass;
		global $NowMenuid,$MenuInfo;

		$PSET=PlusSet("modDownTwoClass");

		$shownums=PlusDef($PSET["shownums"],"0");
		$showmenuid=PlusDef($PSET["showmenuid"],MenuDef("down",$NowMenuid));
		$catid=PlusDef($PSET["catid"],"0");
		$hangnums=PlusDef($PSET["hangnums"],"2");
		$ord=PlusDef($PSET["ord"],"xuhao");
		$sc=PlusDef($PSET["sc"],"asc");
		$onlytj=PlusDef($PSET["onlytj"],"0");
		$target=PlusDef($PSET["target"],"_self");
		$tempname=PlusDef($PSET["tempname"],"tpl_twoclass1.htm");

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

		$msql->query("select * from $tbl_down_cat where $scl order by $ord $sc");
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



		//模版解释
		$Temp=LoadTemp(ROOTPATH."templates/".$MenuInfo["skin"]."/".$tempname);
		$TempArr=SplitTblTemp($Temp);

	
		//循环开始
		$bigcat=$TempArr["start"];

		$s=1;
		for($t=0;$t<$TotalCat;$t++){
				if($ArrayPid[$t]==$catid){

					$bigcat.=$TempArr["rowstart"];

					$fold=MenuFold($ArrayMenuid[$t]);

					if($CatchOpen=="1"){
						$u=ROOTPATH.$fold."/class/";
					}else{
						$u=ROOTPATH.$fold."/class/?";
					}

					
					$catstr=str_replace("{#TopClass#}",$ArrayCat[$t],$TempArr["menu"]);
					$catstr=str_replace("{#TopClassUrl#}",$u.$ArrayCatid[$t].".html",$catstr);
					$catstr=str_replace("{#ClassNums#}",$ArrayCatNums[$t],$catstr);
					$catstr=str_replace("{#target#}",$target,$catstr);
				

					$bigcat.=$catstr;
					$bigcat.=$TempArr["rowend"].$TempArr["rowstart"];

					$SecondMenu=DownSmallClass($fold,$hangnums,$target,$ArrayCatid[$t],$ArrayPid,$TotalCat,$ArrayCatid,$ArrayCat,$ArrayCatpath,$ArrayCatNums);
					
					$bigcat.=str_replace("{#SecondMenu#}",$SecondMenu,$TempArr["secondmenu"]);
					
					$bigcat.=$TempArr["rowend"];

					if($s>=$shownums && $shownums!=0){
						break;
					}
					$s++;
				}
				
				
		}
		$bigcat.=$TempArr["end"];
		return $bigcat;
       
}


function DownSmallClass($fold,$hangnums,$target,$pid,$ArrayPid,$TotalCat,$ArrayCatid,$ArrayCat,$ArrayCatpath,$ArrayCatNums){

		global $CatchOpen,$MenuInfo;


		$tdwidth=ceil(100/$hangnums);

		if($CatchOpen=="1"){
			$u=ROOTPATH.$fold."/class/";
		}else{
			$u=ROOTPATH.$fold."/class/?";
		}


		//模版解释
		$Temp=LoadTemp(ROOTPATH."templates/".$MenuInfo["skin"]."/tpl_twoclass2.htm");
		$TempArr=SplitTblTemp($Temp);


		$smallcat=$TempArr["start"];
						
		$k=0;
		$f=1;
		
		for($p=0;$p<$TotalCat;$p++){
			if($ArrayPid[$p]==$pid){
				
				if($f==1){
					$smallcat.=$TempArr["rowstart"];
				}
				
				$scatstr=str_replace("{#TopClass#}",$ArrayCat[$p],$TempArr["menu"]);
				$scatstr=str_replace("{#TopClassUrl#}",$u.$ArrayCatid[$p].".html",$scatstr);
				$scatstr=str_replace("{#ClassNums#}",$ArrayCatNums[$p],$scatstr);
				$scatstr=str_replace("{#width#}","width=".$tdwidth."%",$scatstr);
				$scatstr=str_replace("{#target#}",$target,$scatstr);
			
				$smallcat.=$scatstr;
				



				if($f==$hangnums){
					$smallcat.=$TempArr["rowend"];
					$f=0;
				}
			
			$k++;
			
			$f++;

			}
		}

		if($f!=1){
			$needtd=$hangnums-$f+1;
			for($g=1;$g<=$needtd;$g++){
				$smallcat.=$TempArr["blank"];
			}

			$smallcat.=$TempArr["rowend"];
		}

		$smallcat.=$TempArr["end"];


		if($k>0){

			return $smallcat;
		}

}

?>