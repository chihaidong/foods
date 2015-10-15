<?php

/*
	[插件名称] 餐馆+菜组合推荐 - 替换模版标签{#modCompanyFoodTj#}
	[适用范围] 全站
	[文 件 名] CompanyFoodTj.php
	[更新时间] 2006/11/8
*/


function CompanyFoodTj(){

	global $fsql,$tsql,$charset,$tbl_company,$tbl_products,$CatchOpen,$MenuInfo;
	global $strMore,$NowMenuid;

	$PSET=PlusSet("modCompanyFoodTj");

	$shownums=PlusDef($PSET["shownums"],"1");
	$hangnums=PlusDef($PSET["hangnums"],"1");
	$smallw=PlusDef($PSET["smallw"],"122");
	$smallh=PlusDef($PSET["smallh"],"85");
	$ord=PlusDef($PSET["ord"],"dtime");
	$sc=PlusDef($PSET["sc"],"desc");
	$cutword=PlusDef($PSET["cutword"],"48");
	$target=PlusDef($PSET["target"],"_blank");
	$catid=PlusDef($PSET["catid"],"0");
	$more=PlusDef($PSET["showmore"],$strMore);
	$tempname=PlusDef($PSET["tempname"],"tpl_companyfood.htm");

	
		$morelink=ROOTPATH."company/class/?".$catid.".html&showtj=1";

	$scl=" iffb='1' and tj='1' ";


	if($catid!=0 && $catid!=""){
		$catid=fmpath($catid);
		$scl.=" and catpath regexp '$catid' ";
	}



		//模版解释
		$Temp=LoadTemp(ROOTPATH."templates/".$MenuInfo["skin"]."/".$tempname);
		$TempArr=SplitTblTemp($Temp);

		
		$str=$TempArr["start"];


		$kk=1;
		$havepic=0;
		$fsql->query("select * from $tbl_company where $scl order by $ord $sc limit 0,$shownums");
		
		while($fsql->next_record()){
			
			$id=$fsql->f('id');
			$company=$fsql->f('company');
			$catpath=$fsql->f('catpath');
			$dtime=$fsql->f('dtime');
			$memberid=$fsql->f('memberid');
			$nowcatid=$fsql->f('catid');
			$src=$fsql->f('picsrc');
			$type=$fsql->f('pictype');
			$intro=$fsql->f('intro');

			$comdir=$memberid+100000;

			$food1="";
			$food2="";
			$food3="";
			$food4="";
			$food5="";
			$food6="";
			$foodlink1="";
			$foodlink2="";
			$foodlink3="";
			$foodlink4="";
			$foodlink5="";
			$foodlink6="";

			$tsql->query("select * from $tbl_products where memberid='$memberid' and iffb='1' order by uptime desc limit 0,10");
			$u=1;
			while($tsql->next_record()){
				$vname="food".$u;
				$fname="foodlink".$u;
				$$vname=$tsql->f('title');
				$fid=$tsql->f('id');

				if($CatchOpen=="1" && file_exists(ROOTPATH."com/".$comdir."/products/html/".$fid.".html")){
					$$fname=ROOTPATH."com/".$comdir."/products/html/".$fid.".html";
				}else{
					$$fname=ROOTPATH."com/".$comdir."/products/html/?".$fid.".html";
				}

			$u++;
			
			}


			if($src==""){
					$src="images/nophoto.gif";
			}
			$src=ROOTPATH.$src;
			
			
			

			if($CatchOpen=="1" && file_exists(ROOTPATH."com/".$comdir."/index.html")){
				$link=ROOTPATH."com/".$comdir."/";
			}else{
				$link=ROOTPATH."com/".$comdir."/index.php";
			}


			if($cutword!="0"){$intro=csubstr($intro,0,$cutword,$charset);}

			if($kk==1){
				$str.=$TempArr["rowstrat"];
			}
			if($smallw=="-1"){$xsmallw="";}else{$xsmallw="width='$smallw' ";}
			if($smallh=="-1"){$xsmallh="";}else{$xsmallh="height='$smallh' ";}

			$var=array (
			'company' => $company, 
			'src' => $src, 
			'smallw' => $xsmallw, 
			'smallh' => $xsmallh, 
			'link' => $link,
			'intro' => $intro,
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

			if($kk==$hangnums){
				$str.=$TempArr["rowend"];
				$kk=0;
			}

			$kk++;
			$havepic++;
		}
		
		//补充空的td

		if($kk!=1){
			$needtd=$hangnums-$kk+1;
			for($u=1;$u<=$needtd;$u++){
				$str.=$TempArr["blank"];
			}
				$str.=$TempArr["rowend"];
		}
		
        $str.=$TempArr["end"];


		
		$morestr=str_replace("{#more#}",$more,$TempArr["more"]);
		$morestr=str_replace("{#morelink#}",$morelink,$morestr);
		
		if($more!=""){
			$str.=$morestr;
		}

		return $str;


}

?>