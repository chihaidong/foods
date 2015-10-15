<?php

/*
	[插件名称] 评论检索 - 替换模版的{#modCommentQuery#}
	[适用范围] 评论检索页
	[文 件 名] CommentQuery.php
	[更新时间] 2006/8/11
*/


function CommentQuery(){

	global $fsql,$tsql,$charset,$tbl_comment,$tbl_comment_cat,$tbl_menu,$tbl_company,$tbl_info,$tbl_products,$tbl_play,$PagesInfo,$ShowPages,$MenuInfo;

	
	$PSET=PlusSet("modCommentQuery");
	
	$shownums=PlusDef($PSET["shownums"],"20");
	$ord=PlusDef($PSET["ord"],"uptime");
	$sc=PlusDef($PSET["sc"],"desc");
	$showtime=PlusDef($PSET["showtime"],"Y-m-d H:i:s");
	$cutword=PlusDef($PSET["cutword"],"50");
	$target=PlusDef($PSET["target"],"_self");
	$tempname=PlusDef($PSET["tempname"],"tpl_comment_query.htm");
	
	$coltype=$_GET["coltype"];
	$nowmenuid=$_GET["nowmenuid"];
	$rid=$_GET["rid"];
	$page=$_GET["page"];

	if($coltype!=""){
		$tsql->query("select cat from $tbl_comment_cat where coltype='$coltype'");
		if($tsql->next_record()){
			$bbsclass=$tsql->f('cat');
		}

	}else{
		$bbsclass=$MenuInfo["menu"];
	}


	//模版解释
	$Temp=LoadTemp(ROOTPATH."templates/".$MenuInfo["skin"]."/".$tempname);
	$TempArr=SplitTblTemp($Temp);

	$str=str_replace("{#bbsclass#}",$bbsclass,$TempArr["start"]);


	$scl=" fabu='1' and pid='0' ";

	if($coltype!="0" && $coltype!=""){
		$scl.=" and coltype='$coltype' ";

	}

	if($nowmenuid!="" && $nowmenuid!="0"){
		$scl.=" and menuid='$nowmenuid' ";
	}
	if($rid!="" && $rid!="0"){
		$scl.=" and rid='$rid' ";
	}

	
	
	include(ROOTPATH."includes/func/memberpages.inc.php");
	$pages=new pages;

	$totalnums=TblCount($tbl_comment,"id",$scl);
	
	$pages->setvar(array("nowmenuid" => $nowmenuid,"rid" => $rid,"coltype" => $coltype));

	$pages->set($shownums,$totalnums);		                          
		
	$pagelimit=$pages->limit();	  

	$fsql->query("select * from $tbl_comment where $scl order by $ord $sc limit $pagelimit");

	while($fsql->next_record()){
		
			$id=$fsql->f('id');
			$rid=$fsql->f('rid');
			$title=$fsql->f('title');
			$coltype=$fsql->f('coltype');
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

			if($rid!=0){

				switch($coltype){

					case "news":
					
					$tsql->query("select fold from $tbl_menu where menuid='$menuid'");
					if($tsql->next_record()){
						$fold=$tsql->f('fold');
					}
					$relatelink=ROOTPATH.$fold."/html/".$rid.".html";
					break;

					case "cp":
					

					$tsql->query("select fold from $tbl_menu where menuid='$menuid'");
					if($tsql->next_record()){
						$fold=$tsql->f('fold');
					}
					$relatelink=ROOTPATH.$fold."/html/".$rid.".html";
					break;

					case "down":
					
					$tsql->query("select fold from $tbl_menu where menuid='$menuid'");
					if($tsql->next_record()){
						$fold=$tsql->f('fold');
					}
					$relatelink=ROOTPATH.$fold."/html/".$rid.".html";
					break;

					case "company":
					
					$comdir=$rid+100000;
					$relatelink=ROOTPATH."com/".$comdir."/";
					break;

					case "sell":
					
					$tsql->query("select memberid from $tbl_info where id='$rid'");
					if($tsql->next_record()){
						$memberid=$tsql->f('memberid');
					}

					$comdir=$memberid+100000;
					$relatelink=ROOTPATH."com/".$comdir."/sell/html/".$rid.".html";
					break;

					case "hd":
					
					$tsql->query("select memberid from $tbl_play where id='$rid'");
					if($tsql->next_record()){
						$memberid=$tsql->f('memberid');
					}

					$comdir=$memberid+100000;
					$relatelink=ROOTPATH."hd/html/".$rid.".html";
					break;


					case "products":
					
					$tsql->query("select memberid from $tbl_products where id='$rid'");
					if($tsql->next_record()){
						$memberid=$tsql->f('memberid');
					}

					$comdir=$memberid+100000;
					$relatelink=ROOTPATH."com/".$comdir."/products/html/".$rid.".html";
					break;

				}
			
			
			}else{
				$relatelink="comment.php?coltype=".$coltype;
			}



		$face=ROOTPATH."face/".$face.".gif";

		$dtime=date($showtime,$dtime);
		if($cutword!="0"){$body=csubstr($body,0,$cutword,$charset)."...";}
		$link=ROOTPATH."comment_detail.php?commentid=$id";


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