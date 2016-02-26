package org.art.inside.dao;

import java.util.List;
import java.util.Map;

import org.apache.ibatis.annotations.ResultMap;
import org.apache.ibatis.annotations.Select;
import org.art.inside.domain.BoardVO;

public interface BoardMapper {
	@Select("SELECT NAME,AGE,SEX,LOCAL,DEPTNO FROM BOARD;")
	@ResultMap("boardResultMap")
	public List<BoardVO> getBoard();
}
