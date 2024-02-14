package com.smhrd3.database;

import java.io.IOException;
import java.io.InputStream;

import org.apache.ibatis.io.Resources;
import org.apache.ibatis.session.SqlSessionFactory;
import org.apache.ibatis.session.SqlSessionFactoryBuilder;

public class SqlSessionManager {
	
	 public static SqlSessionFactory sqlSessionFactory;
	
	static {
		String resource = "com/smhrd3/database/mybatis-config.xml";
		InputStream inputStream;
		try {
			inputStream = Resources.getResourceAsStream(resource);
			sqlSessionFactory = new SqlSessionFactoryBuilder().build(inputStream);
		} catch (IOException e) {
			e.printStackTrace();
		}
	}
	
	// sqlSessionFactory라는 객체를 리턴해주는 메소드
	// sqlSessionFactory == Connection pool
	// sqlSession == Connection
	
	public static SqlSessionFactory getFactory() {
		return sqlSessionFactory;
	}
	
	
}
