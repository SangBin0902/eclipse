package org.zerock.mapper;

import org.zerock.dto.AccountDTO;

public interface AccountMapper {

	int insert(AccountDTO accountDTO);
	
	int insertRoles(AccountDTO accountDTO);
	
}
