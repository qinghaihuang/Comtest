package entity;

/**
 * Single_choice entity. @author MyEclipse Persistence Tools
 */

public class Single_choice implements java.io.Serializable {

	// Fields

	private Integer id;
	private String scontent;
	private Integer schapter;
	private String aanswer;
	private String banswer;
	private String canswer;
	private String danswer;
	private String tanswer;

	// Constructors

	/** default constructor */
	public Single_choice() {
	}

	/** full constructor */
	public Single_choice(String scontent, Integer schapter, String aanswer,
			String banswer, String canswer, String danswer, String tanswer) {
		this.scontent = scontent;
		this.schapter = schapter;
		this.aanswer = aanswer;
		this.banswer = banswer;
		this.canswer = canswer;
		this.danswer = danswer;
		this.tanswer = tanswer;
	}

	// Property accessors

	public Integer getId() {
		return this.id;
	}

	public void setId(Integer id) {
		this.id = id;
	}

	public String getScontent() {
		return this.scontent;
	}

	public void setScontent(String scontent) {
		this.scontent = scontent;
	}

	public Integer getSchapter() {
		return this.schapter;
	}

	public void setSchapter(Integer schapter) {
		this.schapter = schapter;
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

}