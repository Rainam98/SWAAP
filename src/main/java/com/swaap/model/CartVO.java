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
@Table(name = "cart_table")
public class CartVO {
	@Id
	@GeneratedValue(strategy = GenerationType.IDENTITY)
	@Column(name = "id")
	private int id;

	@ManyToOne
	@JoinColumn(name = "product_id")
	private ProductVO productVO;

	@ManyToOne
	@JoinColumn(name = "login_id")
	private LoginVO loginVO;

	@Column(name = "status")
	private boolean status = false;

	@Column(name = "product_quantity_bought")
	private int productQuantityBought;
	
	@ManyToOne
	@JoinColumn(name = "order_id")
	private OrderVO orderVO;
	
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

	public LoginVO getLoginVO() {
		return loginVO;
	}

	public void setLoginVO(LoginVO loginVO) {
		this.loginVO = loginVO;
	}

	public boolean isStatus() {
		return status;
	}

	public void setStatus(boolean status) {
		this.status = status;
	}

	public int getProductQuantityBought() {
		return productQuantityBought;
	}

	public void setProductQuantityBought(int productQuantityBought) {
		this.productQuantityBought = productQuantityBought;
	}

	public OrderVO getOrderVO() {
		return orderVO;
	}

	public void setOrderVO(OrderVO orderVO) {
		this.orderVO = orderVO;
	}
	
}
