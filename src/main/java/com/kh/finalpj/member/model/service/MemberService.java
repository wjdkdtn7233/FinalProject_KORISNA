package com.kh.finalpj.member.model.service;

import java.util.Map;


public interface MemberService {
	
	public int idCheck(String f_email);

	public int insertMember(Map<String, Object> commandMap);
	
	public Map<String, Object> selectLoginMember(Map<String, Object> commanMap);
	
	public int updateLeaveMember(Map<String, Object>  commandMap);
	
	public int selectFindEmailInfoCheck(Map<String,Object> commandMap);
	
	public String selectFindUserEmail(Map<String,Object> commandMap);
	
	public int selectFindUserPasswordInfoCheck(Map<String,Object> commandMap);
	
	public String selectFindUserPassword(Map<String,Object> commandMap);
	
	public int updateUserInfo(Map<String,Object> commandMap);
	
	public Map<String, Object> selectKaKaoLoginMember(Map<String, Object> commanMap);
	
	public int insertQnA(Map<String, Object> commanMap);
}
