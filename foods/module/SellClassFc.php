<?php

/*
	[插件名称] 供应信息下一级分类 - 替换模版标签{#modSellClassFc#}
	[适用范围] 检索页(显示当前类别的下一级类别)
	[文 件 名] SellClassFc.php
	[更新时间] 2006/9/18
*/



function SellClassFc(){

		global $msql,$tbl_info_cat,$CatchOpen;
		global $NowCatid,$NowMenuid,$MenuInfo;
 
		$PSET=PlusSet("modSellClassFc");

		$shownums=PlusDef($PSET["shownums"],"0");
		$hangnums=PlusDef($PSET["hangnums"],"4");
		$ord=PlusDef($PSET["ord"],"xuhao");
		$sc=PlusDef($PSET["sc"],"asc");
		$onlytj=PlusDef($PSET["onlytj"],"0");
		$target=PlusDef($PSET["target"],"_self");
		$tempname=PlusDef($PSET["tempname"],"tpl_classfc.htm");

		$tp=$_GET["tp"];
		$showtj=$_GET["showtj"];

		if($tp=="search" || $showtj=="1"){
			return "";
		}
		if(!isset($NowCatid) || $NowCatid==""){
			$NowCatid=0;
		}

		$scl=" catid!='0' ";
		
		if($onlytj=="1"){
			$scl.=" and tj='1' ";
		}


		$msql->query("select * from $tbl_info_cat where $scl order by $ord $sc");
		$i=0;
		while($msql->next_record()){
				$ArrayPid[$i]=$msql->f("pid");
				$ArrayCatid[$i]=$msql->f("catid");
				$ArrayCat[$i]=$msql->f("cat");
				$ArrayCatpath[$i]=$msql->f("catpath");
				$ArrayCatNums[$i]=$msql->f("sellnums");
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
			if($ArrayPid[$t]==$NowCatid){
				
				if($kk==1){
					$bigcat.=$TempArr["rowstart"];
				}
				
				if($CatchOpen=="1" && file_exists("./".$ArrayCatid[$t].".html")){
					$url="./".$ArrayCatid[$t].".html";
				}else{
					$url="./?".$ArrayCatid[$t].".html";
				}
				
				$catstr=str_replace("{#TopClass#}",$ArrayCat[$t],$TempArr["menu"]);
				$catstr=str_replace("{#TopClassUrl#}",$url,$catstr);
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