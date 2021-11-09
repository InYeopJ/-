package com.sboot.matkit.menu;

public class MenuDTO {

	private String menu_jpg;
	private String menu_name;
	private int menu_price;

	public MenuDTO(String menu_jpg, String menu_name, int menu_price) {
		super();
		this.menu_jpg = menu_jpg;
		this.menu_name = menu_name;
		this.menu_price = menu_price;
	}

	public String getMenu_jpg() {
		return menu_jpg;
	}

	public void setMenu_jpg(String menu_jpg) {
		this.menu_jpg = menu_jpg;
	}

	public String getMenu_name() {
		return menu_name;
	}

	public void setMenu_name(String menu_name) {
		this.menu_name = menu_name;
	}

	public int getMenu_price() {
		return menu_price;
	}

	public void setMenu_price(int menu_price) {
		this.menu_price = menu_price;
	}

	@Override
	public String toString() {
		return "MenuDTO [menu_jpg=" + menu_jpg + ", menu_name=" + menu_name + ", menu_price=" + menu_price + "]";
	}

}
