package com.poly.dao;
import java.util.List;
import com.poly.entity.Share;

public interface ShareDAO extends GenericDAO<Share, Integer> {
    List<Share> findByVideoId(int videoId);
}
