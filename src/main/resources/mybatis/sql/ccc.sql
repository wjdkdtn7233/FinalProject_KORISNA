DROP TABLE TB_MEMBER;

-- 테이블 생성
CREATE TABLE TB_MEMBER (
    m_email          VARCHAR2(100 CHAR) NOT NULL,
    m_password       VARCHAR2(200 CHAR) NOT NULL,
    m_name           VARCHAR2(100 CHAR) NOT NULL,
    m_birth          VARCHAR2(100 CHAR) NOT NULL,
    m_phone          VARCHAR2(100 CHAR) NOT NULL,
    m_postcode       NUMBER(5),
    m_roadaddress    NUMBER(5),
    m_detailaddress  DATE,
    m_otheraddress   VARCHAR2(1 CHAR),
    m_userpicture    VARCHAR2(300 BYTE), 
	m_leaveyn        VARCHAR2(300 BYTE) 
);

-- 주 키 설정
ALTER TABLE TB_MEMBER ADD CONSTRAINT TB_MEMBER_PK PRIMARY KEY ( m_email );