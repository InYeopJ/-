package com.sboot.matkit.menu;

public class CartDTO {
	private String cart_jpg;
	private String cart_name;
	private int cart_price;
	private int cart_cnt;

	public CartDTO(String cart_jpg, String cart_name, int cart_price, int cart_cnt) {
		super();
		this.cart_jpg = cart_jpg;
		this.cart_name = cart_name;
		this.cart_price = cart_price;
		this.cart_cnt = cart_cnt;
	}

	public String getCart_jpg() {
		return cart_jpg;
	}

	public void setCart_jpg(String cart_jpg) {
		this.cart_jpg = cart_jpg;
	}

	public String getCart_name() {
		return cart_name;
	}

	public void setCart_name(String cart_name) {
		this.cart_name = cart_name;
	}

	public int getCart_price() {
		return cart_price;
	}

	public void setCart_price(int cart_price) {
		this.cart_price = cart_price;
	}

	public int getCart_cnt() {
		return cart_cnt;
	}

	public void setCart_cnt(int cart_cnt) {
		this.cart_cnt = cart_cnt;
	}

	@Override
	public String toString() {
		return "CartDTO [cart_jpg=" + cart_jpg + ", cart_name=" + cart_name + ", cart_price=" + cart_price
				+ ", cart_cnt=" + cart_cnt + "]";
	}

}
