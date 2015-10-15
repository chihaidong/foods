<?php

/*
	[插件名称] 右侧挂角广告 - 替换模版标签{#modAdvsRightConer#}
	[适用范围] foot.html
	[文 件 名] AdvsRightConer.php
	[更新时间] 2006/7/30
*/

function AdvsRightConer () { 
	global $msql,$tbl_advs_right,$NowMenuid,$MenuInfo;

	
	$advsstr="";


	$msql -> query ("select * from $tbl_advs_right where hidden = '0' and menuid='$NowMenuid'");
	if ($msql -> next_record ()) {
		$type = $msql -> f ('type');
		$width = $msql -> f ('width');
		$height = $msql -> f ('height');
		$url = $msql -> f ('url');
		$target = $msql -> f ('target');
		$src = $msql -> f ('src');
		$border = $msql -> f ('border');
		$toppadding = $msql -> f ('toppadding');
		$sidepadding = $msql -> f ('sidepadding');

		$src=ROOTPATH.$src;


		$BtPadding=$height+$toppadding;
		$Str = "<a href=" . $url ." target=" . $target . ">".ShowTypeImage($src,$type,$width,$height,$border)."</a>";
	
		$advsstr="
		<SCRIPT language=JavaScript>
		<!--
		document.ns = navigator.appName == \"Netscape\"
		//--
		var rnumx1 = new Array();
		var rnumx2;
		var rnumx3;
		rnumxtemp = \"\";
		for(i = 0;i < 3;i ++){
		rnumx2 = Math.round(Math.random()*10);
		rnumx2 != 10 ? rnumx3 = rnumx2 : rnumx3 = 9;
		//document.write(\"[\"+rnumx3+\"]\");
		rnumx1[i] = rnumx3;
		if (rnumx1[0] > 4 || rnumx1[0] < 1){
		rnumx1[0] = 1;
		}
		if (rnumx1[1] > 2 && rnumx1[0] == 4){
		rnumx1[1] = 1;
		}
		rnumxtemp += new String(rnumx1[i]);
		}
		//--
		window.screen.width > 800 ? Rightimgheight = ".$BtPadding." : Rightimgheight = ".$BtPadding."
		window.screen.width > 800 ? imgright = " . $sidepadding . " : imgright = " . $sidepadding . "

		function threenineload2()
		{
		if (navigator.appName == \"Netscape\")
		{
		if(document.getElementById) {
		document.getElementById('threenine2').pageY = pageYOffset+window.innerHeight-Rightimgheight;
		document.getElementById('threenine2').pageX = imgright;

		} else {

		document.threenine2.pageY = pageYOffset+window.innerHeight - Rightimgheight;
		document.threenine2.pageX = imgright;
		}
		threeninemove2();
		}
		else
		{

		threenine2.style.top = document.body.scrollTop+document.body.offsetHeight-Rightimgheight;
		threenine2.style.right = imgright;
		threeninemove2();
		}
		}
		function threeninemove2()
		{
		if(document.ns)
		{
		if(document.getElementById) {

		document.getElementById('threenine2').style.top = pageYOffset+window.innerHeight-Rightimgheight
		document.getElementById('threenine2').style.left = imgright;
		} else {

		document.threenine2.top = pageYOffset + window.innerHeight - Rightimgheight
		document.threenine2.left = imgright;
		}
		setTimeout(\"threeninemove2();\",40)
		}
		else
		{

		threenine2.style.top = document.body.scrollTop + document.body.offsetHeight - Rightimgheight;
		threenine2.style.right = imgright;
		setTimeout(\"threeninemove2();\",80)
		}


		}
		function MM_reloadPage(init) { //reloads the window if Nav4 resized
		if (init == true) with (navigator) {
			if ((appName == \"Netscape\")&&(parseInt(appVersion) == 4)) {
				document.MM_pgW = innerWidth;
				document.MM_pgH = innerHeight;
				onresize = MM_reloadPage; }
			} else if (innerWidth!=document.MM_pgW || innerHeight!=document.MM_pgH) {
				location.reload();
			}
		}
		MM_reloadPage(true)
		{
		document.write('<div id=threenine2 style=\"position: absolute;width:64;top:200;visibility: visible;z-index: 1\">" . $Str . "</div>');
		threenineload2()
		}

		//-->
		</SCRIPT>";

		return $advsstr;
		} 
}

?>