package com.java.game;

public interface LoginDAO {
	String addUser(Users user);
	String authenticate(Users user);
}
