package com.kh.finalpj.member.model.vo;

import java.io.Serializable;

public class Member implements Serializable {
	
	/**
	 * 
	 */
	private static final long serialVersionUID = 5195507080274619205L;
	
	
	private String f_email;
	private String f_password;
	private String f_name;
	private int f_birth;
	private int f_phone;
	private String f_postCode;
	private String f_roadAddress;
	private String f_jibernAddress;
	private String f_detailAddress;
	private String f_otherAddress;
	private String f_userPicture;
	
	public Member() {
		// TODO Auto-generated constructor stub
	}

	public Member(String f_email, String f_password, String f_name, int f_birth, int f_phone, String f_postCode,
			String f_roadAddress, String f_jibernAddress, String f_detailAddress, String f_otherAddress,
			String f_userPicture) {
		super();
		this.f_email = f_email;
		this.f_password = f_password;
		this.f_name = f_name;
		this.f_birth = f_birth;
		this.f_phone = f_phone;
		this.f_postCode = f_postCode;
		this.f_roadAddress = f_roadAddress;
		this.f_jibernAddress = f_jibernAddress;
		this.f_detailAddress = f_detailAddress;
		this.f_otherAddress = f_otherAddress;
		this.f_userPicture = f_userPicture;
	}

	public String getF_email() {
		return f_email;
	}

	public void setF_email(String f_email) {
		this.f_email = f_email;
	}

	public String getF_password() {
		return f_password;
	}

	public void setF_password(String f_password) {
		this.f_password = f_password;
	}

	public String getF_name() {
		return f_name;
	}

	public void setF_name(String f_name) {
		this.f_name = f_name;
	}

	public int getF_birth() {
		return f_birth;
	}

	public void setF_birth(int f_birth) {
		this.f_birth = f_birth;
	}

	public int getF_phone() {
		return f_phone;
	}

	public void setF_phone(int f_phone) {
		this.f_phone = f_phone;
	}

	public String getF_postCode() {
		return f_postCode;
	}

	public void setF_postCode(String f_postCode) {
		this.f_postCode = f_postCode;
	}

	public String getF_roadAddress() {
		return f_roadAddress;
	}

	public void setF_roadAddress(String f_roadAddress) {
		this.f_roadAddress = f_roadAddress;
	}

	public String getF_jibernAddress() {
		return f_jibernAddress;
	}

	public void setF_jibernAddress(String f_jibernAddress) {
		this.f_jibernAddress = f_jibernAddress;
	}

	public String getF_detailAddress() {
		return f_detailAddress;
	}

	public void setF_detailAddress(String f_detailAddress) {
		this.f_detailAddress = f_detailAddress;
	}

	public String getF_otherAddress() {
		return f_otherAddress;
	}

	public void setF_otherAddress(String f_otherAddress) {
		this.f_otherAddress = f_otherAddress;
	}

	public String getF_userPicture() {
		return f_userPicture;
	}

	public void setF_userPicture(String f_userPicture) {
		this.f_userPicture = f_userPicture;
	}

	@Override
	public String toString() {
		return "Member [f_email=" + f_email + ", f_password=" + f_password + ", f_name=" + f_name + ", f_birth="
				+ f_birth + ", f_phone=" + f_phone + ", f_postCode=" + f_postCode + ", f_roadAddress=" + f_roadAddress
				+ ", f_jibernAddress=" + f_jibernAddress + ", f_detailAddress=" + f_detailAddress + ", f_otherAddress="
				+ f_otherAddress + ", f_userPicture=" + f_userPicture + "]";
	}
	
	
	

}
