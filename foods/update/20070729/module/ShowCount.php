<?php

/*
	[插件名称] 访问统计 - 替换模版标签{#modShowCount#}
	[适用范围] foot.htm
	[文 件 名] ShowCount.php
	[更新时间] 2006/7/21
*/

function ShowCount() { 
	
$str="<script>document.write(\"<script src=".ROOTPATH."stat.php?nowpage=\"+window.location.href+\"&reffer=\"+escape(document.referrer)+\"><\/script>\")</script>";
return $str;

		
}



?>