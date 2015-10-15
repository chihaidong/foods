<?php

/*
	[插件名称] 最新活动图片 - 替换模版标签{#modHdPic#}
	[适用范围] 全站
	[文 件 名] HdPic.php
	[更新时间] 2006/11/18
*/


function HdPic(){

	global $fsql,$charset,$tbl_play,$CatchOpen,$MenuInfo;
	global $strMore,$NowMenuid;

	$PSET=PlusSet("modHdPic");

	$shownums=PlusDef($PSET["shownums"],"1");
	$hangnums=PlusDef($PSET["hangnums"],"1");
	$smallw=PlusDef($PSET["smallw"],"230");
	$smallh=PlusDef($PSET["smallh"],"160");
	$ord=PlusDef($PSET["ord"],"dtime");
	$sc=PlusDef($PSET["sc"],"desc");
	$cutword=PlusDef($PSET["cutword"],"30");
	$target=PlusDef($PSET["target"],"_self");
	$onlytj=PlusDef($PSET["onlytj"],"0");
	$more=PlusDef($PSET["showmore"],$strMore);
	$tempname=PlusDef($PSET["tempname"],"tpl_hdpic.htm");

	$morelink=ROOTPATH."hd/class/?0.html";

	$now=time();
	$scl=" iffb='1' and exptime>$now and picsrc!='' ";



	if($onlytj=="1"){
		$scl.=" and tj='1' ";
	}


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
			$src=$fsql->f('picsrc');

			if($src==""){
					$src="images/nophoto.gif";
			}
			$src=ROOTPATH.$src;
			
			

			if($CatchOpen=="1" && file_exists(ROOTPATH."hd/html/".$id.".html")){
				$link=ROOTPATH."hd/html/".$id.".html";
			}else{
				$link=ROOTPATH."hd/html/?".$id.".html";
			}


			if($cutword!="0"){$title=csubstr($title,0,$cutword,$charset);}

			if($kk==1){
				$str.=$TempArr["rowstrat"];
			}
			if($smallw=="-1"){$xsmallw="";}else{$xsmallw="width='$smallw' ";}
			if($smallh=="-1"){$xsmallh="";}else{$xsmallh="height='$smallh' ";}

			$var=array (
			'title' => $title, 
			'src' => $src, 
			'smallw' => $xsmallw, 
			'smallh' => $xsmallh, 
			'link' => $link,
			'playtime' => $playtime,
			'playaddr' => $playaddr,
			'pnums' => $pnums,
			'body' => $body,
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