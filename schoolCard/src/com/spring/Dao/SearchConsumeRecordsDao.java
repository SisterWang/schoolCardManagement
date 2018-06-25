package com.spring.Dao;

import java.util.ArrayList;

import com.spring.Entities.ConsumeRecords;

public interface SearchConsumeRecordsDao {
	public ArrayList<ConsumeRecords> AllConsumeRecords(String studentId);
}
