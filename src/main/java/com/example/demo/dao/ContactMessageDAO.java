package com.example.demo.dao;

import java.sql.Connection;
import java.sql.DriverManager;
import java.sql.PreparedStatement;
import java.sql.SQLException;

import org.springframework.stereotype.Repository;

import com.example.demo.model.ContactMessage;

@Repository
public class ContactMessageDAO {

	private static final String JDBC_URL =
			"jdbc:postgresql://localhost:5432/portfolio";

	private static final String DB_USER =
			"postgres";

	private static final String DB_PASS =
			"psql";

	public boolean insert(ContactMessage contactMessage) {

		String sql =
				"INSERT INTO contact_messages ("
				+ "name, "
				+ "email, "
				+ "subject, "
				+ "category, "
				+ "message"
				+ ") VALUES (?, ?, ?, ?, ?)";

		try (
				Connection conn =
						DriverManager.getConnection(
								JDBC_URL,
								DB_USER,
								DB_PASS);

				PreparedStatement pstmt =
						conn.prepareStatement(sql)
		) {

			pstmt.setString(
					1,
					contactMessage.getName());

			pstmt.setString(
					2,
					contactMessage.getEmail());

			pstmt.setString(
					3,
					contactMessage.getSubject());

			pstmt.setString(
					4,
					contactMessage.getCategory());

			pstmt.setString(
					5,
					contactMessage.getMessage());

			int result = pstmt.executeUpdate();

			return result == 1;

		} catch (SQLException e) {

			e.printStackTrace();

			return false;
		}
	}
}