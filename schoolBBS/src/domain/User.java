package domain;

public class User {
	private int id;
	private String usernumber;
	private String username;
	private String userpassword;
	private int user_root;
	private int course_count;
	private int login_status;
	public int getId() {
		return id;
	}
	public void setId(int id) {
		this.id = id;
	}
	public String getUsernumber() {
		return usernumber;
	}
	public void setUsernumber(String usernumber) {
		this.usernumber = usernumber;
	}
	public String getUsername() {
		return username;
	}
	public void setUsername(String username) {
		this.username = username;
	}
	public String getUserpassword() {
		return userpassword;
	}
	public void setUserpassword(String userpassword) {
		this.userpassword = userpassword;
	}
	public int getUser_root() {
		return user_root;
	}
	public void setUser_root(int user_root) {
		this.user_root = user_root;
	}
	public int getCourse_count() {
		return course_count;
	}
	public void setCourse_count(int course_count) {
		this.course_count = course_count;
	}
	public int getLogin_status() {
		return login_status;
	}
	public void setLogin_status(int login_status) {
		this.login_status = login_status;
	}
	public User(int id, String usernumber, String username,
			String userpassword, int user_root, int course_count,
			int login_status) {
		super();
		this.id = id;
		this.usernumber = usernumber;
		this.username = username;
		this.userpassword = userpassword;
		this.user_root = user_root;
		this.course_count = course_count;
		this.login_status = login_status;
	}
	public User() {
		super();
		// TODO Auto-generated constructor stub
	}
	@Override
	public String toString() {
		return "User [id=" + id + ", usernumber=" + usernumber + ", username="
				+ username + ", userpassword=" + userpassword + ", user_root="
				+ user_root + ", course_count=" + course_count
				+ ", login_status=" + login_status + "]";
	}
	
	
}
