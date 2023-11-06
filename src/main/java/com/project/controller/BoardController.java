package com.project.controller;

import javax.annotation.Resource;
import javax.validation.Valid;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.validation.BindingResult;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.ModelAttribute;
import org.springframework.web.bind.annotation.PostMapping;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestParam;

import com.project.domain.BoardVO;
import com.project.domain.LoginUser;
import com.project.domain.PageBean;
import com.project.domain.ReplyVO;
import com.project.service.BoardService;
import com.project.service.MenuService;
import com.project.service.ReplyService;

@Controller
@RequestMapping("/board")
public class BoardController {
	@Autowired
	private BoardService bService;
	
	@Autowired
	private MenuService mService;
	
	@Autowired
	private ReplyService rService;
	
	@Resource(name="sessionUser")
	private LoginUser sessionUser;
	
	@GetMapping("/main")
	public String board(@RequestParam("board_idx") int board_idx, Model model,
			@RequestParam(value = "page", defaultValue = "1") int page) {
		model.addAttribute("board_idx",board_idx); //카테고리번호
		model.addAttribute("boardMenu", mService.getMenu(board_idx)); //카테고리이름
		model.addAttribute("list", bService.getContentList(board_idx, page)); //리스트 & 페이징
		
		PageBean pageBean = bService.getContentCnt(board_idx, page); //페이지네이션
		model.addAttribute("pageBean",pageBean);
		model.addAttribute("page", page); //페이지값 넘겨주기
		
		return "board/main";
	
	}
	
	
	//게시글검색
	@GetMapping("/search")
	public String search(@RequestParam("keyword") String keyword, Model model,
			@RequestParam("board_idx") int board_idx,
			@RequestParam(value = "page", defaultValue = "1") int page) {
		model.addAttribute("board_idx",board_idx); //카테고리번호
		model.addAttribute("boardMenu", mService.getMenu(board_idx)); //카테고리이름

		model.addAttribute("list",bService.searchContent(keyword, board_idx,page));
		
		//총개수들어감 -> 검색된 글의 총개수로 변경해야함
		PageBean pageBean = bService.getContentCnt(board_idx, page); //페이지네이션
		model.addAttribute("pageBean",pageBean);
		return "board/main";
	}
	
	
	@GetMapping("/write")
	public String write(@RequestParam("board_idx") int board_idx,
			            @ModelAttribute("writeContent") BoardVO content, Model model) {
		model.addAttribute("board_idx",board_idx); //카테고리번호
		model.addAttribute("boardMenu", mService.getMenu(board_idx)); //카테고리이름
		return "board/write";
	}
	
	//유효성검사하고 데이터 저장하기
	@PostMapping("/write_pro")
	public String write_pro(@Valid @ModelAttribute("writeContent") BoardVO writeContent,
							BindingResult result,Model model,
							@RequestParam("board_idx") int board_idx) {
		if(result.hasErrors()) {
			return "board/write";
		}
		//DB저장
		bService.addBoardContent(writeContent);
		model.addAttribute("board_idx",board_idx); //카테고리번호
		return "board/write_success";
	}
	
	@GetMapping("/view")
	public String view(@ModelAttribute("replyList") ReplyVO replyList,
					   @RequestParam("board_idx") int board_idx,
					   @RequestParam("content_idx") int content_idx,
					   @RequestParam(value = "page", defaultValue = "1") int page,Model model) {
		model.addAttribute("board_idx",board_idx); //카테고리 번호
		model.addAttribute("content_idx",content_idx);
		model.addAttribute("sessionUser", sessionUser);
		model.addAttribute("boardMenu", mService.getMenu(board_idx)); //카테고리이름
		model.addAttribute("page", page); //페이지값 넘겨주기
		//DB데이터가져오기
		model.addAttribute("content",bService.viewCotent(content_idx));
		
		//댓글보여주기
		model.addAttribute("replyList", rService.getReplyList(content_idx));
		//reply_idx 보내기
		model.addAttribute("reply_idx", replyList.getReply_idx()); 
		//조회수카운트
		bService.view(content_idx);
		return "board/view";
	}
	
	//댓글작성
	@PostMapping("/addReply")
	public String addReply(@Valid ReplyVO addreply,
			@RequestParam("board_idx") int board_idx,
			@RequestParam("content_idx") int content_idx, Model model) {
		
		model.addAttribute("board_idx",board_idx); //카테고리 번호
		model.addAttribute("content_idx",content_idx);
		//댓글 작성
		rService.addReply(addreply);
		return "board/reply_success";
	}
	
