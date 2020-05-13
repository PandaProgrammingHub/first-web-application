package com.webapp.login;

public class LoginService {
	public boolean isUserVaild(String username, String password) {
		if (username.equals("PandaProgrammingHub") && password.equals("Pass@123")) {
			return true;
		}
		return false;
	}

}
