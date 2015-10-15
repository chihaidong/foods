<?php

/*
	[插件名称] 本类推荐下载 - 替换模版标签{#modDownSameCatRec#}
	[适用范围] 文章检索页,详情页
	[文 件 名] DownSameCatRec.php
	[更新时间] 2006/8/5
*/


function DownSameCatRec(){

	global $fsql,$charset,$tbl_down_con,$CatchOpen;
	global $strMore,$NowCatid,$NowMenuid,$MenuInfo;

		$catid=$NowCatid;


		$PSET=PlusSet("modDownSameCatRec");
		
		$shownums=PlusDef($PSET["shownums"],"5");
		$ord=PlusDef($PSET["ord"],"id");
		$sc=PlusDef($PSET["sc"],"desc");
		$showtime=PlusDef($PSET["showtime"],"n/j");
		$cutword=PlusDef($PSET["cutword"],"0");
		$target=PlusDef($PSET["target"],"_self");
		$onlytj=PlusDef($PSET["onlytj"],"1");
		$more=PlusDef($PSET["showmore"],$strMore);
		$tempname=PlusDef($PSET["tempname"],"tpl_list.htm");

		$morelink="../class/?".$catid.".html&showtj=1";

		
		$scl=" iffb='1'  and menuid='$NowMenuid' ";

	
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

		$kk=0;
		$havepic=0;
		$fsql->query("select * from $tbl_down_con where $scl order by $ord $sc limit 0,$shownums");

		while($fsql->next_record()){
			
			$id=$fsql->f('id');
			$title=$fsql->f('title');
			$catpath=$fsql->f('catpath');
			$dtime=$fsql->f('dtime');
			$url=$fsql->f('url');
			$filesize=$fsql->f('filesize');
			$uptime=$fsql->f('uptime');
			$nowcatid=$fsql->f('catid');
			$ifnew=$fsql->f('ifnew');
			$ifred=$fsql->f('ifred');
			$author=$fsql->f('author');
			$source=$fsql->f('source');
			$cl=$fsql->f('cl');
			$src=$fsql->f('src');
			$type=$fsql->f('type');

			if($CatchOpen=="1"){
				$link="../html/".$id.".html";
			}else{
				$link="../html/?".$id.".html";
			}


			
			
			$dtime=date($showtime,$dtime);
			$uptime=date($showtime,$uptime);

			if(!strstr($url,"http://")){
				$url=ROOTPATH.$url;
			}
			if($cutword!="0"){$title=csubstr($title,0,$cutword,$charset);}


			$var=array (
			'title' => $title, 
			'dtime' => $dtime, 
			'uptime' => $uptime, 
			'filesize' => $filesize, 
			'url' => $url, 
			'author' => $author, 
			'source' => $source,
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