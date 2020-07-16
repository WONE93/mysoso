package com.dbal.app.emp.web;

import java.util.ArrayList;
import java.util.HashMap;
import java.util.List;
import java.util.Map;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.ModelAttribute;
import org.springframework.web.bind.annotation.PathVariable;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestParam;
import org.springframework.web.bind.annotation.ResponseBody;

import com.dbal.app.emp.EmpVO;
import com.dbal.app.emp.mapper.EmpMapper;
import com.dbal.app.emp.service.EmpService;

@Controller //bean등록, dispatcher 서블릿이 인식할 수 있는 컨트롤러로 변환 //@component 상속
public class EmpController {
	@Autowired
	EmpService empService;
	
//	@RequestMapping("/empList.do")
//	public String empList(Model model) {
//		model.addAttribute("empList", dao.empList());
//		return "emp/list";
//	}
	
	//주문
	@RequestMapping("/orderInsert")
	public String orderInsert() {
		return "order/orderInsert";
	}
	
	//등록폼
	@RequestMapping("/insertFormEmp.do")
	public String insertFormEmp(EmpVO vo) {
		return "empty/emp/insertEmp";
	}
	
	//등록처리
	@RequestMapping("/insertEmp.do")
	//@ModelAttribute("evo") 이름을 evo로 사용하겠다.
	public String insertEmp(@ModelAttribute("evo") EmpVO vo,  //1. 커멘드객체
								Model model,
								@RequestParam String firstName, // 2. = request.getParam("firstName")
								@RequestParam(required = false, defaultValue = "kim", value = "lastName") String ln,
								@RequestParam Map map
			) {
		empService.empInsert(vo);
		System.out.println(vo.getFirstName() + ":" + vo.getLastName());
		System.out.println("parameter:" + firstName + ":" + ln);
		System.out.println("map" + map.get("firstName") + ":"+ map.get("lastName"));
		//model.addAttribute("evo", vo);
		return "home";
	}
	
	
	//단건조회
	@RequestMapping("getEmp/{employeeId}/{firstName}") //getEmp?employeeId=aaa
	public String getEmp(@PathVariable Integer employeeId, @PathVariable String firstName) {
		System.out.println(employeeId);
		System.out.println(firstName);
		return "home";
	}
	
	//목록조회
	@RequestMapping("empList")
	public String empList(Model model, EmpVO empVO) {
		model.addAttribute("empList", empService.getEmpList(empVO));
		return "emp/empList";
	}
	
	//emp관리
	@RequestMapping("empClient")
	public String empClient() {
		return "admin/emp/empClient";
	}
	
	//ajax 목록
	@RequestMapping("ajaxEmpList")
	public @ResponseBody List<EmpVO> ajaxEmpList(EmpVO empVO){
		return empService.getEmpList(empVO);
	}
	
	//차트데이터
	@RequestMapping("/chartDept" )
	public @ResponseBody List<Map<String, Object>> chartDept() {
		return empService.getDeptEmpCnt();
	}
	
	
	//수정폼
	
	//수정처리
	
	//삭제처리
	
}
