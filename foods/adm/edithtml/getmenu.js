
var style = "<style>td {font-size:12px; cursor: default;}.disabled {color: #666666;filter: DropShadow(Color=#ffffff, OffX=1, OffY=1, Positive=1);}</style>";
var sMenuHr = "<tr><td align=center colspan=2 valign=middle height=2><TABLE border=0 cellpadding=0 cellspacing=0 width=96% height=2><tr><td height=1 bgcolor=#999999><\/td><\/tr><tr><td height=1 bgcolor=#ffffff><\/td><\/tr><\/TABLE><\/td><\/tr>";


var oPopupMenu = null;
if (BrowserInfo.IsIE55OrMore){
	oPopupMenu = window.createPopup();
}


function GetMenuCommand (what, caption, image) {
	var s_Disabled = "";
	if (!EditorID.document.queryCommandEnabled(what)){
		s_Disabled = "disabled";
	}
	var s_Event = "format('" + what + "')";
	if (s_Disabled == "") {
		var doclick = "onClick=\"parent.oPopupMenu.hide();parent." + s_Event + "\"";
	}
	if (image != "") {
		image = "<img src=edithtml/images/" + image + ">";
	}
	var menu_str = "<tr height=20 " + doclick + " onmouseover=\"parent.MouseOverColor(this, '#000066')\" onmouseout=\"parent.MouseOutColor(this, '')\"><td width=25 align=right>"+ image +"</td><td class=\"" + s_Disabled + "\">&nbsp;" + caption + "</td><tr>";
	return menu_str;
}


function GetTextCommand (what, caption, image) {
	var s_Disabled = "";
	selectRange()
	if (RangeType != "Text" || form.modeedit.value != "design"){
		s_Disabled = "disabled";
	}
	var s_Event = "format('" + what + "')";
	if (s_Disabled == "") {
		var doclick = "onClick=\"parent.oPopupMenu.hide();parent." + s_Event + "\"";
	}
	if (image != "") {
		image = "<img src=edithtml/images/" + image + ">";
	}
	var menu_str = "<tr height=20 " + doclick + " onmouseover=\"parent.MouseOverColor(this, '#000066')\" onmouseout=\"parent.MouseOutColor(this, '')\"><td width=25 align=right>"+ image +"</td><td class=\"" + s_Disabled + "\">&nbsp;" + caption + "</td><tr>";
	return menu_str;
}


function GetModifyImgCommand (what, caption, image) {
	var doevent = what;
	var s_Disabled = "";
	if (!isImageSelected() || form.modeedit.value != "design"){
		s_Disabled = "disabled";
	}
	if (s_Disabled == "") {
		var doclick = " onClick=\"parent.oPopupMenu.hide();parent." + doevent + "\"";
	}
	if (image != "") {
		image = "<img src=edithtml/images/" + image + ">";
	}
	var menu_str = "<tr height=20 " + doclick + " onmouseover=\"parent.MouseOverColor(this, '#000066')\" onmouseout=\"parent.MouseOutColor(this, '')\"><td width=25 align=right>"+ image +"</td><td class=\"" + s_Disabled + "\">&nbsp;" + caption + "</td><tr>";
	return menu_str;
}


function GetModifyFlashCommand (what, caption, image) {
	var doevent = what;
	var s_Disabled = "";
	if (!isFlashSelected() || form.modeedit.value != "design"){
		s_Disabled = "disabled";
	}
	if (s_Disabled == "") {
		var doclick = " onClick=\"parent.oPopupMenu.hide();parent." + doevent + "\"";
	}
	if (image != "") {
		image = "<img src=edithtml/images/" + image + ">";
	}
	var menu_str = "<tr height=20 " + doclick + " onmouseover=\"parent.MouseOverColor(this, '#000066')\" onmouseout=\"parent.MouseOutColor(this, '')\"><td width=25 align=right>"+ image +"</td><td class=\"" + s_Disabled + "\">&nbsp;" + caption + "</td><tr>";
	return menu_str;
}


