package com.root.board.dao;

import java.util.ArrayList;
import java.util.List;

import org.apache.ibatis.session.SqlSession;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.dao.DataAccessException;
import org.springframework.stereotype.Repository;

import com.root.board.vo.BoardVO;


@Repository("BoardDAO")
public class BoardDAO {
	
	@Autowired
	private SqlSession sqlSession;
	
	// 글 전체
	public List<BoardVO> listAll() throws DataAccessException {
		List<BoardVO> listAll = new ArrayList<BoardVO>();
		listAll = sqlSession.selectList("mapper.board.listAll");
		return listAll;
	}
	
	// 글 하나
	public BoardVO listOne(int no) throws DataAccessException {
		BoardVO listOne = new BoardVO();
		listOne = sqlSession.selectOne("mapper.board.listOne", no);
		return listOne;
	}


}
