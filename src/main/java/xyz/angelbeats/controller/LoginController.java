package xyz.angelbeats.controller;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestBody;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.ResponseBody;
import xyz.angelbeats.pojo.Blogger;
import xyz.angelbeats.service.BloggerService;

import javax.servlet.http.HttpSession;

@Controller
public class LoginController {

    @Autowired
    private BloggerService bloggerService;

    // 登录页面
    @RequestMapping("/bloggerLogin")
    public String login() {
        return "../back/login";
    }

    // 验证登录
    @RequestMapping("/checkLogin")
    @ResponseBody
    public boolean login(@RequestBody Blogger blogger, HttpSession httpSession) {
        boolean checked = bloggerService.loginCheck(blogger.getUsername(), blogger.getPassword());
        if (checked){
            httpSession.setAttribute("username",blogger.getUsername());
            return true;
        }
        return false;
    }

    @RequestMapping("/loginOut")
    public String loginOut(HttpSession httpSession) {
        httpSession.removeAttribute("username");
        return "../back/login";
    }

}
