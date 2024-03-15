<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@  page import="java.sql.*" %>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
<style>
.login{
	float : right;
}
header{
	/* border:1px solid black; */ 
	height : 200px;
	text-align: center;
}
header img {
	height: 150px; 
	padding-top: 20px;
}
nav{
   
    border-bottom:1px solid black;
    border-top : 1px solid black;
    padding :10px;
    text-align: center;
    background-color: #d5ebed;
    /* background-image: linear-gradient(to bottom, #494d95, #45b4c1); */
}

a{
   text-decoration:none;
   color:black;
}
nav span{
   padding-left: 50px;
   padding-right: 50px;
}

a:hover{
	color: #ffffff;
}

section {
	margin-top: 50px;
}

.div1 {
	width:970px;
	 /* border:1px solid black;*/ 
	padding:10px;
	box-sizing: border-box;
	margin: 0 auto;
	display: flex;
}

.div2{
	width:900px;
	 /* border:1px solid black;*/ 
	padding:10px;
	box-sizing: border-box;
	margin: 0 auto;
	display: flex;
}

.div2 > div{
	width:300px;
	height:300px;
	/* border:1px solid black; */ 
}


.div2 > div img{
	width:280px;
	height:280px;
}

.div2 img:hover {
    opacity: 0.5; /* 불투명도를 조절하여 흐리게 보이도록 설정 */
}

footer{
  /* border:1px solid black; */ 
  display: flex;
  padding:10px;
  margin-top: 50px;
  font-size: 11px;
  background-color: #dae7e9;
  
}

footer  > div{
 
}


footer > div:nth-child(1) {    
    width:20%;
}



footer > div:nth-child(2) {    
    width:60%;
}



footer > div:nth-child(3) {
    width:20%;
}


</style>
</head>
<body>

<header>
	<a href="mb_home.jsp"><img alt="" src="logo1.PNG"></a>
</header>

<nav>
	<span> <a href="#">  상담사소개</a></span>
	<span> <a href="insert.jsp"> 회원등록</a></span>
   	<span> <a href="memberList.jsp">  회원조회</a></span>
   	<span> <a href="#">  진료내역</a></span>
   	<span> <a href="login.html">	로그인</a></span>
   	<span> <a href="#">	회원가입</a></span>
   
</nav>

<section>
	<div class="div1">
		<div><img alt="" src="main_img.jpg"></div>
	</div>
	
	<div class="div2">
	  <div><a href="#"><img alt="" src="img1.PNG"></a></div>
	  <div><a href="#"><img alt="" src="img2.PNG"></a></div>
	  <div><a href="memberList.jsp"><img alt="" src="img3.PNG"></a></div>
	</div>  
</section>

<footer>
   <div>힐링상담센터</div>
   <div>회사소개인재채용제휴제안이용약관개인정보처리방침청소년보호정책네이버 정책고객센터ⓒ NAVER Corp.</div>
   <div>기업 사이트</div>
</footer>
</body>
</html>


 

