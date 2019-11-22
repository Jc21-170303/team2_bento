<%@ page import="java.util.List" %>
<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<link rel="stylesheet" href="UserOrder.css"/>
<title>Insert title here</title>
<style type="text/css">
div#yoko{
	display: inline-block;
}
</style>
</head>
<body>

<H1>ユーザー注文画面</H1>

<TABLE BORDER="0">
<TR>
<TD class = "a1">
<table border="1" >
<tr bgcolor="white">

<td colspan="2">
<img src="" width="200" height="200">

<tr bgcolor="white">
<th>弁当名</th>
<td align = "right">〇〇</td>

<tr bgcolor="white">
<th>価格</th>
<td align = "right">〇〇円</td>
</tr>

<tr bgcolor="white">
<th>数量</th>
<td align = "right"><select name = "qty">
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
<TD class = "2">
</td>
<td class="a2">
<table border="1">

<tr bgcolor="white">

<td colspan="2">
<img src="" width="200" height="200">

<tr bgcolor="white">
<th>弁当名</th>
<td align = "right">〇〇</td>

<tr bgcolor="white">
<th>価格</th>
<td align = "right">〇〇円</td>
</tr>

<tr bgcolor="white">
<th>数量</th>
<td align = "right"><select name = "qty">
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
<TD class = "a3">
<table border="1">

<tr bgcolor="white">

<td colspan="3">
<img src="" width="200" height="200">

<tr bgcolor="white">
<th>弁当名</th>
<td align = "right">〇〇</td>

<tr bgcolor="white">
<th>価格</th>
<td align = "right">〇〇円</td>
</tr>

<tr bgcolor="white">
<th>数量</th>
<td align = "right"><select name = "qty">
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

 </TR>
</TABLE>
<pre>
※本日分は終了しました。
</pre>
<a href = "#" id = "mon"><button  id = b>注文</button></a>
</body>
</html>