package entity;

import java.sql.Timestamp;

/**
 * Question entity. @author MyEclipse Persistence Tools
 */

public class Question implements java.io.Serializable {

	// Fields

	private Integer id;
	private String qcontent;
	private String qtype;
	private String aanswer;
	private String banswer;
	private String canswer;
	private String danswer;
	private String tanswer;
	private Timestamp createtime;

	// Constructors

	/** default constructor */
	public Question() {
	}

	/** minimal constructor */
	public Question(Timestamp createtime) {
		this.createtime = createtime;
	}

	/** full constructor */
	public Question(String qcontent, String qtype, String aanswer,
			String banswer, String canswer, String danswer, String tanswer,
			Timestamp createtime) {
		this.qcontent = qcontent;
		this.qtype = qtype;
		this.aanswer = aanswer;
		this.banswer = banswer;
		this.canswer = canswer;
		this.danswer = danswer;
		this.tanswer = tanswer;
		this.createtime = createtime;
	}

	// Property accessors

	public Integer getId() {
		return this.id;
	}

	public void setId(Integer id) {
		this.id = id;
	}

	public String getQcontent() {
		return this.qcontent;
	}

	public void setQcontent(String qcontent) {
		this.qcontent = qcontent;
	}

	public String getQtype() {
		return this.qtype;
	}

	public void setQtype(String qtype) {
		this.qtype = qtype;
	}

	public String getAanswer() {
		return this.aanswer;
	}

	public void setAanswer(String aanswer) {
		this.aanswer = aanswer;
	}

	public String getBanswer() {
		return this.banswer;
	}

	public void setBanswer(String banswer) {
		this.banswer = banswer;
	}

	public String getCanswer() {
		return this.canswer;
	}

	public void setCanswer(String canswer) {
		this.canswer = canswer;
	}

	public String getDanswer() {
		return this.danswer;
	}

	public void setDanswer(String danswer) {
		this.danswer = danswer;
	}

	public String getTanswer() {
		return this.tanswer;
	}

	public void setTanswer(String tanswer) {
		this.tanswer = tanswer;
	}

	public Timestamp getCreatetime() {
		return this.createtime;
	}

	public void setCreatetime(Timestamp createtime) {
		this.createtime = createtime;
	}

}