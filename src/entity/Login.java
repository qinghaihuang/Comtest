package entity;

/**
 * Login entity. @author MyEclipse Persistence Tools
 */

public class Login {

	// Fields

	private Integer id;
	private String uname;
	private String upwd;

	// Constructors

	/** default constructor */
	public Login() {
	}

	/** full constructor */
	public Login(String uname, String upwd) {
		this.uname = uname;
		this.upwd = upwd;
	}

	// Property accessors

	public Integer getId() {
		return this.id;
	}

	public void setId(Integer id) {
		this.id = id;
	}

	public String getUname() {
		return this.uname;
	}

	public void setUname(String uname) {
		this.uname = uname;
	}

	public String getUpwd() {
		return this.upwd;
	}

	public void setUpwd(String upwd) {
		this.upwd = upwd;
	}

}