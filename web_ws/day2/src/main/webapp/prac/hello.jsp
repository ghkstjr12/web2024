<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
</head>

<body>
<%  //자바코드
String title="재미있는 책";
String author="홍길동";
int price =15000;
%>
 <table>
 <tr>
 <td>제목</td>
 <td>저자</td>
 <td>가격</td>
 </tr>
 
 <tr>
 <td><% out.println(title); %></td>
 <td><% out.println(author); %></td>
 <td><% out.println(price); %></td>
 </tr>
 </table>
</body>
</html>