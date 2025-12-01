package com.poly.dao;

import java.util.List;
import com.poly.model.Video;

public class VideoDAO extends AbstractDAO<Video> {

    public VideoDAO() {
        super(Video.class);
    }

    public List<Video> findAll() {
        return super.findAll();
    }
}
