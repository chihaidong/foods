<?php

/*
	[�������] �������� - �滻ģ���ǩ{#modDownList#}
	[���÷�Χ] ȫվ
	[�� �� ��] DownList.php
	[����ʱ��] 2006/8/5
*/

function DownList(){

	global $fsql,$charset,$tbl_down_con,$CatchOpen;
	global $strMore,$NowMenuid,$MenuInfo;


		$PSET=PlusSet("modDownList");

		$showmenuid=PlusDef($PSET["showmenuid"],MenuDef("down",$NowMenuid));
		$shownums=PlusDef($PSET["shownums"],"5");
		$ord=PlusDef($PSET["ord"],"id");
		$sc=PlusDef($PSET["sc"],"desc");
		$showtime=PlusDef($PSET["showtime"],"n/j");
		$cutword=PlusDef($PSET["cutword"],"0");
		$target=PlusDef($PSET["target"],"_self");
		$onlytj=PlusDef($PSET["onlytj"],"0");
		$catid=PlusDef($PSET["catid"],"0");
		$more=PlusDef($PSET["showmore"],$strMore);
		$tempname=PlusDef($PSET["tempname"],"tpl_list.htm");

		
		$scl=" iffb='1' ";

		if($showmenuid!="0" && $showmenuid!=""){
			$scl.=" and menuid='$showmenuid' ";

			$fold=MenuFold($showmenuid);
			$morelink=ROOTPATH.$fold."/class/?".$catid.".html";
		}else{
		
			$morelink=ROOTPATH."";
		}


		if($catid!=0 && $catid!=""){
			$catid=fmpath($catid);
			$scl.=" and catpath regexp '$catid' ";
		}



		if($onlytj=="1"){
			$scl.=" and tj='1' ";
		}

		//ģ�����
		$Temp=LoadTemp(ROOTPATH."templates/".$MenuInfo["skin"]."/".$tempname);
		$TempArr=SplitTblTemp($Temp);

		$str=$TempArr["start"];

		$kk=0;
		$havepic=0;
		$fsql->query("select * from $tbl_down_con where $scl order by $ord $sc limit 0,$shownums");

		while($fsql->next_record()){
			
			$id=$fsql->f('id');
			$title=$fsql->f('title');
			$url=$fsql->f('url');
			$filesize=$fsql->f('filesize');
			$uptime=$fsql->f('uptime');
			$menuid=$fsql->f('menuid');
			$catpath=$fsql->f('catpath');
			$dtime=$fsql->f('dtime');
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