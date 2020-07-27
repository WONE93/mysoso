package com.dbal.app.users;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.servlet.ModelAndView;

@Controller
public class UserController {

	@Autowired
	UserService userService;
	
	@RequestMapping("userexel.do")
	public ModelAndView userexel(UserVO vo) {
		ModelAndView mv = new ModelAndView();
		mv.setViewName("commonExcelView");
		mv.addObject("datas", userService.getUserListMap(vo));
		mv.addObject("filename", "userlist");
		mv.addObject("headers", new String[]{"id","name"});
		return mv;
	}
}
