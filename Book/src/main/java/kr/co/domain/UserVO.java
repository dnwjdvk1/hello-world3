package kr.co.domain;

public class UserVO {
	private String user_id;
	private int password;
	private String name;
	private int age;
	private String email;
	private String phone_num;
	private String address;
	
	public UserVO(String user_id, int password){
		this.user_id = user_id;
		this.password = password;
	}
	public String getUser_id() {
		return user_id;
	}
	public void setUser_id(String user_id) {
		this.user_id = user_id;
	}
	public int getPassword() {
		return password;
	}
	public void setPassword(int password) {
		this.password = password;
	}
	public String getName() {
		return name;
	}
	public void setName(String name) {
		this.name = name;
	}
	public int getAge() {
		return age;
	}
	public void setAge(int age) {
		this.age = age;
	}
	public String getEmail() {
		return email;
	}
	public void setEmail(String email) {
		this.email = email;
	}
	public String getPhone_num() {
		return phone_num;
	}
	public void setPhone_num(String phone_num) {
		this.phone_num = phone_num;
	}
	public String getAddress() {
		return address;
	}
	public void setAddress(String address) {
		this.address = address;
	}
	@Override
	public int hashCode() {
		final int prime = 31;
		int result = 1;
		result = prime * result + ((user_id == null) ? 0 : user_id.hashCode());
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
		UserVO other = (UserVO) obj;
		if (user_id == null) {
			if (other.user_id != null)
				return false;
		} else if (!user_id.equals(other.user_id))
			return false;
		return true;
	}
	public UserVO(String user_id, int password, String name, int age, String email, String phone_num, String address) {
		super();
		this.user_id = user_id;
		this.password = password;
		this.name = name;
		this.age = age;
		this.email = email;
		this.phone_num = phone_num;
		this.address = address;
	}
	public UserVO() {
		super();
		// TODO Auto-generated constructor stub
	}
	
	
	
	
}
