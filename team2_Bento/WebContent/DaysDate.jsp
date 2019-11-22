<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<link href="DaysDate.css" rel="stylesheet" />
<title>日ごと詳細画面</title>
<style type="text/css">
div#yoko{
	display: inline-block;
}
</style>
</head>
<body>
<%@include file="./AdminHeader.jsp" %>
<a href = "#" id = "modoru"><button  id = b>戻る</button></a>
<h1>日ごと詳細画面</h1>
<br>
<br>
<p>〇月×日の詳細</p>

<table border="1" align = "center">

<tr>
<th>弁当名</th>
<th>個数</th>
<th>金額</th>



<tr>
<td align = "right"> 〇〇弁当 </td>
<td align = "right"> 〇個 </td>
<td align = "right"> △△△△円 </td>
</tr>

<tr>
<td align = "right">計</td>
<td align = "right"> 〇個 </td>
<td align = "right"> △△△△円 </td>
</tr>
</table>


</body>
</html>