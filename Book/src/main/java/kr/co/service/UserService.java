package kr.co.service;

import kr.co.domain.UserVO;

public interface UserService {
	public void membership(UserVO vo) throws Exception;
	public UserVO loginCheck(UserVO vo) throws Exception;
}
