<?php

/*
	[�������] ������������ - �滻ģ���ǩ{#modLinkText#}
	[���÷�Χ] ȫվ
	[�� �� ��] LinkText.php
	[����ʱ��] 2006/8/13
*/


function LinkText(){

	global $fsql,$charset,$tbl_link;
	global $strMore,$MenuInfo;

	$PSET=PlusSet("modLinkText");

	$shownums=PlusDef($PSET["shownums"],"1");
	$hangnums=PlusDef($PSET["hangnums"],"1");
	$ord=PlusDef($PSET["ord"],"xuhao");
	$sc=PlusDef($PSET["sc"],"asc");
	$target=PlusDef($PSET["target"],"_blank");
	$more=PlusDef($PSET["showmore"],$strMore);
	$tempname=PlusDef($PSET["tempname"],"tpl_link.htm");

	$morelink=ROOTPATH."page/link/";

	$scl=" showtype='text' ";


		//ģ�����
		$Temp=LoadTemp(ROOTPATH."templates/".$MenuInfo["skin"]."/".$tempname);
		$TempArr=SplitTblTemp($Temp);

		
		$str=$TempArr["start"];


		$kk=1;
		$havepic=0;
		$fsql->query("select * from $tbl_link where $scl order by $ord $sc limit 0,$shownums");
		
		while($fsql->next_record()){
			
			$id=$fsql->f('id');
			$title=$fsql->f('name');
			$link=$fsql->f('url');

			

			if($kk==1){
				$str.=$TempArr["rowstrat"];
			}


			$var=array (
			'linkstr' => $title, 
			'link' => $link,
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
		
		//����յ�td

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