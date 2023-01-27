package com.Liurp.db;

import com.Liurp.mapper.UserMapper;

import org.apache.ibatis.session.SqlSession;
import org.apache.ibatis.session.SqlSessionFactory;

import java.io.IOException;

public class Register {
    public boolean register(String username,String password) throws IOException{
        SqlSessionFactory sqlSessionFactory = SqlSessionFactoryAdd.getSqlSessionFactory();

        SqlSession sqlSession = sqlSessionFactory.openSession();

        UserMapper userMapper = sqlSession.getMapper(UserMapper.class);

        String getPassword = userMapper.selectByName(username);
        if(getPassword != null){
            sqlSession.close();
            return false;
        }
        if(username != "" && password != "" && username != null && password != null){
            userMapper.register(username,password);
            sqlSession.commit();
            sqlSession.close();
            return true;
        }else {
            sqlSession.close();
            return false;
        }

    }
}
