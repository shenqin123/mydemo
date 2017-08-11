package domain;

public class Courses {
	private int id;
	private String baogaoren;
	private String course_place;
	private String danwei;
	private String course_content;
	private String course_time;
	private int anpairenshu;
	private String course_state;
	public int getId() {
		return id;
	}
	public void setId(int id) {
		this.id = id;
	}
	public String getBaogaoren() {
		return baogaoren;
	}
	public void setBaogaoren(String baogaoren) {
		this.baogaoren = baogaoren;
	}
	public String getCourse_place() {
		return course_place;
	}
	public void setCourse_place(String course_place) {
		this.course_place = course_place;
	}
	public String getDanwei() {
		return danwei;
	}
	public void setDanwei(String danwei) {
		this.danwei = danwei;
	}
	public String getCourse_content() {
		return course_content;
	}
	public void setCourse_content(String course_content) {
		this.course_content = course_content;
	}
	public String getCourse_time() {
		return course_time;
	}
	public void setCourse_time(String course_time) {
		this.course_time = course_time;
	}
	public int getAnpairenshu() {
		return anpairenshu;
	}
	public void setAnpairenshu(int anpairenshu) {
		this.anpairenshu = anpairenshu;
	}
	public String getCourse_state() {
		return course_state;
	}
	public void setCourse_state(String course_state) {
		this.course_state = course_state;
	}
	public Courses(int id, String baogaoren, String course_place,
			String danwei, String course_content, String course_time,
			int anpairenshu, String course_state) {
		super();
		this.id = id;
		this.baogaoren = baogaoren;
		this.course_place = course_place;
		this.danwei = danwei;
		this.course_content = course_content;
		this.course_time = course_time;
		this.anpairenshu = anpairenshu;
		this.course_state = course_state;
	}
	public Courses() {
		super();
		// TODO Auto-generated constructor stub
	}
	@Override
	public String toString() {
		return "Courses [id=" + id + ", baogaoren=" + baogaoren
				+ ", course_place=" + course_place + ", danwei=" + danwei
				+ ", course_content=" + course_content + ", course_time="
				+ course_time + ", anpairenshu=" + anpairenshu
				+ ", course_state=" + course_state + "]";
	}
	
	
}
