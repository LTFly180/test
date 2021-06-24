package com.dao;

import com.pojo.User;
import org.apache.ibatis.annotations.Param;

public interface UserMapper {
    public void addUser(User user);
    public User getUserByUsername(@Param("user_username") String username);
    public void updataUser(User user);
    public void bindStu(@Param("user_username") String user_username,@Param("stu_id") String stu_id);
}
