<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
    
<%@ page import="java.sql.*" %>

<%
   request.setCharacterEncoding("UTF-8");

   // get으로 끌어와서 String id에 저장
   String id = request.getParameter("id");
   String pw = request.getParameter("pw");
   String name = request.getParameter("name");

   // 잘 뽑았는지 확인
   out.println(id);
   out.println(pw);
   out.println(name);
   
   // 데이터베이스 작업    
      String driver = "oracle.jdbc.driver.OracleDriver";
      String url = "jdbc:oracle:thin:@localhost:1521:testdb";
      String user = "scott";
     String password = "tiger";
      
   try {
       Class.forName(driver);
         Connection con = DriverManager.getConnection(url, user, password);
         String sql = "insert into acorntbl values(?, ?, ?)";
         PreparedStatement pst = con.prepareStatement(sql); //??
         pst.setString(1, id);
         pst.setString(2, pw);
         pst.setString(3, name);
         
      int cnt = pst.executeUpdate(); //??
         
   } catch (ClassNotFoundException e) {
       // TODO Auto-generated catch block
        e.printStackTrace();
         
   } catch (SQLException e) {
       // TODO Auto-generated catch block
       e.printStackTrace();
      }
%>