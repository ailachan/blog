package xyz.angelbeats.dao;

import xyz.angelbeats.pojo.BlogType;

import java.util.List;

public interface BlogTypeDao {

    // 根据博客类别 id 查询博客类别名称
    String getTypeNameById(int id);

    // 获取博客类别合集
    List<BlogType> getAllTypes();

    // 添加类型
    void addBlogType(BlogType blogType);

    // 获取该类型下所有博客 id
    List<Integer> getBlogIdListByTypeId(int id);

    // 根据博客 id 删除对应评论
    void deleteCommentByBlogId(int id);

    // 删除类型下的博客
    void deleteBlogByTypeId(int id);

    // 删除类型
    void deleteBlogTypeById(int id);

    // 根据类型名查找 id
    Integer getIdByTypeName(String typeName);

    // 更新类型
    void updateBlogType(BlogType blogType);

}
