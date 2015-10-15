<?php

/*
	[插件名称] 最新美食评论 - 替换模版标签{#modProdCommentListAll#}
	[适用范围] 全站
	[文 件 名] ProdCommentListAll.php
	[更新时间] 2006/11/15
*/

function ProdCommentListAll(){

	global $fsql,$charset,$tbl_comment,$CatchOpen;
	global $strMore,$NowMenuid,$MenuInfo;

		$PSET=PlusSet("modProdCommentListAll");

		$shownums=PlusDef($PSET["shownums"],"5");
		$ord=PlusDef($PSET["ord"],"id");
		$sc=PlusDef($PSET["sc"],"desc");
		$showtime=PlusDef($PSET["showtime"],"m-d H:i");
		$cutword=PlusDef($PSET["cutword"],"0");
		$target=PlusDef($PSET["target"],"_self");
		$onlytj=PlusDef($PSET["onlytj"],"0");
		$more=PlusDef($PSET["showmore"],$strMore);
		$tempname=PlusDef($PSET["tempname"],"tpl_commentlist.htm");



		$scl=" fabu='1' and coltype='products' and pid='0' ";

		$morelink=ROOTPATH."comment.php?coltype=products";
		


		if($onlytj=="1"){
			$scl.=" and tuijian='1' ";
		}

		//模版解释
		$Temp=LoadTemp(ROOTPATH."templates/".$MenuInfo["skin"]."/".$tempname);
		$TempArr=SplitTblTemp($Temp);

		$str=$TempArr["start"];

		$kk=0;
		$fsql->query("select * from $tbl_comment where $scl order by $ord $sc limit 0,$shownums");

		while($fsql->next_record()){
			
			$id=$fsql->f('id');
			$rid=$fsql->f('rid');
			$title=$fsql->f('title');
			$menuid=$fsql->f('menuid');
			$dtime=$fsql->f('uptime');
			$author=$fsql->f('name');
			$cl=$fsql->f('cl');

					
			$dtime=date($showtime,$dtime);
			if($cutword!="0"){$title=csubstr($title,0,$cutword,$charset);}

			$link=ROOTPATH."comment_detail.php?commentid=$id";

			$var=array (
			'title' => $title, 
			'dtime' => $dtime, 
			'author' => $author, 
			'cl' => $cl, 
			'link' => $link,
			'target' => $target
			);
			$str.=ShowTplTemp($TempArr["list"],$var);


		$kk++;

		}

		$str.=$TempArr["end"];

		$morestr=str_replace("{#more#}",$more,$TempArr["more"]);
		$morestr=str_replace("{#morelink#}",$morelink,$morestr);
		
		$str.=$morestr;

		return $str;

}

?>