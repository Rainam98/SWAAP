package com.swaap.model;

import javax.persistence.CascadeType;
import javax.persistence.Column;
import javax.persistence.Entity;
import javax.persistence.FetchType;
import javax.persistence.GeneratedValue;
import javax.persistence.GenerationType;
import javax.persistence.Id;
import javax.persistence.JoinColumn;
import javax.persistence.JoinTable;
import javax.persistence.ManyToMany;
import javax.persistence.ManyToOne;
import javax.persistence.Table;

import java.util.ArrayList;
import java.util.List;

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

    @Column(name = "product_price")
    private double productPrice;
	
	@Column(name="product_quantity")
	private String productQuantity;
	
	@Column(name="product_description")
	private String productDescription;
	
	@Column(name="product_file_name")
	private String productFileName;
	
	@Column(name="product_file_path")
	private String productFilePath;

	@Column(name = "status")
	private boolean status = false;

	@ManyToOne
	@JoinColumn(name = "categoryVO")
	private CategoryVO categoryVO;

	@ManyToOne
	@JoinColumn(name = "subCategoryVO")
	private SubCategoryVO subCategoryVO;

	@ManyToMany(fetch = FetchType.LAZY,
							cascade = { CascadeType.DETACH, CascadeType.MERGE, CascadeType.PERSIST, CascadeType.REFRESH })
	@JoinTable(name = "branch_product",
						 joinColumns = @JoinColumn(name = "product_id"),
						 inverseJoinColumns = @JoinColumn(name = "branch_id"))
	private List<BranchVO> branchVOList;

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

    public double getProductPrice() {
        return productPrice;
    }

    public void setProductPrice(double productPrice) {
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

	public List<BranchVO> getBranchVOList() {
		return branchVOList;
	}

	public void setBranchVOList(List<BranchVO> branchVOList) {
		this.branchVOList = branchVOList;
	}

	public void addBranch(BranchVO branchVO) {
		if (this.branchVOList == null) {
			branchVOList = new ArrayList<BranchVO>();
		}
		branchVOList.add(branchVO);
	}
}
