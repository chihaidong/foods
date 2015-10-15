<?php

/*
	[插件名称] 浮动广告 - 替换模版标签{#modAdvsFloat#}
	[适用范围] foot.html
	[文 件 名] AdvsFloat.php
	[更新时间] 2006/7/30
*/

function AdvsFloat () { 

	global $msql,$tbl_advs_float,$NowMenuid,$MenuInfo;

	
	$advsstr="";
	$div_name = "no1";
	$msql -> query ("select * from $tbl_advs_float where hidden = '0' and menuid='$NowMenuid'");
	if ($msql -> next_record ()) {
		$type = $msql -> f ('float_advs_type');
		$width = $msql -> f ('float_width');
		$height = $msql -> f ('float_height');
		$url = $msql -> f ('float_url');
		$target = $msql -> f ('float_target');
		$advs_src = $msql -> f ('src');
		$speed = $msql -> f ('float_speed');
		$border = $msql -> f ('border');

		$advs_src=ROOTPATH.$advs_src;
		
			$advs_type = "<a href=" . $url ." target=" . $target . ">".ShowTypeImage($advs_src,$type,$width,$height,$border)."</a>";
		
			$advsstr="
			<script language=javascript>

			var brOK = false;
			var mie = false;
			var aver = parseInt(navigator.appVersion.substring(0,1));
			var aname = navigator.appName;

			function checkbrOK() {
				if(aname.indexOf(\"Internet Explorer\") != -1) {
					if(aver >= 4) brOK = navigator.javaEnabled();
					mie = true;
				}
				if(aname.indexOf(\"Netscape\") != -1) {
					if(aver >= 4) brOK = navigator.javaEnabled();
				}
			}

			var vmin = 2;
			var vmax = 5;
			var vr = 2;
			var timer1;

			function Chip(chipname,width,height) {
				this.named = chipname;
				this.vx = vmin + vmax * Math.random();
				this.vy = vmin + vmax * Math.random();
				this.w = width;
				this.h = height;
				this.xx = 0;
				this.yy = 0;
				this.timer1 = null;
			}

			function movechip(chipname) {
				if(brOK) {
					eval(\"chip=\" + chipname);
					if(!mie) {
						pageX = window.pageXOffset;
						pageW = window.innerWidth;
						pageY = window.pageYOffset;
						pageH = window.innerHeight;
					} else {
						pageX = window.document.body.scrollLeft;
						pageW = window.document.body.offsetWidth - 8;
						pageY = window.document.body.scrollTop;
						pageH = window.document.body.offsetHeight;
					}
					chip.xx = chip.xx + chip.vx;
					chip.yy = chip.yy + chip.vy;
					chip.vx += vr * (Math.random() - 0.5);
					chip.vy += vr * (Math.random() - 0.5);
					if(chip.vx > (vmax + vmin))  chip.vx = (vmax + vmin) * 2 - chip.vx;
					if(chip.vx < (-vmax - vmin)) chip.vx = (-vmax - vmin) * 2 - chip.vx;
					if(chip.vy > (vmax + vmin))  chip.vy = (vmax + vmin) * 2 - chip.vy;
					if(chip.vy < (-vmax - vmin)) chip.vy = (-vmax - vmin) * 2 - chip.vy;
					if(chip.xx <= pageX) {
						chip.xx = pageX;
						chip.vx = vmin + vmax * Math.random();
					}
					if(chip.xx >= pageX + pageW - chip.w - 32) {
						chip.xx = pageX + pageW -chip.w - 32;
						chip.vx = -vmin - vmax * Math.random();
					}
					if(chip.yy <= pageY) {
						chip.yy = pageY;
						chip.vy = vmin + vmax * Math.random();
					}
					if(chip.yy >= pageY + pageH - chip.h) {
						chip.yy = pageY + pageH - chip.h;
						chip.vy = -vmin - vmax * Math.random();
					}
					if(!mie) {
						if(document.getElementById){
						document.getElementById(chip.named).style.top = chip.yy;
						document.getElementById(chip.named).style.left = chip.xx;
					}else{
						eval('document.' + chip.named + '.top=' + chip.yy);
						eval('document.' + chip.named + '.left=' + chip.xx);
					}  
				} else {
					eval('document.all.' + chip.named + '.style.pixelLeft=' + chip.xx);
					eval('document.all.' +chip.named + '.style.pixelTop =' + chip.yy);
				}
				chip.timer1 = setTimeout(\"movechip('\" + chip.named + \"')\"," . $speed . ");
			}
			}
			function stopme(chipname)
			{if(brOK)
			{//alert(chipname)
			eval(\"chip=\" + chipname);
			if(chip.timer1 != null)
			{clearTimeout(chip.timer1)}
			}
			}
			var " .$div_name. ";
			var chip;
			function " .$div_name. "()
			{checkbrOK();
			" .$div_name. " = new Chip(\"" .$div_name. "\",60,80);
			if(brOK)
			{ movechip(\"" .$div_name. "\");
			}
			}
			</script>
			<div id=" .$div_name. " style=\"POSITION: absolute;\" onMouseover=\"stopme('" .$div_name. "')\" onMouseout=\"movechip('" .$div_name. "')\">" . $advs_type . "</div>
			<script>" .$div_name. "();</script>";
	}
	
	return $advsstr;


}



?>