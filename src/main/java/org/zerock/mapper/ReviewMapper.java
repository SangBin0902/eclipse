package org.zerock.mapper;

import java.util.List;
import java.util.Map;

import org.apache.ibatis.annotations.Param;
import org.zerock.dto.ReviewDTO;

public interface ReviewMapper {
	
	int insert(ReviewDTO reviewDTO);
	
	List<ReviewDTO> getListByPno(int pno);

	ReviewDTO selectOne(int pno);
	
	int update(ReviewDTO reviewDTO);
	
	int delete(@Param("rno") int rno, @Param("mid") String mid);
	
	Map<String, Object> getProductReviewSummary(int pno);
}
