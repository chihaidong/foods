<?php

//固定标签-文章详情

function NewsDetail($id){

	
	global $fsql,$tbl_news_con,$owner;
	
	
	$fsql->query("select * from $tbl_news_con where id='$id'");
	if($fsql->next_record()){
		$catid=$fsql->f('catid');
		$catpath=$fsql->f('catpath');
		$body=$fsql->f('body');
		$dtime=$fsql->f('dtime');
		$uptime=$fsql->f('uptime');
		$title=$fsql->f('title');
		$source=$fsql->f('source');
		$author=$fsql->f('author');
		$iffb=$fsql->f('iffb');
		$cl=$fsql->f('cl');
		$secure=$fsql->f('secure');
	}
	
	
	$dtime=date("Y-m-d H:i:s",$dtime);
	$uptime=date("Y-m-d H:i:s",$uptime);
	$fsql->query("update $tbl_news_con set cl=cl+1 where id='$id'");
	
	$ArrayNewsDetail=array (
	'body' => $body, 
		'dtime' => $dtime, 
		'uptime' => $uptime, 
		'title' => $title, 
		'source' => $source, 
		'iffb' => $iffb, 
		'author' => $author, 
		'cl' => $cl, 
		'catid' => $catid,
		'secure' => $secure,
		'catpath' => $catpath
	);
	return $ArrayNewsDetail;

}



//预读类别信息
function LoadCatArr(){
	
	global $msql,$tbl_news_cat,$ArrayPid,$TotalCat,$ArrayCatid,$ArrayCat,$ArrayCatpath,$ArrayCatNums,$ArraySecure;

	$msql->query("select * from $tbl_news_cat order by xuhao");
	$i=0;
	while($msql->next_record()){
			$ArrayPid[$i]=$msql->f("pid");
			$ArrayCatid[$i]=$msql->f("catid");
			$ArrayCat[$i]=$msql->f("cat");
			$ArrayCatpath[$i]=$msql->f("catpath");
			$ArrayCatNums[$i]=$msql->f("nums");
			$ArraySecure[$i]=$msql->f("secure");

	$i++;
	}
	$TotalCat=$i;

}

//从类别ID取类别名

function ReadCatName($catid){

	global $MenuInfo,$TotalCat,$ArrayCatid,$ArrayCat;

	if(!isset($catid) || $catid=="" || $catid=="0"){
		$str=$MenuInfo[menu];
	}else{
		for($t=0;$t<$TotalCat;$t++){
			if($ArrayCatid[$t]==$catid){
					$str=$ArrayCat[$t];
			}
                        
                        
          }
	
	}
	return $str;

}

//初始化CPATH(当CPATH为空而CATID不空时,得到CPATH)

function InitCpath($catid,$cpath){

	if($catid!="0" && $catid!="" && (!isset($cpath) or $cpath=="")){
		
		$cpath=fmpath($catid).":";
	}
	return $cpath;

}



function ReadCPath($catid){

	global $TotalCat,$ArrayPid,$ArrayCatid,$ArrayCat,$ArrayCatpath;

	for($k=0;$k<sizeof($ArrayCatid);$k++){
		if($ArrayCatid[$k]==$catid){
			$cpath=$ArrayCatpath[$k];
			return $cpath;
		}
	}


	
}

function ReadSecure($catid){

	global $TotalCat,$ArrayPid,$ArrayCatid,$ArrayCat,$ArrayCatpath,$ArraySecure;

	for($k=0;$k<sizeof($ArrayCatid);$k++){
		if($ArrayCatid[$k]==$catid){
			$secure=$ArraySecure[$k];
			return $secure;
		}
	}


	
}


function QueryPageTitle(){

	global $TotalCat,$ArrayPid,$ArrayCatid,$ArrayCat,$ArrayCatpath,$ClassCatch,$CatchOpen;
	global $NowCatPath,$NowMenu,$CONF;
	
	$ShowPageNunber=$CONF["ShowPageNunber"];
	

	$nav=$NowMenu;
	if(isset($NowCatPath) && $NowCatPath!=""){
		$array=explode(":",$NowCatPath);
		$cpnums=sizeof($array)-1;
		for($i=0;$i<$cpnums;$i++){
		$arr=$array[$i]+0;
			for($t=0;$t<$TotalCat;$t++){
				if($ArrayCatid[$t]==$arr){
					
					$nav.= "_".$ArrayCat[$t];
				}
			}
		}

	}
	if($ShowPageNunber=="1"){
		$nowpage=$_GET["page"];
		if($nowpage!="" && $nowpage>=1){
			$pagestr="_".$nowpage;
		}
		$nav.=$pagestr;
	}
	return $nav;
}


?>