<?php

/*
	[插件名称] 最新供应 - 替换模版标签{#modSellList#}
	[适用范围] 全站
	[文 件 名] SellList.php
	[更新时间] 2006/10/4
*/

function SellList(){

	global $fsql,$tsql,$charset,$tbl_info,$tbl_info_cat,$CatchOpen;
	global $strMore,$NowMenuid,$MenuInfo;


		$PSET=PlusSet("modSellList");

		$shownums=PlusDef($PSET["shownums"],"5");
		$hangnums=PlusDef($PSET["hangnums"],"1");
		$ord=PlusDef($PSET["ord"],"uptime");
		$sc=PlusDef($PSET["sc"],"desc");
		$cutword=PlusDef($PSET["cutword"],"0");
		$target=PlusDef($PSET["target"],"_self");
		$onlytj=PlusDef($PSET["onlytj"],"0");
		$catid=PlusDef($PSET["catid"],"0");
		$more=PlusDef($PSET["showmore"],$strMore);
		$tempname=PlusDef($PSET["tempname"],"tpl_infolist.htm");

		$morelink=ROOTPATH."sell/class/?".$catid.".html";
		
		$now=time();

		$scl=" iffb='1' and bstype='1' and exptime>$now ";

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
		$fsql->query("select * from $tbl_info where $scl order by $ord $sc limit 0,$shownums");

		while($fsql->next_record()){
			
			$id=$fsql->f('id');
			$title=$fsql->f('title');
			$memberid=$fsql->f('memberid');
			$catpath=$fsql->f('catpath');
			$catid=$fsql->f('catid');
			$uptime=$fsql->f('uptime');
			$nowcatid=$fsql->f('catid');
			$infotype=$fsql->f('infotype');
			$src=$fsql->f('src');
			$type=$fsql->f('type');

			$tsql->query("select cat from $tbl_info_cat where catid='$catid'");
			if($tsql->next_record()){
				$class=$tsql->f('cat');
			}


			$comdir=$memberid+100000;

			if($CatchOpen=="1" && file_exists(ROOTPATH."com/".$comdir."/sell/html/".$id.".html")){
				$link=ROOTPATH."com/".$comdir."/sell/html/".$id.".html";
			}else{
				$link=ROOTPATH."com/".$comdir."/sell/html/?".$id.".html";
			}

			
			if($cutword!="0"){$title=csubstr($title,0,$cutword,$charset);}

			if($kk==1){
				$str.=$TempArr["rowstrat"];
			}
			$var=array (
			'title' => $title, 
			'dtime' => $dtime, 
			'link' => $link,
			'class' => $class,
			'target' => $target,
			'bold' => $bold
			);
			$str.=ShowTplTemp($TempArr["menu"],$var);

		if($kk==$hangnums){
				$str.=$TempArr["rowend"];
				$kk=0;
			}
		$kk++;

		}

		$str.=$TempArr["rowend"];
		$str.=$TempArr["end"];


		$morestr=str_replace("{#more#}",$more,$TempArr["more"]);
		$morestr=str_replace("{#morelink#}",$morelink,$morestr);
		
		$str.=$morestr;

		return $str;

}

?>