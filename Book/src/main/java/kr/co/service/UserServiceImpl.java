package kr.co.service;

import javax.inject.Inject;

import org.springframework.stereotype.Service;
import kr.co.domain.UserVO;
import kr.co.persistence.UserDAO;

@Service
public class UserServiceImpl implements UserService {
	
	@Inject
	UserDAO dao;
	
	@Override
	public void membership(UserVO vo) throws Exception {
		dao.membership(vo);
	}

	@Override
	public UserVO loginCheck(UserVO vo) throws Exception {
		
		return dao.loginCheck(vo);
	}
	
}
