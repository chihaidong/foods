<?php

/*
	[插件名称] 图片友情链接 - 替换模版标签{#modLinkPic#}
	[适用范围] 全站
	[文 件 名] LinkPic.php
	[更新时间] 2006/8/13
*/


function LinkPic(){

	global $fsql,$charset,$tbl_link;
	global $strMore,$MenuInfo;

	$PSET=PlusSet("modLinkPic");

	$shownums=PlusDef($PSET["shownums"],"1");
	$hangnums=PlusDef($PSET["hangnums"],"1");
	$smallw=PlusDef($PSET["smallw"],"88");
	$smallh=PlusDef($PSET["smallh"],"31");
	$ord=PlusDef($PSET["ord"],"xuhao");
	$sc=PlusDef($PSET["sc"],"asc");
	$target=PlusDef($PSET["target"],"_blank");
	$more=PlusDef($PSET["showmore"],$strMore);
	$tempname=PlusDef($PSET["tempname"],"tpl_link.htm");

	$morelink=ROOTPATH."page/link/";

	$scl=" showtype='img' ";


		//模版解释
		$Temp=LoadTemp(ROOTPATH."templates/".$MenuInfo["skin"]."/".$tempname);
		$TempArr=SplitTblTemp($Temp);

		
		$str=$TempArr["start"];


		$kk=1;
		$havepic=0;
		$fsql->query("select * from $tbl_link where $scl order by $ord $sc limit 0,$shownums");
		
		while($fsql->next_record()){
			
			$id=$fsql->f('id');
			$title=$fsql->f('name');
			$link=$fsql->f('url');
			$src=$fsql->f('src');
			$type=$fsql->f('type');

			$src=ROOTPATH.$src;
			

			if($kk==1){
				$str.=$TempArr["rowstrat"];
			}
			if($smallw=="-1"){
				$width="";
			}else{
				$width=$smallw;
			}
			if($smallh=="-1"){
				$height="";
			}else{
				$height=$smallh;
			}

			$linkstr=ShowTypeImage($src,$type,$width,$height,"0");

			$var=array (
			'linkstr' => $linkstr, 
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