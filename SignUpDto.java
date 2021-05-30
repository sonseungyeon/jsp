package practice_project.model;

public class SignUpDto {
	private int userId;
	private String email;
	private String name;
	private String nickName;
	private String password;
	
	public SignUpDto() {
		
	}

	public SignUpDto(int userId, String email, String name, String nickName, String password) {
		super();
		this.userId = userId;
		this.email = email;
		this.name = name;
		this.nickName = nickName;
		this.password = password;
	}

	public int getUserId() {
		return userId;
	}

	public void setUserId(int userId) {
		this.userId = userId;
	}

	public String getEmail() {
		return email;
	}

	public void setEmail(String email) {
		this.email = email;
	}

	public String getName() {
		return name;
	}

	public void setName(String name) {
		this.name = name;
	}

	public String getNickName() {
		return nickName;
	}

	public void setNickName(String nickName) {
		this.nickName = nickName;
	}

	public String getPassword() {
		return password;
	}

	public void setPassword(String password) {
		this.password = password;
	}

	@Override
	public String toString() {
		return "SignUpDto [userId=" + userId + ", email=" + email + ", name=" + name + ", nickName=" + nickName
				+ ", password=" + password + "]";
	}
}
