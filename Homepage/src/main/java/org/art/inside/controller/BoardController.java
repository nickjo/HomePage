package org.art.inside.controller;

import org.apache.log4j.Logger;
import org.art.inside.service.BoardService;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;

import org.springframework.web.bind.annotation.SessionAttributes;

@Controller
//@SessionAttributes("board")
public class BoardController {
	@Autowired
	BoardService boardServiceImpl;
	private Logger log = Logger.getLogger(this.getClass());
	
	@RequestMapping(value="board.do", method=RequestMethod.GET)
	public String getBoard(Model model){
		log.info("############ getBoard() ###############");
		log.info(boardServiceImpl.getBoard());
		model.addAttribute("board", boardServiceImpl.getBoard());
		return "board/board";
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
}
