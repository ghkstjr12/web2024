package test;

import java.io.IOException;

import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import com.acorn.ysj.MyUtil;

import day2.MyUtils;


@WebServlet("/liba")
public class 라이브러리사용하기   extends HttpServlet{
	
	@Override
	protected void service(HttpServletRequest req, HttpServletResponse resp) throws ServletException, IOException {
		 MyUtil.별출력();
		  
		 
		  
	}

}
