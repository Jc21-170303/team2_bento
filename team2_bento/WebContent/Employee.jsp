<%@page import="java.util.List" %>
<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<link rel="stylesheet" href="css/Employee.css" type="text/css"/> 
<title>社員履歴</title>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
</head>

<body>

<%@include file="./AdminHeader.jsp" %>
<H1>社員一覧</H1>

<div id="selects">
<select name="example">
<option value="1月">1月</option>
<option value="2月">2月</option>
<option value="3月">3月</option>
<option value="4月">4月</option>
<option value="5月">5月</option>
<option value="6月">6月</option>
<option value="7月">7月</option>
<option value="8月">8月</option>
<option value="9月">9月</option>
<option value="10月">10月</option>
<option value="11月">11月</option>
<option value="12月">12月</option>
</select>
<br>
<br>
<input type="submit" value="決定"></div>
<%
List <String[]> list = (List<String[]>)request.getAttribute("list");
%>
<form method="get" action="./EmployeeDeta">
<table align = "center" border="1" bgcolor="#FFFFFF">
<tr>
<th>社員名</th> 
<th>ID</th>
<th>月の合計</th>
<th>詳細</th>
</tr>
<tr>
<% for(String[] s:list){ %>
<th><%= s[1] %></th>
<th><%= s[0] %></th>
<th><%= s[2] %>円</th>
<% String deta = s[1]; %>
<th><input type="submit" value="詳細" name=date /></th>
</tr><% } %>
</table>
</form>
</body>
</html>