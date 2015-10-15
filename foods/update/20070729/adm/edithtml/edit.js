var bEditMode = null;


var BrowserInfo = new Object() ;
BrowserInfo.MajorVer = navigator.appVersion.match(/MSIE (.)/)[1] ;
BrowserInfo.MinorVer = navigator.appVersion.match(/MSIE .\.(.)/)[1] ;
BrowserInfo.IsIE55OrMore = BrowserInfo.MajorVer >= 6 || ( BrowserInfo.MajorVer >= 5 && BrowserInfo.MinorVer >= 5 ) ;


function MouseOverColor (src, col) {
	src.style.color = "#ffffff";
	src.bgColor = col;
}

function MouseOutColor (src, col) {
	src.style.color = "#000000";
	src.bgColor = col;
}


function callColorDlg(){
	var sInitColor;
  	if(sInitColor == null)
   		var sColor = dlgHelper.ChooseColorDlg();
  	else
   		var sColor = dlgHelper.ChooseColorDlg(sInitColor);

  	sColor = sColor.toString(16);
  	if (sColor.length < 6) {
   		var sTempString = "000000".substring(0,6-sColor.length);
   		sColor = sTempString.concat(sColor);
  	}
	
	clor='#' + sColor;
	return clor;
}


function setFocus() {
	EditorID.focus();
}



function selectRange(){
	editr = EditorID.document.body.createTextRange()
	edit = EditorID.document.selection.createRange();
	RangeType = EditorID.document.selection.type;
}



function preliminary () { 
	initHTML = form.content.value;
	EditorID.document.designMode = "On";
	EditorID.document.open();
	EditorID.document.write(initHTML);
	EditorID.document.close();
	if(EditorID.document.styleSheets.length == 0){
		EditorID.document.createStyleSheet();
		var oSS = EditorID.document.styleSheets[0];
		oSS.addRule("TABLE.ubb","border: 1px solid #A9A9A9;FONT-SIZE: 9pt; ");
		oSS.addRule("TABLE","FONT-SIZE: 9pt; ");
		oSS.addRule("TD.ubb","border: 1px solid #A9A9A9;FONT-SIZE: 9pt; ");
		oSS.addRule("TD","FONT-SIZE: 9pt; ");
		oSS.addRule("IMG","border: 0");
		oSS.addRule("BODY","font-size: 9pt");
	}
	setFocus();
	EditorID.document.oncontextmenu = new Function('return showContextMenu(EditorID.event);');

}


function format(what,opt) {
	setFocus();
	selectRange ();
	if (opt == "RemoveFormat") {
		what = opt;
		opt = null;
	}
	(opt == null) ? EditorID.document.execCommand(what) : EditorID.document.execCommand(what,"",opt);
	setFocus();
}


function openfile () {
	var str = showModalDialog ("openfile.html", "", "dialogWidth: 375px; dialogHeight: 110px; center: yes; resizable: no; scroll: no; status: no; help: no;");
	content.value = str;
}


function save () {
	var str;
	if (form.modeedit.value == "design" || form.modeedit.value == "view" ) {
		str = EditorID.document.body.innerHTML;
	} else {
		str = EditorID.document.body.innerText;
	}
	form.body.value = str;

}


function clear () {
	if (confirm ("Clear All?")) {
		var str = "";
		EditorID.document.body.innerHTML = str;
		form.body.value = str;
		EditorID.document.designMode = "On";
	}
	return false;
}


function printf () {
	EditorID.print ();
	return false;
}


function FindReplace () {
	showModelessDialog ('edithtml/findreplace.php', window, 'dialogWidth: 315px; dialogHeight: 180px; center: yes; resizable: no; scroll: no; status: no;');
}


