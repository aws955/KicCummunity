package aa.bb.KicCummunity.bean;

import aa.bb.KicCummunity.utility.Utility;

public class ReplyBean {
	private String r_num,r_content,r_bno,r_sdate,r_mno,r_ip;

	public String getR_num() {
		return r_num;
	}

	public void setR_num(String r_num) {
		this.r_num = r_num;
	}

	public String getR_content() {
		return r_content;
	}

	public void setR_content(String r_content) {
		this.r_content = Utility.getConvert(r_content);
	}

	public String getR_bno() {
		return r_bno;
	}

	public void setR_bno(String r_bno) {
		this.r_bno = r_bno;
	}

	public String getR_sdate() {
		return r_sdate;
	}

	public void setR_sdate(String r_sdate) {
		this.r_sdate = r_sdate;
	}

	public String getR_mno() {
		return r_mno;
	}

	public void setR_mno(String r_mno) {
		this.r_mno = r_mno;
	}

	public String getR_ip() {
		return r_ip;
	}

	public void setR_ip(String r_ip) {
		this.r_ip = r_ip;
	}
	
}
