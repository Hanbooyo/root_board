package com.root.board.controller;

import java.util.List;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.servlet.ModelAndView;

import com.root.board.dao.BoardDAO;
import com.root.board.vo.BoardVO;

@Controller
public class BoardController {
	
	@Autowired
	private BoardDAO boardDAO;
	
	@RequestMapping(value = "/list", method = {RequestMethod.GET})
	public ModelAndView listAll(HttpServletRequest request, HttpServletResponse response) throws Exception {
		ModelAndView mav = new ModelAndView();
		List<BoardVO> list = boardDAO.listAll();
		mav.addObject("list", list);
		mav.setViewName("board");
		return mav;
	}
	
	@RequestMapping(value = "/listOne", method = {RequestMethod.GET})
	public ModelAndView listOne(HttpServletRequest request, HttpServletResponse response, int no) throws Exception {
		ModelAndView mav = new ModelAndView();
		BoardVO listOne = boardDAO.listOne(no);
		mav.addObject("listOne",listOne);
		mav.setViewName("detail");
		return mav;
	}

}
