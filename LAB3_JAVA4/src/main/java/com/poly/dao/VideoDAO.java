package com.poly.dao;
import com.poly.entity.Video;

public interface VideoDAO extends GenericDAO<Video, Integer> {
    Video findByYoutubeId(String youtubeId);
}
