<?php

/*
	[插件名称] 同专题相关下载 - 替换模版标签{#modDownRel#}
	[适用范围] 下载详情页
	[文 件 名] DownRel.php
	[更新时间] 2006/8/5
*/


function DownRel(){

	global $fsql,$charset,$tbl_down_con,$CatchOpen;
	global $strMore,$NowDownId,$MenuInfo;

	$id=$NowDownId;

	$PSET=PlusSet("modDownRel");

	$shownums=PlusDef($PSET["shownums"],"5");
	$ord=PlusDef($PSET["ord"],"id");
	$sc=PlusDef($PSET["sc"],"desc");
	$showtime=PlusDef($PSET["showtime"],"n/j");
	$cutword=PlusDef($PSET["cutword"],"0");
	$target=PlusDef($PSET["target"],"_self");
	$onlytj=PlusDef($PSET["onlytj"],"0");
	$more=PlusDef($PSET["showmore"],$strMore);
	$tempname=PlusDef($PSET["tempname"],"tpl_list.htm");

	$morelink="../class/";



		$fsql->query("select proj from $tbl_down_con where id='$id'");
		if($fsql->next_record()){
			$proj=$fsql->f('proj');
		}

		$scl=" id!='$id' and iffb='1' and ( id=0 ";

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

		$kk=0;
		$havepic=0;
		$fsql->query("select * from $tbl_down_con where $scl order by $ord $sc limit 0,$shownums");

		while($fsql->next_record()){
			
			$id=$fsql->f('id');
			$title=$fsql->f('title');
			$menuid=$fsql->f('menuid');
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

			$fold=MenuFold($menuid);
			if($CatchOpen=="1"){
				$link=ROOTPATH.$fold."/html/".$id.".html";
			}else{
				$link=ROOTPATH.$fold."/html/?".$id.".html";
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