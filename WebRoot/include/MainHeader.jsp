<%@ page language="java" import="java.util.*" pageEncoding="gb2312"%>
<html xmlns="http://www.w3.org/1999/xhtml">
<head>
<meta http-equiv="Content-Type" content="text/html; charset=gb2312" />
<title>无标题文档</title>
<script type="text/javascript">
<!--
function mhEnter()
{
window.event.srcElement.className="lt1";
}
function mhLeave()
{
window.event.srcElement.className="lt0";
}
//-->
</script>
<link rel="stylesheet" href="../image/style.css">
</head>

<body>
<table style="width:1000; border:0; cellpadding:0; cellspacing:0">
	<tr height="31">
		<td style="background:(image/line.jpg)">
		
			<table style="width:1000; border:0; cellpadding:0; cellspacing:0">
				<tr height="20" style="align:center">
					<td style="width:278">&nbsp;</td>
					<td class="lt0" onclick="mhEnter()" onmouseout="mhLeave()"><a href="showAllArticle.action">博客首页</a></td>
					<td class="ltsep">|</td>
					<td class="lt0" onclick="mhEnter()" onmouseout="mhLeave()"><a href="register.jsp">新博客注册</a></td>
					<td class="ltsep">|</td>
					<td class="lt0" onclick="mhEnter()" onmouseout="mhLeave()"><a href="login.jsp">博客登陆</a></td>
				</tr>
			</table>
		
		</td>
	</tr>
</table>
</body>
</html>

