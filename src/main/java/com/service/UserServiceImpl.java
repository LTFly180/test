package com.service;

import com.dao.UserMapper;

import com.pojo.User;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import javax.servlet.http.HttpSession;


public class UserServiceImpl implements UserService {


    private UserMapper userMapper;

    public void setUserMapper(UserMapper userMapper) {
        this.userMapper = userMapper;
    }

    public void addUser(User user) {
        User exituser = userMapper.getUserByUsername(user.getUser_username());
        if (user.getUser_username().trim() == "") throw new RuntimeException("账号不可为空!!!");
        if (user.getUser_name().trim() == "") throw new RuntimeException("昵称不可为空!!!");
        if (user.getUser_password().trim() == "") throw new RuntimeException("密码不可为空!!!");
        if (exituser != null) {
            throw new RuntimeException("账号已存在");
        } else {
            userMapper.addUser(user);
        }
    }

    public User login(User user) {
        User exituser = userMapper.getUserByUsername(user.getUser_username());
        if (user.getUser_username().trim() == "") throw new RuntimeException("账号不可为空!!!");
        if (user.getUser_password().trim() == "") throw new RuntimeException("密码不可为空!!!");
        if (exituser == null) {
            throw new RuntimeException("账号不存在!!!");
        }
        if (exituser.getUser_password().equals(user.getUser_password())) {
            return exituser;
        } else {
            throw new RuntimeException("密码错误!!!");
        }
    }

    public void updataUser(String user_username, String user_password1, String user_password2, String user_password3) {
        User user = userMapper.getUserByUsername(user_username);
        if (!user.getUser_password().equals(user_password1)) {
            throw new RuntimeException("旧密码输入不正确！");
        }
        if (!user_password2.equals(user_password3)) {
            throw new RuntimeException("两次输入的密码不同！");
        }
        user.setUser_password(user_password2);
        System.out.println(user);
        userMapper.updataUser(user);
    }
}