package entity;

/**
 * Teacher entity. @author MyEclipse Persistence Tools
 */

public class Teacher implements java.io.Serializable {

	// Fields

	private Integer tno;
	private String tpwd;
	private String tname;
	private String tsex;
	private String tdept;

	// Constructors

	/** default constructor */
	public Teacher() {
	}

	/** minimal constructor */
	public Teacher(Integer tno) {
		this.tno = tno;
	}

	/** full constructor */
	public Teacher(Integer tno, String tpwd, String tname, String tsex,
			String tdept) {
		this.tno = tno;
		this.tpwd = tpwd;
		this.tname = tname;
		this.tsex = tsex;
		this.tdept = tdept;
	}

	// Property accessors

	public Integer getTno() {
		return this.tno;
	}

	public void setTno(Integer tno) {
		this.tno = tno;
	}

	public String getTpwd() {
		return this.tpwd;
	}

	public void setTpwd(String tpwd) {
		this.tpwd = tpwd;
	}

	public String getTname() {
		return this.tname;
	}

	public void setTname(String tname) {
		this.tname = tname;
	}

	public String getTsex() {
		return this.tsex;
	}

	public void setTsex(String tsex) {
		this.tsex = tsex;
	}

	public String getTdept() {
		return this.tdept;
	}

	public void setTdept(String tdept) {
		this.tdept = tdept;
	}

}