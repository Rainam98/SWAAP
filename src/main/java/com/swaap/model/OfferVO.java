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
@Table(name="offer_table")
public class OfferVO {
	@Id
	@GeneratedValue(strategy=GenerationType.IDENTITY)
	@Column(name="id")
	private int id;
	
	@Column(name="offer_name")
	private String offerName;
	
	@Column(name="discount_percent")
	private String discountPercent;
	
	@Column(name="offer_valid_from")
	private String offerValidFrom;
	
	@Column(name="offer_valid_till")
	private String offerValidTill;
	
	@Column(name="status")
	private boolean status=false;
	
	@ManyToOne
	@JoinColumn(name="productVO")
	private ProductVO productVO;
	
	@ManyToOne
	@JoinColumn(name="categoryVO")
	private CategoryVO categoryVO;
	
	@ManyToOne
	@JoinColumn(name="subCategoryVO")
	private SubCategoryVO subCategoryVO;

	public int getId() {
		return id;
	}

	public void setId(int id) {
		this.id = id;
	}

	public String getOfferName() {
		return offerName;
	}

	public void setOfferName(String offerName) {
		this.offerName = offerName;
	}

	public String getDiscountPercent() {
		return discountPercent;
	}

	public void setDiscountPercent(String discountPercent) {
		this.discountPercent = discountPercent;
	}

	public String getOfferValidFrom() {
		return offerValidFrom;
	}

	public void setOfferValidFrom(String offerValidFrom) {
		this.offerValidFrom = offerValidFrom;
	}

	public String getOfferValidTill() {
		return offerValidTill;
	}

	public void setOfferValidTill(String offerValidTill) {
		this.offerValidTill = offerValidTill;
	}

	public boolean isStatus() {
		return status;
	}

	public void setStatus(boolean status) {
		this.status = status;
	}

	public ProductVO getProductVO() {
		return productVO;
	}

	public void setProductVO(ProductVO productVO) {
		this.productVO = productVO;
	}

	public CategoryVO getCategoryVO() {
		return categoryVO;
	}

	public void setCategoryVO(CategoryVO categoryVO) {
		this.categoryVO = categoryVO;
	}

	public SubCategoryVO getSubCategoryVO() {
		return subCategoryVO;
	}

	public void setSubCategoryVO(SubCategoryVO subCategoryVO) {
		this.subCategoryVO = subCategoryVO;
	}
}
