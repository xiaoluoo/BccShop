package com.bccshop.service.impl;

import com.bccshop.dao.UserDao;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;
import org.springframework.transaction.annotation.Transactional;

import com.bccshop.po.User;
import com.bccshop.service.UserService;

@Service("userService")
@Transactional
public class UserServiceImpl implements UserService{
	@Autowired
	private UserDao userdao;
	
	//登录验证
	@Override
	public User Login(String userName, String password,String identity) {
		// TODO Auto-generated method stub
		//System.out.println(userName+"\t"+password+"\t"+identity);
		User user = this.userdao.login(userName,password,identity);
		
		//System.out.println(user);
		return user;
	}
	
	//用户注册
	 @Override 
	public int register(User user) { 
		 // TODO Auto-generated method stub
		 return userdao.register(user); 
	 }
	 
	
	//验证用户名
	@Override
	public User findName(String userName) {
		// TODO Auto-generated method stub
		User user = this.userdao.findName(userName);
		
		return user;
	}
}
