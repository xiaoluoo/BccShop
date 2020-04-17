package com.bccshop.service;

import com.bccshop.po.User;

public interface UserService {
	
public User Login(String userName, String password, String identity);

public int register(User user);

public User findName(String userName);
}
