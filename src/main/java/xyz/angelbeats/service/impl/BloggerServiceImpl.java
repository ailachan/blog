package xyz.angelbeats.service.impl;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;
import xyz.angelbeats.dao.BloggerDao;
import xyz.angelbeats.pojo.Blogger;
import xyz.angelbeats.service.BloggerService;

@Service
public class BloggerServiceImpl implements BloggerService {

    @Autowired
    private BloggerDao bloggerDao;

    @Override
    public boolean loginCheck(String username, String password) {
        Blogger blogger = bloggerDao.getLoginInfo();
        System.out.println("service: " + blogger.getUsername() + "  " + blogger.getPassword());
        if (username.equals(blogger.getUsername()) && password.equals(blogger.getPassword())) {
            return true;
        } else {
            return false;
        }
    }

    @Override
    public String getBloggerEmail() {
        return bloggerDao.getBloggerEmail();
    }

    @Override
    public Blogger getLoginInfo() {
        return bloggerDao.getLoginInfo();
    }

    @Override
    public Blogger getBloggerByUsername(String username) {
        return bloggerDao.getBloggerByUsername(username);
    }

    @Override
    public Blogger getBloggerInfo() {
        return bloggerDao.getBloggerInfo();
    }

    @Override
    public void updateBloggerInfo(Blogger blogger) {
        bloggerDao.updateBloggerInfo(blogger);
    }

}
