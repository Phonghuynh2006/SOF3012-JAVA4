package poly.com.dao;

import java.util.List;
import poly.com.entity.Videos;

public interface VideoDAO {
   List<Videos> findAll();
    Videos findById(Integer id);
    Videos create(Videos entity);
    Videos update(Videos entity);
    void deleteById(Integer id);
    // Optional - thường dùng trong ASM Java4
    List<Videos> findByKeyword(String keyword);
    List<Videos> findActive();
    Videos findByYoutubeId(String youtubeId);
}
