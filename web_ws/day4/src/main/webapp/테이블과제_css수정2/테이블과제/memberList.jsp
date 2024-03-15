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
 	padding:30px;
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

table{
    width:500px;
    border:1px solid black;
    margin:10px auto;
    border-collapse: collapse;
}

td{
 border:1px solid black;
 padding : 3px;
 text-align: center;
}

.tr1{
	background-color: #d5ebed;
	font-weight: bolder;
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
   	<span> <a href="loginAction.jsp">	로그인</a></span>
   	<span> <a href="#">	회원가입</a></span>
   
</nav>
<section>
  
  <table>
  <caption>  내담자 조회 </caption>
  <!--  제목줄 -->
  	<tr>
  	  <td>회원번호 </td>
  	  <td>회원이름</td>
 	  <td>나이</td> 
 	   <td>전화번호</td>   
 	  <td>수정</td>  	
 	  <td>삭제</td>
 	  
 	 	  
  	</tr>  
  
  <%
	String driver = "oracle.jdbc.driver.OracleDriver";
	String url = "jdbc:oracle:thin:@localhost:1521:testdb";
	String user = "scott";
	String password = "tiger";	
	
			
	try {
		//1. 드라이버 로드 (객체생성)
		Class.forName(driver);			
		//2. 데이터베이스 연결
		Connection  con = DriverManager.getConnection(url, user, password);
		//3. 문장얻어오기 
		String sql  ="select * from  counsel_member";
		
		PreparedStatement pst =con.prepareStatement(sql);
	 
		//5.실행 ( executeQuery()-조회,  executeUpdate()- 나머지 등록, 변경, 삭제)
		ResultSet  rs =pst.executeQuery();	
		
		
		//
		while( rs.next()) {		
  %>	
	
	 
  	<tr>
  	  <td> <%= rs.getString(1) %> </td>
  	  <td> <%= rs.getString(2) %></td>
 	  <td> <%= rs.getString(3) %></td>  
 	  <td> <%= rs.getString(4) %></td> 
 	   <td> <a href="updateForm.jsp?m_no=<%= rs.getString(1) %>">수정</a></td>  
 	   <td> <a href="deleteAction.jsp?m_no=<%= rs.getString(1) %>">삭제</a></td> 
 	   	  	     	  
  	</tr> 
  	
  	
  	<%
		} 			
		
	} catch (ClassNotFoundException e) {
		// TODO Auto-generated catch block
		e.printStackTrace();
	} catch (SQLException e) {
		// TODO Auto-generated catch block
		e.printStackTrace();
	}
	
  	
  	
  	%>
  </table>
 
</section>

<footer>
	<div>힐링상담센터</div>
	<div> 회사소개 찾아오시는길 대표번호 대표자:xxx 고객센터 </div>
	<div>기업 사이트</div>
</footer>
</body>
</html>


 


