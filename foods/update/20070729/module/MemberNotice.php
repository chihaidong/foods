<?php

/*
	[插件名称] 最新会员公告 - 替换模版标签{#modMemberNotice#}
	[适用范围] 会员专区
	[文 件 名] MemberNotice.php
	[更新时间] 2006/7/30
*/

function MemberNotice(){

	global $fsql,$charset,$tbl_member_notice,$MenuInfo;


		$PSET=PlusSet("modMemberNotice");

		$shownums=PlusDef($PSET["shownums"],"10");
		$ord=PlusDef($PSET["ord"],"id");
		$sc=PlusDef($PSET["sc"],"desc");
		$showtime=PlusDef($PSET["showtime"],"Y-n-j H:i:s");
		$cutword=PlusDef($PSET["cutword"],"0");
		$target=PlusDef($PSET["target"],"_self");
		$tempname=PlusDef($PSET["tempname"],"tpl_list.htm");

		$membertypeid=$_COOKIE["MEMBERTYPEID"];


		if($membertypeid==""){
			return "";
		}

		$scl=" membertypeid='$membertypeid' or membertypeid='0' ";


		//模版解释
		$Temp=LoadTemp(ROOTPATH."templates/".$MenuInfo["skin"]."/".$tempname);
		$TempArr=SplitTblTemp($Temp);

		$str=$TempArr["start"];

		$kk=0;
		$fsql->query("select * from $tbl_member_notice where $scl order by $ord $sc limit 0,$shownums");

		while($fsql->next_record()){
			
			$id=$fsql->f('id');
			$title=$fsql->f('title');
			$dtime=$fsql->f('dtime');
			$ifnew=$fsql->f('ifnew');
			$ifred=$fsql->f('ifred');
			$cl=$fsql->f('cl');

			$link=ROOTPATH."member_notice.php?id=".$id;
			
			$dtime=date($showtime,$dtime);
			
			if($ifnew=="1"){$bold=" style='font-weight:bold' ";}else{$bold="";}
			if($ifred=="1"){$red=" style='color:#ff0000' ";}else{$red="";}
			if($cutword!="0"){$title=csubstr($title,0,$cutword,$charset);}


			$var=array (
			'title' => $title, 
			'dtime' => $dtime, 
			'red' => $red, 
			'cl' => $cl, 
			'link' => $link,
			'target' => $target,
			'bold' => $bold
			);
			$str.=ShowTplTemp($TempArr["list"],$var);

		$kk++;

		}


		$str.=$TempArr["end"];


		return $str;

}

?>