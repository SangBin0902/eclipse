package org.zerock.controller;

import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.PostMapping;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.servlet.mvc.support.RedirectAttributes;
import org.zerock.dto.ReviewDTO;
import org.zerock.service.ReviewService;

import lombok.RequiredArgsConstructor;
import lombok.extern.log4j.Log4j2;

@Controller
@RequestMapping("/reviews")
@Log4j2
@RequiredArgsConstructor
public class ReviewController {

	private final ReviewService reviewService;
	
	@PostMapping("/register")
	public String registerReview(ReviewDTO reviewDTO, RedirectAttributes rttr) {
		
		log.info("리뷰 등록 요청: " + reviewDTO);
		
		reviewService.register(reviewDTO);
		
		rttr.addFlashAttribute("result", "registered");
		
		return "redirect:/product/read" + reviewDTO.getPno();
	}
}
