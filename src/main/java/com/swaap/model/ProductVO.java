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
@Table(name="product_table")
public class ProductVO {
	@Id
	@GeneratedValue(strategy=GenerationType.IDENTITY)
	@Column(name="id")
	private int id;
	
	@Column(name="product_name")
	private String productName;
	
	@Column(name="product_weight")
	private String productWeight;
	
	@Column(name="product_price")
	private String productPrice;
	
	@Column(name="product_quantity")
	private String productQuantity;
	
	@Column(name="product_description")
	private String productDescription;
	
	@Column(name="product_file_name")
	private String productFileName;
	
	@Column(name="product_file_path")
	private String productFilePath;
	
	@Column(name="status")
	private boolean status=false;
	
	@ManyToOne
	@JoinColumn(name="branchVO")
	private BranchVO branchVO;
	
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

	public String getProductName() {
		return productName;
	}

	public void setProductName(String productName) {
		this.productName = productName;
	}

	public String getProductWeight() {
		return productWeight;
	}

	public void setProductWeight(String productWeight) {
		this.productWeight = productWeight;
	}

	public String getProductPrice() {
		return productPrice;
	}

	public void setProductPrice(String productPrice) {
		this.productPrice = productPrice;
	}
	
	public String getProductQuantity() {
		return productQuantity;
	}

	public void setProductQuantity(String productQuantity) {
		this.productQuantity = productQuantity;
	}

	public String getProductFileName() {
		return productFileName;
	}

	public void setProductFileName(String productFileName) {
		this.productFileName = productFileName;
	}

	public String getProductFilePath() {
		return productFilePath;
	}

	public void setProductFilePath(String productFilePath) {
		this.productFilePath = productFilePath;
	}

	public boolean isStatus() {
		return status;
	}

	public void setStatus(boolean status) {
		this.status = status;
	}

	public BranchVO getBranchVO() {
		return branchVO;
	}

	public void setBranchVO(BranchVO branchVO) {
		this.branchVO = branchVO;
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

	public String getProductDescription() {
		return productDescription;
	}

	public void setProductDescription(String productDescription) {
		this.productDescription = productDescription;
	}
}