function ViewFormat (NewMode) {
	var strHtml = "";
	switch (NewMode) {
		case "code" :
			//save (EditorID.document.body.innerHTML);
			strHtml = EditorID.document.body.innerHTML;
			EditorID.document.designMode = "On";

			if (form.modeedit.value == "code"){
				return false;
			}
			if(form.modeedit.value == "view"){
				EditorID.document.open();
				EditorID.document.write(strHtml);
				EditorID.document.close();
			}
			
			EditorID.document.body.innerText = strHtml;
			if (EditorID.document.styleSheets.length == 0){
				EditorID.document.createStyleSheet();
				var oSS = EditorID.document.styleSheets[0];
				oSS.addRule("TABLE.ubb","border: 1px solid #A9A9A9;FONT-SIZE: 9pt; ");
				oSS.addRule("TABLE","FONT-SIZE: 9pt; ");
				oSS.addRule("TD.ubb","border: 1px solid #A9A9A9;FONT-SIZE: 9pt; ");
				oSS.addRule("TD","FONT-SIZE: 9pt; ");
				oSS.addRule("BODY","font-size: 9pt");
			}
			EditorID.document.oncontextmenu = new Function('return showContextMenu(EditorID.event);');
		break;
		case "design" :
			(form.modeedit.value == "view" || form.modeedit.value == "design") ? strHtml = EditorID.document.body.innerHTML : strHtml = EditorID.document.body.innerText;
			EditorID.document.designMode = "On";
			EditorID.document.open();
			EditorID.document.write(strHtml);
			EditorID.document.close();
			if (EditorID.document.styleSheets.length == 0){
				EditorID.document.createStyleSheet();
				var oSS = EditorID.document.styleSheets[0];
				oSS.addRule("TABLE.ubb","border: 1px solid #A9A9A9;FONT-SIZE: 9pt; ");
				oSS.addRule("TABLE","FONT-SIZE: 9pt; ");
				oSS.addRule("TD.ubb","border: 1px solid #A9A9A9;FONT-SIZE: 9pt; ");
				oSS.addRule("TD","FONT-SIZE: 9pt; ");
				oSS.addRule("BODY","font-size: 9pt");
			}
			EditorID.document.oncontextmenu = new Function('return showContextMenu(EditorID.event);');
		break;
		case "view" :
			if (form.modeedit.value == "view") return false;
			(form.modeedit.value == "design") ? strHtml = EditorID.document.body.innerHTML : strHtml = EditorID.document.body.innerText;
			EditorID.document.designMode = "Off";
			EditorID.document.open();
			EditorID.document.write(strHtml);
			EditorID.document.close();
			if (EditorID.document.styleSheets.length == 0){
				EditorID.document.createStyleSheet();
				var oSS = EditorID.document.styleSheets[0];
				oSS.addRule("TABLE.ubb","border: 1px solid #A9A9A9;FONT-SIZE: 9pt; ");
				oSS.addRule("TABLE","FONT-SIZE: 9pt; ");
				oSS.addRule("TD.ubb","border: 1px solid #A9A9A9;FONT-SIZE: 9pt; ");
				oSS.addRule("TD","FONT-SIZE: 9pt; ");
				oSS.addRule("BODY","font-size: 9pt");
			}
			//save (EditorID.document.body.innerHTML);
		default :
		break;
	}
	form.modeedit.value = NewMode;
}

function GetMode (mode) {
	var str;
	(form.modeedit.value == mode) ? str = "<strong>¡Ì</strong>" : str = "";
	return str;
}

var borderShown = 0
function ShowBorder (){
	allTables = EditorID.document.body.getElementsByTagName("TABLE");
	for (i=0; i < allTables.length; i++){
		if(!borderShown) {
    		allTables[i].runtimeStyle.borderTop = allTables[i].runtimeStyle.borderLeft = "1px dotted #BFBFBF";
		} else {
    		allTables[i].runtimeStyle.cssText = '';
		}
       
		allRows = allTables[i].rows;
		for(y=0; y < allRows.length; y++){
    		allCells = allRows[y].cells;
    		for(x=0; x < allCells.length; x++)
     			if(!borderShown)
      				allCells[x].runtimeStyle.borderRight = allCells[x].runtimeStyle.borderBottom = "1px dotted #BFBFBF";
     			else
      				allCells[x].runtimeStyle.cssText = '';
   		}
  	}

  	borderShown = borderShown ? 0 : 1;
	form.showborder.value = borderShown;		
  	if(!borderShown)
   		EditorID.document.body.innerHTML = EditorID.document.body.innerHTML;
}

function GetShowBorder () {
	var str;
	(form.showborder.value == 1) ? str = "<strong>¡Ì</strong>" : str = "";
	return str;
}


function InsertTable () {
	if (form.modeedit.value != "design") {
		alert ("disable");
		return false;
	}
	selectRange ();
	var tablestr = showModalDialog ('edithtml/table.php', window, 'dialogWidth: 380px; dialogHeight: 200px; center: yes; resizable: no; scroll: no; status: no; help: no');
	if (tablestr != null) {
		tablestr = tablestr.split("*");
		var rows_v = tablestr[0];
		var columns_v = tablestr[2];
		var width_v = tablestr[4];
		var widthtype_v = tablestr[5];
		var border_v = tablestr[6];
		var cellspacing_v = tablestr[3];
		var cellpadding_v = tablestr[1];
		var string = "<table border=\""+border_v+"\" width=\""+width_v+""+widthtype_v+"\" cellspacing=\""+cellspacing_v+"\" cellpadding=\""+cellpadding_v+"\">";
			for (var i=1; i<=rows_v; i++){
				string = string+"<tr>";
				for (var i1=1; i1<=columns_v; i1++){
					string = string+"<td>&nbsp;</td>";
				}
				string = string+"</tr>";
			}
			string = string+"</table>";
		if (RangeType == "Control") {
			edit(0).outerHTML = string;
			//edit.select ();
		} else {
			PasteEditHtml (string);
		}
	}
}

