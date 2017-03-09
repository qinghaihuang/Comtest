package entity;

/**
 * Student entity. @author MyEclipse Persistence Tools
 */

public class Student implements java.io.Serializable {

	// Fields

	private Integer sno;
	private String spwd;
	private String comfirmpwd;
	private String sname;
	private String ssex;
	private String sclass;
	private String sdept;
	private String sscore;

	// Constructors

	/** default constructor */
	public Student() {
	}

	/** minimal constructor */
	public Student(Integer sno) {
		this.sno = sno;
	}

	/** full constructor */
	public Student(Integer sno, String spwd, String comfirmpwd, String sname,
			String ssex, String sclass, String sdept, String sscore) {
		this.sno = sno;
		this.spwd = spwd;
		this.comfirmpwd = comfirmpwd;
		this.sname = sname;
		this.ssex = ssex;
		this.sclass = sclass;
		this.sdept = sdept;
		this.sscore = sscore;
	}

	// Property accessors

	public Integer getSno() {
		return this.sno;
	}

	public void setSno(Integer sno) {
		this.sno = sno;
	}

	public String getSpwd() {
		return this.spwd;
	}

	public void setSpwd(String spwd) {
		this.spwd = spwd;
	}

	public String getComfirmpwd() {
		return this.comfirmpwd;
	}

	public void setComfirmpwd(String comfirmpwd) {
		this.comfirmpwd = comfirmpwd;
	}

	public String getSname() {
		return this.sname;
	}

	public void setSname(String sname) {
		this.sname = sname;
	}

	public String getSsex() {
		return this.ssex;
	}

	public void setSsex(String ssex) {
		this.ssex = ssex;
	}

	public String getSclass() {
		return this.sclass;
	}

	public void setSclass(String sclass) {
		this.sclass = sclass;
	}

	public String getSdept() {
		return this.sdept;
	}

	public void setSdept(String sdept) {
		this.sdept = sdept;
	}

	public String getSscore() {
		return this.sscore;
	}

	public void setSscore(String sscore) {
		this.sscore = sscore;
	}

}