package com.bccshop.controller;

import javax.servlet.http.HttpSession;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.ResponseBody;
import com.bccshop.po.*;
import com.bccshop.service.UserService;

@Controller
public class LoginController {
    @Autowired
    private UserService userService;


    @RequestMapping(value = "/login")
    public String login() {
        return "login";
    }

    @RequestMapping("/main")
    public String toMain() {
        return "main";
    }

    @RequestMapping("/logout")
    public String logout(HttpSession session) {
        session.invalidate();
        return "redirect:login";
    }


    @RequestMapping(value = "/user/login")
    @ResponseBody
    public AjaxResult LoginUser(User user,
                          HttpSession session) {
        System.out.println(user);

        String userName = user.getUserName();
        String password = user.getPassword();
        String identity = user.getIdentity();

        AjaxResult ajaxResult = new AjaxResult();

        User u = userService.Login(userName, password, identity);

        //验证
        if (u != null) {
            //将用户添加到session
            session.setAttribute("USER_SESSION", u);
            ajaxResult.setSuccess("Ok");
            ajaxResult.setObject(u.getIdentity()+"");
            ajaxResult.setMessage(u.getIdentity()+"您好，登录成功，正在跳转！");
        }else{
        	ajaxResult.setSuccess("No");
        	ajaxResult.setMessage("用户名或密码错误，请重新登录！");
		}
        System.out.println(ajaxResult);
		return ajaxResult;
    }

    @RequestMapping(value = "/user/register")
    @ResponseBody
    public String register(User user, HttpSession session) {
        //System.out.println(user);
        //验证
        String userName = user.getUserName();
        User u = userService.findName(userName);
        if (u == null) {
            int rows = userService.register(user);
            if (rows > 0) {
                return "OK";
            } else {
                return "NO";
            }

        }
        return "Repeat";
    }
}
