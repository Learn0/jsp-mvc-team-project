package com.sist.vo;
/*
 *  ID       NOT NULL VARCHAR2(20)  
	PWD      NOT NULL VARCHAR2(10)  
	NAME     NOT NULL VARCHAR2(34)  
	SEX               VARCHAR2(10)  
	BIRTHDAY NOT NULL VARCHAR2(20)  
	EMAIL    NOT NULL VARCHAR2(100) 
	POST     NOT NULL VARCHAR2(7)   
	ADDR1    NOT NULL VARCHAR2(300) 
	ADDR2             VARCHAR2(300) 
	TEL      NOT NULL VARCHAR2(20)  
	ADMIN             CHAR(1) 
	hope_region NOT NULL VARCHAR2(50)  
hope_job    NOT NULL VARCHAR2(50) 
 * 
 */
public class MemberVO {
	private String id,pwd,name,sex,birthday,email,post,addr1,addr2,tel,admin,
	               hope_region, hope_job;

	public String getHope_region() {
		return hope_region;
	}

	public void setHope_region(String hope_region) {
		this.hope_region = hope_region;
	}

	public String getHope_job() {
		return hope_job;
	}

	public void setHope_job(String hope_job) {
		this.hope_job = hope_job;
	}

	public String getId() {
		return id;
	}

	public void setId(String id) {
		this.id = id;
	}

	public String getPwd() {
		return pwd;
	}

	public void setPwd(String pwd) {
		this.pwd = pwd;
	}

	public String getName() {
		return name;
	}

	public void setName(String name) {
		this.name = name;
	}

	public String getSex() {
		return sex;
	}

	public void setSex(String sex) {
		this.sex = sex;
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

	public String getPost() {
		return post;
	}

	public void setPost(String post) {
		this.post = post;
	}

	public String getAddr1() {
		return addr1;
	}

	public void setAddr1(String addr1) {
		this.addr1 = addr1;
	}

	public String getAddr2() {
		return addr2;
	}

	public void setAddr2(String addr2) {
		this.addr2 = addr2;
	}

	public String getTel() {
		return tel;
	}

	public void setTel(String tel) {
		this.tel = tel;
	}

	public String getAdmin() {
		return admin;
	}

	public void setAdmin(String admin) {
		this.admin = admin;
	}
	
}
