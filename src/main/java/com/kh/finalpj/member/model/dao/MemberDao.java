package com.kh.finalpj.member.model.dao;


import java.util.HashMap;
import java.util.Map;

import org.apache.commons.collections.map.HashedMap;
import org.mybatis.spring.SqlSessionTemplate;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Repository;

@Repository
public class MemberDao {
	
	@Autowired
	SqlSessionTemplate sqlSession;

	public int idCheck(String f_email) {
		return sqlSession.selectOne("Member.idCheck",f_email);
	}
	
	public int insertMember(Map<String, Object> commandMap) {
		return sqlSession.insert("Member.insertMember",commandMap);
	}

	public Map<String, Object> selectLoginMember(Map<String, Object> commanMap) {
		return sqlSession.selectOne("Member.selectLoginMember",commanMap);
	}
	
	public int updateLeaveMember(Map<String, Object>  commandMap) {
		String f_email = (String) commandMap.get("F_EMAIL");
		return sqlSession.update("Member.updateLeaveMember",f_email);
	}
	
	public int selectFindEmailInfoCheck(Map<String, Object> commandMap) {
		return sqlSession.selectOne("Member.selectFindEmailInfo",commandMap );
	}
	
	public String selectFindUserEmail(Map<String,Object> commandMap) {
		return sqlSession.selectOne("Member.selectFindUserEmail",commandMap);
	}
	
	public int selectFindUserPasswordInfoCheck(Map<String, Object> commandMap) {
		return sqlSession.selectOne("Member.selectFindUserPasswordInfo",commandMap);
	}
	
	public String selectFindUserPassword(Map<String,Object> commandMap) {
		return sqlSession.selectOne("Member.selectFindUserPassword",commandMap);
	}
	
	public int updateUserInfo(Map<String, Object> commandMap) {
		return sqlSession.update("Member.updateUserInfo",commandMap);
	}
	
	public Map<String, Object> selectKaKaoLoginMember(Map<String, Object> commanMap) {
		return sqlSession.selectOne("Member.selectKaKaoLoginMember",commanMap);
	}
	
	public int insertQnA(Map<String, Object> commanMap) {
		return sqlSession.insert("Member.insertQnA",commanMap);
	}

	
}
