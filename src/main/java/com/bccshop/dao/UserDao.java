package com.bccshop.dao;

import java.util.List;

import org.apache.ibatis.annotations.Param;

import com.bccshop.po.User;

public interface UserDao {

    //登录验证
    public User login(@Param("userName") String userName,
                      @Param("password") String password, @Param("identity") String identity);
    
	public int register(User user); 
	
	//用户名查找
	public User findName(@Param("userName") String userName);
}
