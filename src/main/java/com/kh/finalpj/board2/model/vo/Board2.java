package com.kh.finalpj.board2.model.vo;

import java.io.Serializable;

public class Board2 implements Serializable {

	/**
	 * 
	 */
	
	private static final long serialVersionUID = 1L;

	private String yadmNm;
	private String sidocdNm;
	private String sggucdNm;
	private String addr;
	private String telno;
	private String XPos;
	private String YPos;
	
	public Board2() {
		
	}

	public Board2(String yadmNm, String sidocdNm, String sggucdNm, String addr, String telno, String xPos,
			String yPos) {
		super();
		this.yadmNm = yadmNm;
		this.sidocdNm = sidocdNm;
		this.sggucdNm = sggucdNm;
		this.addr = addr;
		this.telno = telno;
		XPos = xPos;
		YPos = yPos;
	}

	public String getYadmNm() {
		return yadmNm;
	}

	public void setYadmNm(String yadmNm) {
		this.yadmNm = yadmNm;
	}

	public String getSidocdNm() {
		return sidocdNm;
	}

	public void setSidocdNm(String sidocdNm) {
		this.sidocdNm = sidocdNm;
	}

	public String getSggucdNm() {
		return sggucdNm;
	}

	public void setSggucdNm(String sggucdNm) {
		this.sggucdNm = sggucdNm;
	}

	public String getAddr() {
		return addr;
	}

	public void setAddr(String addr) {
		this.addr = addr;
	}

	public String getTelno() {
		return telno;
	}

	public void setTelno(String telno) {
		this.telno = telno;
	}

	public String getXPos() {
		return XPos;
	}

	public void setXPos(String xPos) {
		XPos = xPos;
	}

	public String getYPos() {
		return YPos;
	}

	public void setYPos(String yPos) {
		YPos = yPos;
	}

	public static long getSerialversionuid() {
		return serialVersionUID;
	}

	@Override
	public String toString() {
		return "Board2 [yadmNm=" + yadmNm + ", sidocdNm=" + sidocdNm + ", sggucdNm=" + sggucdNm + ", addr=" + addr
				+ ", telno=" + telno + ", XPos=" + XPos + ", YPos=" + YPos + "]";
	}

	

	
	
	
	
}
