<?php

/*
	[�������] �Ƽ��̼� - �滻ģ���ǩ{#modCompanyTj#}
	[���÷�Χ] ȫվ
	[�� �� ��] CompanyTj.php
	[����ʱ��] 2006/10/4
*/

function CompanyTj(){

	global $fsql,$charset,$tbl_company,$CatchOpen;
	global $strMore,$NowMenuid,$MenuInfo;


		$PSET=PlusSet("modCompanyTj");

		$shownums=PlusDef($PSET["shownums"],"5");
		$ord=PlusDef($PSET["ord"],"dtime");
		$sc=PlusDef($PSET["sc"],"desc");
		$cutword=PlusDef($PSET["cutword"],"0");
		$target=PlusDef($PSET["target"],"_self");
		$catid=PlusDef($PSET["catid"],"0");
		$more=PlusDef($PSET["showmore"],$strMore);
		$tempname=PlusDef($PSET["tempname"],"tpl_companylist.htm");

		$morelink=ROOTPATH."company/class/?".$catid.".html&showtj=1";
		
		$scl=" iffb='1' and tj='1' ";

		if($catid!=0 && $catid!=""){
			$catid=fmpath($catid);
			$scl.=" and catpath regexp '$catid' ";
		}



		//ģ�����
		$Temp=LoadTemp(ROOTPATH."templates/".$MenuInfo["skin"]."/".$tempname);
		$TempArr=SplitTblTemp($Temp);

		$str=$TempArr["start"];

		$kk=0;
		$havepic=0;
		$fsql->query("select * from $tbl_company where $scl order by $ord $sc limit 0,$shownums");

		while($fsql->next_record()){
			
			$id=$fsql->f('id');
			$company=$fsql->f('company');
			$memberid=$fsql->f('memberid');
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


			$comdir=$memberid+100000;

			if($CatchOpen=="1" && file_exists(ROOTPATH."com/".$comdir."/index.html")){
				$link=ROOTPATH."com/".$comdir."/index.html";
			}else{
				$link=ROOTPATH."com/".$comdir."/index.php";
			}

			
			if($cutword!="0"){$title=csubstr($title,0,$cutword,$charset);}


			$var=array (
			'company' => $company, 
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