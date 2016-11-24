package com.datastr.DAO;

import java.util.List;

import javax.inject.Inject;

import org.apache.ibatis.session.SqlSession;
import org.springframework.stereotype.Repository;

import com.datastr.VO.FinanceVO;


@Repository
public class FinanceDAOImpl implements FinanceDAO {

	private final static String namespace = "com.datastr.mappers.financeMapper";
	
	
	@Inject
	private SqlSession session;
	
	
	@Override
	public List<FinanceVO> getList() throws Exception {
		return session.selectList(namespace+".getList");
	}


	@Override
	public void update_Tr_fee(Integer transfer_fee) throws Exception {
		System.out.println("dao : update_Tr_fee : "+ transfer_fee);
		session.update(namespace+".update_Tr_fee", transfer_fee);
	}




	@Override
	public void update_player_Salary(Integer salary) throws Exception {
		System.out.println("dao : update_player_Salary :" +salary);
		session.update(namespace+".update_player_Salary", salary);
	}


	@Override
	public void update_staff_Salary(Integer salary) throws Exception {
		System.out.println("dao : update_staff_Salary :" +salary);
		session.update(namespace+".update_staff_Salary", salary);
		
	}

}
