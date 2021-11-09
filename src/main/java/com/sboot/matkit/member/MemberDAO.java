package com.sboot.matkit.member;

import javax.sql.DataSource;

import org.springframework.jdbc.core.JdbcTemplate;
import org.springframework.stereotype.Component;

@Component
public class MemberDAO {
	private JdbcTemplate jdbcTemplate;

	public MemberDAO(DataSource dataSource) {
		this.jdbcTemplate = new JdbcTemplate(dataSource);
	}

	// 회원가입용 메서드
	public MemberDTO insertMember(MemberDTO user) {
		jdbcTemplate.update("insert into jsp_member values('" + user.getId() + "', '" + user.getPasswd() + "', '"
				+ user.getName() + "', '" + user.getBirthday() + "', '" + user.getEmail() + "', '" + user.getAddress()
				+ "', '" + user.getHp() + "')");
		
		return user;
	}

	// 회원 아이디 중복체크용 메서드
	public MemberDTO select_Id(String id) {
		try {
			return jdbcTemplate.queryForObject("select * from jsp_member where id='" + id + "';",
					(rs, rowNum) -> new MemberDTO(rs.getString("id"), rs.getString("passwd"), rs.getString("name"),
							rs.getString("birthday"), rs.getString("email"), rs.getString("address"),
							rs.getString("hp")));
		} catch (Exception ex) {
			ex.printStackTrace();

			return null;
		}
	}

	// 로그인용 메서드
	public MemberDTO selectJsp_memberOne(MemberDTO user) {
		try {
			return jdbcTemplate.queryForObject(
					"select * from jsp_member where id='" + user.getId() + "' and passwd = '" + user.getPasswd() + "';",
					(rs, rowNum) -> new MemberDTO(rs.getString("id"), rs.getString("passwd"), rs.getString("name"),
							rs.getString("birthday"), rs.getString("email"), rs.getString("address"),
							rs.getString("hp")));
		} catch (Exception ex) {
			ex.printStackTrace();

			return null;
		}
	}

}