	//댓글 삭제
	@GetMapping("/delReply")
	public String deleteReply(int reply_idx,
			@RequestParam("board_idx") int board_idx,
			@RequestParam("content_idx") int content_idx, Model model) {
		rService.deleteReply(reply_idx);
		model.addAttribute("board_idx",board_idx); //카테고리 번호
		model.addAttribute("content_idx",content_idx);
		return "board/reply_delete";
	}
	
	//게시글수정화면
	@GetMapping("/modify")
	public String modify(@RequestParam("board_idx") int board_idx,
			@RequestParam("content_idx") int content_idx,
			@RequestParam(value = "page", defaultValue = "1") int page,
			@ModelAttribute("modifyContent") BoardVO modifyContent, Model model) {
		model.addAttribute("board_idx",board_idx); //카테고리 번호
		model.addAttribute("content_idx",content_idx); //게시글 번호
		model.addAttribute("sessionUser", sessionUser); //사용자세션정보
		model.addAttribute("boardMenu", mService.getMenu(modifyContent.getBoard_idx())); //카테고리이름
		model.addAttribute("page", page); //페이지값 넘겨주기

		//DB데이터가져오기
		model.addAttribute("modifyContent",bService.viewCotent(content_idx));
		return "board/modify";
	}
	
	

	//수정	
	@PostMapping("/modify_pro")
	public String modify_pro(@RequestParam("board_idx") int board_idx,
			@RequestParam("content_idx") int content_idx,
			@RequestParam(value = "page", defaultValue = "1") int page,
			@Valid @ModelAttribute("modifyContent") BoardVO modifyContent,
            BindingResult result, Model model) {
		if(result.hasErrors()) {
			return "board/modify";
		}
		model.addAttribute("board_idx",board_idx); //카테고리 번호
		model.addAttribute("boardMenu", mService.getMenu(modifyContent.getBoard_idx())); //카테고리이름
		model.addAttribute("content_idx",content_idx); //게시글 번호
		model.addAttribute("page", page); //페이지값 넘겨주기

		//DB에 수정된 데이터 저장하기
		bService.modifyContent(modifyContent);
		return "board/modify_success";
	}
	

	
	//댓글수정화면
	//reply_idx를 못받음
	@GetMapping("/modifyReply")
	public String modifyReplyView(int reply_idx,
			@RequestParam("board_idx") int board_idx,
	        @RequestParam("content_idx") int content_idx,
	        Model model) {
	    model.addAttribute("board_idx", board_idx); // 카테고리 번호
	    model.addAttribute("content_idx", content_idx); // 게시글 번호
	    model.addAttribute("reply_idx", reply_idx); //댓글번호

		//DB데이터가져오기
		model.addAttribute("modifyReply",rService.oneReply(reply_idx));
	    return "board/modifyReply";
	}
	
	//댓글 수정
	@PostMapping("/modifyReply")
	public String modifyReply(@RequestParam("board_idx") int board_idx,
			@RequestParam("content_idx") int content_idx,
			@RequestParam("reply_idx") int reply_idx,
			@ModelAttribute("modifyReply") ReplyVO Reply,Model model) {
		model.addAttribute("board_idx",board_idx); //카테고리 번호
		model.addAttribute("content_idx",content_idx); //게시글 번호
		model.addAttribute("reply_idx",reply_idx); //댓글 번호
		//DB에 저장
		rService.modifyReply(Reply);
		return "board/modifyReply_success";
	}
	
	//게시글 삭제
	@GetMapping("/delete")
	public String deleteContent(@RequestParam("board_idx") int board_idx,
			@RequestParam("content_idx") int content_idx, Model model) {
		model.addAttribute("board_idx", board_idx);
		bService.deleteContent(content_idx);
		return "board/delete_success";
	}
	
	//인기글 페이지네이션
	@GetMapping("/popular")
	public String popular(BoardVO pList,
			@RequestParam(value = "page", defaultValue = "1") int page, Model model) {
			    
		PageBean pageBean = bService.getPopularCnt(page);
		model.addAttribute("pageBean",pageBean);
		
		model.addAttribute("list", bService.getPopular(pList, page));
		
		return "board/popular";
	
	}
}
