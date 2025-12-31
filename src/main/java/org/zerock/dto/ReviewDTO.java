package org.zerock.dto;

import java.time.LocalDateTime;

import lombok.AllArgsConstructor;
import lombok.Builder;
import lombok.Data;
import lombok.NoArgsConstructor;

@Data
@AllArgsConstructor
@NoArgsConstructor
@Builder
public class ReviewDTO {

	private int rno;
	private int pno;
	private String mid;
	private int rating;
	private String reviewContent;
	private LocalDateTime regDate;
	private LocalDateTime modDate;
}
