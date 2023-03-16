package xyz.angelbeats.controller;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestBody;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.ResponseBody;
import org.springframework.web.servlet.ModelAndView;
import xyz.angelbeats.pojo.Blogger;
import xyz.angelbeats.pojo.Comment;
import xyz.angelbeats.service.*;

import java.util.List;

@Controller
@RequestMapping("/admin")
public class BloggerController {

    @Autowired
    private BlogService blogService;
    @Autowired
    private BlogTypeService blogTypeService;
    @Autowired
    private CommentService commentService;
    @Autowired
    private LinkService linkService;
    @Autowired
    private BloggerService bloggerService;

    // 管理员界面
    @RequestMapping("/manage")
    public ModelAndView manage() throws Exception {
        ModelAndView modelAndView = new ModelAndView();

        // 博客
        modelAndView.addObject("blogList", blogService.getAllBlog());

        // 类型
        modelAndView.addObject("blogTypeList", blogTypeService.getAllTypes());

        // 评论
        List<Comment> commentList = commentService.getAllComment();
        for (Comment comment : commentList) {
            comment.setBlogTitle(commentService.getTitleByBlogId(comment.getBlog_id()));
        }
        modelAndView.addObject("commentList", commentList);

        // 链接
        modelAndView.addObject("linkList", linkService.getAllLink());

        // 博主
        modelAndView.addObject("blogger", bloggerService.getBloggerInfo());

        modelAndView.setViewName("../back/admin");
        return modelAndView;
    }

    @ResponseBody
    @RequestMapping("/modifyBloggerInfo")
    public boolean modifyBloggerInfo(@RequestBody Blogger blogger) {
        if (blogger.getUsername().equals("")) {
            return false;
        } else {
            bloggerService.updateBloggerInfo(blogger);
            return true;
        }
    }

}