function InsertImg () {
	if (form.modeedit.value != "design") {
		alert ("disable");
		return false;
	} 
	selectRange ();
	var imgstr = showModalDialog ('edithtml/imagepage.php', window, 'dialogWidth: 350px; dialogHeight: 158px; center: yes; resizable: no; scroll: no; status: no; help: no');
	if (imgstr != null && imgstr != "piclib") {
		var string = "<img src=" + imgstr + ">";
		//format ("InsertImage", imgstr);
		//PasteEditHtml (string);
		if (RangeType == "Control") {
			edit(0).outerHTML = string;
			//edit.select ();
		} else {
			format ("InsertImage", imgstr);
		}
	} else if (imgstr == "piclib") {
		var imgstr = showModalDialog ('edithtml/piclib.php', window, 'dialogWidth: 650px; dialogHeight: 450px; center: yes; resizable: no; scroll: no; status: no; help: no');
		if (imgstr != null) {
			var string = "<img src=" + imgstr + ">";
			//format ("InsertImage", imgstr);
			//PasteEditHtml (string);
			if (RangeType == "Control") {
				edit(0).outerHTML = string;
			} else {
				format ("InsertImage", imgstr);
			}
		}
	}
}


function InsertTempImg (skin) {
	if (form.modeedit.value != "design") {
		alert ("disable");
		return false;
	} 
	selectRange ();
	var imgstr = showModalDialog ('edithtml/tempimagepage.php?skin='+skin, window, 'dialogWidth: 350px; dialogHeight: 158px; center: yes; resizable: no; scroll: no; status: no; help: no');
	if (imgstr != null && imgstr != "piclib") {
		var string = "<img src=" + imgstr + ">";
		//format ("InsertImage", imgstr);
		//PasteEditHtml (string);
		if (RangeType == "Control") {
			edit(0).outerHTML = string;
			//edit.select ();
		} else {
			format ("InsertImage", imgstr);
		}
	} else if (imgstr == "piclib") {
		var imgstr = showModalDialog ('edithtml/piclib.php', window, 'dialogWidth: 650px; dialogHeight: 450px; center: yes; resizable: no; scroll: no; status: no; help: no');
		if (imgstr != null) {
			var string = "<img src=" + imgstr + ">";
			//format ("InsertImage", imgstr);
			//PasteEditHtml (string);
			if (RangeType == "Control") {
				edit(0).outerHTML = string;
			} else {
				format ("InsertImage", imgstr);
			}
		}
	}
}


