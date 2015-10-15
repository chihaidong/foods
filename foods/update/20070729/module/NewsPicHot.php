<?php

/*
	[插件名称] 热门文章图片 - 替换模版标签{#modNewsPicHot#}
	[适用范围] 全站
	[文 件 名] NewsPicHot.php
	[更新时间] 2006/7/30
*/


function NewsPicHot(){

	global $fsql,$charset,$tbl_news_con,$CatchOpen,$DetailCatch;
	global $strMore,$NowMenuid,$MenuInfo;

	$PSET=PlusSet("modNewsPicHot");

	$shownums=PlusDef($PSET["shownums"],"1");
	$hangnums=PlusDef($PSET["hangnums"],"1");
	$smallw=PlusDef($PSET["smallw"],"135");
	$smallh=PlusDef($PSET["smallh"],"90");
	$ord=PlusDef($PSET["ord"],"cl");
	$sc=PlusDef($PSET["sc"],"desc");
	$cutword=PlusDef($PSET["cutword"],"10");
	$target=PlusDef($PSET["target"],"_self");
	$onlytj=PlusDef($PSET["onlytj"],"0");
	$catid=PlusDef($PSET["catid"],"0");
	$showmenuid=PlusDef($PSET["showmenuid"],MenuDef("news",$NowMenuid));
	$more=PlusDef($PSET["showmore"],$strMore);
	$tempname=PlusDef($PSET["tempname"],"tpl_newspic.htm");





	
	$scl=" iffb='1' and src!='' and type!='swf'  ";

	if($showmenuid!="0" && $showmenuid!=""){
		$scl.=" and menuid='$showmenuid' ";
		$fold=MenuFold($showmenuid);
		$morelink=ROOTPATH.$fold."/class/?".$catid.".html&showhot=1";
	}else{
		$morelink=ROOTPATH."";
	}



	if($catid!=0 && $catid!=""){
		$catid=fmpath($catid);
		$scl.=" and catpath regexp '$catid' ";
	}

	if($onlytj=="1"){
		$scl.=" and tj='1' ";
	}


		//模版解释
		$Temp=LoadTemp(ROOTPATH."templates/".$MenuInfo["skin"]."/".$tempname);
		$TempArr=SplitTblTemp($Temp);

		
		$str=$TempArr["start"];



		$kk=1;
		$havepic=0;
		$fsql->query("select * from $tbl_news_con where $scl order by $ord $sc limit 0,$shownums");
		
		while($fsql->next_record()){
			
			$id=$fsql->f('id');
			$title=$fsql->f('title');
			$memo=$fsql->f('memo');
			$catpath=$fsql->f('catpath');
			$menuid=$fsql->f('menuid');
			$dtime=$fsql->f('dtime');
			$nowcatid=$fsql->f('catid');
			$author=$fsql->f('author');
			$source=$fsql->f('source');
			$cl=$fsql->f('cl');
			$src=$fsql->f('src');
			$type=$fsql->f('type');

			$src=ROOTPATH."".$src;
			
			$fold=MenuFold($menuid);

			if($CatchOpen=="1"){
				$link=ROOTPATH.$fold."/html/".$id.".html";
			}else{
				$link=ROOTPATH.$fold."/html/?".$id.".html";
			}


			if($cutword!="0"){$title=csubstr($title,0,$cutword,$charset);}

			if($kk==1){
				$str.=$TempArr["rowstrat"];
			}
			if($smallw=="-1"){$xsmallw="";}else{$xsmallw="width='$smallw' ";}
			if($smallh=="-1"){$xsmallh="";}else{$xsmallh="height='$smallh' ";}

			$var=array (
			'title' => $title, 
			'memo' => $memo, 
			'author' => $author, 
			'source' => $source,
			'cl' => $cl, 
			'src' => $src, 
			'smallw' => $xsmallw, 
			'smallh' => $xsmallh, 
			'link' => $link,
			'target' => $target,
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
		$str.=$morestr;

		return $str;
		


}

?>