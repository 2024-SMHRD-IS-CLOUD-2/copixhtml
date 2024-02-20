package com.smhrd3.model;

import java.util.List;

import org.apache.ibatis.session.SqlSession;
import org.apache.ibatis.session.SqlSessionFactory;

import com.smhrd3.database.SqlSessionManager;


public class DAO {
	
	SqlSessionFactory factory = SqlSessionManager.getFactory();

	// 로그인 메소드
	public MemberDTO signIn(MemberDTO dto) {
		SqlSession sqlSession = factory.openSession();
		MemberDTO result = sqlSession.selectOne("signin",dto);
		sqlSession.close();
		return result;
	}
	// 회원가입 메소드

	public int signUp(MemberDTO dto) {
		SqlSession sqlSession =factory.openSession(true);
		int row = sqlSession.insert("signup",dto);
		sqlSession.close();
		return row;
		
	}
	// 회원정보 수정 메소드
	public int update(MemberDTO dto) {
		SqlSession sqlSession = factory.openSession(true);
		int row = sqlSession.update("update", dto);
		sqlSession.close();
		return row;
	}
	// 프로필 사진 변경 메소드
	public int profileUpdate(MemberDTO dto) {
		SqlSession sqlSession = factory.openSession(true);
		int row =sqlSession.update("updateProfile", dto);
		sqlSession.close();
		return row;
	}

	
	

}
