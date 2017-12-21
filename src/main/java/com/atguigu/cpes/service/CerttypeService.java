package com.atguigu.cpes.service;

import java.util.List;

public interface CerttypeService {

	Page<Certtype> queryPage(Integer pageno, Integer pagesize);

	void insertCerttype(Certtype certtype);

	Certtype queryCerttypeById(Integer id);

	void updateCerttype(Certtype certtype);

	void deleteCerttypeById(Integer id);

	void deleteCerttypes(Datas ds);

	List<Certtype> queryAll();

	void deleteCerttype(Certtype certtype);


}
