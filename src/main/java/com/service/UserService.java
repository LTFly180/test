package com.service;

import com.pojo.User;

public interface UserService {
    public void addUser(User user);
    public User login(User user);
    public void updataUser(String user_username, String user_password1, String user_password2, String user_password3);
}
