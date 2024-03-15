package day1.문제;

import java.io.IOException;
import java.io.PrintWriter;

import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;


@WebServlet("/lotto")
public class 서비스제공 extends HttpServlet{
	@Override
	protected void service(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
			
		 // 한글 처리
        request.setCharacterEncoding("UTF-8");
        response.setContentType("text/html; charset=UTF-8");
        
		 	PrintWriter out = response.getWriter();
		 	out.println("<head>");
		 	out.println("<title>lotto result</title>");
		 	out.println("<style>");
		 	out.println(".lotto-numbers {");
		    out.println("list-style-type: none;");
		    out.println("margin: 0 ;");
		    out.println(" padding: 0;");
		    out.println(" display: flex;");
		    out.println("}");
		    out.println(".lotto-number {");
		    out.println("width: 50px;");
		    out.println("height: 50px;");
		    out.println("border: 1px solid #ccc;");
		    out.println("border-radius: 50%;");
		    out.println("display: flex;");
		    out.println("align-items: center;"); //display:flex에서 수직정렬
		    out.println("justify-content: center; "); //display:flex에서 수평정렬
		    out.println("margin-right: 10px");
		    out.println("}");
		 	out.println("</style>");
		 	out.println("</head>");
	        out.println("<body>");
	        out.println("<h1>Lotto Numbers</h1>");
	        	out.println("<ul class=\"lotto-numbers\">");
	            out.println("<!-- 로또 번호 생성 -->");
	            out.println("<li style=\"background-color:red\" class=\"lotto-number\">01</li>");
	            out.println("<li style=\"background-color:blue\" class=\"lotto-number\">07</li>");
	            out.println("<li class=\"lotto-number\">14</li>");
	            out.println("<li class=\"lotto-number\">23</li>");
	            out.println("<li class=\"lotto-number\">30</li>");
	            out.println("<li class=\"lotto-number\">42</li>");
	            out.println("</ul>");
	        out.println("</body>");
	        out.println("</html>");

	}
}