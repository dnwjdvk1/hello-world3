package kr.co.persistence;

import javax.inject.Inject;

import org.apache.ibatis.session.SqlSession;
import org.springframework.stereotype.Repository;

import kr.co.domain.UserVO;
@Repository
public class UserDAOImpl implements UserDAO {
	@Inject
	private SqlSession sqlsession;
	private final String NAMESPACE = "kr.co.mapper.UserMapper";
	
	@Override
	public void membership(UserVO vo) throws Exception {
		sqlsession.insert(NAMESPACE+".membership", vo);
	}

	@Override
	public UserVO loginCheck(UserVO vo) throws Exception {
		
		
		return sqlsession.selectOne(NAMESPACE+".logincheck", vo);
	}
	
}
