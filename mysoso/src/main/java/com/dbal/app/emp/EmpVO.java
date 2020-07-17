package com.dbal.app.emp;

import java.util.Date;

import org.springframework.web.multipart.MultipartFile;

import com.fasterxml.jackson.annotation.JsonFormat;
import com.fasterxml.jackson.annotation.JsonIgnore;
import com.fasterxml.jackson.annotation.JsonProperty;

import lombok.Builder;
import lombok.Data;
import lombok.Getter;
import lombok.NoArgsConstructor;

@Data
@NoArgsConstructor
public class EmpVO {
	
	MultipartFile uploadFile;
	String profile;
	String msg;
	
	@JsonProperty(value = "id")
	String employeeId;

	String firstName;
	String lastName;
	String email;
	
//	@JsonFormat(pattern = "yyyy-MM-dd HH")
	String hireDate; // LocalDateTime  , Date
	
	@JsonIgnore 
	String jobId;
	
	@JsonIgnore 
	String departmentId;
	
	@JsonIgnore 
	Integer salary;
	
	@JsonIgnore 
	Integer[] employeeIds;
	
	
	@Builder
	public EmpVO(String firstName, String lastName, String email, String hireDate, String employeeId, String jobId,
			String departmentId, Integer salary, Integer[] employeeIds) {
		super();
		this.firstName = firstName;
		this.lastName = lastName;
		this.email = email;
		this.hireDate = hireDate;
		this.employeeId = employeeId;
		this.jobId = jobId;
		this.departmentId = departmentId;
		this.salary = salary;
		this.employeeIds = employeeIds;
	}
	
	
}
