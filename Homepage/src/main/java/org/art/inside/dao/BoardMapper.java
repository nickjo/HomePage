package org.art.inside.dao;

import java.util.List;

import org.apache.ibatis.annotations.Insert;
import org.apache.ibatis.annotations.ResultMap;
import org.apache.ibatis.annotations.Select;
import org.art.inside.domain.BoardVO;

public interface BoardMapper {
	@Select("SELECT NAME,AGE,SEX,LOCAL,DEPTNO,TITLE,CONTENT FROM BOARD;")
	@ResultMap("boardResultMap")
	public List<BoardVO> getBoard();
	
	// INSERT INTO BOARD VALUES('NICKJO123',20,'M','NEWYORK',30);
	@Insert("INSERT INTO BOARD(NAME,AGE,SEX,LOCAL,DEPTNO,TITLE,CONTENT) VALUES('ECLIPSETEST',21,'F','DAEGU',21,#{title},#{content})")
	public void insertBoard(BoardVO board);
}
