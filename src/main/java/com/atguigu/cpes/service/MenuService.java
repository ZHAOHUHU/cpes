package com.atguigu.cpes.service;

import java.util.List;

public interface MenuService {

	List<Menu> queryParentMenu();

	List<Menu> queryChildMenu(Menu pmenu);

	List<Menu> queryAll();

}
