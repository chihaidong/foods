<?php

/*
	[插件名称] 同专题文章图片 - 替换模版标签{#modNewsPicRel#}
	[适用范围] 文章内容详情页
	[文 件 名] NewsPicRel.php
	[更新时间] 2006/7/30
*/


function NewsPicRel(){

	global $fsql,$charset,$tbl_news_con,$CatchOpen,$DetailCatch;
	global $NowNewsId,$MenuInfo;
	global $strMore;

	$id=$NowNewsId;

	$PSET=PlusSet("modNewsPicRel");

	$shownums=PlusDef($PSET["shownums"],"1");
	$hangnums=PlusDef($PSET["hangnums"],"1");
	$smallw=PlusDef($PSET["smallw"],"135");
	$smallh=PlusDef($PSET["smallh"],"90");
	$ord=PlusDef($PSET["ord"],"id");
	$sc=PlusDef($PSET["sc"],"desc");
	$cutword=PlusDef($PSET["cutword"],"10");
	$target=PlusDef($PSET["target"],"_self");
	$onlytj=PlusDef($PSET["onlytj"],"0");
	$more=PlusDef($PSET["showmore"],$strMore);
	$tempname=PlusDef($PSET["tempname"],"tpl_newspic.htm");

		$morelink="../class/";

		$fsql->query("select proj from $tbl_news_con where id='$id'");
		if($fsql->next_record()){
			$proj=$fsql->f('proj');
		}

		$scl=" id!='$id' and iffb='1' and src!='' and type!='swf' and ( id=0 ";

		$arr=explode(":",$proj);
		for($i=0;$i<sizeof($arr)-1;$i++){
			$scl.=" or proj regexp '$arr[$i]' ";
		}
		$scl.=" ) ";


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
			$menuid=$fsql->f('menuid');
			$catpath=$fsql->f('catpath');
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