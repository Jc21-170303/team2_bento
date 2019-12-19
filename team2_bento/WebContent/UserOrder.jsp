<%@ page import="java.util.List" %>
<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<link rel="stylesheet" href="css/UserOrder.css"/>
<title>注文画面</title>
<style type="text/css">
div#yoko{
	display: inline-block;
}
</style>
</head>
<body>
<%@include file="./UserHeader.jsp" %>

<%

List<String[]> list = (List<String[]> )request.getAttribute("list");

%>

<form method="get" action="./UserOrder">






<%for(String[] s:list){ %>
	
<div class="flex">
<table class="ta">
<TR>
<TD class = "a1">
<table border="1" >
<tr bgcolor="white">

<td colspan="2">
<img src="<%= s[2] %>" width="200" height="200">
</tr>
<tr bgcolor="white">
<th>弁当名</th>
<td align = "right"><%=s[0] %></td>

<tr bgcolor="white">
<th>価格</th>
<td align = "right"><%=s[1] %>円</td>
</tr>

<tr bgcolor="white">
<th>数量</th>
<td align = "right">
<select name = "qty">
<option>0</option>
<option>1</option>
<option>2</option>
<option>3</option>
<option>4</option>
<option>5</option>
<option>6</option>
<option>7</option>
<option>8</option>
<option>9</option>
</select>
</td>
</tr>
</table>
</TD>
</table>
</div>


<% } %>


<p>
※本日分は終了しました。
</p>
<a href = "#" id = "mon"><button  id = b>注文</button></a>
</form>
</body>
</html>