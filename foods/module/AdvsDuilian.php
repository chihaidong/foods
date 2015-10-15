<?php

/*
	[插件名称] 对联广告 - 替换模版标签{#modAdvsDuilian#}
	[适用范围] foot.html
	[文 件 名] AdvsDuilian.php
	[更新时间] 2006/7/30
*/

//////////////////显示对联广告

function AdvsDuilian() { 

	global $msql,$tbl_advs_dl,$NowMenuid,$MenuInfo;

	$advsstr="";

	$msql -> query ("select * from $tbl_advs_dl where hidden = '0' and menuid='$NowMenuid'");
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

		if($type=="gif"){
			$advs_type_left = "<div id=huashuolayer style='position: absolute;visibility:visible;z-index:1'><a href=" . $url ." target=" . $target . ">".ShowTypeImage($src,$type,$width,$height,$border)."</a></div>";
			$advs_type_right = "<div id=huashuolayer1 style='position: absolute;visibility:visible;z-index:1'><a href=" . $url ." target=" . $target . ">".ShowTypeImage($src,$type,$width,$height,$border)."</a></div>";
		}else{
			$advs_type_left = "<div id=huashuolayer style='position: absolute;visibility:visible;z-index:1'><EMBED src='" . $src . "' quality=high  width=" . $width . " height=" . $height . " border=".$border." TYPE='application/x-shockwave-flash' id=sinadl></EMBED></div>";
			$advs_type_right = "<div id=huashuolayer1 style='position: absolute;visibility:visible;z-index:1'><EMBED src='" . $src . "' quality=high   width=" . $width . " height=" . $height . " border=".$border."  TYPE='application/x-shockwave-flash' id=sinadl></EMBED></div>";

		}
		$advsstr="
			<SCRIPT>
				function winload() {
					huashuolayer.style.top = " . $toppadding . ";
					huashuolayer.style.left = " . $sidepadding . ";
					huashuolayer1.style.top = " . $toppadding . ";
					huashuolayer1.style.right = " . $sidepadding . ";
				}

				if(document.body.offsetWidth > 800){	
				{
					document.write(\"" .$advs_type_left . "\"+\"" . $advs_type_right . "\");
				}
 				 winload()
				}
			</SCRIPT>
			<SCRIPT language=JavaScript event=FSCommand() for=sinadl>
				huashuolayer.style.visibility = 'hidden';
				huashuolayer1.style.visibility = 'hidden';
			</SCRIPT>";
	}

	return $advsstr;

} 

?>