package com.dbal.app.common;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.scheduling.annotation.Scheduled;
import org.springframework.stereotype.Component;

import com.dbal.app.dumy.DumyService;

@Component // 빈등록
public class Scheduler {
	
	@Autowired
	DumyService dumyService;

//	@Scheduled(cron = "0/10 * * * * *")
	public void crontest1() {
		System.out.println("스케쥴실행");
	}
	
	// 54분 30, 40, 50
//	@Scheduled(fixedRate = 2000)
	public void crontest2() {
		System.out.println(dumyService.getTime() );
	}
}