//Flash
function InsertFlash () {
	if (form.modeedit.value != "design") {
		alert ("disable");
		return false;
	} 
	selectRange ();
	var flashstr = showModalDialog('edithtml/upload_flash.php', window, 'dialogWidth: 420px; dialogHeight: 430px; center: yes; resizable: no; scroll: no; status: no; help: no');
	if (flashstr != null) {
		flashstr = flashstr.split("*");
		var flash_path = flashstr[0];
		var flash_name = flashstr[1];
		var flash_border = flashstr[2];
		var flash_title = flashstr[3];
		var flash_width = flashstr[4];
		var flash_width_unit = flashstr[5];
		var flash_height = flashstr[6];
		var flash_height_unit = flashstr[7];
		var flash_hspace = flashstr[8];
		var flash_vspace = flashstr[9];
		var flash_autoplay = flashstr[10];
		var flash_menu = flashstr[11];
		var flash_loop = flashstr[12];
		var flash_font = flashstr[13];
		var flash_align = flashstr[14];
		var flash_quality = flashstr[15];
		var flash_scale = flashstr[16];
		if (flash_width_unit == "px") {
			flash_width_unit = "";
		}
		if (flash_height_unit == "px") {
			flash_height_unit = "";
		}
		
		var string = "<object codebase=\"http://download.macromedia.com/pub/shockwave/cabs/flash/swflash.cab#version=6,0,29,0\" height=\"" + flash_height + flash_height_unit + "\" width=\"" + flash_width + flash_width_unit + "\" classid=\"clsid:D27CDB6E-AE6D-11cf-96B8-444553540000\" name=\"" + flash_name + "\" hspace=\"" + flash_hspace + "\" vspace=\"" + flash_hspace + "\" title=\"" + flash_title + "\" border=\"" + flash_border + "\"  align=\"" + flash_align + "\">";
			string += "<param name=\"_cx\" value=\"12700\">";
			string += "<param name=\"_cy\" value=\"8467\">";
			string += "<param name=\"FlashVars\" value=\"\">";
			string += "<param name=\"Movie\" value=\"" + flash_path + "\">";
			string += "<param name=\"Src\" value=\"" + flash_path + "\">";
			string += "<param name=\"WMode\" value=\"Window\">";
			string += "<param name=\"Play\" value=\"" + flash_autoplay +"\">";
			string += "<param name=\"Loop\" value=\"" + flash_loop +"\">";
			string += "<param name=\"Quality\" value=\"" + flash_quality + "\">";
			string += "<param name=\"SAlign\" value=\"" + flash_align + "\">";
			string += "<param name=\"Menu\" value=\"" + flash_menu + "\">";
			string += "<param name=\"Base\" value=\"\">";
			string += "<param name=\"AllowScriptAccess\" value=\"always\">";
			string += "<param name=\"Scale\" value=\"" + flash_scale + "\">";
			string += "<param name=\"DeviceFont\" value=\"" + flash_font  + "\">";
			string += "<param name=\"EmbedMovie\" value=\"0\">";
			string += "<param name=\"BGColor\" value=\"#efefef\">";
			string += "<param name=\"SWRemote\" value=\"\">";
			string += "<param name=\"MovieData\" value=\"\">";
			string += "<embed src=\"" + flash_path + "\" quality=\"" + flash_quality + "\" pluginspage=\"http://www.macromedia.com/go/getflashplayer\" type=\"application/x-shockwave-flash\" width=\"" + flash_width + flash_width_unit + "\" height=\"" + flash_height + flash_height_unit + "\"></embed>";
			string += "</object>";
		if (RangeType == "Control") {
			edit(0).outerHTML = string;
			//edit.select ();
		} else {
			PasteEditHtml (string);
		}
			//PasteEditHtml (string);
		//myEditor.pasteHTML(string);
	}
}

