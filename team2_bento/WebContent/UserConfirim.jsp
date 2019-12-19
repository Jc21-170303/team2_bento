<%@ page import="java.util.List" %>
<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<link rel="stylesheet" href="css/UserConfirim.css"/>
<title>注文確認済画面</title>
</head>
<body>
<%
List<String[]> list = (List<String[]> )request.getAttribute("list");
%>
<%@include file="./UserHeader.jsp" %>
<br/>
<br/>
<br/>
<br/>
<br/>
<table class="t1" >
<tr>
<% for(String[] s:list){ %>
<th><%= s[0] %></th>
<th><%= s[1] %>個</th>
<th><%= s[2] %>円</th>
</tr><% } %>
<tr>
<tr>
	<td>～弁当</td>
	<td>〇個</td>
	<td>〇〇円</td>
</tr>
</table>
<p id="p1">注文を受け付けました。
<table  class="t2" >
<tr>
	<td>～弁当</td>
	<td>〇個</td>
	<td>〇〇円</td>
</tr>	
</table>
<p id="p2">注文を受け付けました。

<br/>
<br/>
<p id="p3"><button class="b1">注文画面に戻る</button></p>

</body>
</html>