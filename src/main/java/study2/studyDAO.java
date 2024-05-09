package study2;

import java.sql.Connection;
import java.sql.DriverManager;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.sql.SQLException;

public class studyDAO {
	private Connection conn = null;
	private PreparedStatement pstmt = null;
	private ResultSet rs = null;
	
	String sql = "";
	
	public studyDAO() {
		String driver = "com.mysql.jdbc.Driver";
		String url = "jdbc:mysql://localhost:3306/javaclass";
		String user = "root";
		String password = "1234";
		
		try {
			Class.forName(driver);
			conn = DriverManager.getConnection(url, user, password);
		} catch (ClassNotFoundException e) {
			System.out.println("드라이브 검색 실패 : " + e.getMessage());
		} catch (SQLException e) {
			System.out.println("DB 연동 실패 : " + e.getMessage());
		}
	}
	
	
	public void connClose() {
		try {
			if(conn != null) {
				conn.close();
			}
		} catch (Exception e) {
		}
	}
	
	public void pstmtClose() {
		try {
			if(pstmt != null) {
				pstmt.close();
			}
		} catch (Exception e) {
		}
	}
	
	public void rsClose() {
		try {
			if(rs != null) {
				rs.close();
			}
			pstmtClose();
		} catch (Exception e) {
		}
	}


	// hoewon 테이블에서 아이디 검색 후 성명 반환
	public String getIdSearch(String mid) {
		String name = "";
		try {
			sql = "select name from hoewon where mid = ?";
			pstmt = conn.prepareStatement(sql);
			pstmt.setString(1, mid);
			rs = pstmt.executeQuery();
			if(rs.next()) {
				name = rs.getString("name");
			}
		} catch (SQLException e) {
			System.out.println("SQL 오류 : " + e.getMessage());
		} finally {
			rsClose();
		}
		return name;
	}
}