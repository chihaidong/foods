<?php

/*
	[插件名称] 自定表单 - 替换模版标签{#modForm#}
	[适用范围] 表单页
	[文 件 名] Form.php
	[更新时间] 2006/8/6
*/

function Form(){


	global $fsql,$tbl_form,$tbl_form_feedback,$NowMenuid,$FormSendOk,$MenuInfo;

		$step=$_POST["step"];

		$str="";
		
		if($step=="send"){
		
			$check=CheckForm();
			if($check=="1"){
				
				$str=SayOk($FormSendOk,"","");
				return $str;
			
			}else{
				$str.=$check;
			}
		
		}

		$Temp=LoadTemp(ROOTPATH."templates/".$MenuInfo["skin"]."/tpl_form.htm");

		$TempArr=SplitTblTemp($Temp);

		$str.=$TempArr["start"];


		$table_name = $tbl_form."_".$NowMenuid;

		
		$fsql -> query ("select * from $table_name where use_field = '1' order by xuhao");
		while ($fsql -> next_record ()) {
			$field_caption = $fsql -> f ('field_caption');
			$field_type = $fsql -> f ('field_type');
			$field_size = $fsql -> f ('field_size');
			$field_name = $fsql -> f ('field_name');
			$field_value = $fsql -> f ('field_value');
			$field_null = $fsql -> f ('field_null');
			$field_value_repeat = $fsql -> f ('value_repeat');
			$field_intro = $fsql -> f ('field_intro');

			$field_null = ($field_null == "1") ? $mustfill = "<font style='color:red'>*</font>" : $mustfill= "";
		


			if($field_type == "5"){

				if($step=="send"){
					$nowvalue=$_POST[$field_name];
				}
			
				$fieldvalue =  explode (";",$field_value);
				$nums = count ($fieldvalue);


				for ($i = 0; $i < $nums; $i ++) {
					if ($fieldvalue[$i] == $nowvalue) {
						$checked_select = "selected";
					} else {
						$checked_select = "";
					}
					$list.= "<option value=" . $fieldvalue[$i]." ".$checked_select.">" . $fieldvalue[$i] . "</option>";
				}

				$var=array (
				'title' => $field_caption, 
				'size' => $field_size, 
				'fieldname' => $field_name, 
				'fieldvalue' => $field_value, 
				'mustfill' => $mustfill, 
				'list' => $list, 
				'intro' => $field_intro
				);

				$str.=ShowTplTemp($TempArr["list"],$var);

				$list="";

			}elseif($field_type== "2") {

				if($step=="send"){
					$field_value=$_POST[$field_name];
				}
				
				$var=array (
				'title' => $field_caption, 
				'size' => $field_size, 
				'fieldname' => $field_name, 
				'fieldvalue' => $field_value, 
				'mustfill' => $mustfill, 
				'intro' => $field_intro
				);

				$str.=ShowTplTemp($TempArr["textarea"],$var);
			
			}else{

				if($step=="send"){
					echo $$field_name;
					$field_value=$_POST[$field_name];
				}

				$var=array (
				'title' => $field_caption, 
				'size' => $field_size, 
				'fieldname' => $field_name, 
				'fieldvalue' => $field_value, 
				'mustfill' => $mustfill, 
				'intro' => $field_intro
				);

				$str.=ShowTplTemp($TempArr["input"],$var);


				
			}
				 
		}
		$str.=$TempArr["end"];



	return $str;
	
}

?>