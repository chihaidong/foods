<?php

/*
	[插件名称] 脚注栏目菜单- 替换模版标签{#modBottomMenu#}
	[适用范围] 全部
	[文 件 名] BottomMenu.php
	[更新时间] 2006/8/10
*/


function BottomMenu(){
	
	global $msql,$tbl_menu,$CatchOpen,$SiteUrl,$PAGEINFO,$NowMenuid,$CONF,$MenuInfo;

	$PSET=PlusSet("modBottomMenu");

	$shownums=PlusDef($PSET["shownums"],"100");
	$hangnums=PlusDef($PSET["hangnums"],"8");
	$ord=PlusDef($PSET["ord"],"xuhao");
	$sc=PlusDef($PSET["sc"],"asc");
	$tempname=PlusDef($PSET["tempname"],"tpl_btmenu.htm");

	if($CONF["IndexOrder"]=="1"){
		$indexhtml="";
	}else{
		$indexhtml="index.html";
	}

	$Temp=LoadTemp(ROOTPATH."templates/".$MenuInfo["skin"]."/".$tempname);

	$TempArr=SplitTblTemp($Temp);


	$scl=" ifshow='1' and pub='btmenu'";

	
	$String=$TempArr["start"];
	$kk=1;
	$p=1;
	$total=0;
	$msql->query("select * from $tbl_menu where $scl order by $ord $sc limit 0,$shownums");
	while($msql->next_record()){
			$menuname=$msql->f('menu');
			$coltype=$msql->f('coltype');
			$fold=$msql->f('fold');
			$menuurl=$msql->f('url');
			$menutarget=$msql->f('target');
			$menuid=$msql->f('menuid');
			$openindex=$msql->f('openindex');
			$secure=$msql->f('secure');
			$target=$msql->f('target');

			if($p==1){
				$String.=$TempArr["rowstart"].$TempArr["menudivide"];
			}

			
			$menutemp=$TempArr["menu"];
			
			
			switch($coltype){
				
				case "index" :

					if($CatchOpen=="1"){
						$menuurl=ROOTPATH.$indexhtml;
					}else{
						$menuurl=ROOTPATH."index.php";
					}

				break;

				case "member" :

					$menuurl=ROOTPATH."member.php";

				break;

				case "comment" :

					$menuurl=ROOTPATH."comment.php";

				break;

				case "page" :

					if($CatchOpen=="1"){
						$menuurl=ROOTPATH."page/".$fold."/".$indexhtml;
					}else{
						$menuurl=ROOTPATH."page/".$fold."/index.php";
					}

				break;

				case "form" :

					$menuurl=ROOTPATH."form/".$fold."/";

				break;

				case "news" :

					if($openindex=="1"){

						if($CatchOpen=="1"){
							$menuurl=ROOTPATH.$fold."/main/".$indexhtml;
						}else{
							$menuurl=ROOTPATH.$fold."/main/index.php";
						}

					}else{
						if($CatchOpen=="1"){
							$menuurl=ROOTPATH.$fold."/class/0.html";
						}else{
							$menuurl=ROOTPATH.$fold."/class/";
						}
					}

				break;

				case "cp" :

					if($openindex=="1"){

						if($CatchOpen=="1"){
							$menuurl=ROOTPATH.$fold."/main/".$indexhtml;
						}else{
							$menuurl=ROOTPATH.$fold."/main/index.php";
						}

					}else{
						if($CatchOpen=="1"){
							$menuurl=ROOTPATH.$fold."/class/0.html";
						}else{
							$menuurl=ROOTPATH.$fold."/class/";
						}
					}

				break;

				case "down" :

					if($openindex=="1"){

						if($CatchOpen=="1"){
							$menuurl=ROOTPATH.$fold."/main/".$indexhtml;
						}else{
							$menuurl=ROOTPATH.$fold."/main/index.php";
						}

					}else{
						if($CatchOpen=="1"){
							$menuurl=ROOTPATH.$fold."/class/0.html";
						}else{
							$menuurl=ROOTPATH.$fold."/class/";
						}
					}

				break;
				
				case "company" :

					if($openindex=="1"){

						if($CatchOpen=="1"){
							$menuurl=ROOTPATH.$fold."/main/".$indexhtml;
						}else{
							$menuurl=ROOTPATH.$fold."/main/index.php";
						}

					}else{
						if($CatchOpen=="1"){
							$menuurl=ROOTPATH.$fold."/class/0.html";
						}else{
							$menuurl=ROOTPATH.$fold."/class/";
						}
					}

				break;
				
				case "sell" :

					if($openindex=="1"){

						if($CatchOpen=="1"){
							$menuurl=ROOTPATH.$fold."/main/".$indexhtml;
						}else{
							$menuurl=ROOTPATH.$fold."/main/index.php";
						}

					}else{
						if($CatchOpen=="1"){
							$menuurl=ROOTPATH.$fold."/class/0.html";
						}else{
							$menuurl=ROOTPATH.$fold."/class/";
						}
					}

				break;

				case "hd" :

					if($openindex=="1"){

						if($CatchOpen=="1"){
							$menuurl=ROOTPATH.$fold."/main/".$indexhtml;
						}else{
							$menuurl=ROOTPATH.$fold."/main/index.php";
						}

					}else{
						if($CatchOpen=="1"){
							$menuurl=ROOTPATH.$fold."/class/0.html";
						}else{
							$menuurl=ROOTPATH.$fold."/class/";
						}
					}

				break;

				case "products" :

					if($openindex=="1"){

						if($CatchOpen=="1"){
							$menuurl=ROOTPATH.$fold."/main/".$indexhtml;
						}else{
							$menuurl=ROOTPATH.$fold."/main/index.php";
						}

					}else{
						if($CatchOpen=="1"){
							$menuurl=ROOTPATH.$fold."/class/0.html";
						}else{
							$menuurl=ROOTPATH.$fold."/class/";
						}
					}

				break;
			
			}

			

		
				
				$menutemp=str_replace("{#menu#}",$menuname,$menutemp);
				$menutemp=str_replace("{#menuurl#}",$menuurl,$menutemp);
				$menutemp=str_replace("{#target#}",$target,$menutemp);

				
				
				$String.=$menutemp;


				if($p==$hangnums){
					$String.=$TempArr["menudivide"].$TempArr["rowend"];
					$p=0;
				}else{
					$String.=$TempArr["menudivide"];
				}
	$p++;
	$kk++;
	$total++;
	}
	if($p!=1 && $hangnums<$total){
			$needtd=$hangnums-$p;
			for($u=1;$u<=$needtd;$u++){
				$String.=$TempArr["blank"].$TempArr["blankdivide"];
			}
			$String.=$TempArr["blank"];
			$String.=$TempArr["rowend"];
	}
	
	$String.=$TempArr["end"];

	if($kk>1){
		return $String;
		
	}

}

?>