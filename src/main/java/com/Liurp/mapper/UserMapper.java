package com.Liurp.mapper;

import com.Liurp.entity.User;
import org.apache.ibatis.annotations.Param;

public interface UserMapper {
    public String selectByName(@Param("username") String username);

    public void register(@Param("username") String username,@Param("password") String password);
}
