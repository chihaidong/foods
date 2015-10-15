<?php

/*
	[插件名称] 推荐供应 - 替换模版标签{#modSellTj#}
	[适用范围] 全站
	[文 件 名] SellTj.php
	[更新时间] 2006/10/4
*/

function SellTj(){

	global $fsql,$charset,$tbl_info,$CatchOpen;
	global $strMore,$NowMenuid,$MenuInfo;


		$PSET=PlusSet("modSellTj");

		$shownums=PlusDef($PSET["shownums"],"5");
		$ord=PlusDef($PSET["ord"],"uptime");
		$sc=PlusDef($PSET["sc"],"desc");
		$cutword=PlusDef($PSET["cutword"],"0");
		$target=PlusDef($PSET["target"],"_self");
		$catid=PlusDef($PSET["catid"],"0");
		$more=PlusDef($PSET["showmore"],$strMore);
		$tempname=PlusDef($PSET["tempname"],"tpl_infolist.htm");

		$morelink=ROOTPATH."sell/class/?".$catid.".html&showtj=1";
		
		$now=time();

		$scl=" iffb='1' and tj='1' and bstype='1' and exptime>$now ";

		if($catid!=0 && $catid!=""){
			$catid=fmpath($catid);
			$scl.=" and catpath regexp '$catid' ";
		}



		//模版解释
		$Temp=LoadTemp(ROOTPATH."templates/".$MenuInfo["skin"]."/".$tempname);
		$TempArr=SplitTblTemp($Temp);

		$str=$TempArr["start"];

		$kk=0;
		$havepic=0;
		$fsql->query("select * from $tbl_info where $scl order by $ord $sc limit 0,$shownums");

		while($fsql->next_record()){
			
			$id=$fsql->f('id');
			$title=$fsql->f('title');
			$memberid=$fsql->f('memberid');
			$catpath=$fsql->f('catpath');
			$uptime=$fsql->f('uptime');
			$nowcatid=$fsql->f('catid');
			$infotype=$fsql->f('infotype');
			$src=$fsql->f('src');
			$type=$fsql->f('type');


			$comdir=$memberid+100000;

			if($CatchOpen=="1" && file_exists(ROOTPATH."com/".$comdir."/sell/html/".$id.".html")){
				$link=ROOTPATH."com/".$comdir."/sell/html/".$id.".html";
			}else{
				$link=ROOTPATH."com/".$comdir."/sell/html/?".$id.".html";
			}

			
			if($cutword!="0"){$title=csubstr($title,0,$cutword,$charset);}


			$var=array (
			'title' => $title, 
			'dtime' => $dtime, 
			'link' => $link,
			'target' => $target,
			'bold' => $bold
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