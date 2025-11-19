package poly.com.dao;

import java.util.List;
import poly.com.entity.Shares;

public interface ShareDAO {
    List<Shares> findAll();
    Shares findById(Integer id);     
    Shares create(Shares entity);    
    Shares update(Shares entity);    
    void deleteById(Integer id);     
}
