<?php

/*
	[插件名称] 最新聚会列表 - 替换模版标签{#modHdList#}
	[适用范围] 全站
	[文 件 名] HdList.php
	[更新时间] 2006/11/18
*/


function HdList(){

	global $fsql,$charset,$tbl_play,$CatchOpen,$MenuInfo;
	global $strMore,$NowMenuid;

	$PSET=PlusSet("modHdList");

	$shownums=PlusDef($PSET["shownums"],"10");
	$hangnums=PlusDef($PSET["hangnums"],"1");
	$ord=PlusDef($PSET["ord"],"dtime");
	$sc=PlusDef($PSET["sc"],"desc");
	$cutword=PlusDef($PSET["cutword"],"16");
	$target=PlusDef($PSET["target"],"_self");
	$onlytj=PlusDef($PSET["onlytj"],"0");
	$more=PlusDef($PSET["showmore"],$strMore);
	$tempname=PlusDef($PSET["tempname"],"tpl_hdlist.htm");

	$morelink=ROOTPATH."hd/class/?0.html";

	$now=time();

	$scl=" iffb='1' and exptime>$now ";



	if($onlytj=="1"){
		$scl.=" and tj='1' ";
	}

		$tdwidth=ceil(100/$hangnums)."%";

		//模版解释
		$Temp=LoadTemp(ROOTPATH."templates/".$MenuInfo["skin"]."/".$tempname);
		$TempArr=SplitTblTemp($Temp);

		
		$str=$TempArr["start"];


		$kk=1;
		$havepic=0;
		$fsql->query("select * from $tbl_play where $scl order by $ord $sc limit 0,$shownums");
		
		while($fsql->next_record()){
			
			$id=$fsql->f('id');
			$title=$fsql->f('title');
			$body=$fsql->f('body');
			$playtime=$fsql->f('playtime');
			$playaddr=$fsql->f('playaddr');
			$pnums=$fsql->f('pnums');
			$dtime=$fsql->f('dtime');
			$exptime=$fsql->f('exptime');
			$memberid=$fsql->f('memberid');
			$nowcatid=$fsql->f('catid');
			

			if($CatchOpen=="1" && file_exists(ROOTPATH."hd/html/".$id.".html")){
				$link=ROOTPATH."hd/html/".$id.".html";
			}else{
				$link=ROOTPATH."hd/html/?".$id.".html";
			}


			if($cutword!="0"){$title=csubstr($title,0,$cutword,$charset);}

			if($kk==1){
				$str.=$TempArr["rowstrat"];
			}

			$var=array (
			'title' => $title, 
			'link' => $link,
			'playtime' => $playtime,
			'playaddr' => $playaddr,
			'pnums' => $pnums,
			'tdwidth' => $tdwidth,
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
/*
		if($kk!=1){
			$needtd=$hangnums-$kk+1;
			for($u=1;$u<=$needtd;$u++){
				$str.=$TempArr["blank"];
			}
				$str.=$TempArr["rowend"];
		}
*/		
        $str.=$TempArr["rowend"];
		$str.=$TempArr["end"];


		
		$morestr=str_replace("{#more#}",$more,$TempArr["more"]);
		$morestr=str_replace("{#morelink#}",$morelink,$morestr);
		
		$str.=$morestr;
		

		return $str;


}

?>