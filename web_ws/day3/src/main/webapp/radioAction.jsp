<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
    
    
    
<% 
// 	out.print("응답");
   request.setCharacterEncoding("UTF-8");

   String[] genders = request.getParameterValues("gender");

   for(String gender : genders) {
      out.println(gender);
   }
%>

<%-- <%="응답"%> --%>