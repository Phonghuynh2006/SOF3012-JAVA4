package poly.com.dao;

import java.util.List;

import poly.com.entity.Favorites;

//FavoriteDAO.java
public interface FavoriteDAO {
 List<Favorites> findAll();
 Favorites findById(Integer id);
 Favorites create(Favorites entity);
 Favorites update(Favorites entity);
void deleteById(Integer id);
}
