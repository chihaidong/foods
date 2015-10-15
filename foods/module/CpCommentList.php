<?php

/*
	[插件名称] 最新图文评论 - 替换模版标签{#modCpCommentList#}
	[适用范围] 全站
	[文 件 名] CpCommentList.php
	[更新时间] 2006/8/11
*/

function CpCommentList(){

	global $fsql,$tsql,$charset,$tbl_comment,$CatchOpen;
	global $strMore,$NowMenuid,$MenuInfo;

		$PSET=PlusSet("modCpCommentList");

		$shownums=PlusDef($PSET["shownums"],"5");
		$ord=PlusDef($PSET["ord"],"id");
		$sc=PlusDef($PSET["sc"],"desc");
		$showtime=PlusDef($PSET["showtime"],"m-d H:i");
		$cutword=PlusDef($PSET["cutword"],"50");
		$target=PlusDef($PSET["target"],"_self");
		$onlytj=PlusDef($PSET["onlytj"],"0");
		$more=PlusDef($PSET["showmore"],$strMore);
		$tempname=PlusDef($PSET["tempname"],"tpl_commentlist.htm");

		$showmenuid=MenuDef("cp",$NowMenuid);
		
		$scl=" fabu='1' and coltype='cp' and pid='0' ";

		if($showmenuid!="0" && $showmenuid!=""){
			$scl.=" and menuid='$showmenuid' ";
			$morelink=ROOTPATH."comment.php?nowmenuid=$showmenuid";
		}else{
			$morelink=ROOTPATH."comment.php?coltype=cp";
		
		}

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
			$body=$fsql->f('body');
			$menuid=$fsql->f('menuid');
			$dtime=$fsql->f('uptime');
			$author=$fsql->f('name');
			$cl=$fsql->f('cl');
			$lastname=$fsql->f('lastname');
			$face=$fsql->f("face");

			$tsql->query("select count(id) from $tbl_comment where pid='$id' and fabu='1'");
			if($tsql->next_record()){
				$count=$tsql->f('count(id)');
			}


					
			$dtime=date($showtime,$dtime);
			if($cutword!="0"){$title=csubstr($title,0,$cutword,$charset);}

			$link=ROOTPATH."comment_detail.php?commentid=$id";
			$face=ROOTPATH."face/".$face.".gif";

			$var=array (
			'title' => $title, 
			'dtime' => $dtime, 
			'author' => $author, 
			'body' => $body, 
			'count' => $count, 
			'cl' => $cl, 
			'link' => $link,
			'relatelink' => $relatelink,
			'lastname' => $lastname,
			'face' => $face, 
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