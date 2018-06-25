package com.spring.Entities;

import org.springframework.stereotype.Component;

@Component
public class ConsumeRecords {
	String consumeId;
	String StudentId;
	String consumeAddress;
	String consumeTime;
	String consumeAmount;
	public ConsumeRecords(String consumeId, String studentId, String consumeAddress, String consumeTime,
			String consumeAmount) {
		super();
		this.consumeId = consumeId;
		StudentId = studentId;
		this.consumeAddress = consumeAddress;
		this.consumeTime = consumeTime;
		this.consumeAmount = consumeAmount;
	}
	
	public ConsumeRecords() {
		super();
	}

	public String getConsumeId() {
		return consumeId;
	}
	public void setConsumeId(String consumeId) {
		this.consumeId = consumeId;
	}
	public String getStudentId() {
		return StudentId;
	}
	public void setStudentId(String studentId) {
		StudentId = studentId;
	}
	public String getConsumeAddress() {
		return consumeAddress;
	}
	public void setConsumeAddress(String consumeAddress) {
		this.consumeAddress = consumeAddress;
	}
	public String getConsumeTime() {
		return consumeTime;
	}
	public void setConsumeTime(String consumeTime) {
		this.consumeTime = consumeTime;
	}
	public String getConsumeAmount() {
		return consumeAmount;
	}
	public void setConsumeAmount(String consumeAmount) {
		this.consumeAmount = consumeAmount;
	}
}
