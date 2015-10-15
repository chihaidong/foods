<?php

/*
	[插件名称] 轮播广告 - 替换模版标签{#modAdvsLb#}
	[适用范围] 全站
	[文 件 名] AdvsLb.php
	[更新时间] 2006/10/6
*/

function AdvsLb () { 

	global $msql,$tbl_advs_lb;


	$PSET=PlusSet("modAdvsLb");

	$shownums=PlusDef($PSET["shownums"],"5");
	$smallw=PlusDef($PSET["smallw"],"250");
	$smallh=PlusDef($PSET["smallh"],"180");
	$smallh1=$smallh+1;
	$p=1;
	$msql->query("select * from $tbl_advs_lb  order by xuhao limit 0,$shownums");
	while($msql->next_record()){
	$id=$msql->f('id');
	$src=$msql->f('src');
	$url=$msql->f('url');
	$title=$msql->f('title');
	$text=$msql->f('text');

	$src=ROOTPATH.$src;

	if($p==1){
		$pic=$src;
		$purl=$url;
		$ptitle=$title;
	}else{
		$pic.="|".$src;
		$purl.="|".$url;
		$ptitle.="|".$title;
	}


	$p++;
	}

	
	
	
	$advstr="<script>


	document.write(\"<object classid=clsid:d27cdb6e-ae6d-11cf-96b8-444553540000 codebase=http://fpdownload.macromedia.com/pub/shockwave/cabs/flash/swflash.cab#version=6,0,0,0 width='".$smallw."' height='".$smallh1."'>\");
	document.write(\"<param name=allowScriptAccess value=sameDomain><param name=movie value=".ROOTPATH."images/pix.swf><param name=quality value=high><param name=bgcolor value=#ffffff>\");
	document.write(\"<param name=menu value=false><param name=wmode value=opaque>\");
	document.write(\"<param name=FlashVars value='pics=".$pic."&links=".$purl."&texts=".$ptitle."&borderwidth=".$smallw."&borderheight=".$smallh."&textheight=1'>\");
	document.write(\"<embed src=".ROOTPATH."images/pix.swf wmode=opaque FlashVars='pics=".$pic."&links=".$purl."&texts=".$ptitle."&borderwidth=".$smallw."&borderheight=".$smallh."&textheight=1' menu=false bgcolor=#ffffff quality=high width='".$smallw."' height='".$smallh."' allowScriptAccess=sameDomain type=application/x-shockwave-flash pluginspage=http://www.macromedia.com/go/getflashplayer>\");		
	document.write(\"</object>\");

	</script>";
	
	return $advstr;
	
}



?>