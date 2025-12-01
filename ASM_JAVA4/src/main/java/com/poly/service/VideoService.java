package com.poly.service;

import java.util.List;

import com.poly.dao.VideoDAO;
import com.poly.model.Video;

public class VideoService {

    private VideoDAO dao = new VideoDAO();

    public List<Video> getAllVideos() {
        return dao.findAll();
    }
    
    public Video findById(String id) {
        return dao.findById(id);
    }

}
