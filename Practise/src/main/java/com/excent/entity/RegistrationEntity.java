package com.excent.entity;

import javax.persistence.*;

@Entity
@Table(name="Registration")
public class RegistrationEntity {
	@Id
	@GeneratedValue(strategy=GenerationType.AUTO)
	@Column(name = "REG_ACC_ID")
	private long regId;
	private long acc_no;
	private String acc_card_holder_name;
	private long pincode;
	private long credit_card_no;
	private int cvv;
	
	public RegistrationEntity(long acc_no, String acc_card_holder_name, long pincode, long credit_card_no, int cvv) {
		this.acc_no = acc_no;
		this.acc_card_holder_name = acc_card_holder_name;
		this.pincode = pincode;
		this.credit_card_no = credit_card_no;
		this.cvv = cvv;
	}
	
	public RegistrationEntity() {
		
	}

	

	public long getRegId() {
		return regId;
	}
	public void setRegId(long regId) {
		this.regId = regId;
	}
	public long getAcc_no() {
		return acc_no;
	}
	public void setAcc_no(long acc_no) {
		this.acc_no = acc_no;
	}
	public String getAcc_card_holder_name() {
		return acc_card_holder_name;
	}
	public void setAcc_card_holder_name(String acc_card_holder_name) {
		this.acc_card_holder_name = acc_card_holder_name;
	}
	public long getPincode() {
		return pincode;
	}
	public void setPincode(long pincode) {
		this.pincode = pincode;
	}
	public long getCredit_card_no() {
		return credit_card_no;
	}
	public void setCredit_card_no(long credit_card_no) {
		this.credit_card_no = credit_card_no;
	}
	public int getCvv() {
		return cvv;
	}
	public void setCvv(int cvv) {
		this.cvv = cvv;
	}
	
}
