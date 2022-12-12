package com.dao;

import com.model.Admin;

public interface AdminDAO {

	boolean register(Admin admin);
	boolean checkAdmin(Admin admin);
}
