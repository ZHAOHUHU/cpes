package com.atguigu.cpes.service;

import java.util.List;
import java.util.Map;

/**
 * 会员服务对象
 * @author 18801
 *
 */
public interface MemberService {

	Member queryMember4Login(Member member);

	void updateAcctype(Member member);

	void updateMemberInfo(Member member);

	void insertMemberCert(Map<String, Object> paramMap);

	void insertTicket(Ticket ticket);

	void updateEmail(Member member);

	void updateTicketStatus(Ticket ticket);

	Ticket queryTicketByMemberid(Integer id);

	Ticket queryTicketByPiid(String processInstanceId);

	List<MemberCert> queryMemberCertsByMemberid(Integer memberid);

	void updateStatus(Integer memberid);

}
