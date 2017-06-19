package kr.co.service;

import java.util.List;

import kr.co.domain.BookVO;

public interface BookService {
	public abstract List<BookVO> bookRank();
}
