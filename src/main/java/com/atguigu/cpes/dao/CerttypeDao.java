package com.atguigu.cpes.dao;

import java.util.List;
import java.util.Map;

public interface CerttypeDao {

	List<Certtype> queryCerttype4Page(Map<String, Object> paramMap);

	int queryCerttypeCount4Page(Map<String, Object> paramMap);

	void insertCerttype(Certtype certtype);

	Certtype queryCerttypeById(Integer id);

	void updateCerttype(Certtype certtype);

	void deleteCerttypeById(Integer id);

	void deleteCerttypes(Datas ds);

	List<Certtype> queryAll();

	void deleteCerttype(Certtype certtype);

}