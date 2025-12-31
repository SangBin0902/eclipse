package org.zerock.service;

import java.util.List;
import java.util.Map;

import org.zerock.dto.ReviewDTO;

public interface ReviewService {

	int register(ReviewDTO reviewDTO);
	List<ReviewDTO> getList(int pno);
	ReviewDTO read(int rno);
	boolean modify(ReviewDTO reviewDTO);
	boolean remove(int rno, String mid);
	Map<String, Object> getProductReviewSummary(int pno);
}