function InsertMarquee () {
	if (form.modeedit.value != "design") {
		alert ("disable");
		return false;
	}
	selectRange ();
	var marqueevar = showModalDialog ("edithtml/marquee.php", "", "dialogWidth:380PX; dialogHeight:430PX; center: yes; resizable: no; scroll: no; status: no;");
	if (marqueevar != null) {
		marqueevar = marqueevar.split("*");
		var name = marqueevar[0];
		var direction = marqueevar[1];
		var height = marqueevar[2];
		var height_unit = marqueevar[3];
		var width = marqueevar[4];
		var width_unit = marqueevar[5];
		var hsplace = marqueevar[6];
		var vsplace = marqueevar[7];
		var align = marqueevar[8];
		var behavior = marqueevar[9];
		var loop = marqueevar[10];
		var bgcolor = marqueevar[11]
		var content = marqueevar[12];
		var scrollamount = marqueevar[13];
		
		var string = "<marquee align=\"" + align + "\" direction=\"" + direction + "\" width=\"" + width + height_unit + "\" height=\"" + height + height_unit + "\" hspace=\"" + hsplace + "\" vspace=\"" + vsplace + "\" id=\"" + name + "\" bgcolor=\"" + bgcolor + "\" loop=\"" + loop + "\" behavior=\"" + behavior + "\" scrollamount=\"" + scrollamount + "\">";
			string += content;
			string += "</marquee>"
		if (RangeType == "Control") {
			edit(0).outerHTML = string;
			//edit.select ();
		} else {
			PasteEditHtml (string);
		}
	}
}
//Relplayer
function InsertRelPlayer () {
	if (form.modeedit.value != "design") {
		alert ("disable");
		return false;
	}
	selectRange ();
	var controls;
	var controls_height;
	var realplayervar = showModalDialog ("edithtml/realplayer.php", "", "dialogWidth:420PX; dialogHeight:450PX; center: yes; resizable: no; scroll: no; status: no;");
	if (realplayervar != null) {
		realplayervar = realplayervar.split("*");
		var media_url = realplayervar[0];
		var media_name = realplayervar[1];
		var media_border = realplayervar[2];
		var media_title = realplayervar[3];
		var media_width = realplayervar[4];
		var media_width_unit = realplayervar[5];
		var media_height = realplayervar[6];
		var media_height_unit = realplayervar[7];
		var media_hspace = realplayervar[8];
		var media_vspace = realplayervar[9];
		var media_autoplay = realplayervar[10];
		var media_control = realplayervar[11];
		var media_loop = realplayervar[12];
		var media_status = realplayervar[13];
		var media_positionslider = realplayervar[14];
		var media_align = realplayervar[15];
		var media_introduce = realplayervar[16];
		if (media_width_unit == "px") {
			media_width_unit = "";
		}
		if (media_height_unit == "px") {
			media_height_unit = "";
		}
	
		if (media_control != "" && media_status != "" && media_positionslider != "") {
			controls = "";
			controls_height = 71;
		} else {
			controls = media_control + "," + media_status + "," + media_positionslider;
			if (media_control != "") {
				var height_control = 21;
			} else {
				var height_control = 0;
			}
			if (media_status != "") {
				var height_status = 21;
			} else {
				var height_status = 0;
			}
			if (media_positionslider != "") {
				var height_status = 21;
			} else {
				var height_status = 0;
			}
			controls_height = height_control + height_status + height_status;
		}

		var string ="<embed id=\"RealPlayer1\" autogotourl=false type=\"audio/x-pn-realaudio-plugin\" src=\""+ media_url +"\" controls=\"ControlPanel,StatusBar\" width=\"" + media_width + media_width_unit + "\" height=\"" + media_height + media_height_unit + "\"  border=\"" + media_border + "\" autostart=\"" + media_autoplay + "\" loop=\"" + media_loop + "\"></embed>";




		if (RangeType == "Control") {
			edit(0).outerHTML = string;
			//edit.select ();
		} else {
			PasteEditHtml (string);
		}
	}
}
//MediaPlayer
function InsertMediaPlayer () {
	if (form.modeedit.value != "design") {
		alert ("disable");
		return false;
	}
	selectRange ();
	var mediaplayervar = showModalDialog ("edithtml/mediaplayer.php", "", "dialogWidth:420PX; dialogHeight:450PX; center: yes; resizable: no; scroll: no; status: no;");
	if (mediaplayervar != null) {
		mediaplayervar = mediaplayervar.split("*");
		var media_url = mediaplayervar[0];
		var media_name = mediaplayervar[1];
		var media_border = mediaplayervar[2];
		var media_title = mediaplayervar[3];
		var media_width = mediaplayervar[4];
		var media_width_unit = mediaplayervar[5];
		var media_height = mediaplayervar[6];
		var media_height_unit = mediaplayervar[7];
		var media_hspace = mediaplayervar[8];
		var media_vspace = mediaplayervar[9];
		var media_autoplay = mediaplayervar[10];
		var media_control = mediaplayervar[11];
		var media_loop = mediaplayervar[12];
		var media_status = mediaplayervar[13];
		var media_align = mediaplayervar[14];
		var media_introduce = mediaplayervar[15];
		if (media_width_unit == "px") {
			media_width_unit = "";
		}
		if (media_height_unit == "px") {
			media_height_unit = "";
		}

		var string = "<embed type=\"application/x-mplayer2\" pluginspage=\"http://www.microsoft.com/Windows/Downloads/Contents/Products/MediaPlayer/\" name=\"mediaObjectId\" filename=\"" + media_url + "\" autostart=\"" + media_autoplay + "\" enablecontextmenu=\"1\" clicktoplay=\"1\" enablepositioncontrols=\"0\"  showcontrols=\"" + media_control + "\ showstatusbar=\"" + media_status + "\"  showtracker=\"1\" showdisplay=\"0\" id=\"player1\" width=\"" + media_width + media_width_unit + "\" height=\"" + media_height + media_height_unit + "\"></embed>";

		
		if (RangeType == "Control") {
			edit(0).outerHTML = string;
			//edit.select ();
		} else {
			PasteEditHtml (string);
		}
	}
}


function ModifyImage (skin) {
	if (isImageSelected ()) {
		sPrePos = selectedImage.style.position;
		var res = showModalDialog('edithtml/modifyimage.php', selectedImage, 'dialogWidth: 380px; dialogHeight: 380px; center: yes; resizable: no; scroll: no; status: no;');
   		if (res){
    		for (key in res)
     			if (key == 'style'){
      				for (sub_key in res.style)
       					selectedImage.style[sub_key] = res.style[sub_key];
     			}else{
      				selectedImage[key] = res[key];
     			}

    		if (!res.align) selectedImage.removeAttribute('align');
    		if (sPrePos.match(/^absolute$/i) && !selectedImage.style.position.match(/^absolute$/i)){
    			sFired = selectedImage.parentElement;
     			while (!sFired.tagName.match(/^table$|^body$/i)) sFired = sFired.parentElement;
     			if(sFired.tagName.match(/^table$/i) && sFired.style.position.match(/absolute/i));
      			sFired.outerHTML = selectedImage.outerHTML;
    		}else if(!sPrePos.match(/^absolute$/i) && selectedImage.style.position.match(/^absolute$/i)) selectedImage.outerHTML = '<table style="position: absolute;"><tr><td>' + selectedImage.outerHTML + '</td></tr></table>';
  		}
	}
}

