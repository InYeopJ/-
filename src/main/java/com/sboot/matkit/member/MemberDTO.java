package com.sboot.matkit.member;

public class MemberDTO {

	private int no;
	private String id;
	private String passwd;
	private String name;
	private String birthday;
	private String email;
	private String address;
	private String hp;
	
	
	
	public MemberDTO(String id, String passwd) {
		super();
		this.id = id;
		this.passwd = passwd;
	}

	public MemberDTO(int no, String id, String passwd, String name, String birthday, String email, String address, String hp) {
		super();
		this.no = no;
		this.id = id;
		this.passwd = passwd;
		this.name = name;
		this.birthday = birthday;
		this.email = email;
		this.address = address;
		this.hp = hp;
	}

	public int getNo() {
		return no;
	}

	public void setNo(int no) {
		this.no = no;
	}

	public String getId() {
		return id;
	}

	public void setId(String id) {
		this.id = id;
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

	public MemberDTO() {}
	

}
