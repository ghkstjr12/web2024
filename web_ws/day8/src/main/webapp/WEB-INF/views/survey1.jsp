<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
</head>
<body>


<form action="/day8/survey2" method="post"> <!-- method 생략시 기본 get -->
 당신이 좋아하는 동물은 ?
 <input type="text" name="animal"> <!-- input은 inline태그 -->
 <button>button</button>
</form>

</body>
</html>