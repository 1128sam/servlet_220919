package com.test.lesson04;

import java.io.IOException;
import java.sql.SQLException;

import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import com.test.common.MysqlService;

@WebServlet("/lesson04/quiz02_delete")
public class quiz02_delete extends HttpServlet {

	@Override
	public void doPost(HttpServletRequest request, HttpServletResponse response) throws IOException {
		// request parameter(id) 꺼내기
		int id = Integer.parseInt(request.getParameter("id"));
		
		// connect to DB
		MysqlService ms = MysqlService.getInstance();
		ms.connect();
		
		// new_user에서 id 데이터 삭제 - query
		String deleteQuery = "delete from `bookmark` where `id`=" + id;
		try {
			ms.update(deleteQuery);
		} catch (SQLException e) {
			e.printStackTrace();
		}
		
		// disconnect DB
		ms.disconnect();
		
		// back to 사용자 목록화면 - redirect
		response.sendRedirect("/lesson04/quiz02/quiz02.jsp");
	}
}