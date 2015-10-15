<?php

/*
	[插件名称] 评论分类 - 替换模版标签{#modCommentClass#}
	[适用范围] 所有页面
	[文 件 名] CommentClass.php
	[更新时间] 2006/8/11
*/



function CommentClass(){

		global $msql,$tbl_comment_cat,$CatchOpen,$MenuInfo;


		$PSET=PlusSet("modCommentClass");

		$hangnums=PlusDef($PSET["hangnums"],"1");
		$ord=PlusDef($PSET["ord"],"xuhao");
		$sc=PlusDef($PSET["sc"],"asc");
		$target=PlusDef($PSET["target"],"_self");
		$tempname=PlusDef($PSET["tempname"],"tpl_comment_class.htm");

		
			
		$msql->query("select * from $tbl_comment_cat order by $ord $sc");
		$i=0;
		while($msql->next_record()){
				$ArrayPid[$i]=$msql->f("pid");
				$ArrayCatid[$i]=$msql->f("catid");
				$ArrayCat[$i]=$msql->f("cat");
				$ArrayColtype[$i]=$msql->f("coltype");
				$ArrayCatNums[$i]=$msql->f("nums");
		$i++;
		}
		$TotalCat=$i;

        

		$tdwidth=ceil(100/$hangnums);


		//模版解释
		$Temp=LoadTemp(ROOTPATH."templates/".$MenuInfo["skin"]."/".$tempname);
		$TempArr=SplitTblTemp($Temp);

		
		//循环开始
		$bigcat=$TempArr["start"];

		$s=1;
		$kk=1;
		for($t=0;$t<$TotalCat;$t++){
			if($ArrayPid[$t]==0){
				
				if($kk==1){
					$bigcat.=$TempArr["rowstart"];
				}
				
				$link=ROOTPATH."comment.php?coltype=".$ArrayColtype[$t];
				


				$catstr=str_replace("{#TopClass#}",$ArrayCat[$t],$TempArr["menu"]);
				$catstr=str_replace("{#TopClassUrl#}",$link,$catstr);
				$catstr=str_replace("{#width#}","width=".$tdwidth."%",$catstr);
				$catstr=str_replace("{#target#}",$target,$catstr);

				
				$bigcat.=$catstr;

				
				if($kk==$hangnums){
					$bigcat.=$TempArr["rowend"];
					$kk=0;
				}else{
					$bigcat.=$TempArr["menudivide"];
				}

				
				$kk++;

				if($s>=$shownums && $shownums!=0){
					break;
				}
				$s++;
			
			}
		}
		
		if($kk!=1 && $hangnums<$TotalCat){
			$needtd=$hangnums-$kk;
			for($u=1;$u<=$needtd;$u++){
				$bigcat.=$TempArr["blank"].$TempArr["blankdivide"];
			}
			$bigcat.=$TempArr["blank"];
			$bigcat.=$TempArr["rowend"];
		}
		
        $bigcat.=$TempArr["end"];
       
		return $bigcat;

		
}


?>