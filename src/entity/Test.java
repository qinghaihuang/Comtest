package entity;

/**
 * Test entity. @author MyEclipse Persistence Tools
 */

public class Test implements java.io.Serializable {

	// Fields

	private Integer id;
	private String name;
	private String member;
	private Integer fenzhi;
	private String question;
	private String qtype;
	private Integer qid;
	private Integer testtime;

	// Constructors

	/** default constructor */
	public Test() {
	}

	/** full constructor */
	public Test(String name, String member, Integer fenzhi, String question,
			String qtype, Integer qid, Integer testtime) {
		this.name = name;
		this.member = member;
		this.fenzhi = fenzhi;
		this.question = question;
		this.qtype = qtype;
		this.qid = qid;
		this.testtime = testtime;
	}

	// Property accessors

	public Integer getId() {
		return this.id;
	}

	public void setId(Integer id) {
		this.id = id;
	}

	public String getName() {
		return this.name;
	}

	public void setName(String name) {
		this.name = name;
	}

	public String getMember() {
		return this.member;
	}

	public void setMember(String member) {
		this.member = member;
	}

	public Integer getFenzhi() {
		return this.fenzhi;
	}

	public void setFenzhi(Integer fenzhi) {
		this.fenzhi = fenzhi;
	}

	public String getQuestion() {
		return this.question;
	}

	public void setQuestion(String question) {
		this.question = question;
	}

	public String getQtype() {
		return this.qtype;
	}

	public void setQtype(String qtype) {
		this.qtype = qtype;
	}

	public Integer getQid() {
		return this.qid;
	}

	public void setQid(Integer qid) {
		this.qid = qid;
	}

	public Integer getTesttime() {
		return this.testtime;
	}

	public void setTesttime(Integer testtime) {
		this.testtime = testtime;
	}

}