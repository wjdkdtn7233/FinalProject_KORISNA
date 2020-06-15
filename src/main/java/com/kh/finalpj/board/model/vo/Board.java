package com.kh.finalpj.board.model.vo;

import java.io.Serializable;
import java.util.Date;

public class Board implements Serializable {

//	CREATE TABLE BOARD (
//			BOARD_NO NUMBER(9) PRIMARY KEY NOT NULL
//			,BOARD_CONTENT NVARCHAR2(2000) NOT NULL
//			,BOARD_countryEnName VARCHAR2(50) NOT NULL
//			,BOARD_countryName NVARCHAR2(2000) NOT NULL
//			,BOARD_id VARCHAR2(50) NOT NULL
//			,BOARD_title NVARCHAR2(2000) NOT NULL
//			,BOARD_wrtDt DATE NOT NULL
//			);

	private static final long serialVersionUID = -3026918686140268230L;

	private int board_no;
	private String board_content;
	private String board_contryEnName;
	private String board_countryName;
	private String board_id;
	private String board_title;
	private String board_wrtDt;

	public Board() {

	}

	public Board(int board_no, String board_content, String board_contryEnName, String board_countryName,
			String board_id, String board_title, String board_wrtDt) {
		super();
		this.board_no = board_no;
		this.board_content = board_content;
		this.board_contryEnName = board_contryEnName;
		this.board_countryName = board_countryName;
		this.board_id = board_id;
		this.board_title = board_title;
		this.board_wrtDt = board_wrtDt;
	}

	public int getBoard_no() {
		return board_no;
	}

	public void setBoard_no(int board_no) {
		this.board_no = board_no;
	}

	public String getBoard_content() {
		return board_content;
	}

	public void setBoard_content(String board_content) {
		this.board_content = board_content;
	}

	public String getBoard_contryEnName() {
		return board_contryEnName;
	}

	public void setBoard_contryEnName(String board_contryEnName) {
		this.board_contryEnName = board_contryEnName;
	}

	public String getBoard_countryName() {
		return board_countryName;
	}

	public void setBoard_countryName(String board_countryName) {
		this.board_countryName = board_countryName;
	}

	public String getBoard_id() {
		return board_id;
	}

	public void setBoard_id(String board_id) {
		this.board_id = board_id;
	}

	public String getBoard_title() {
		return board_title;
	}

	public void setBoard_title(String board_title) {
		this.board_title = board_title;
	}

	public String getBoard_wrtDt() {
		return board_wrtDt;
	}

	public void setBoard_wrtDt(String board_wrtDt) {
		this.board_wrtDt = board_wrtDt;
	}

	@Override
	public String toString() {
		return "Board [board_no=" + board_no + ", board_content=" + board_content + ", board_contryEnName="
				+ board_contryEnName + ", board_countryName=" + board_countryName + ", board_id=" + board_id
				+ ", board_title=" + board_title + ", board_wrtDt=" + board_wrtDt + "]";
	}

	
}
