<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<link href="Days.css" rel="stylesheet" />
<title>日ごと履歴画面</title>
<style type="text/css">
	display: inline-block;
</style>
</head>
<body>
<%@include file="./AdminHeader.jsp" %>
<h1>日ごと履歴画面</h1>
<br>
<br>
<div id= "bo" >
<select>
<option>1月</option>
<option>2月</option>
<option>3月</option>
<option>4月</option>
<option>5月</option>
<option>6月</option>
<option>7月</option>
<option>8月</option>
<option>9月</option>
<option>10月</option>
<option>11月</option>
<option>12月</option>
</select>
<br>
<br>

<button>決定</button> 
</div>
<p>月ごとの注文金額</p>
<table border="1" align = "center">

<tr>
<th>日付</th>
<th>金額</th>
<th>詳細</th>
</tr>
<tr>
<td align = "right"> 〇〇/〇〇 </td>
<td align = "right"> ○○○○円 </td>
<td align = "center"><button>詳細</button> </td>

</tr>

<tr>
<td align = "right"> 〇〇/〇〇 </td>
<td align = "right"> ○○○○円 </td>
<td align = "center"><button>詳細</button> </td>

</tr>
<tr>
<td align = "right"> 〇〇月</td>
<td align = "right"> 合計○○○○円 </td>
<td> </td>
</tr>
</table>


</body>
</html>