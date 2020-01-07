package com.swaap.model;

import javax.persistence.Column;
import javax.persistence.Entity;
import javax.persistence.GeneratedValue;
import javax.persistence.GenerationType;
import javax.persistence.Id;
import javax.persistence.JoinColumn;
import javax.persistence.ManyToOne;
import javax.persistence.Table;

@Entity
@Table(name="BranchTable")
public class BranchVO {
	@Id
	@GeneratedValue(strategy=GenerationType.IDENTITY)
	@Column(name="id")
	private int id;
	
	@Column(name="branch_name")
	private String branchName;
	
	@Column(name="status")
	private boolean status=false;
	
	@Column(name="username")
	private String userName;
	
	@Column(name="password")
	private String password;
	
	@ManyToOne
	@JoinColumn(name="stateVO")
	private StateVO stateVO;
	
	@ManyToOne
	@JoinColumn(name="cityVO")
	private CityVO cityVO;
	
	public String getUserName() {
		return userName;
	}

	public void setUserName(String userName) {
		this.userName = userName;
	}

	public String getPassword() {
		return password;
	}

	public void setPassword(String password) {
		this.password = password;
	}
	
	public int getId() {
		return id;
	}

	public void setId(int id) {
		this.id = id;
	}

	public String getBranchName() {
		return branchName;
	}

	public void setBranchName(String branchName) {
		this.branchName = branchName;
	}

	public boolean isStatus() {
		return status;
	}

	public void setStatus(boolean status) {
		this.status = status;
	}

	public StateVO getStateVO() {
		return stateVO;
	}

	public void setStateVO(StateVO stateVO) {
		this.stateVO = stateVO;
	}

	public CityVO getCityVO() {
		return cityVO;
	}

	public void setCityVO(CityVO cityVO) {
		this.cityVO = cityVO;
	}
}
