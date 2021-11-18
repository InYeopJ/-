package com.sboot.matkit.member;

public class MemberDTO {

	//private String id;
	private String passwd;
	private String name;
	private String birthday;
	private String email;
	private String address;
	private String hp;

	public MemberDTO(String email, String passwd) {
		super();
		this.email = email;
		this.passwd = passwd;
	}

	public MemberDTO(String email, String passwd, String name, String birthday, String address,
			String hp) {
		super();
		this.passwd = passwd;
		this.name = name;
		this.birthday = birthday;
		this.email = email;
		this.address = address;
		this.hp = hp;
	}

	public String getPasswd() {
		return passwd;
	}

	public void setPasswd(String passwd) {
		this.passwd = passwd;
	}

	public String getName() {
		return name;
	}

	public void setName(String name) {
		this.name = name;
	}

	public String getBirthday() {
		return birthday;
	}

	public void setBirthday(String birthday) {
		this.birthday = birthday;
	}

	public String getEmail() {
		return email;
	}

	public void setEmail(String email) {
		this.email = email;
	}

	public String getAddress() {
		return address;
	}

	public void setAddress(String address) {
		this.address = address;
	}

	public String getHp() {
		return hp;
	}

	public void setHp(String hp) {
		this.hp = hp;
	}

}
