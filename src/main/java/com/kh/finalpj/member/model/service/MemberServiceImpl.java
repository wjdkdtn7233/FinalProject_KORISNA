package com.kh.finalpj.member.model.service;

import java.util.Map;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import com.kh.finalpj.member.model.dao.MemberDao;

@Service
public class MemberServiceImpl implements MemberService {

	@Autowired
	MemberDao memberDao;

	@Override
	public int idCheck(String f_email) {
		return memberDao.idCheck(f_email);
	}

	@Override
	public int insertMember(Map<String, Object> commandMap) {
		return memberDao.insertMember(commandMap);
	}

	@Override
	public Map<String, Object> selectLoginMember(Map<String, Object> commanMap) {
		return memberDao.selectLoginMember(commanMap);
	}

	@Override
	public int updateLeaveMember(Map<String, Object> commandMap) {
		return memberDao.updateLeaveMember(commandMap);
	}

	@Override
	public int selectFindEmailInfoCheck(Map<String,Object> commandMap) {
		return memberDao.selectFindEmailInfoCheck( commandMap);
	}

	@Override
	public String selectFindUserEmail(Map<String,Object> commandMap) {
		return memberDao.selectFindUserEmail( commandMap);
	}

	@Override
	public int selectFindUserPasswordInfoCheck(Map<String, Object> commandMap) {
		return memberDao.selectFindUserPasswordInfoCheck(commandMap);
	}

	@Override
	public String selectFindUserPassword(Map<String,Object> commandMap) {
		return memberDao.selectFindUserPassword( commandMap);
	}

	@Override
	public int updateUserInfo(Map<String, Object> commandMap) {
		return memberDao.updateUserInfo(commandMap);
	}

	@Override
	public Map<String, Object> selectKaKaoLoginMember(Map<String, Object> commanMap) {
		return memberDao.selectKaKaoLoginMember(commanMap);
	}

	@Override
	public int insertQnA(Map<String, Object> commanMap) {
		return memberDao.insertQnA(commanMap);
	}

	
	
}
