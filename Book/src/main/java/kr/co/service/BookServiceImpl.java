package kr.co.service;

import java.util.List;

import javax.inject.Inject;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import kr.co.domain.BookVO;
import kr.co.persistence.BookDAO;
@Service
public class BookServiceImpl implements BookService {
	@Inject
	BookDAO dao;
	
	@Override
	public List<BookVO> bookRank() {
		// TODO Auto-generated method stub
		return dao.bookRank();
	}

}
