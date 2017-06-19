package kr.co.domain;

public class BookVO {
	private String book_code;
	private String book_name;
	private int book_price;
	private String writer;
	private String company;
	private String kind;	
	
	
	@Override
	public String toString() {
		return "BookVO [book_code=" + book_code + ", book_name=" + book_name + ", book_price=" + book_price
				+ ", writer=" + writer + ", company=" + company + ", kind=" + kind + "]";
	}
	public String getBook_name() {
		return book_name;
	}
	public void setBook_name(String book_name) {
		this.book_name = book_name;
	}
	public int getBook_price() {
		return book_price;
	}
	public void setBook_price(int book_price) {
		this.book_price = book_price;
	}
	public String getWriter() {
		return writer;
	}
	public void setWriter(String writer) {
		this.writer = writer;
	}
	public String getCompany() {
		return company;
	}
	public void setCompany(String company) {
		this.company = company;
	}
	public String getKind() {
		return kind;
	}
	public void setKind(String kind) {
		this.kind = kind;
	}
	public String getBook_code() {
		return book_code;
	}
	public void setBook_code(String book_code) {
		this.book_code = book_code;
	}
	
	@Override
	public int hashCode() {
		final int prime = 31;
		int result = 1;
		result = prime * result + ((book_code == null) ? 0 : book_code.hashCode());
		return result;
	}
	@Override
	public boolean equals(Object obj) {
		if (this == obj)
			return true;
		if (obj == null)
			return false;
		if (getClass() != obj.getClass())
			return false;
		BookVO other = (BookVO) obj;
		if (book_code == null) {
			if (other.book_code != null)
				return false;
		} else if (!book_code.equals(other.book_code))
			return false;
		return true;
	}
	
	public BookVO(String book_code, String book_name, int book_price, String writer, String company, String kind) {
		super();
		this.book_code = book_code;
		this.book_name = book_name;
		this.book_price = book_price;
		this.writer = writer;
		this.company = company;
		this.kind = kind;
	}
	
	public BookVO() {
		super();
		// TODO Auto-generated constructor stub
	}
	
	
	
}
