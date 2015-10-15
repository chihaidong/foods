<?php

/*
	[插件名称] 产品展厅分类列表 - 模版标签{#modProdClassAll#}
	[适用范围] 所有页面
	[文 件 名] ProdClassAll.php
	[更新时间] 2006/9/23
*/


function ProdClassAll(){

		global $msql,$tbl_products_cat,$CatchOpen;
		global $NowMenuid,$MenuInfo,$strMore;

		$PSET=PlusSet("modProdClassAll");


		
		$shownums=0;
		$hangnums=PlusDef($PSET["hangnums"],"2");
		$ord=PlusDef($PSET["ord"],"xuhao");
		$showmore=PlusDef($PSET["showmore"],$strMore);
		$sc=PlusDef($PSET["sc"],"asc");
		$target=PlusDef($PSET["target"],"_self");
		$cutword=PlusDef($PSET["cutword"],"30");
		$onlytj=PlusDef($PSET["onlytj"],"0");

		$tempname=PlusDef($PSET["tempname"],"tpl_mainclass1.htm");

		
		if($onlytj=="1"){
			$scl=" where tj='1' ";
		}

		$tdwidth=ceil(100/$hangnums)."%";

		$msql->query("select * from $tbl_products_cat $scl order by $ord $sc");
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



		//模版解释
		$Temp=LoadTemp(ROOTPATH."templates/".$MenuInfo["skin"]."/".$tempname);
		$TempArr=SplitTblTemp($Temp);

	
		//循环开始
		$bigcat=$TempArr["start"];

		$s=1;
		$f=1;
		for($t=0;$t<$TotalCat;$t++){
				if($ArrayPid[$t]==0){

					if($f==1){
						$bigcat.=$TempArr["rowstart"];
					}

					

					if($CatchOpen=="1" && file_exists(ROOTPATH."products/class/".$ArrayCatid[$t].".html")){
						$u=ROOTPATH."products/class/";
					}else{
						$u=ROOTPATH."products/class/?";
					}
					
					if($showmore!=""){
						$more=$showmore;
						$morelink=$u.$ArrayCatid[$t].".html";
					}else{
						$morelink="";
						$more="";
					}
					$SecondMenu=ProdClassSmall("products",$cutword,$target,$ArrayCatid[$t],$ArrayPid,$TotalCat,$ArrayCatid,$ArrayCat,$ArrayCatpath,$ArrayCatNums);
					
					
					$catstr=str_replace("{#TopClass#}",$ArrayCat[$t],$TempArr["menu"]);
					$catstr=str_replace("{#TopClassUrl#}",$u.$ArrayCatid[$t].".html",$catstr);
					$catstr=str_replace("{#ClassNums#}",$ArrayCatNums[$t],$catstr);
					$catstr=str_replace("{#SecondMenu#}",$SecondMenu,$catstr);
					$catstr=str_replace("{#target#}",$target,$catstr);
					$catstr=str_replace("{#more#}",$more,$catstr);
					$catstr=str_replace("{#morelink#}",$morelink,$catstr);
					$catstr=str_replace("{#tdwidth#}",$tdwidth,$catstr);
				

					$bigcat.=$catstr;
					//$bigcat.=$TempArr["rowend"].$TempArr["rowstart"];

					
					
					
					if($f==$hangnums){
						$bigcat.=$TempArr["rowend"];
						$f=0;
					}

					$f++;
				
				

					if($s>=$shownums && $shownums!=0){
						break;
					}
					$s++;
				}
				
				
		}

		if($f!=1){
			$needtd=$hangnums-$f+1;
			for($g=1;$g<=$needtd;$g++){
				$bigcat.=$TempArr["blank"];
			}

			$bigcat.=$TempArr["rowend"];
		}

		$bigcat.=$TempArr["end"];
		return $bigcat;
       
}


function ProdClassSmall($fold,$cutword,$target,$pid,$ArrayPid,$TotalCat,$ArrayCatid,$ArrayCat,$ArrayCatpath,$ArrayCatNums){

		global $CatchOpen,$MenuInfo,$charset;


		
		if($CatchOpen=="1"  && file_exists(ROOTPATH."products/class/".$ArrayCatid[$t].".html")){
			$u=ROOTPATH."products/class/";
		}else{
			$u=ROOTPATH."products/class/?";
		}


		//模版解释
		$Temp=LoadTemp(ROOTPATH."templates/".$MenuInfo["skin"]."/tpl_mainclass2.htm");
		$TempArr=SplitTblTemp($Temp);


		$smallcat=$TempArr["start"];
						
		$k=0;
		
		$totallen=0;
		for($p=0;$p<$TotalCat;$p++){
			if($ArrayPid[$p]==$pid){
				
				
				$totallen+=strlen($ArrayCat[$p]);

				if($cutword!="0" && $totallen>$cutword){
					break;
				}


				$scatstr=str_replace("{#TopClass#}",$ArrayCat[$p],$TempArr["menu"]);
				$scatstr=str_replace("{#TopClassUrl#}",$u.$ArrayCatid[$p].".html",$scatstr);
				$scatstr=str_replace("{#ClassNums#}",$ArrayCatNums[$p],$scatstr);
				$scatstr=str_replace("{#width#}","width=".$tdwidth."%",$scatstr);
				$scatstr=str_replace("{#target#}",$target,$scatstr);
			
				$smallcat.=$scatstr;
				
		
			$k++;
			

			}
		}


		$smallcat.=$TempArr["end"];


		if($k>0){

			return $smallcat;
		}

}

?>