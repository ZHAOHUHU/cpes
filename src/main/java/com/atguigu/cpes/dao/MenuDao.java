package com.atguigu.cpes.dao;

import java.util.List;

public interface MenuDao {

	List<Menu> queryParentMenu();

	List<Menu> queryChildMenu(Integer id);

	List<Menu> queryAll();

}
