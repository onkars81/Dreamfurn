package com.ex.model;

import java.util.List;

public interface UserDao
{
	public void add(User user);
	public void delete(int user_id);
	public void update(User user);
	public User getUser(int user);
	public List getAllUsers();
}
