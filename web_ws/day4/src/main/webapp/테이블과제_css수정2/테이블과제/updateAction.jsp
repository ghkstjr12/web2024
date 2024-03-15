<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@  page import="java.sql.*" %>	
 
   

<%


request.setCharacterEncoding("utf-8");
String m_no =request.getParameter("m_no");
String m_name = request.getParameter("m_name");
String m_age = request.getParameter("m_age");
String m_phone = request.getParameter("m_phone");


out.print(m_no);
out.print(m_name);
out.print(m_age); 
out.print(m_phone);


String driver = "oracle.jdbc.driver.OracleDriver";
String url = "jdbc:oracle:thin:@localhost:1521:testdb";
String user = "scott";
String password = "tiger";	

		
try {
	Class.forName(driver);		 
	Connection  con = DriverManager.getConnection(url, user, password);	
	 
	 
	String sql  =" update counsel_member set m_name=?, m_age=?, m_phone=?  where m_no =?";
	PreparedStatement  pst =con.prepareStatement(sql);
	pst.setString(1, m_name);
	pst.setString(2, m_age);
	pst.setString(3, m_phone);
	pst.setString(4, m_no);	
    int cnt  =pst.executeUpdate();  // 등록, 변경, 삭제	
    if (cnt > 0) {
        // JavaScript를 사용하여 알림 메시지를 표시하고 페이지를 리다이렉트합니다.
        out.println("<script>alert('변경이 완료되었습니다.'); window.location.href = 'memberList.jsp';</script>");
    } else {
        // 변경된 행이 없을 경우에 대한 알림 메시지 (선택 사항)
        out.println("<script>alert('변경할 데이터를 찾을 수 없습니다.'); window.location.href = 'memberList.jsp';</script>");
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
</head>
<body>
  변경완료 !!
</body>
</html>