package com.kh.finalpj.board2.model.vo;

import java.io.Serializable;

public class Board2 implements Serializable {

	/**
	 * 
	 */
	
	private static final long serialVersionUID = 1L;
	
	private int B2_NO;
	private String B2_yadmNm;
	private String B2_sidocdNm;
	private String B2_sggucdNm;
	private String B2_addr;
	private String B2_telno;
	private String B2_XPos;
	private String B2_YPos;
	
	
	public Board2() {
		
	}


	public Board2(int b2_NO, String b2_yadmNm, String b2_sidocdNm, String b2_sggucdNm, String b2_addr, String b2_telno,
			String b2_XPos, String b2_YPos) {
		super();
		B2_NO = b2_NO;
		B2_yadmNm = b2_yadmNm;
		B2_sidocdNm = b2_sidocdNm;
		B2_sggucdNm = b2_sggucdNm;
		B2_addr = b2_addr;
		B2_telno = b2_telno;
		B2_XPos = b2_XPos;
		B2_YPos = b2_YPos;
	}


	public int getB2_NO() {
		return B2_NO;
	}


	public void setB2_NO(int b2_NO) {
		B2_NO = b2_NO;
	}


	public String getB2_yadmNm() {
		return B2_yadmNm;
	}


	public void setB2_yadmNm(String b2_yadmNm) {
		B2_yadmNm = b2_yadmNm;
	}


	public String getB2_sidocdNm() {
		return B2_sidocdNm;
	}


	public void setB2_sidocdNm(String b2_sidocdNm) {
		B2_sidocdNm = b2_sidocdNm;
	}


	public String getB2_sggucdNm() {
		return B2_sggucdNm;
	}


	public void setB2_sggucdNm(String b2_sggucdNm) {
		B2_sggucdNm = b2_sggucdNm;
	}


	public String getB2_addr() {
		return B2_addr;
	}


	public void setB2_addr(String b2_addr) {
		B2_addr = b2_addr;
	}


	public String getB2_telno() {
		return B2_telno;
	}


	public void setB2_telno(String b2_telno) {
		B2_telno = b2_telno;
	}


	public String getB2_XPos() {
		return B2_XPos;
	}


	public void setB2_XPos(String b2_XPos) {
		B2_XPos = b2_XPos;
	}


	public String getB2_YPos() {
		return B2_YPos;
	}


	public void setB2_YPos(String b2_YPos) {
		B2_YPos = b2_YPos;
	}


	public static long getSerialversionuid() {
		return serialVersionUID;
	}


	@Override
	public String toString() {
		return "Board2 [B2_NO=" + B2_NO + ", B2_yadmNm=" + B2_yadmNm + ", B2_sidocdNm=" + B2_sidocdNm + ", B2_sggucdNm="
				+ B2_sggucdNm + ", B2_addr=" + B2_addr + ", B2_telno=" + B2_telno + ", B2_XPos=" + B2_XPos
				+ ", B2_YPos=" + B2_YPos + "]";
	}

	
	

}