function GetModifyTableCommand (what, caption, image) {
	var doevent = what;
	var s_Disabled = "";
	if (!isTableSelected() || form.modeedit.value != "design"){
		s_Disabled = "disabled";
	}
	if (s_Disabled == "") {
		var doclick = " onClick=\"parent.oPopupMenu.hide();parent." + doevent + "\"";
	}
	if (image != "") {
		image = "<img src=edithtml/images/" + image + ">";
	}
	var menu_str = "<tr height=20 " + doclick + " onmouseover=\"parent.MouseOverColor(this, '#000066')\" onmouseout=\"parent.MouseOutColor(this, '')\"><td width=25 align=right>"+ image +"</td><td class=\"" + s_Disabled + "\">&nbsp;" + caption + "</td><tr>";
	return menu_str;
}


function GetModifyTableTdCommand (what, caption, image) {
	var doevent = what;
	var s_Disabled = "";
	if (!isCursorInTableCell() || form.modeedit.value != "design"){
		s_Disabled = "disabled";
	}
	if (s_Disabled == "") {
		var doclick = " onClick=\"parent.oPopupMenu.hide();parent." + doevent + "\"";
	}
	if (image != "") {
		image = "<img src=edithtml/images/" + image + ">";
	}
	var menu_str = "<tr height=20 " + doclick + " onmouseover=\"parent.MouseOverColor(this, '#000066')\" onmouseout=\"parent.MouseOutColor(this, '')\"><td width=25 align=right>"+ image +"</td><td class=\"" + s_Disabled + "\">&nbsp;" + caption + "</td><tr>";
	return menu_str;
}



function GetCommonCommand (what, caption, image) {
	var doevent = what;
	var s_Disabled = "";
	var doclick = " onClick=\"parent.oPopupMenu.hide();parent." + doevent + "\"";
	if (image != "") {
		image = "<img src=edithtml/images/" + image + ">";
	}
	var menu_str = "<tr height=20 " + doclick + " onmouseover=\"parent.MouseOverColor(this, '#000066')\" onmouseout=\"parent.MouseOutColor(this, '')\"><td width=25 align=right>"+ image +"</td><td class=\"" + s_Disabled + "\">&nbsp;" + caption + "</td><tr>";
	return menu_str;
}



// 右键菜单
function showContextMenu(event){
	var width = 90;
	var height = 128;
	var lefter = event.clientX;
	var topper = event.clientY;

	var oPopDocument = oPopupMenu.document;
	var oPopBody = oPopupMenu.document.body;
	var menu = "<body scroll=no style=\"background: buttonface;border:none\" leftmargin=\"0\" topmargin=\"0\"oncontextmenu=return(false)> ";
	menu += "<table width=100% height=100% cellspacing=\"0\" cellpadding=\"0\" style=\"border-left:1 solid #dddddd;border-top:1 solid:1 solid #dddddd;border-right:2 solid #999999;border-bottom:2 solid #999999\">";
	menu += GetMenuCommand ("Cut", "Ctrl + X", "cut.gif");
	menu += GetMenuCommand ("Copy", "Ctrl + C", "copy.gif");
	menu += GetMenuCommand ("Paste", "Ctrl + V", "paste.gif");
	menu += GetMenuCommand ("delete", "Delete", "delete.gif");
	menu += GetMenuCommand ("SelectAll", "Ctrl + A", "selectall.gif");
	menu += sMenuHr;
	menu += GetCommonCommand ("FindReplace()", "Search", "findreplace.gif");
	menu += "</table>";
	oPopDocument.open();
	oPopDocument.write(style + menu);
	oPopDocument.close();

	height+=2;
	if(lefter+width > EditorID.document.body.clientWidth) lefter=lefter-width;
	if(topper+height > EditorID.document.body.clientHeight) topper=topper-height;

	oPopupMenu.show(lefter, topper, width, height, EditorID.document.body);
	return false;

}