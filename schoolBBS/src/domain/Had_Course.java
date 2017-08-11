package domain;

public class Had_Course {
	private int id;
	private String usernumber;
	private String username;
	private String course_details;
	
	public int getId() {
		return id;
	}
	public void setId(int id) {
		this.id = id;
	}
	public String getCourse_details() {
		return course_details;
	}
	public void setCourse_details(String course_details) {
		this.course_details = course_details;
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
	public Had_Course(int id, String usernumber, String username,String course_details) {
		super();
		this.id = id;
		this.usernumber = usernumber;
		this.username = username;
		this.course_details = course_details;
	}
	public Had_Course() {
		super();
	}
}
