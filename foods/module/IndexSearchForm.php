<?php

/*
	[�������] ��ҳ�͹����� - �滻ģ���{#modIndexSearchForm#}
	[���÷�Χ] ȫվ
	[�� �� ��] IndexSearchForm.php
	[����ʱ��] 2006/11/18
*/


function IndexSearchForm(){

	global $msql,$fsql,$tsql,$charset,$PagesInfo,$lanZoneSel,$lanCitySel;
	global $tbl_member_cat,$tbl_member_zone,$tbl_tradetype,$MenuInfo;


	$PSET=PlusSet("modIndexSearchForm");
	
	$tempname=PlusDef($PSET["tempname"],"tpl_indexsearchform.htm");
	

	$key=$_GET["key"];
	$showtj=$_GET["showtj"];
	$catid=$_GET["catid"];
	$zoneid=$_GET["zoneid"];
	$Province=$_GET["Province"];
	$tradetype=$_GET["tradetype"];

	//��ҵ��ҵ����
	$fsql->query("select * from $tbl_member_cat where pid='0' order by xuhao");
	while($fsql->next_record()){
		$lcatid=$fsql->f('catid');
		$lcat=$fsql->f('cat');
		if($catid==$lcatid){
			$catlist.="<option value='".$lcatid."' selected>".$lcat."</option>";
		}else{
			$catlist.="<option value='".$lcatid."'>".$lcat."</option>";
		}
		
	}

	//��ҵ��Ӫģʽ
	$fsql->query("select * from $tbl_tradetype");
	while($fsql->next_record()){
		$ltradetype=$fsql->f('tradetype');
		if($tradetype==$ltradetype){
			$tradetypelist.="<option value='".$ltradetype."' selected>".$ltradetype."</option>";
		}else{
			$tradetypelist.="<option value='".$ltradetype."'>".$ltradetype."</option>";
		}
		
	}
	
	//���������˵�
				
				$ZoneString="<script language=javascript>
							pList.add(new province('".$lanZoneSel."','ALL'));
							pList.addAt('0',new area('".$lanCitySel."','0'));";
				$fsql -> query ("select * from $tbl_member_zone where pid = '0' order by xuhao");
				$i = 1;
				while($fsql -> next_record()){
					  $zone_id = $fsql -> f ('catid');
					  $zone = $fsql -> f ('cat');
					  $ZoneString.="pList.add(new province(\"$zone\",\"$zone_id\"));";
					  $ZoneString.="pList.addAt('$i',new area('".$lanCitySel."','".$zone_id."'));";
					  $tsql -> query ("select * from $tbl_member_zone where pid = '$zone_id'  order by xuhao ");
					  $e=0;
					  while($tsql -> next_record()){
									$szoneid = $tsql -> f ('catid');
									$szone = $tsql -> f ('cat');
									$ZoneString.="pList.addAt('$i',new area(\"$szone\",\"$szoneid\"));";
									if($szoneid==$zoneid){
										$Province=$i;
									}
						$e++;
					  }
						if($e<1){
							
							if($zone_id==$zoneid){
								$Province=$i;
							}
						}

					  $i ++;
				}
				$ZoneString.="</script>";

	//ģ�����
	$Temp=LoadTemp(ROOTPATH."templates/".$MenuInfo["skin"]."/".$tempname);



		$var=array (
		'key' => $key, 
		'catlist' => $catlist, 
		'tradetypelist' => $tradetypelist, 
		'Province' => $Province, 
		'ZoneString' => $ZoneString, 
		'RP' => ROOTPATH, 
		'zoneid' => $zoneid 
		);

		$str=ShowTplTemp($Temp,$var);
		return $str;


}
?>