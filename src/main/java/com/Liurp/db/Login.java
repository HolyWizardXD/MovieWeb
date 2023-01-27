package com.Liurp.db;

import com.Liurp.mapper.UserMapper;
import org.apache.ibatis.session.SqlSession;
import org.apache.ibatis.session.SqlSessionFactory;

import java.io.IOException;

public class Login {

    public boolean login(String username,String password) throws IOException {
        SqlSessionFactory sqlSessionFactory = SqlSessionFactoryAdd.getSqlSessionFactory();

        SqlSession sqlSession = sqlSessionFactory.openSession();

        UserMapper userMapper = sqlSession.getMapper(UserMapper.class);

        String dbPassword = userMapper.selectByName(username);

        sqlSession.close();

        return password.equals(dbPassword);

    }
}
