package com.controller;


import com.pojo.User;
import com.service.UserService;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.stereotype.Service;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.RequestMapping;

import javax.servlet.http.HttpSession;

@Controller
@RequestMapping("/user")
public class UserController {
    private UserService userService;
    @Autowired
    public void setUserService(UserService userService) {
        this.userService = userService;
    }

    @RequestMapping("/regist")
    String addUser(Model model, User user){
        try{
            userService.addUser(user);
        }catch (Exception e){

            model.addAttribute("error_msg",e.getMessage());
            return "regist";
        }
        return "login";
    }


    @RequestMapping("/login")
    String login(User user,HttpSession session,Model model){
        User exituser;
        try{
            exituser = userService.login(user);
            session.setAttribute("user",exituser);
        }catch (Exception e){
            model.addAttribute("error_msg",e.getMessage());
            return "login";
        }
        return "index";
    }

    @RequestMapping("/modify")
    String modify(HttpSession session,String user_password1,String user_password2,String user_password3,Model model){
        User user = (User) session.getAttribute("user");
        try {
            userService.updataUser(user.getUser_username(),user_password1,user_password2,user_password3);
            session.removeAttribute("user");
        }catch (Exception e){
            model.addAttribute("error_msg",e.getMessage());
            return "modify";
        }
        return "login";
    }

    @RequestMapping("/gologin-regist")
    String goregis(){
        return "login-regist";
    }

    @RequestMapping("/logout")
    String logout(User user, HttpSession session){
        session.removeAttribute("user");
        return "login";
    }

    @RequestMapping("/gomodify")
    String gomodify(User user){
        return "modify";
    }

    @RequestMapping("/gologin")
    String gologin(){
        return "login";
    }

    @RequestMapping("/goregist")
    String goregist(){
        return "regist";
    }

}
