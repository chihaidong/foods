<style>
.list{BACKGROUND-COLOR: expression((this.sectionRowIndex%2==0)?'#f5f5f5':'#ffffff');font-size:14px;}
</style>

<?php
define("ROOTPATH", "../");
include(ROOTPATH."config.inc.php");
include(ROOTPATH."language/".$sLan."_".$charset.".php");
include(ROOTPATH."includes/SysGlobal.php");
include(ROOTPATH."includes/pro.php");
include(ROOTPATH."includes/func/common.inc.php");
include(ROOTPATH."includes/func/db.inc.php");


		echo "<table cellspacing='0' cellpadding='5' width='760' style='border:1px #d5d5d5 solid'><tr bgcolor='#f5f5f5' >
   <td >插件名称</td> <td >插件标签</td>
    <td >默认模版</td>
  </tr><tr class=list>";
		$FromPath=".";
		$handle=opendir($FromPath);
		while ($ifile = readdir($handle)){
			$nowfile=$FromPath."/".$ifile;

    		if($ifile!="." && $ifile!=".." && !is_dir($nowfile) && $ifile!="modtemp.php" && $ifile!="MySearch.php" && substr($ifile,0,4)!="Advs"){
    			
						
						$iname=str_replace(".php","",$ifile);
						$iname="mod".$iname;
						$msql->query("select plusname from $tbl_plus_set where pluslable='$iname'");
						if($msql->next_record()){
							$plusname=$msql->f('plusname');
						}
						$lable="{#".$iname."#}";
						$fd=fopen($nowfile,"r");
						$mcon=fread($fd,10000);
						fclose($fd);
						$modulearr=explode('PSET["tempname"],"',$mcon);
						$modulearrs=explode('")',$modulearr[1]);
						
						if($modulearrs[0]!=""){
							echo "<td width=220 >".$plusname."</td><td width=250 >".$lable."</td><td >".$modulearrs[0];
						}else{
							echo "<td width=220 >".$plusname."</td><td width=250 >".$lable."</td><td >无";
						}

						
						echo "</td></tr><tr class=list>";
					
    		
    				
    		}
      		
     	}
      	closedir($handle); 

		echo "</tr></table>";




?>