<?php

/*
	[�������] ��վ��־ - �滻ģ���ǩ{#modLogo#}
	[���÷�Χ] head.htm
	[�� �� ��] Logo.php
	[����ʱ��] 2006/7/30
*/

function Logo() { 
	
	global $msql,$fsql,$tbl_logo,$NowMenuid,$MenuInfo;


	$msql -> query ("select * from $tbl_logo where hidden='0' and menuid='$NowMenuid'");
	if ($msql -> next_record ()) {
		$type = $msql -> f ('type');
		$width = $msql -> f ('width');
		$height = $msql -> f ('height');
		$src = $msql -> f ('src');
		$border = $msql -> f ('border');

		$src=ROOTPATH.$src;
		
		$str = ShowTypeImage($src,$type,$width,$height,$border);
		
		return $str;
		
	}else{
	
			$fsql -> query ("select * from $tbl_logo where hidden='0' and menuid='1'");
			if ($fsql -> next_record ()) {
				$type = $fsql -> f ('type');
				$width = $fsql -> f ('width');
				$height = $fsql -> f ('height');
				$src = $fsql -> f ('src');
				$border = $fsql -> f ('border');

				$src=ROOTPATH.$src;
				
				$str= ShowTypeImage($src,$type,$width,$height,$border);
				
				return $str;
			}else{

				return "";
			}

	}


		
}



?>