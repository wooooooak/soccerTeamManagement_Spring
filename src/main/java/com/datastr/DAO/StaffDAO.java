package com.datastr.DAO;


import java.util.List;


import com.datastr.VO.StaffVO;
import com.datastr.VO.UpdateStaffVO;

public interface StaffDAO {

	public void regist(StaffVO staffVO) throws Exception;
	public List<StaffVO> listAll() throws Exception;
	public List<StaffVO> listAllOrderBy(String order) throws Exception;
	public void release(Integer pno) throws Exception;
	public void updateStaff(UpdateStaffVO updateStaffVO) throws Exception;
	public StaffVO getone(Integer idno) throws Exception;
}
