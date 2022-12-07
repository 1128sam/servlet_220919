package com.test.lesson01;

import java.io.IOException;
import java.io.PrintWriter;

import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

@WebServlet("/lesson01/quiz09")
public class PostMethodQuiz09 extends HttpServlet {
	@Override
	public void doPost(HttpServletRequest request, HttpServletResponse response) throws IOException {
		response.setCharacterEncoding("utf-8");
		response.setContentType("text/html");
		
		String name = request.getParameter("name");
		String essay = request.getParameter("essay");
		
		PrintWriter out = response.getWriter();
		out.print("<html><head><title>입사 지원</title></title><body>");
		out.print("<b>" + name + "</b>님 지원이 완료되었습니다.<br>");
		out.print("<h3><b>지원 내용</b></h3>" + essay);
		out.print("</body></html>");
	}
}