function ModifyTempImage (skin) {
	if (isImageSelected ()) {
		sPrePos = selectedImage.style.position;
		var res = showModalDialog('edithtml/modifytempimage.php?skin='+skin, selectedImage, 'dialogWidth: 380px; dialogHeight: 380px; center: yes; resizable: no; scroll: no; status: no;');
   		if (res){
    		for (key in res)
     			if (key == 'style'){
      				for (sub_key in res.style)
       					selectedImage.style[sub_key] = res.style[sub_key];
     			}else{
      				selectedImage[key] = res[key];
     			}

    		if (!res.align) selectedImage.removeAttribute('align');
    		if (sPrePos.match(/^absolute$/i) && !selectedImage.style.position.match(/^absolute$/i)){
    			sFired = selectedImage.parentElement;
     			while (!sFired.tagName.match(/^table$|^body$/i)) sFired = sFired.parentElement;
     			if(sFired.tagName.match(/^table$/i) && sFired.style.position.match(/absolute/i));
      			sFired.outerHTML = selectedImage.outerHTML;
    		}else if(!sPrePos.match(/^absolute$/i) && selectedImage.style.position.match(/^absolute$/i)) selectedImage.outerHTML = '<table style="position: absolute;"><tr><td>' + selectedImage.outerHTML + '</td></tr></table>';
  		}
	}
}


function ModifyFlash () {
	if (isFlashSelected ()) {
   		sPrePos = selectedFlash.style.position;
   		var flashvar = showModalDialog('edithtml/sflashprop.php', selectedFlash, 'dialogWidth: 420px; dialogHeight: 400px; center: yes; resizable: no; scroll: no; status: no;');
   		if(flashvar){
			flashvar = flashvar.split("*");
			var flash_path = flashvar[0];
			var flash_name = flashvar[1];
			var flash_border = flashvar[2];
			var flash_title = flashvar[3];
			var flash_width = flashvar[4];
			var flash_width_unit = flashvar[5];
			var flash_height = flashvar[6];
			var flash_height_unit = flashvar[7];
			var flash_hspace = flashvar[8];
			var flash_vspace = flashvar[9];
			var flash_autoplay = flashvar[10];
			var flash_menu = flashvar[11];
			var flash_loop = flashvar[12];
			var flash_font = flashvar[13];
			var flash_align = flashvar[14];
			var flash_quality = flashvar[15];
			var flash_scale = flashvar[16];
		
			var string = "<object codebase=\"http://download.macromedia.com/pub/shockwave/cabs/flash/swflash.cab#version=6,0,29,0\" height=\"" + flash_height + flash_height_unit + "\" width=\"" + flash_width + flash_width_unit + "\" classid=\"clsid:D27CDB6E-AE6D-11cf-96B8-444553540000\" name=\"" + flash_name + "\" hspace=\"" + flash_hspace + "\" vspace=\"" + flash_hspace + "\" title=\"" + flash_title + "\"  border=\"" + flash_border + "\"   align=\"" + flash_align + "\">";
				string += "<param name=\"_cx\" value=\"12700\">";
				string += "<param name=\"_cy\" value=\"8467\">";
				string += "<param name=\"FlashVars\" value=\"\">";
				string += "<param name=\"Movie\" value=\"" + flash_path + "\">";
				string += "<param name=\"Src\" value=\"" + flash_path + "\">";
				string += "<param name=\"WMode\" value=\"Window\">";
				string += "<param name=\"Play\" value=\"" + flash_autoplay +"\">";
				string += "<param name=\"Loop\" value=\"" + flash_loop +"\">";
				string += "<param name=\"Quality\" value=\"" + flash_quality + "\">";
				string += "<param name=\"SAlign\" value=\"" + flash_align + "\">";
				string += "<param name=\"Menu\" value=\"" + flash_menu + "\">";
				string += "<param name=\"Base\" value=\"\">";
				string += "<param name=\"AllowScriptAccess\" value=\"always\">";
				string += "<param name=\"Scale\" value=\"" + flash_scale + "\">";
				string += "<param name=\"DeviceFont\" value=\"" + flash_font  + "\">";
				string += "<param name=\"EmbedMovie\" value=\"0\">";
				string += "<param name=\"BGColor\" value=\"\">";
				string += "<param name=\"SWRemote\" value=\"\">";
				string += "<param name=\"MovieData\" value=\"\">";
				string += "<embed src=\"" + flash_path + "\" quality=\"" + flash_quality + "\" pluginspage=\"http://www.macromedia.com/go/getflashplayer\" type=\"application/x-shockwave-flash\" width=\"" + flash_width + flash_width_unit + "\" height=\"" + flash_height + flash_height_unit + "\"></embed>";
				string += "</object>";
				
			selectedFlash.outerHTML = string;
		}
	}
}

