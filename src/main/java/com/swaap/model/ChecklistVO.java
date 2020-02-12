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
@Table(name="checklist_table")
public class ChecklistVO {

	@Id
	@Column(name="id")
	@GeneratedValue(strategy=GenerationType.IDENTITY)
	private int id;
	
	@ManyToOne
	@JoinColumn(name="product_id")
	private ProductVO productVO;
		
	@Column(name="status")
	private boolean status=true;

	@Column(name="checklist_status")
	private String checklistStatus;
	
	@Column(name="request_date")
	private String requestDate;
	
	@Column(name="refill_approval_date")
	private String approveDate;
	
	@Column(name="request_quantity")
	private int requestQuantity;

	public int getId() {
		return id;
	}

	public void setId(int id) {
		this.id = id;
	}

	public ProductVO getProductVO() {
		return productVO;
	}

	public void setProductVO(ProductVO productVO) {
		this.productVO = productVO;
	}

	public boolean isStatus() {
		return status;
	}

	public void setStatus(boolean status) {
		this.status = status;
	}

	public String getChecklistStatus() {
		return checklistStatus;
	}

	public void setChecklistStatus(String checklistStatus) {
		this.checklistStatus = checklistStatus;
	}

	public String getRequestDate() {
		return requestDate;
	}

	public void setRequestDate(String requestDate) {
		this.requestDate = requestDate;
	}

	public String getApproveDate() {
		return approveDate;
	}

	public void setApproveDate(String approveDate) {
		this.approveDate = approveDate;
	}

	public int getRequestQuantity() {
		return requestQuantity;
	}

	public void setRequestQuantity(int requestQuantity) {
		this.requestQuantity = requestQuantity;
	}

	
	
}
