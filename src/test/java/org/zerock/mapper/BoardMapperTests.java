package org.zerock.mapper;

import org.junit.jupiter.api.Test;
import org.junit.jupiter.api.extension.ExtendWith;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.test.context.ContextConfiguration;
import org.springframework.test.context.junit.jupiter.SpringExtension;
import org.zerock.dto.BoardDTO;

import lombok.extern.log4j.Log4j2;

@ExtendWith(SpringExtension.class)
@ContextConfiguration("file:src/main/webapp/WEB-INF/spring/root-context.xml")
@Log4j2
public class BoardMapperTests {
	
	@Autowired
	private BoardMapper boardMapper;
	
	@Test
	public void testInsert() {
		
		BoardDTO boardDTO = BoardDTO.builder()
				.title("title")
				.content("content")
				.writer("user00")
				.build();
		
		int insertCount = boardMapper.insert(boardDTO);
		
		log.info("============");
		log.info("insertCount: " + insertCount);
	}
	
	@Test
	public void testInsert2() {
		
		BoardDTO boardDTO = BoardDTO.builder()
				.title("title")
				.content("content")
				.writer("use00")
				.build();
		
		long insertCount = boardMapper.insert(boardDTO);
		
		log.info("============");
		log.info("insertCount: " + insertCount);
		
		log.info("=====================");
		log.info("BNO: " + boardDTO.getBno());
	}
}
