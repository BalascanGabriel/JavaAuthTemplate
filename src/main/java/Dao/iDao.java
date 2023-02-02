package Dao;

import java.util.List;

public interface iDao<T> {

	public List<T> findAll();
	public void save(T o);
	
}
