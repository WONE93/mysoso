package com.dbal.app.emp;

import java.util.Date;

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
	@JsonProperty(value = "id")
	String employeeId;

	String firstName;
	String lastName;
	String email;
	
	@JsonFormat(pattern = "yyyy-MM-dd HH")
	Date hireDate; // LocalDateTime  , Date
	
	@JsonIgnore 
	String jobId;
	
	@JsonIgnore 
	String departmentId;
	
	@JsonIgnore 
	Integer salary;
	
	@JsonIgnore 
	Integer[] employeeIds;
	
	
	@Builder
	public EmpVO(String firstName, String lastName, String email, Date hireDate, String employeeId, String jobId,
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
