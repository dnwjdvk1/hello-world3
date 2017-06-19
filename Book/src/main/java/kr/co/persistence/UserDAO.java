package kr.co.persistence;

import kr.co.domain.UserVO;

public interface UserDAO {
	public abstract void membership(UserVO vo) throws Exception;

	public abstract UserVO loginCheck(UserVO vo) throws Exception;
	
	
}
