package com.dbal.app.emp.service.Impl;

import java.util.List;
import java.util.Map;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import com.dbal.app.emp.EmpVO;
import com.dbal.app.emp.mapper.EmpMapper;
import com.dbal.app.emp.service.EmpService;

@Service
public class EmpServiceImpl implements EmpService {
	
	@Autowired EmpMapper empMapper;
	
	//단건조회
	@Override
	public EmpVO getEmp(EmpVO empVO) {
		return empMapper.getEmp(empVO);
	}
	
	//전체조회
	@Override
	public List<EmpVO> getEmpList(EmpVO empVO) {
		System.out.println("getEmpList 서비스 호출");
		return empMapper.getEmpList(empVO);
	}
	
	//회원등록
	@Override
	public void empInsert(EmpVO empVO) {
		
	}

	@Override
	public void empDelete(EmpVO empVO) {
		// TODO Auto-generated method stub
		
	}

	@Override
	public void empUpdate(EmpVO empVO) {
		// TODO Auto-generated method stub
		
	}

	@Override
	public List<Map<String, Object>> getDeptEmpCnt() {
		return empMapper.getDeptEmpCnt();
	}

}
