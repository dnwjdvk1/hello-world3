package kr.co.persistence;

import java.util.List;

import kr.co.domain.BookVO;

public interface BookDAO {
	public abstract List<BookVO> bookRank();
}
