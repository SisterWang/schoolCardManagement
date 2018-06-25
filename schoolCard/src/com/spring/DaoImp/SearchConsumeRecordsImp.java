package com.spring.DaoImp;

import java.util.ArrayList;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.jdbc.core.BeanPropertyRowMapper;
import org.springframework.jdbc.core.JdbcTemplate;
import org.springframework.jdbc.core.RowMapper;
import org.springframework.stereotype.Repository;

import com.spring.Entities.ConsumeRecords;
import com.sun.org.apache.xalan.internal.xsltc.compiler.Template;

@Repository("searchConsumeRecordsDao")
public class SearchConsumeRecordsImp implements com.spring.Dao.SearchConsumeRecordsDao{
	
	@Autowired
	private JdbcTemplate jdbcTemplate;

	
	
	@Override
	public ArrayList<ConsumeRecords> AllConsumeRecords(String studentId) {
		
		String sql;
		sql = "select consumeId, consumeAddress, consumeTime, consumeAmount from consumeRecordsTable where studentId=?";
		//RowMapper<ConsumeRecords> rowMapper  = new BeanPropertyRowMapper<>(ConsumeRecords.class);
		ArrayList<ConsumeRecords> consumeRecords1 =(ArrayList<ConsumeRecords>) jdbcTemplate.query(sql, new BeanPropertyRowMapper<ConsumeRecords>(ConsumeRecords.class),studentId);
		return consumeRecords1;
		
	}
	
}
