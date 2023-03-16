package xyz.angelbeats.service.impl;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;
import xyz.angelbeats.dao.CommentDao;
import xyz.angelbeats.pojo.Comment;
import xyz.angelbeats.service.CommentService;

import java.util.List;

@Service("commentService")
public class CommentServiceImpl implements CommentService {

    @Autowired
    private CommentDao commentDao;
    @Autowired
    private CommentService commentService;

    @Override
    public List<Comment> getCommentByBlogId(int blog_id) {
        return commentDao.getCommentByBlogId(blog_id);
    }

    @Override
    public void updateComment(Comment comment) {
        commentDao.saveComment(comment);
        commentDao.updateCommentHit(comment.getBlog_id());
    }

    @Override
    public List<Comment> getAllComment() {
        return commentDao.getAllComment();
    }

    @Override
    public String getTitleByBlogId(int id) {
        return commentDao.getTitleByBlogId(id);
    }

    @Override
    public void deleteCommentById(Integer id) {
        Integer blog_id = commentDao.getBlogIdByCommentId(id);
        commentDao.minusCommentHit(blog_id);
        commentDao.deleteCommentById(id);
    }

}
