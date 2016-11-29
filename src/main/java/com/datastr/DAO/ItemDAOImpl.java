package com.datastr.DAO;

import java.util.List;

import javax.inject.Inject;

import org.apache.ibatis.session.SqlSession;
import org.springframework.stereotype.Repository;

import com.datastr.VO.ItemVO;

@Repository
public class ItemDAOImpl implements ItemDAO {

	private final static String namespace = "com.datastr.mappers.itemMapper";
	
	
	@Inject
	private SqlSession session;
	
	
	@Override
	public void regist(ItemVO itemVO) throws Exception {
		session.insert(namespace+".regist", itemVO);
	}


	@Override
	public List<ItemVO> listAll() throws Exception {
		return session.selectList(namespace+".listAll");
	}

}
