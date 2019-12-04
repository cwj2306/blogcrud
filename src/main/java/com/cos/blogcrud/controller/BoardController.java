package com.cos.blogcrud.controller;

import javax.servlet.http.HttpSession;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.PathVariable;
import org.springframework.web.bind.annotation.PostMapping;

import com.cos.blogcrud.model.Board;
import com.cos.blogcrud.model.User;
import com.cos.blogcrud.repository.BoardRepository;

@Controller
public class BoardController {
	
	@Autowired
	private BoardRepository boardRepo;
	
	@GetMapping("/home")
	public String home() {
		// 게시글 select하고 모델에 담아서 넘어가기
		return "index";
	}
	
	@GetMapping("/detail/{boardId}")
	public String detail(@PathVariable int boardId, Model model) {
		// null 처리
		
		try {
			Board board = boardRepo.findById(boardId);
			
			model.addAttribute("board", board);
			return "board/detail";				
			
		} catch (Exception e) {
			e.printStackTrace();
			return "redirect:/home";
		}
		
	}
	
	//인터셉터 처리(로그인)
	@GetMapping("/writeForm")
	public String writeForm() {
		return "board/writeForm";
	}
	
	//인터셉터 처리(로그인)
	@PostMapping("/write")
	public String write(Board board, HttpSession session) {
		try {
			User user = (User)session.getAttribute("user");
			board.setUserId(user.getId());
			boardRepo.save(board);
		} catch (Exception e) {
			e.printStackTrace();
		}
		
		return "redirect:/home";
	}
	
	//	인터셉터 처리(사용자=글작성자)
	@GetMapping("/updateForm")
	public String updateForm() {
		return "board/updateForm";
	}
	
	//	인터셉터 처리(사용자=글작성자)
	@PostMapping("/update")
	public String update(Board board) {
		try {
			boardRepo.update(board);
		} catch (Exception e) {
			e.printStackTrace();
		}
		
		return "redirect:/detail/"+board.getId();
	}
	
	//	인터셉터 처리(사용자=글작성자)
	@GetMapping("/delete")
	public String delete() {
		return "redirect:/home";
	}
	
}
