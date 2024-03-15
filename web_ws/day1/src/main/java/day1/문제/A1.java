package day1.문제;

import java.io.IOException;
import java.io.PrintWriter;

import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

@WebServlet("/CalculatorServlet")
public class A1 extends HttpServlet {
   

    protected void service (HttpServletRequest request, HttpServletResponse response)
            throws ServletException, IOException {
        // 한글 처리
        request.setCharacterEncoding("UTF-8");
        response.setContentType("text/html; charset=UTF-8");

        // 입력된 두 수를 가져옴
        String num1str1 = request.getParameter("num1");
        String num2str2 = request.getParameter("num2");

        // 두 수를 정수로 변환
        int num1 = Integer.parseInt(num1str1);
        int num2 = Integer.parseInt(num2str2);

        // 연산 결과 계산
        int sum = num1 + num2;
        int difference = num1 - num2;
        int product = num1 * num2;
        double quotient = (double) num1 / num2;

        // 결과를 클라이언트에 전송
        PrintWriter out = response.getWriter();
        out.println("<html>");
        out.println("<head><title>Calculator Result</title></head>");
        out.println("<body>");
        out.println("<h2>사칙연산 결과</h2>");
        out.println("<p>" + num1 + " + " + num2 + " = " + sum + "</p>");
        out.println("<p>" + num1 + " - " + num2 + " = " + difference + "</p>");
        out.println("<p>" + num1 + " * " + num2 + " = " + product + "</p>");
        out.println("<p>" + num1 + " / " + num2 + " = " + quotient + "</p>");
        out.println("</body>");
        out.println("</html>");

        out.close();
    }
}
