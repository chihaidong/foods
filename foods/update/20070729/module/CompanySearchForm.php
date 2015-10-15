<?php

/*
	[插件名称] 餐馆组合搜索 - 替换模版的{#modCompanySearchForm#}
	[适用范围] 全站
	[文 件 名] CompanySearchForm.php
	[更新时间] 2006/9/18
*/


function CompanySearchForm(){

	global $msql,$fsql,$tsql,$charset,$PagesInfo,$lanZoneSel,$lanCitySel;
	global $tbl_member_cat,$tbl_member_zone,$tbl_tradetype,$MenuInfo;


	$PSET=PlusSet("modCompanySearchForm");
	
	$tempname=PlusDef($PSET["tempname"],"tpl_companysearchform.htm");
	

	$key=$_GET["key"];
	$showtj=$_GET["showtj"];
	$catid=$_GET["catid"];
	$zoneid=$_GET["zoneid"];
	$Province=$_GET["Province"];
	$tradetype=$_GET["tradetype"];

	//企业行业分类
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

	//企业经营模式
	$fsql->query("select * from $tbl_tradetype");
	while($fsql->next_record()){
		$ltradetype=$fsql->f('tradetype');
		if($tradetype==$ltradetype){
			$tradetypelist.="<option value='".$ltradetype."' selected>".$ltradetype."</option>";
		}else{
			$tradetypelist.="<option value='".$ltradetype."'>".$ltradetype."</option>";
		}
		
	}
	
	//地区下拉菜单
				
				$ZoneString="<script language=javascript>
							pList.add(new province('-- ".$lanZoneSel." --','ALL'));
							pList.addAt('0',new area('-- ".$lanCitySel." --','0'));";
				$fsql -> query ("select * from $tbl_member_zone where pid = '0' order by xuhao");
				$i = 1;
				while($fsql -> next_record()){
					  $zone_id = $fsql -> f ('catid');
					  $zone = $fsql -> f ('cat');
					  $ZoneString.="pList.add(new province(\"$zone\",\"$zone_id\"));";
					  $ZoneString.="pList.addAt('$i',new area('-- ".$lanCitySel." --','".$zone_id."'));";
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

	//模版解释
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