function ModifyTable () {
	if (isTableSelected()) {
		var res = showModalDialog('edithtml/tablemod.php', selectedTable, 'dialogWidth: 360px; dialogHeight: 210px; center: yes; resizable: no; scroll: no; status: no;');
   		if (res){
    		if (res.width)
     			selectedTable.width = res.width;
    		else
     			selectedTable.removeAttribute('width',0);

    		if (res.cellPadding)
     			selectedTable.cellPadding = res.cellPadding;
    		else
     			selectedTable.removeAttribute('cellPadding',0);
    
    		if (res.bgColor)
     			selectedTable.bgColor = res.bgColor;
    		else
     			selectedTable.removeAttribute('bgColor',0);

    		if (res.background)
     			selectedTable.background = res.background;
    		else
     			selectedTable.removeAttribute('background',0);

		  	if (res.cellSpacing)
     			selectedTable.cellSpacing = res.cellSpacing;
    		else
     			selectedTable.removeAttribute('cellSpacing',0);

	  		if (res.border)
     			selectedTable.border = res.border;
    		else
     			selectedTable.removeAttribute('border',0);
   		}
	}
}

function ModifyCell (){
	if (isCursorInTableCell()){
   		res = showModalDialog('edithtml/cell.php', selectedTD, 'dialogWidth: 380px; dialogHeight: 220px; center: yes; resizable: no; scroll: no; status: no;');
   		if (res){
    		selectedTD.colSpan = res.colSpan;
    		selectedTD.rowSpan = res.rowSpan;
    		if(res.width)
     			selectedTD.width = res.width;
    		else
     			selectedTD.removeAttribute('width',0);

    		if (res.height)
     			selectedTD.height = res.height;
    		else
     			selectedTD.removeAttribute('height',0);
    
    		if (res.bgColor)
     			selectedTD.bgColor = res.bgColor;
    		else
     			selectedTD.removeAttribute('bgColor',0);

    		if (res.background)
     			selectedTD.background = res.background;
    		else
     			selectedTD.removeAttribute('background',0);

		  	if (res.align && !res.align.match(/^None$/i))
     			selectedTD.align = res.align;
    		else
     			selectedTD.removeAttribute('align',0);

	  		if (res.vAlign && !res.vAlign.match(/^None$/i))
     			selectedTD.vAlign = res.vAlign;
    		else
     			selectedTD.removeAttribute('vAlign',0);
   			}
 	}
}

function InsRowAbove (){
	if (isCursorInTableCell()){
   		var numCols = 0
   			allCells = selectedTR.cells
   		for (var i=0;i<allCells.length;i++) 
    		numCols = numCols + allCells[i].getAttribute('colSpan')
   		var newTR = selectedTable.insertRow(selectedTR.rowIndex)
   		for (i = 0; i < numCols; i++){
   			newTD = newTR.insertCell()
   			newTD.innerHTML = " "
   		}
  	}	
}

function InsRowBelow (){
	if (isCursorInTableCell()){
   		var numCols = 0
   		allCells = selectedTR.cells
   		for (var i=0;i<allCells.length;i++)
    		numCols = numCols + allCells[i].getAttribute('colSpan')
   		var newTR = selectedTable.insertRow(selectedTR.rowIndex+1)
   		for (i = 0; i < numCols; i++){
    		newTD = newTR.insertCell()
    		newTD.innerHTML = " "
   		}
  	}
}

