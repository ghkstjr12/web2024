<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ page import="day6.Book" %>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
<style>
 .wrap{
    width : 600px;
    display : flex;
    flex-direction:row;
    border : 1px solid black;
    margin: 0 auto;
 }
 
 .wrap div{
    border : 1px solid black;
    width:25%;
 }
 h4{
    text-align: center;
 
 }
</style>
</head>
<body>

<% Book book = (Book)request.getAttribute("book"); %>

<h4>책정보</h4>
<div class="wrap"> <!-- 아래 /day6은 패키지가 아닌 사이트명 -->
   <div><img src="/day6/imgs/book.jpg"></div>
   <div><%=book.getTitle() %></div>
   <div><%=book.getAuthor() %></div>
   <div><%=book.getPrice() %></div>
</div>
</body>
</html>