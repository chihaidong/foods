<?php

/*
	[�������] ���ɱ༭���� - �滻ģ���ǩ{#modEdit#}
	[���÷�Χ] ȫվ
	[�� �� ��] Edit.php
	[����ʱ��] 2006/7/16
*/

function Edit(){

	global $fsql,$charset,$MenuInfo;


		$PSET=PlusSet("modEdit");

		$body=PlusDef($PSET["body"],"");


		return $body;

}

?>