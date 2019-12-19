<%@ page import="java.util.List" %>
<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<link rel="stylesheet" href="css/UserCheck.css"/>
<title>注文確認画面</title>
</head>
<body>
<%List<String[]> list = (List<String[]>)request.getAttribute("list");
 %>
<%@include file="./UserHeader.jsp" %>

<h1>注文確認</h1>
<table id="t" >
<tr>
<% for(String[] s :list){%>
<th><%= s[0] %></th>
<th><%= s[1] %>個</th>
<th><%= s[2] %>円</th>
</tr>
<% } %>
<tr>
	<td>弁当</td>
	<td>個</td>
	<td>円</td>
</tr>
<tr>
	<td>弁当</td>
	<td>個</td>
	<td>円</td>
</tr>	
</table>
<p id="p1">これでよろしいですか？</p>
<pre>

<p><button id="b1" style="width: 78px; height: 41px">戻る</button><per>     </per><button id="b2" style="width: 78px; height: 41px">確定</button></p>
</pre>
</body>
</html>