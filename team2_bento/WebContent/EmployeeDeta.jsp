<%@page import="java.util.List" %>
<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<link rel="stylesheet" href="EmployeeDeta.css" type="text/css"/> 
<title>社員履歴詳細</title>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
</head>
<body>
<h1>OOさんの注文履歴</h1>

<%
List <String[]> list = (List<String[]>)request.getAttribute("list");
%>
<input type="submit" value="戻る"　/>
<form method="get"></form>
<table border=1 bgcolor="#FFFFFF">
<tr>
<th>日付</th>
<th>金額</th>
<th>注文内容</th>
</tr>
<tr>
<% for(String[] s:list){ %>
<th><%= s[0] %></th>
<th><%= s[1] %></th>
<th><%= s[2] %></th>
</tr><% } %>
<tr>
<th>10/01</th>
<th>200円</th>
<th>OOO弁当</th>
</tr>
</table>

</form>
</body>
</html>