<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@  page import="java.sql.*" %>	
	
<%

 String m_no  = request.getParameter("m_no");
 
 String driver = "oracle.jdbc.driver.OracleDriver";
 String url = "jdbc:oracle:thin:@localhost:1521:testdb";
 String user = "scott";
 String password = "tiger";	
 
 
 String  m_name ="";
 String  m_age="";
 String  m_phone="";
 
	
			
	try {
		//1. 드라이버 로드 (객체생성)
		Class.forName(driver);			
		//2. 데이터베이스 연결
		Connection  con = DriverManager.getConnection(url, user, password);
		
		//3. 문장얻어오기 
	 
		String sql  ="select * from  counsel_member where m_no =?";
		PreparedStatement  pst =con.prepareStatement(sql);
		pst.setString(1, m_no);	 //왼쪽 물음표부터 	 
		
		//5.실행 ( executeQuery()-조회,  executeUpdate()- 나머지 등록, 변경, 삭제)
		ResultSet  rs =pst.executeQuery();	
		
		//
		if( rs.next()) {	
			 
			m_name  = rs.getString(2);
			m_age = rs.getString(3);
			m_phone = rs.getString(4);
		} 			
		
	} catch (ClassNotFoundException e) {
		// TODO Auto-generated catch block
		e.printStackTrace();
	} catch (SQLException e) {
		// TODO Auto-generated catch block
		e.printStackTrace();
	}


 

%>	
	
	
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

 section{ 
  /* border:1px solid  black;*/
  margin-top : 30px;
  padding: 20px;
  height: 300px;
 }
 
form {
	margin: 30px auto;
	width:400px;
  	/*border:1px solid black;*/
	border-collapse: collapse;  
	height: 200px;
}

 .line div { 
  border:1px solid black;
 }
 
 .wrap{
 width:400px;
 margin:0  auto;
 }
 
 .line{
   display: flex;
 }
 
 .col1{
  width:30%;
  text-align: center;
  background-color: #d5ebed;
 }
 
 .col2{
  width:70%;
 }
 
 
 .line1, .line6{
 text-align: center;
 }
 
 .line6{
 	margin : 10px;
 	border: none;
 }
 
 .col1, .col2{
 padding:5px;
 }
 
footer{
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
   	<span> <a href="loginAction.jsp">	로그인</a></span>
   	<span> <a href="#">	회원가입</a></span>
   
</nav>

<section>

<form  name="frm" action="updateAction.jsp"  method="post">
	<div  class="wrap">
		 <div class="line1">
			   <h2> 회원정보 조회 </h2>
		</div>
	
		<div class="line">
			<div class="col1">회원번호</div>
			<div class="col2"><input type="text"  name="m_no" value="" readonly="readonly"></div>	
		</div>
		
		<div class="line">
			<div class="col1">회원이름</div>
			<div class="col2"><input type="text" name="m_name" value=""></div>	
		</div>
		
	    <div class="line">
			<div class="col1">나이</div>
			<div class="col2"><input type="text" name="m_age"  value=""></div>	
		</div>	
		 <div class="line">
			<div class="col1">전화번호</div>
			<div class="col2"><input type="text" name="m_phone"  value=""></div>	
		</div>	
		
		<div class="line6">
		<!--  form 안에 있는 버튼은 submit 지정,(action에 지정된 페이지로 이동함) -->	
		 <button>변경</button>		 
		</div>
	</div>
</form>
</section>

<footer>
	<div>힐링상담센터</div>
	<div> 회사소개 찾아오시는길 대표번호 대표자:xxx 고객센터 </div>
	<div>기업 사이트</div>
</footer>

</body>
</html>




<script>

	 let frm = document.frm;
	 //alert( frm);	 
	 
	 frm.m_no.value="<%=m_no%>";
	 frm.m_name.value="<%=m_name%>";
	 frm.m_age.value="<%=m_age%>";	 
	 frm.m_phone.value="<%=m_phone%>";
</script>