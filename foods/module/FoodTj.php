<?php

/*
	[插件名称] 美食图名组合推荐 - 替换模版标签{#modFoodTj#}
	[适用范围] 全站
	[文 件 名] FoodTj.php
	[更新时间] 2006/11/15
*/


function FoodTj(){

	global $fsql,$tsql,$charset,$tbl_products,$CatchOpen,$MenuInfo;
	global $strMore,$NowMenuid;

	$PSET=PlusSet("modFoodTj");

	$smallw=PlusDef($PSET["smallw"],"122");
	$smallh=PlusDef($PSET["smallh"],"85");
	$ord=PlusDef($PSET["ord"],"uptime");
	$sc=PlusDef($PSET["sc"],"desc");
	$cutword=PlusDef($PSET["cutword"],"6");
	$target=PlusDef($PSET["target"],"_blank");
	$catid=PlusDef($PSET["catid"],"0");
	$tempname=PlusDef($PSET["tempname"],"tpl_foodtj.htm");

	

	$scl=" iffb='1' and tj='1' ";


	if($catid!=0 && $catid!=""){
		$catid=fmpath($catid);
		$scl.=" and catpath regexp '$catid' ";
	}



		//模版解释
		$Temp=LoadTemp(ROOTPATH."templates/".$MenuInfo["skin"]."/".$tempname);
		$TempArr=SplitTblTemp($Temp);

		
		$str=$TempArr["start"];
		$str.=$TempArr["rowstrat"];

		$u=1;
		$fsql->query("select * from $tbl_products where $scl order by $ord $sc limit 0,10");
		
		while($fsql->next_record()){
			
			$vname="food".$u;
			$fname="foodlink".$u;
			
			$fid=$fsql->f('id');
			$memberid=$fsql->f('memberid');
			$$vname=$fsql->f('title');
			
			if($u==1){
				$src=$fsql->f('picsrc');
			}
			
			$comdir=$memberid+100000;
			if($CatchOpen=="1" && file_exists(ROOTPATH."com/".$comdir."/products/html/".$fid.".html")){
				$$fname=ROOTPATH."com/".$comdir."/products/html/".$fid.".html";
			}else{
				$$fname=ROOTPATH."com/".$comdir."/products/html/?".$fid.".html";
			}

			if($cutword!="0"){$$vname=csubstr($$vname,0,$cutword,$charset);}

		$u++;
			
		}	
			if($src==""){
					$src="images/nophoto.gif";
			}
			$src=ROOTPATH.$src;

			if($smallw=="-1"){$xsmallw="";}else{$xsmallw="width='$smallw' ";}
			if($smallh=="-1"){$xsmallh="";}else{$xsmallh="height='$smallh' ";}

			$var=array (
			'src' => $src, 
			'smallw' => $xsmallw, 
			'smallh' => $xsmallh, 
			'target' => $target,
			'foodlink1' => $foodlink1,
			'foodlink2' => $foodlink2,
			'foodlink3' => $foodlink3,
			'foodlink4' => $foodlink4,
			'foodlink5' => $foodlink5,
			'foodlink6' => $foodlink6,
			'foodlink7' => $foodlink7,
			'foodlink8' => $foodlink8,
			'foodlink9' => $foodlink9,
			'foodlink10' => $foodlink10,
			'food1' => $food1,
			'food2' => $food2,
			'food3' => $food3,
			'food4' => $food4,
			'food5' => $food5,
			'food6' => $food6,
			'food7' => $food7,
			'food8' => $food8,
			'food9' => $food9,
			'food10' => $food10
			);
			$str.=ShowTplTemp($TempArr["menu"],$var);


	
		
		$str.=$TempArr["rowend"];
        $str.=$TempArr["end"];


		

		return $str;


}

?>