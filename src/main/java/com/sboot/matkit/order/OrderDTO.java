package com.sboot.matkit.order;

import java.sql.*;

public class OrderDTO {
	private int order_no;
	private String order_jpg;
	private String order_name;
	private String order_email;
	private int order_price;
	private int order_cnt;
	private int order_total;
	private Date order_date;

	// 데이터 받아올 때
	public OrderDTO(int order_no, String order_jpg, String order_name, String order_email, int order_price,
			int order_cnt, int order_total, Date order_date) {
		super();
		this.order_no = order_no;
		this.order_jpg = order_jpg;
		this.order_name = order_name;
		this.order_email = order_email;
		this.order_price = order_price;
		this.order_cnt = order_cnt;
		this.order_total = order_total;
		this.order_date = order_date;
	}

	// 데이터 추가할 때
	public OrderDTO(String order_jpg, String order_name, String order_email, int order_price, int order_cnt,
			int order_total) {
		super();
		this.order_jpg = order_jpg;
		this.order_name = order_name;
		this.order_email = order_email;
		this.order_price = order_price;
		this.order_cnt = order_cnt;
		this.order_total = order_total;
	}

	public int getOrder_no() {
		return order_no;
	}

	public void setOrder_no(int order_no) {
		this.order_no = order_no;
	}

	public String getOrder_jpg() {
		return order_jpg;
	}

	public void setOrder_jpg(String order_jpg) {
		this.order_jpg = order_jpg;
	}

	public String getOrder_name() {
		return order_name;
	}

	public void setOrder_name(String order_name) {
		this.order_name = order_name;
	}

	public String getOrder_email() {
		return order_email;
	}

	public void setOrder_email(String order_email) {
		this.order_email = order_email;
	}

	public int getOrder_price() {
		return order_price;
	}

	public void setOrder_price(int order_price) {
		this.order_price = order_price;
	}

	public int getOrder_cnt() {
		return order_cnt;
	}

	public void setOrder_cnt(int order_cnt) {
		this.order_cnt = order_cnt;
	}

	public int getOrder_total() {
		return order_total;
	}

	public void setOrder_total(int order_total) {
		this.order_total = order_total;
	}

	public Date getOrder_date() {
		return order_date;
	}

	public void setOrder_date(Date order_date) {
		this.order_date = order_date;
	}

	@Override
	public String toString() {
		return "OrderDTO [order_no=" + order_no + ", order_jpg=" + order_jpg + ", order_name=" + order_name
				+ ", order_price=" + order_price + ", order_cnt=" + order_cnt + ", order_total=" + order_total
				+ ", order_date=" + order_date + "]";
	}

}
