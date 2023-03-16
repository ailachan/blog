package xyz.angelbeats.controller;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.PathVariable;
import org.springframework.web.bind.annotation.RequestBody;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.ResponseBody;
import xyz.angelbeats.pojo.Comment;
import xyz.angelbeats.service.CommentService;

import javax.servlet.http.HttpServletRequest;

@Controller
public class CommentController {

    @Autowired
    private CommentService commentService;

    // 发表评论
    @RequestMapping("/commentSubmit/{id}")
    public String commentSubmit(@PathVariable("id") Integer id, HttpServletRequest request) {

        int blog_id = Integer.parseInt(request.getParameter("id"));

        // 评论实例
        Comment comment = new Comment();
        comment.setName(request.getParameter("name"));
        comment.setEmail(request.getParameter("email"));
        comment.setContent(request.getParameter("content"));
        comment.setBlog_id(blog_id);
        commentService.updateComment(comment);

        return "redirect:/blog/.do?id=" + comment.getBlog_id();
    }

    @ResponseBody
    @RequestMapping("/deleteCommentById")
    public boolean deleteCommentById(@RequestBody Comment comment) {
        Integer id = comment.getId();
        if (id != null) {
            commentService.deleteCommentById(id);
            return true;
        }
        return false;
    }

}
