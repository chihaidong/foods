<?php

/*
	[插件名称] 自由编辑区域 - 替换模版标签{#modEdit#}
	[适用范围] 全站
	[文 件 名] Edit.php
	[更新时间] 2006/7/16
*/

function Edit(){

	global $fsql,$charset,$MenuInfo;


		$PSET=PlusSet("modEdit");

		$body=PlusDef($PSET["body"],"");


		return $body;

}

?>