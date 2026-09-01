package com.example.demo.dao;

import java.sql.Connection;
import java.sql.DriverManager;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.sql.SQLException;

import org.springframework.stereotype.Repository;

@Repository
public class AdminDAO {
	
	private static final String JDBC_URL =
	        System.getenv("DB_URL");

	private static final String DB_USER =
	        System.getenv("DB_USER");

	private static final String DB_PASS =
	        System.getenv("DB_PASSWORD");
	
	
//　↓ローカル要
//	private static final String JDBC_URL =
//			"jdbc:postgresql://localhost:5432/portfolio";
//
//	private static final String DB_USER =
//			"postgres";
//
//	private static final String DB_PASS =
//			"psql";


	public boolean login(
			String username,
			String password) {

		String sql =
				"SELECT id "
				+ "FROM admin_users "
				+ "WHERE username = ? "
				+ "AND password = ?";

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
					username);

			pstmt.setString(
					2,
					password);

			try (
					ResultSet rs =
							pstmt.executeQuery()
			) {

				return rs.next();
			}

		} catch (SQLException e) {

			e.printStackTrace();

			return false;
		}
	}
}