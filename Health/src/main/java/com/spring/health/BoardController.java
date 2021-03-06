package com.spring.health;

import javax.inject.Inject;

import org.slf4j.Logger;
import org.slf4j.LoggerFactory;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.bind.annotation.RequestParam;
import org.springframework.web.servlet.mvc.support.RedirectAttributes;
import com.spring.dto.BoardVO;
import com.spring.service.BoardService;

@Controller
@RequestMapping("/board/*")
public class BoardController {

	private static final Logger logger = LoggerFactory.getLogger(BoardController.class);

	@Inject
	private BoardService service;

	@RequestMapping(value = "/list", method = RequestMethod.GET)
	public void listAll(Model model) throws Exception {

	model.addAttribute("list", service.listAll());
	}
	
	@RequestMapping(value = "/detail", method = RequestMethod.GET)
	public void detail(@RequestParam("bno") int bno, Model model) throws Exception {
	
		service.viewcnt(bno);
		model.addAttribute(service.read(bno));
	}
	
	@RequestMapping(value = "/write", method = RequestMethod.GET)
	public void registerGET(BoardVO board, Model model) throws Exception {
	
	}
	
	@RequestMapping(value = "/write", method = RequestMethod.POST)
	public String registPOST(BoardVO board, Model model,RedirectAttributes rttr) throws Exception {
	
		logger.info(board.toString());
	
		service.regist(board);
	
		rttr.addFlashAttribute("msg", "success");
		return "redirect:/board/list";
	
	}
	
	@RequestMapping(value = "/update", method = RequestMethod.GET)
	public void modifyGET(int bno, Model model) throws Exception {
		model.addAttribute(service.read(bno));
	}
	
	@RequestMapping(value = "/update", method = RequestMethod.POST)
	public String modifyPOST(BoardVO board, RedirectAttributes rttr) throws Exception {
		
		service.modify(board);
		rttr.addFlashAttribute("msg", "success");
	
		return "redirect:/board/list";
	}
	
	@RequestMapping(value = "/delete", method = RequestMethod.POST)
	public String remove(@RequestParam("bno") int bno, RedirectAttributes rttr) throws Exception {
	
		service.remove(bno);
	
		rttr.addFlashAttribute("msg", "success");
	
		return "redirect:/board/list";
	}

}
