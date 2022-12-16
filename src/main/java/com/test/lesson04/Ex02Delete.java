package com.test.lesson04;

import java.io.IOException;
import java.sql.SQLException;

import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import com.test.common.MysqlService;

@WebServlet("/lesson04/ex02_delete")
public class Ex02Delete extends HttpServlet {

	@Override
	public void doGet(HttpServletRequest request, HttpServletResponse response) throws IOException {
		// content type 생략 (redirect)

		// request parameter(id) 꺼내기
		int id = Integer.valueOf(request.getParameter("id"));

		// DB connect
		MysqlService ms = MysqlService.getInstance();
		ms.connect();

		// new_user에서 id 데이터 삭제 - query
		String deleteQuery = "delete from `new_user` where `id` = " + id;
		try {
			ms.update(deleteQuery);
		} catch (SQLException e) {
			e.printStackTrace();
		}

		// DB disconnect
		ms.disconnect();

		// back to 사용자 목록화면 - redirect
		response.sendRedirect("/lesson04/ex02/ex02_1.jsp");
	}
}