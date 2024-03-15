<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
    
<%@ page import="java.sql.*" %>

<%
   request.setCharacterEncoding("UTF-8");

   // get으로 끌어와서 String id에 저장
   String m_no = request.getParameter("m_no");
   String m_name = request.getParameter("m_name");
   String m_age = request.getParameter("m_age");
   String m_phone = request.getParameter("m_phone");

   // 잘 뽑았는지 확인
   out.print(m_no);
   out.print(m_name);
   out.print(m_age); 
   out.print(m_phone);

   
   // 데이터베이스 작업    
      String driver = "oracle.jdbc.driver.OracleDriver";
      String url = "jdbc:oracle:thin:@localhost:1521:testdb";
      String user = "scott";
     String password = "tiger";
      
   try {
       Class.forName(driver);
         Connection con = DriverManager.getConnection(url, user, password);
         String sql = "insert into counsel_member values(?, ?, ?,?)";
         PreparedStatement pst = con.prepareStatement(sql); //??
         pst.setString(1, m_no);
         pst.setString(2, m_name);
         pst.setString(3, m_age);
         pst.setString(4, m_phone);
         
      int cnt = pst.executeUpdate(); //??	  
      
      if (cnt > 0) {
          out.println("<script>alert('등록되었습니다.'); window.location.href='memberList.jsp';</script>");
      }
   } catch (ClassNotFoundException e) {
       // TODO Auto-generated catch block
        e.printStackTrace();
         
   } catch (SQLException e) {
       // TODO Auto-generated catch block
       e.printStackTrace();
      }
%>