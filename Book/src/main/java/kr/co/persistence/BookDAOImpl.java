package kr.co.persistence;

import java.util.List;

import javax.inject.Inject;

import org.apache.ibatis.session.SqlSession;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Repository;

import kr.co.domain.BookVO;
@Repository
public class BookDAOImpl implements BookDAO {
	@Inject
	private SqlSession sqlsession;
	
	private final String NAMESPACE = "kr.co.mapper.BookMapper";
	@Override
	public List<BookVO> bookRank() {
		return sqlsession.selectList(NAMESPACE+".bookrank");
	}

}
