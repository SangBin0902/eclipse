package org.zerock.security;

import org.springframework.security.core.userdetails.User;
import org.springframework.security.core.userdetails.UserDetails;
import org.springframework.security.core.userdetails.UserDetailsService;
import org.springframework.security.core.userdetails.UsernameNotFoundException;
import org.springframework.stereotype.Service;
import org.zerock.dto.AccountDTO;
import org.zerock.dto.AccountRole;

import lombok.extern.log4j.Log4j2;

@Service
@Log4j2
public class CustomUserDetailsService implements UserDetailsService{

	@Override
	public UserDetails loadUserByUsername(String username) throws UsernameNotFoundException {
		
		log.info("----------loadUserByUsername------------", username);
		
		AccountDTO accountDTO = new AccountDTO();
		
		accountDTO.setUid(username);
		// 패스워드는 1111을 BCrypt로 만든 문자열 사용
		accountDTO.setUpw("$2a$10$ovex0UwdsQZIHXEfe3kap.xFyqRnAgd9rJ0XgObXUY27nYIdCdYva");
		accountDTO.addRole(AccountRole.USER);
		accountDTO.addRole(AccountRole.MANAGER);
		
		return accountDTO;
	}
}
