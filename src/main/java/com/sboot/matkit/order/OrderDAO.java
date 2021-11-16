package com.sboot.matkit.order;

import javax.sql.DataSource;

import org.springframework.jdbc.core.JdbcTemplate;
import org.springframework.stereotype.*;

import java.util.*;

@Component
public class OrderDAO {
	private OrderDTO orderDTO;
	private JdbcTemplate jdbcTemplate;

	public OrderDAO(DataSource dataSource) {
		this.jdbcTemplate = new JdbcTemplate(dataSource);
	}

	// 주문내역 추가
	public void insert_order(OrderDTO order) {
		jdbcTemplate.update(
				"insert into matkit_order(order_jpg, order_name, order_email, order_price, order_cnt, order_total, order_date) values('"
						+ order.getOrder_jpg() + "', '" + order.getOrder_name() + "', '" + order.getOrder_email()
						+ "', " + order.getOrder_price() + ", " + order.getOrder_cnt() + ", " + order.getOrder_total()
						+ ", now());");
	}

	// 주문내역 목록
	public List<OrderDTO> get_order_list(String email) {
		List<OrderDTO> result_list = jdbcTemplate.query( // order_no 역순 정렬
				// 최신 아이템 가져오는 느낌으로다가
				// 예아
				"select * from matkit_order where order_email = '" + email + "' order by order_no desc;",
				(rs, rowNum) -> {
					OrderDTO orderDTO = new OrderDTO(rs.getInt("order_no"), rs.getString("order_jpg"),
							rs.getString("order_name"), rs.getString("order_email"), rs.getInt("order_price"),
							rs.getInt("order_cnt"), rs.getInt("order_total"), rs.getDate("order_date"));
					return orderDTO;
				});

		return result_list;
	}
}
