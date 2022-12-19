package com.test.lesson04;

import java.io.IOException;
import java.sql.ResultSet;
import java.sql.SQLException;

import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import com.test.common.MysqlService;

@WebServlet("/lesson04/quiz03_Upload")
public class Quiz03Upload extends HttpServlet {

	@Override
	public void doPost(HttpServletRequest request, HttpServletResponse response) throws IOException {
		String nickname = request.getParameter("nickname");
		String title = request.getParameter("title");
		String price = request.getParameter("price");
		String introduce = request.getParameter("introduce");
		String pictureUrl = request.getParameter("pictureUrl");
		
		// connect DB
		MysqlService ms = MysqlService.getInstance();
		ms.connect();
		String selectQuery = "select * from `used_goods`";
		String selectQuery2 = "SELECT A.*, B.*\r\n"
				+ "FROM `seller` AS A\r\n"
				+ "JOIN `used_goods` AS B\r\n"
				+ "ON A.id = B.sellerId order by A.id;";
		ResultSet rs = ms.select(selectQuery2);
		
		// insert into `used_goods`
		String insertQuery = "INSERT INTO `used_goods`"
				+ "(`sellerId`, `title`, `description`, `price`, `pictureUrl`)"
				+ "VALUES"
				+ "('" + nickname + "', '" + title + "', '" + price + "', " + introduce + ", '" + pictureUrl + "');";
		try {
			ms.update(insertQuery);
		} catch (SQLException e) {
			e.printStackTrace();
		}
		
		ms.disconnect();
		response.sendRedirect("/lesson04/quiz03/template.jsp");
	}
}