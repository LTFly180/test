package com.interceptor;


import jdk.nashorn.internal.ir.RuntimeNode;
import org.springframework.web.servlet.HandlerInterceptor;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;

public class Myinterceptor implements HandlerInterceptor{
    public boolean preHandle(HttpServletRequest httpServletRequest, HttpServletResponse httpServletResponse, Object o) throws Exception {
        HttpSession session = httpServletRequest.getSession();
        String url = httpServletRequest.getRequestURI();
        //如果是登录注册则放行
        if(url.contains("login")||url.contains("regist")){
            return true;
        }

        //如果是前端页面请求静态资源则放行
        if(url.contains("css")||url.contains("favicon")||url.contains("image")||url.contains("js")){
            System.out.println(url);
            System.out.println("已放行!!!!");
            return true;
        }

        if(session.getAttribute("user")==null){
            //没有登陆就跳转到登陆界面
            System.out.println("已拦截该请求!!!");
            System.out.println(url);
            httpServletRequest.getRequestDispatcher("/user/gologin").forward(httpServletRequest, httpServletResponse);
            return false;
        }
        return true;
    }
}
