<?php

/*
	[�������] ����ͳ�� - �滻ģ���ǩ{#modShowCount#}
	[���÷�Χ] foot.htm
	[�� �� ��] ShowCount.php
	[����ʱ��] 2006/7/21
*/

function ShowCount() { 
	
$str="<script>document.write(\"<script src=".ROOTPATH."stat.php?nowpage=\"+window.location.href+\"&reffer=\"+escape(document.referrer)+\"><\/script>\")</script>";
return $str;

		
}



?>