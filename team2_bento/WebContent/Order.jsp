<%@page import="java.util.List"%>
<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<link rel="stylesheet" href="Order.css"/>
<title>注文確認画面（管理者）</title>
</head>
<body>
<%@include file="./AdminHeader.jsp" %>
<%List<String[]> list = (List<String[]>)request.getAttribute("list");
Object o = request.getAttribute("kingaku");
Object t = request.getAttribute("counter");
int w =(int) o;
int e =(int) t;
 %>
<h1>第1部署</h1>  <!--  <font size="50px">  第1部署 </font>-->
<div id="order" align = "center">
<div id="box" style="width: 600px; ">
<% for(String[] s :list){%>
<%= s[0] %>
<%= s[1] %>個
<%= s[2] %>円<br/>
<% } %>
～～弁当 〇〇個 〇〇円<br>
～～弁当 〇〇個 〇〇円<br>
～～弁当 〇〇個 〇〇円<br>
～～弁当 〇〇個 〇〇円<br>
～～弁当 〇〇個 〇〇円<br>
～～弁当 〇〇個 〇〇円<br>
～～弁当 〇〇個 〇〇円<br>
～～弁当 〇〇個 〇〇円<br>
～～弁当 〇〇個 〇〇円<br>
～～弁当 〇〇個 〇〇円<br>
～～弁当 〇〇個 〇〇円<br>
～～弁当 〇〇個 〇〇円<br>
～～弁当 〇〇個 〇〇円<br>
～～弁当 〇〇個 〇〇円<br>
～～弁当 〇〇個 〇〇円<br>
～～弁当 〇〇個 〇〇円<br>
～～弁当 〇〇個 〇〇円<br>
～～弁当 〇〇個 〇〇円<br>
～～弁当 〇〇個 〇〇円<br>
～～弁当 〇〇個 〇〇円<br>
～～弁当 〇〇個 〇〇円<br>
～～弁当 〇〇個 〇〇円<br>
～～弁当 〇〇個 〇〇円<br>
～～弁当 〇〇個 〇〇円<br>
～～弁当 〇〇個 〇〇円<br>
～～弁当 〇〇個 〇〇円<br>
～～弁当 〇〇個 〇〇円<br>
～～弁当 〇〇個 〇〇円<br>
～～弁当 〇〇個 〇〇円<br>
～～弁当 〇〇個 〇〇円<br>
～～弁当 〇〇個 〇〇円<br>
～～弁当 〇〇個 〇〇円<br>
～～弁当 〇〇個 〇〇円<br>
～～弁当 〇〇個 〇〇円<br>
～～弁当 〇〇個 〇〇円<br>
～～弁当 〇〇個 〇〇円<br>
～～弁当 〇〇個 〇〇円<br>
～～弁当 〇〇個 〇〇円<br>
～～弁当 〇〇個 〇〇円<br>
～～弁当 〇〇個 〇〇円<br>
～～弁当 〇〇個 〇〇円<br>
～～弁当 〇〇個 〇〇円<br>
～～弁当 〇〇個 〇〇円<br>
～～弁当 〇〇個 〇〇円<br>
～～弁当 〇〇個 〇〇円<br>
～～弁当 〇〇個 〇〇円<br>
～～弁当 〇〇個 〇〇円<br>
～～弁当 〇〇個 〇〇円<br>
～～弁当 〇〇個 〇〇円<br>
～～弁当 〇〇個 〇〇円<br>
～～弁当 〇〇個 〇〇円<br>
～～弁当 〇〇個 〇〇円<br>
～～弁当 〇〇個 〇〇円<br>
～～弁当 〇〇個 〇〇円<br>
～～弁当 〇〇個 〇〇円<br>
～～弁当 〇〇個 〇〇円<br>
～～弁当 〇〇個 〇〇円<br>
～～弁当 〇〇個 〇〇円<br>
～～弁当 〇〇個 〇〇円<br>
～～弁当 〇〇個 〇〇円<br>
</div>
<font size="5px"> 計<%= e %>個<%= w %>円 </font>
<table id="t">
<tr>
	<th>
	<select name="example">
	<option value="第一部署">第一部署</option>
	<option value="第二部署">第二部署</option>
	<option value="第三部署">第三部署</option>
	</select>
	</th>
	<th><button>決定</button></th>
</tr>
<tr>
      <td colspan="2"><button style="width: 164px; ">注文確定画面へ</button></td>
</tr>
</table>

<br>

<font size="5px"> 計〇〇個〇〇円 </font>
</div>

</body>
</html>