<?php
define("ROOTPATH","");
include(ROOTPATH."config.inc.php");
include(ROOTPATH."language/".$sLan."_".$charset.".php");
include(ROOTPATH."includes/pro.php");
include(ROOTPATH."includes/SysGlobal.php");
include(ROOTPATH."includes/func/db.inc.php");
include(ROOTPATH."includes/func/common.inc.php");

$path=$_GET["path"];
$tempname=$_GET["tempname"];
$skin=$_GET["skin"];

$fd=fopen("templates/".$tempname,r);
$p=fread($fd,30000);
fclose($fd);
		
$Temp=str_replace("images/",$path."templates/".$skin."/images/",$p);
$Temp=str_replace("{#RP#}",$path,$Temp);


if(isset($_COOKIE["MUSER"]) && $_COOKIE["MUSER"]!=""){
	$nowmemberid=$_COOKIE["MEMBERID"];
	$LoginString=$Temp;
	$comdir=$nowmemberid+100000;
	$myurl="com/".$comdir."/";
	$msql->query("select count(id) from $tbl_feedback where tomemberid='$nowmemberid' and iflook='0'");
	if($msql->next_record()){
	$fnums=$msql->f('count(id)');

	if($fnums>0){
	
	$LoginString=str_replace("{#user#}",$_COOKIE["MUSER"],$LoginString);
	$LoginString=str_replace("{#fnums#}",$fnums,$LoginString);
	$LoginString=ShowTemp($LoginString);


?>

window.onload = getMsg;
window.onresize = resizeDiv;
window.onerror = function(){}

var divTop,divLeft,divWidth,divHeight,docHeight,docWidth,objTimer,i = 0;
function getMsg()
{ 
try{
divTop = parseInt(document.getElementById("eMeng").style.top,10)
divLeft = parseInt(document.getElementById("eMeng").style.left,10)
divHeight = parseInt(document.getElementById("eMeng").offsetHeight,10)
divWidth = parseInt(document.getElementById("eMeng").offsetWidth,10)
docWidth = document.body.clientWidth;
docHeight = document.body.clientHeight;
document.getElementById("eMeng").style.top = parseInt(document.body.scrollTop,10) + docHeight + 10;// divHeight
document.getElementById("eMeng").style.left = parseInt(document.body.scrollLeft,10) + docWidth - divWidth
document.getElementById("eMeng").style.visibility="visible"
objTimer = window.setInterval("moveDiv()",10)
}
catch(e){}
} 
 
function resizeDiv()
{ 
i+=1
if(i>2000) closeDiv()
try{
divHeight = parseInt(document.getElementById("eMeng").offsetHeight,10)
divWidth = parseInt(document.getElementById("eMeng").offsetWidth,10)
docWidth = document.body.clientWidth;
docHeight = document.body.clientHeight;
document.getElementById("eMeng").style.top = docHeight - divHeight + parseInt(document.body.scrollTop,10)
document.getElementById("eMeng").style.left = docWidth - divWidth + parseInt(document.body.scrollLeft,10)
}
catch(e){}
} 
 
function moveDiv()
{ 
try
{
if(parseInt(document.getElementById("eMeng").style.top,10) <= (docHeight - divHeight + parseInt(document.body.scrollTop,10)))
{
window.clearInterval(objTimer)
objTimer = window.setInterval("resizeDiv()",1)
}
divTop = parseInt(document.getElementById("eMeng").style.top,10)
document.getElementById("eMeng").style.top = divTop - 1
}
catch(e){}
} 
function closeDiv()
{ 
document.getElementById('eMeng').style.visibility='hidden';
if(objTimer) window.clearInterval(objTimer)
} 

<?php
		$arr=explode("\n",$LoginString);
		for($i=0;$i<=sizeof($arr);$i++){

			$str=str_replace("\r","",$arr[$i]);
			$str=str_replace('"','\"',$str);

			echo "document.write(\"".$str."\");\n";
		}
	}else{
		echo "ver=0";
	}
 }else{
		echo "ver=0";
	}
}else{
		echo "ver=0";
	}

?>
