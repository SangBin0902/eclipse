package org.zerock.service;

import java.util.List;
import java.util.Map;

import org.springframework.stereotype.Service;
import org.springframework.transaction.annotation.Transactional;
import org.zerock.dto.ReviewDTO;
import org.zerock.mapper.ReviewMapper;

import lombok.RequiredArgsConstructor;
import lombok.extern.log4j.Log4j2;

@Service
@Log4j2
@RequiredArgsConstructor
public class ReviewServiceImpl implements ReviewService{

	private final ReviewMapper reviewMapper;
	
	@Transactional
	@Override
	public int register(ReviewDTO reviewDTO) {
		
		log.info("register review: " + reviewDTO);
		
		int insertCount = reviewMapper.insert(reviewDTO);
		
		if (insertCount > 0) {
			
			return reviewDTO.getRno();
			
		} else {
			
			log.warn("Review insertion failed for: " + reviewDTO);
			
			return 0;
		}
	}
	
	@Override
	public List<ReviewDTO> getList(int pno) {
		
		log.info("get review list for product: " + pno);
		
		return reviewMapper.getListByPno(pno);
	}
	
	@Override
	public ReviewDTO read(int rno) {
		
		log.info("read review: " + rno);
		
		return reviewMapper.selectOne(rno);
	}
	
	@Transactional
	@Override
	public boolean modify(ReviewDTO reviewDTO) {
		
		log.info("modify review: " + reviewDTO);
		
		int count = reviewMapper.update(reviewDTO);
		
		return count == 1;
	}
	
	@Transactional
	@Override
	public boolean remove(int rno, String mid) {
		
		log.info("remove review: " + rno + " by " + mid);
		
		ReviewDTO review = reviewMapper.selectOne(rno);
		
		if (review != null && review.getMid() != null && review.equals(mid)) {
			
			int deletedCount = reviewMapper.delete(rno, mid);
			
			return deletedCount == 1;
		}
		
		log.warn("Review remove failed. rno: " + rno + ", mid: " + mid + ", review exists: " + (review != null) + ", mid match: " + (review != null && review.getMid().equals(mid)));
		return false;
	}
	
	@Override
	public Map<String, Object> getProductReviewSummary(int pno) {
		
		log.info("getProductReviewSummary for pno: " + pno);
		
		return reviewMapper.getProductReviewSummary(pno);
	}
}
