package day6;

import java.io.IOException;

import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
@WebServlet("/prac1")
public class prac1 extends HttpServlet{
	@Override
	protected void service(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		 
		PracService ser= new PracService();
		int aaa= ser.hap(3, 2);
		
		
		request.setAttribute("aaa",aaa);
		
		request.getRequestDispatcher("WEB-INF/views/hello2d연습.jsp").forward(request, response);
		
		
	}
}
