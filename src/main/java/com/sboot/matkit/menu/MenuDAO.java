package com.sboot.matkit.menu;

import javax.sql.DataSource;

import org.springframework.jdbc.core.JdbcTemplate;
import org.springframework.stereotype.*;

@Component
public class MenuDAO {
	private MenuDTO menuDTO;
	private JdbcTemplate jdbcTemplate;

	public MenuDAO(DataSource dataSource) {
		this.jdbcTemplate = new JdbcTemplate(dataSource);
	}

	// 메뉴 하나 반환
	public MenuDTO get_menu_item(String mat_name) {
		try {
			this.menuDTO = jdbcTemplate.queryForObject("select * from matkit_menu where mat_name='" + mat_name + "';",
					(rs, rowNum) -> new MenuDTO(rs.getString("mat_image"), rs.getString("mat_name"),
							rs.getInt("mat_price")));
		} catch (Exception ex) {
			ex.printStackTrace();

			return null;
		}

		return menuDTO;
	}
}
