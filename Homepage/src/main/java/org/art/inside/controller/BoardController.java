package org.art.inside.controller;

import java.util.List;

import org.apache.log4j.Logger;
import org.art.inside.domain.BoardVO;
import org.art.inside.service.BoardService;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.ui.ModelMap;
import org.springframework.web.bind.annotation.ModelAttribute;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.bind.annotation.RequestParam;
import org.springframework.web.bind.annotation.ResponseBody;
import org.springframework.web.bind.annotation.SessionAttributes;

import com.google.gson.Gson;

@Controller
//@RequestMapping("board")
//@SessionAttributes("board")
public class BoardController {
	@Autowired
	BoardService boardServiceImpl;
	private Logger log = Logger.getLogger(this.getClass());
	
	@RequestMapping(value="board.do", method=RequestMethod.GET)
	public String getBoard(Model model){
		log.info("############ getBoard() ###############");
		//log.info(boardServiceImpl.getBoard());
		//model.addAttribute("board", boardServiceImpl.getBoard());
		return "board/board";
	}
	
	// SYSTEM 메뉴
	@RequestMapping(value="systemMenu.do", method=RequestMethod.GET)
	public String systemMenu(){
		log.info("=========SystemMenu=============");
		
		return "systemMenu/systemMenu";
	}
	
	// 새글 등록
	@RequestMapping(value="insertBoard.do", method=RequestMethod.POST)
	public String insertBoard(@RequestParam("title") String title,
							  //@RequestParam("content") String content,
							  BoardVO board,
							  Model model) throws Exception{
		
		// 왜 title의 벨류는 자동 저장이 안되고 null이 뜨는가...이유 확인 필요
		board.setTitile(title);
		log.info("insertBoard(), BoardVO: " + board.toString());
		boardServiceImpl.insertBoard(board);
		
		return "board/board";
	}
	
	@RequestMapping(value="boardGsonList.do", method=RequestMethod.GET, produces="text/plain;charset=UTF-8")
	public @ResponseBody String getBoardGsonList(BoardVO boardVO ,Model model){
		log.info("boardGsonList()");
		
		Gson gson = new Gson();
		
		List<BoardVO> list = boardServiceImpl.getBoard();
		//model.addAttribute("boardVO", new Gson().toJson(list));
		//System.out.println(list.toString());
		
		return gson.toJson(list);
	}
	
	@RequestMapping(value="/", method=RequestMethod.GET)
	public String getMain(Model model){
		log.info("getlogin()");
		return "login/login";
	}
	
	@RequestMapping(value="main.do", method=RequestMethod.GET)
	public String moveMainPage(){
		log.info("moveMainPage()");
		return "main/main";
	}
	
	@RequestMapping(value="product.do", method=RequestMethod.GET)
	public String moveProductPage(){
		log.info("moveProductPage()");
		return "product/pd_0001";
	}
	
	@RequestMapping(value="navigator.do", method=RequestMethod.GET)
	public String moveNavigatorPage(){
		log.info("moveNavigatorPage()");
		return "common/navigator";
	}
	
	@RequestMapping(value="profile.do", method=RequestMethod.GET)
	public String moveProfilePage(){
		log.info("moveProfilePage()");
		return "profile/pf_0001";
	}
	
	@RequestMapping(value="sideMenu.do", method=RequestMethod.GET)
	public String moveSideMenuPage(){
		log.info("moveSideMenuPage()");
		return "sideMenu/sm_0001";
	}
	
	@RequestMapping(value="boardWrite.do", method=RequestMethod.GET)
	public String boardWritePopUp(){
		log.info("boardWrite.do");
		return "board/board_write";
	}
}
