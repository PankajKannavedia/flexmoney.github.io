package com.dao;

import com.model.User;

public interface UserDAO {

	boolean register(User user);
	boolean checkUser(User user);
}
