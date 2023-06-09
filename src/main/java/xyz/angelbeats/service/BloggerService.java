package xyz.angelbeats.service;

import xyz.angelbeats.pojo.Blogger;

public interface BloggerService {

    // 验证登录
    boolean loginCheck(String username, String password);

    // 获取博主电子邮件地址
    String getBloggerEmail();

    // 验证登录
    Blogger getLoginInfo();

    Blogger getBloggerByUsername(String username);

    // 获取博主信息
    Blogger getBloggerInfo();

    // 修改博主信息
    void updateBloggerInfo(Blogger blogger);

}
