package com.uib.library.repository;

import com.uib.library.repository.*;
import java.io.Serializable;
import java.util.List;

public interface BaseRepositoryApi {
	
	public abstract void flush();

	public abstract Object get(Class<? extends Object> clazz, Serializable id);

	public abstract void reattach(Object entity);

	public abstract void refresh(Object entity);

	public abstract void save(Object entity);

	public abstract void saveOrUpdate(Object entity);

	public abstract void update(Object entity);

	public abstract void delete(Object entity);

	public abstract List<? extends Object> listAll(Class<? extends Object> clazz);
	
	public abstract void deleteAll(String domain);

}
