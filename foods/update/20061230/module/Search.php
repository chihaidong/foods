<?php

/*
	[插件名称] 全站搜索 - 替换模版的{#modSearch#}
	[适用范围] 文章分类检索页
	[文 件 名] Search.php
	[更新时间] 2006/8/13
*/


function Search(){

	global $fsql,$charset,$PagesInfo,$ShowPages,$htmlstr,$CatchOpen;
	global $tbl_news_con,$tbl_cp_con,$tbl_down_con,$tbl_comment,$MenuInfo;


	$PSET=PlusSet("modSearch");
	
	$shownums=PlusDef($PSET["shownums"],"20");
	$showtime=PlusDef($PSET["showtime"],"Y-m-d");
	$cutword=PlusDef($PSET["cutword"],"200");
	$target=PlusDef($PSET["target"],"_blank");
	$ord=PlusDef($PSET["ord"],"id");
	$sc=PlusDef($PSET["sc"],"desc");
	$tempname=PlusDef($PSET["tempname"],"tpl_search.htm");
	

	$key=$_GET["key"];
	$page=$_GET["page"];
	$type=$_GET["type"];


	if($type==""){
		return "";
	}

	switch($type){
		case "news":
		$tbl=$tbl_news_con;
		$scl=" iffb='1' ";
		break;
		case "cp":
		$tbl=$tbl_cp_con;
		$scl=" iffb='1' ";
		break;
		case "down":
		$tbl=$tbl_down_con;
		$scl=" iffb='1' ";
		break;
		case "bbs":
		$tbl=$tbl_comment;
		$scl=" fabu='1' ";
		break;

	}


	if($key!=""){
		$scl.=" and (title regexp '$key' or body regexp '$key') ";
	}


	

	//模版解释
	$Temp=LoadTemp(ROOTPATH."templates/".$MenuInfo["skin"]."/".$tempname);
	$TempArr=SplitTblTemp($Temp);

	$str=$TempArr["start"];

	
	include(ROOTPATH."includes/func/pages.inc.php");
	$pages=new pages;

	$totalnums=TblCount($tbl,"id",$scl);
	
	$pages->setvar(array("type" => $type,"key" => $key));

	$pages->set($shownums,$totalnums);		                          
		
	$pagelimit=$pages->limit();	  

	$fsql->query("select * from $tbl where $scl order by $ord $sc limit $pagelimit");

	while($fsql->next_record()){
		
		$id=$fsql->f('id');
		$title=$fsql->f('title');
		$body=$fsql->f('body');
		$dtime=$fsql->f('dtime');
		$uptime=$fsql->f('uptime');
		$pid=$fsql->f('pid');
		$menuid=$fsql->f('menuid');

		if($type=="bbs"){
			$dtime=date($showtime,$uptime);
			if($pid=="0"){
				$link=ROOTPATH."comment_detail.php?commentid=$id";
			}else{
				$link=ROOTPATH."comment_detail.php?commentid=$pid";
			}
			
		}else{
			$dtime=date($showtime,$dtime);
			
			$fold=MenuFold($menuid);

			if($CatchOpen=="1"){
				$link=ROOTPATH.$fold."/html/".$id.".html";
			}else{
				$link=ROOTPATH.$fold."/html/?".$id.".html";
			}

		}
		



		if($cutword!="0"){$body=csubstr(ltrim(strip_tags($body)),0,$cutword,$charset);}

		$title=str_replace($key,"<font color=red>".$key."</font>",$title);
		$body=str_replace($key,"<font color=red>".$key."</font>",$body);

		$var=array (
		'title' => $title, 
		'link' => $link, 
		'target' => $target, 
		'dtime' => $dtime, 
		'body' => $body 
		);

		$str.=$TempArr["rowstart"];
		$str.=ShowTplTemp($TempArr["list"],$var);
		$str.=$TempArr["rowend"];
		

		

	}

	$str.=$TempArr["end"];

	$PagesInfo=$pages->ShowNow();
	$ShowPages=$pages->output(1);


		return $str;


}
?>