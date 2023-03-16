package xyz.angelbeats.service.impl;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;
import xyz.angelbeats.dao.BlogTypeDao;
import xyz.angelbeats.pojo.BlogType;
import xyz.angelbeats.service.BlogTypeService;

import java.util.List;

@Service("blogTypeService")
public class BlogTypeServiceImpl implements BlogTypeService {

    @Autowired
    private BlogTypeDao blogTypeDao;

    @Override
    public String getTypeNameById(int id) {
        return blogTypeDao.getTypeNameById(id);
    }

    @Override
    public List<BlogType> getAllTypes() {
        return blogTypeDao.getAllTypes();
    }

    @Override
    public void addBlogType(BlogType blogType) {
        blogTypeDao.addBlogType(blogType);
    }

    @Override
    public void deleteBlogTypeById(int id) {
        // 删评论
        List<Integer> blogIdList = blogTypeDao.getBlogIdListByTypeId(id);
        for (int blogId : blogIdList) {
            blogTypeDao.deleteCommentByBlogId(blogId);
        }
        // 删博客
        blogTypeDao.deleteBlogByTypeId(id);
        // 删博客类型
        blogTypeDao.deleteBlogTypeById(id);
    }

    @Override
    public Integer getIdByTypeName(String typeName) {
        return blogTypeDao.getIdByTypeName(typeName);
    }

    @Override
    public void updateBlogType(BlogType blogType) {
        blogTypeDao.updateBlogType(blogType);
    }

}
