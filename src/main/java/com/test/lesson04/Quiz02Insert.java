package com.test.lesson04;

import java.io.IOException;
import java.sql.SQLException;

import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import com.test.common.MysqlService;

@WebServlet("/lesson04/quiz02_Insert")
public class Quiz02Insert extends HttpServlet {

	@Override
	public void doPost(HttpServletRequest request, HttpServletResponse response) throws IOException {
		// request parameter들 꺼내기
		String newName = request.getParameter("newName");
		String newAddress = request.getParameter("newAddress");

		// connect DB
		MysqlService ms = MysqlService.getInstance();
		ms.connect();
		
		// insert into new_user
		String insertQuery = "INSERT INTO `bookmark`"
				+ "(`name`, `address`)"
				+ "VALUES"
				+ "('" + newName + "', '" + newAddress + "');";
		try {
			ms.update(insertQuery);
		} catch (SQLException e) {
			e.printStackTrace();
		}

		// DB disconnect
		ms.disconnect();

		// 사용자 목록화면 이동(Redirect)
		response.sendRedirect("/lesson04/quiz02/quiz02.jsp");
	}
}