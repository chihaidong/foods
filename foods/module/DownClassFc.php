<?php

/*
	[插件名称] 下载下一级分类 - 替换模版标签{#modDownClassFc#}
	[适用范围] 下载检索页
	[文 件 名] DownClassFc.php
	[更新时间] 2006/7/30
*/



function DownClassFc(){

		global $msql,$tbl_down_cat,$CatchOpen,$DetailCatch;
		global $strDownClass,$NowCatid,$NowMenuid,$MenuInfo;



		$PSET=PlusSet("modDownClassFc");

		$shownums=PlusDef($PSET["shownums"],"0");
		$hangnums=PlusDef($PSET["hangnums"],"5");
		$ord=PlusDef($PSET["ord"],"xuhao");
		$sc=PlusDef($PSET["sc"],"asc");
		$onlytj=PlusDef($PSET["onlytj"],"0");
		$target=PlusDef($PSET["target"],"_self");
		$tempname=PlusDef($PSET["tempname"],"tpl_class.htm");



		if(!isset($NowCatid) || $NowCatid==""){
			$NowCatid=0;
		}

		$scl=" menuid='$NowMenuid' ";
		
		if($onlytj=="1"){
			$scl.=" and tj='1' ";
		}


		$msql->query("select * from $tbl_down_cat where $scl order by $ord $sc");
		$i=0;
		while($msql->next_record()){
				$ArrayPid[$i]=$msql->f("pid");
				$ArrayCatid[$i]=$msql->f("catid");
				$ArrayCat[$i]=$msql->f("cat");
				$ArrayCatpath[$i]=$msql->f("catpath");
				$ArrayCatNums[$i]=$msql->f("nums");
		$i++;
		}
		$TotalCat=$i;

        

		$tdwidth=ceil(100/$hangnums);

		if($CatchOpen=="1"){
			$u="./";
		}else{
			$u="./?";
		}

		//模版解释
		$Temp=LoadTemp(ROOTPATH."templates/".$MenuInfo["skin"]."/".$tempname);
		$TempArr=SplitTblTemp($Temp);

		
		//循环开始
		$bigcat=$TempArr["start"];

		$s=1;
		$kk=1;
		for($t=0;$t<$TotalCat;$t++){
			if($ArrayPid[$t]==$NowCatid){
				
				if($kk==1){
					$bigcat.=$TempArr["rowstart"];
				}
				
				$catstr=str_replace("{#TopClass#}",$ArrayCat[$t],$TempArr["menu"]);
				$catstr=str_replace("{#TopClassUrl#}",$u.$ArrayCatid[$t].".html",$catstr);
				$catstr=str_replace("{#ClassNums#}",$ArrayCatNums[$t],$catstr);
				$catstr=str_replace("{#width#}","width=".$tdwidth."%",$catstr);
				$catstr=str_replace("{#target#}",$target,$catstr);

				
				$bigcat.=$catstr;

				
				if($kk==$hangnums){
					$bigcat.=$TempArr["rowend"];
					$kk=0;
				}

				
				$kk++;

				if($s>=$shownums && $shownums!=0){
					break;
				}
				$s++;
			
			}
		}
		
		if($kk!=1){
			$needtd=$hangnums-$kk+1;
			for($u=1;$u<=$needtd;$u++){
				$bigcat.=$TempArr["blank"];
			}
				$bigcat.=$TempArr["rowend"];
		}
		
        $bigcat.=$TempArr["end"];
       

		return $bigcat;
		
}


?>