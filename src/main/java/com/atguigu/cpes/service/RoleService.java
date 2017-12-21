package com.atguigu.cpes.service;

import java.util.List;

public interface RoleService {

	Page<Role> queryPage(Integer pageno, Integer pagesize);

	void insertRole(Role role);

	Role queryRoleById(Integer id);

	void updateRole(Role role);

	void deleteRoleById(Integer id);

	void deleteRoles(Datas ds);

	List<Role> queryAll();

	void doassign(Integer roleid, Datas ds);

}
