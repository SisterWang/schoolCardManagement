package com.spring.Controller;
import java.sql.SQLException;
import java.util.ArrayList;

import javax.servlet.http.HttpServletRequest;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.servlet.ModelAndView;

import com.spring.Dao.SearchConsumeRecordsDao;
import com.spring.Entities.ConsumeRecords;

@Controller
public class ConsumeController {
	@Autowired
	private SearchConsumeRecordsDao searchConsumeRecordsDao;
	
@RequestMapping("/consume")
	public ModelAndView consume(HttpServletRequest request) throws SQLException{
	ArrayList<ConsumeRecords> consumeInfo = searchConsumeRecordsDao.AllConsumeRecords("1");
	ModelAndView mv = new ModelAndView();
	mv.setViewName("consume");
	mv.addObject("consumeInfo", consumeInfo);
		return mv;
	}
}