function InsColLeft (){
  	if (isCursorInTableCell()) {
   		moveFromEnd = (selectedTR.cells.length-1) - (selectedTD.cellIndex)
   		allRows = selectedTable.rows
   		for(i=0;i<allRows.length;i++){
    		rowCount = allRows[i].cells.length - 1
    		position = rowCount - moveFromEnd
    		if (position < 0)
     			position = 0
    			newCell = allRows[i].insertCell(position+1)
    			newCell.innerHTML = " "
   		}	
  	}
}
function InsColRight (){
  	if (isCursorInTableCell()){
   		moveFromEnd = (selectedTR.cells.length-1) - (selectedTD.cellIndex)
   		allRows = selectedTable.rows
   		for (i=0;i<allRows.length;i++){
    		rowCount = allRows[i].cells.length - 1
    		position = rowCount - moveFromEnd
    		if (position < 0)
     			position = 0
    			newCell = allRows[i].insertCell(position)
    			newCell.innerHTML = " "
   		}	
  	}
}

function DeleteRow(){
  	if(isCursorInTableCell())
   		selectedTable.deleteRow(selectedTR.rowIndex)
}

function DeleteCol(){
	if (isCursorInTableCell()){
		moveFromEnd = (selectedTR.cells.length-1) - (selectedTD.cellIndex)
   		allRows = selectedTable.rows
   		for (var i=0;i<allRows.length;i++){
    		endOfRow = allRows[i].cells.length - 1
    		position = endOfRow - moveFromEnd
    		if(position < 0)
     			position = 0
    			allCellsInRow = allRows[i].cells
    			if (allCellsInRow[position].colSpan > 1)
     				allCellsInRow[position].colSpan = allCellsInRow[position].colSpan - 1
    			else
     				allRows[i].deleteCell(position)
   		}
 	}
}

function Font () {
	if (form.modeedit.value != "design") {
		alert ("disable");
		return false;
	}
	var str = showModalDialog ('edithtml/font.php', window, 'dialogWidth: 390px; dialogHeight: 139px; center: yes; resizable: no; scroll: no; status: no;');
	//alert (str);
	if (str != null) {
		str = str.split("*");
		if (str[0] != "") format ("FontName", str[0]); 
		if (str[1] != "") format ("FontSize", str[1]);
		if (str[2] != "") format ("ForeColor", str[2]);
		if (str[3] != "") format ("BackColor", str[3]);

	}
}

function Paragraph () {
	if (form.modeedit.value != "design") {
		alert ("disable");
		return false;
	}
	var str = showModalDialog ('edithtml/paragraph.htm', window, 'dialogWidth: 350px; dialogHeight: 125px; center: yes; resizable: no; scroll: no; status: no;');
	if (str != null) {
		str = str.split("*");
		if (str[0] != "") format ("FontName", str[0]); 
		if (str[1] != "") format ("FontSize", str[1]);
		if (str[2] != "") format ("ForeColor", str[2]);
		if (str[3] != "") format ("BackColor", str[3]);
		if (str[4] != "") format (str[4]);
		if (str[5] != "") format (str[5]);
		if (str[6] != "") format (str[6]);
		if (str[7] != "") format (str[7]);
		if (str[8] != "") format(str[8]);
		if (str[9] != "") format(str[9]);
		if (str[10] != "") format(str[10]);
		if (str[11] != "") format(str[11]);
	}
}


function isImageSelected() {
 	 EditorID.focus();
	 selectRange();
 	 if (RangeType == "Control") {
  		 if (edit(0).tagName.toUpperCase() == "IMG") {
    		selectedImage = edit(0);
    		return true;
   		}	
  	}
}


function isFlashSelected() {
	EditorID.focus();
	selectRange();
  	if (RangeType == "Control") {
   		if (edit(0).tagName.toUpperCase() == "OBJECT") {
    		selectedFlash = edit(0);
    		return true;
   		}	
  	}
}

function isTableSelected(){
 	EditorID.focus()
	selectRange();
  	if(RangeType == "Control"){
   		if(edit(0).tagName.toUpperCase() == "TABLE"){
    		selectedTable = edit(0);
    		return true;
   		}	
  	}
}

function isCursorInTableCell(){
  	EditorID.focus();
  	selectRange();
  	if(RangeType != "Control"){
  		var elem = edit.parentElement();
   		while (elem.tagName.toUpperCase() != "TD" && elem.tagName.toUpperCase() != "TR"){
    		elem = elem.parentElement;
    		if(elem == null)
     		break
   		}
   		if(elem){
    		selectedTD = elem
    		selectedTR = selectedTD.parentElement
    		selectedTBODY =  selectedTR.parentElement
    		selectedTable = selectedTBODY.parentElement
    		return true
   		}
  	}
}


function PasteEditHtml(html){	
	if (form.modeedit.value == "design"){
		setFocus();
		selectRange();
		edit.pasteHTML(html);
		edit.select();
		setFocus();
	}
}

window.onload = preliminary;
