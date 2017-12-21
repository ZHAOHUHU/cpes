package com.atguigu.cpes.dao;

import java.util.List;

public interface PermissionDao {

	List<Permission> queryAll();

	void insertPermission(Permission permission);

	Permission queryById(Integer id);

	void updatePermission(Permission permission);

	void deletePermission(Integer id);

	List<Integer> queryPermissionsByRoleId(Integer roleid);

}
