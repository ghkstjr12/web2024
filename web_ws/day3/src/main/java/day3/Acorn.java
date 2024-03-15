package day3;

//학생정보를 저장할 자료형을 정의
public class Acorn {
	
	String id;
	String pw;
	String name;
	
	public Acorn(String id, String pw, String name) {
		super();
		this.id = id;
		this.pw = pw;
		this.name = name;
	}

	public Acorn() {
		// TODO Auto-generated constructor stub
	}

	@Override
	public String toString() {
		return "Acorn [id=" + id + ", pw=" + pw + ", name=" + name + "]";
	}

	public String getId() {
		return id;
	}

	public void setId(String id) {
		this.id = id;
	}

	public String getPw() {
		return pw;
	}

	public void setPw(String pw) {
		this.pw = pw;
	}

	public String getName() {
		return name;
	}

	public void setName(String name) {
		this.name = name;
	}
	
	
}