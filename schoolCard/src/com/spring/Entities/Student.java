package com.spring.Entities;

import org.springframework.stereotype.Component;

@Component
public class Student {
	String studentId;
	String studentName;
	String password;
	boolean studentSex;
	public Student() {
	}
	public String getStudentId() {
		return studentId;
	}
	public void setStudentId(String studentId) {
		this.studentId = studentId;
	}
	public String getStudentName() {
		return studentName;
	}
	public void setStudentName(String studentName) {
		this.studentName = studentName;
	}
	public String getPassword() {
		return password;
	}
	public void setPassword(String password) {
		this.password = password;
	}
	public boolean isStudentSex() {
		return studentSex;
	}
	public void setStudentSex(boolean studentSex) {
		this.studentSex = studentSex;
	}
	
}	