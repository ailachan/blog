package xyz.angelbeats.service.impl;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;
import xyz.angelbeats.dao.LinkDao;
import xyz.angelbeats.pojo.Link;
import xyz.angelbeats.service.LinkService;

import java.util.List;

@Service
public class LinkServiceImpl implements LinkService {

    @Autowired
    private LinkDao linkDao;

    @Override
    public List<Link> getAllLink() {
        return linkDao.getAllLink();
    }

    @Override
    public void addLink(Link link) {
        linkDao.addLink(link);
    }

    @Override
    public void deleteLinkById(Integer id) {
        linkDao.deleteLinkById(id);
    }

    @Override
    public void updateLink(Link link) {
        linkDao.updateLink(link);
    }

}
