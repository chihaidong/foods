<?php

/*
	[插件名称] 左侧挂角广告 - 替换模版标签{#modAdvsLeftConer#}
	[适用范围] foot.html
	[文 件 名] AdvsLeftConer.php
	[更新时间] 2006/7/30
*/

function AdvsLeftConer() {

	global $msql,$tbl_advs_left,$NowMenuid,$MenuInfo;

	
	$advsstr="";
	
	$msql -> query ("select * from $tbl_advs_left where hidden = '0' and menuid='$NowMenuid'");
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
		window.screen.width > 800 ? imgheight = ".$BtPadding." : imgheight = ".$BtPadding."
		window.screen.width > 800 ? imgleft = " . $sidepadding . " : imgleft = " . $sidepadding . "
		function threenineload()
		{
		if (navigator.appName == \"Netscape\")
		{
		if(document.getElementById) {
			document.getElementById('threenine1').pageY = pageYOffset+window.innerHeight-imgheight;
			document.getElementById('threenine1').pageX = imgleft;

		} else {

			document.threenine1.pageY = pageYOffset+window.innerHeight - imgheight;
			document.threenine1.pageX = imgleft;
		}
		threeninemove();
		}
		else
		{

		threenine1.style.top = document.body.scrollTop+document.body.offsetHeight-imgheight;
		threenine1.style.left = imgleft;
		threeninemove();
		}
		}
		function threeninemove()
		{
		if(document.ns)
		{
		if(document.getElementById) {

			document.getElementById('threenine1').style.top = pageYOffset+window.innerHeight-imgheight
			document.getElementById('threenine1').style.left = imgleft;
		} else {

			document.threenine1.top = pageYOffset + window.innerHeight - imgheight
			document.threenine1.left = imgleft;
		}
		setTimeout(\"threeninemove();\",40)
		}
		else
		{

		threenine1.style.top = document.body.scrollTop + document.body.offsetHeight - imgheight;
		threenine1.style.left = imgleft;
		setTimeout(\"threeninemove();\",80)
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
			document.write('<div id=threenine1 style=\"position: absolute;width:64;top:200;visibility: visible;z-index: 1\">" . $Str . "</div>');
			threenineload()
			}

		//-->
		</SCRIPT>";

			return $advsstr;
		} 
}

?>