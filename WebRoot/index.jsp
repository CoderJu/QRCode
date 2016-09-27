<%@ page language="java" import="java.util.*" pageEncoding="UTF-8"%>
<%
String path = request.getContextPath();
String basePath = request.getScheme()+"://"+request.getServerName()+":"+request.getServerPort()+path+"/";
%>

<!DOCTYPE HTML PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN">
<html>
  <head>
    <base href="<%=basePath%>">
    
    <title>My JSP 'index.jsp' starting page</title>
	<meta http-equiv="pragma" content="no-cache">
	<meta http-equiv="cache-control" content="no-cache">
	<meta http-equiv="expires" content="0">    
	<meta http-equiv="keywords" content="keyword1,keyword2,keyword3">
	<meta http-equiv="description" content="This is my page">
	<script type="text/javascript" src="<%=path %>/js/jquery.min.js"> </script>
	<script type="text/javascript" src="<%=path%>/js/jquery.qrcode.min.js"> </script>
</head>
	<body>
	生成二维码如下：<br>
	<div id = "qrcode"></div>
	</body>
	<script type="text/javascript">
	var str  = "BEGIN:VCARD"+"\n"+
	"VERSION:3.0"+"\n"+
	"PHOTO;VALUE=URL:http://img.qq745.com/uploads/allimg/141012/1-141012103349.jpg"+"\n"+
	"FN:琚遥遥"+"\n"+
	"TEL;CELL;VOICE:18516215719"+"\n"+
	"TEL;WORK;VOICE:010-62100000"+"\n"+
	"TEL;WORK;FAX:010-62100001"+"\n"+
	"EMAIL;PREF;INTERNET:1483991357@qq.com"+"\n"+
	"orG:上海泛微"+"\n"+
	"ROLE:EBU八部"+"\n"+
	"TITLE:开发工程师"+"\n"+
	"ADR;WORK;POSTAL:上海浦东;100101"+"\n"+
	"REV:2012-12-27T08:30:02Z"+"\n"+
	"END:VCARD";
	
		jQuery('#qrcode').qrcode(utf16to8(str));
		

		function utf16to8(str) {  
		    var out, i, len, c;  
		    out = "";  
		    len = str.length;  
		    for(i = 0; i < len; i++) {  
		    c = str.charCodeAt(i);  
		    if ((c >= 0x0001) && (c <= 0x007F)) {  
		        out += str.charAt(i);  
		    } else if (c > 0x07FF) {  
		        out += String.fromCharCode(0xE0 | ((c >> 12) & 0x0F));  
		        out += String.fromCharCode(0x80 | ((c >>  6) & 0x3F));  
		        out += String.fromCharCode(0x80 | ((c >>  0) & 0x3F));  
		    } else {  
		        out += String.fromCharCode(0xC0 | ((c >>  6) & 0x1F));  
		        out += String.fromCharCode(0x80 | ((c >>  0) & 0x3F));  
		    }  
		    }  
		    return out;  
		}  

	</script>
</html>
