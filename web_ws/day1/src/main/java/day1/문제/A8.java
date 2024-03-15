package day1.문제;

import
 java.io.IOException;
import java.io.PrintWriter;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import java.util.Random;

@WebServlet("/fighting")
public class A8 extends HttpServlet {
   
    
    private String[] fightingStatements = {
        "화이팅! 오늘도 힘내세요!",
        "힘들어도 포기하지마세요! 화이팅!",
        "긍정적인 마음으로 달려봅시다! 화이팅!",
        "어려운 일이 있어도 용기를 가져요! 화이팅!",
        "단단한 마음으로 극복해봐요! 화이팅!"
    };

    protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
        response.setContentType("text/html; charset=UTF-8");
        PrintWriter out = response.getWriter();
        
        Random rand = new Random();
        int index = rand.nextInt(fightingStatements.length);
        
        out.println("<html>");
        out.println("<head><title>화이팅 문장</title></head>");
        out.println("<body>");
        out.println("<h1>랜덤 화이팅 문장</h1>");
        out.println("<p>" + fightingStatements[index] + "</p>");
        out.println("</body>");
        out.println("</html>");
    }
}
