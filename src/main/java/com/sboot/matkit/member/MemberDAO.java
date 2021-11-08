package com.sboot.matkit.member;

import java.sql.*;

// DB접속
public class MemberDAO {
	
	String driver = "oracle.jdbc.driver.OracleDriver";
	String url = "jdbc:oracle:thin:@127.0.0.1:1521:xe";
	String user = "hr";
	String password = "hrhr";
	
	Connection con;
	Statement stmt;
	ResultSet rs;
	
	public MemberDAO() {
		try {
			Class.forName(driver);
			con = DriverManager.getConnection(url, user, password);
			
		} catch (ClassNotFoundException e) {
			System.out.println("예외발생" + e.getMessage());
		} catch (SQLException e) {
			System.out.println(" SQL 예외" + e.getMessage());
		}
	}

	// 회원가입용 메서드
	public MemberDTO insertMember(MemberDTO user) {
		
		// 입력받는 정보 넣기 
		String sql = "insert into jsp_member values(jsp_member_no.nextval,'%s','%s','%s','%s','%s','%s','%s')";
		sql = String.format(sql, user.getId(), user.getPasswd(), user.getName(), user.getBirthday(), user.getEmail(), user.getAddress(), user.getHp());
		
		// 디버그코드
		try {
			stmt = con.createStatement();
			int row = stmt.executeUpdate(sql); // sql 구문실행
			
			return user;
			
		} catch(SQLException e){
			System.out.println("SQL구문예외: " + e.getMessage());
		}
		
		finally {
			close();
		}
		
		return user;
	}
	
	//회원 아이디 중복체크용 메서드
	public int select_Id(String id) {
		// 아니디로 회원 가져오기
		String sql = "SELECT ID FROM MEMBER WHERE ID = '%s'";
		sql = String.format(sql, id );
		
		try {

			stmt = con.createStatement();
			rs = stmt.executeQuery(sql);

			rs.next();

			return 0;

		} catch (Exception e) {
			System.out.println(" 예외 : " + e.getMessage());
			
		} finally {
			close();
		}
		return 1;
	}

	// 로그인용 메서드  
	public MemberDTO selectJsp_memberOne(MemberDTO user) {
		String sql = "select * from jsp_member where ID='%s' and passwd='%s'";
		sql = String.format(sql, user.getId(), user.getPasswd());

		try {

			stmt = con.createStatement();
			rs = stmt.executeQuery(sql);

			rs.next();

			MemberDTO dto = new MemberDTO();

			dto.setAddress(rs.getString("address"));
			dto.setBirthday(rs.getString("birthday"));
			dto.setEmail(rs.getString("email"));
			dto.setHp(rs.getString("hp"));
			dto.setId(rs.getString("id"));
			dto.setName(rs.getString("name"));
			dto.setNo(rs.getInt("no"));
			dto.setPasswd(rs.getString("passwd"));

			return dto;

		} catch (Exception e) {
			System.out.println(" 예외 : " + e.getMessage());
			
		} finally {
			close();
		}
		
		return null;
	}

	// 닫는 메서드
	private void close() {
		try {
			if(rs != null)
				rs.close();
			if(stmt != null)
				stmt.close();
			if(con != null)
				con.close();
			
		}catch (Exception e) {
			
		}
		
	}

}
