package com.swaap.controller;

import java.io.BufferedOutputStream;
import java.io.FileOutputStream;
import java.io.IOException;
import java.nio.file.Path;
import java.nio.file.Paths;
import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.ModelAttribute;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.bind.annotation.RequestParam;
import org.springframework.web.multipart.MultipartFile;
import org.springframework.web.servlet.ModelAndView;

import com.swaap.model.CategoryVO;
import com.swaap.model.ProductVO;
import com.swaap.model.SubCategoryVO;
import com.swaap.service.BranchService;
import com.swaap.service.CategoryService;
import com.swaap.service.ProductService;
import com.swaap.service.SubCategoryService;

@Controller
public class ProductController {
	@Autowired
	CategoryService categoryService;
	
	@Autowired
	SubCategoryService subCategoryService;
	
	@Autowired
	ProductService productService;
	
	@Autowired
	BranchService branchService;
	
	private static String UPLOAD_FOLDER = "D:\\Imp\\projectworkspace\\SWAAP\\src\\main\\resources\\static\\userResources\\image\\product";
	@RequestMapping(value="mall/addProduct", method=RequestMethod.GET)
	public ModelAndView addProduct(Model model)
	{
		List CategoryList=this.categoryService.searchCategory();
		List SubCategoryList=this.subCategoryService.searchSubCategory();
		List BranchList=this.branchService.searchBranch();
		model.addAttribute("categoryList",CategoryList);
		model.addAttribute("subCategoryList",SubCategoryList);
		model.addAttribute("branchList",BranchList);
		model.addAttribute("productVO", new ProductVO());
		return new ModelAndView("mall/addProduct");
	}
	
	@RequestMapping(value="mall/saveProduct", method=RequestMethod.POST)
	public ModelAndView saveProduct(@ModelAttribute ProductVO productVO, @RequestParam("file") MultipartFile file)
	{
		productVO.setStatus(true);
		String fileName = productVO.getProductName();
		try {
			byte[] b = file.getBytes();
			Path path = Paths.get(UPLOAD_FOLDER + fileName);
			BufferedOutputStream bufferedOutputStream = new BufferedOutputStream(new FileOutputStream(path+fileName));
			bufferedOutputStream.write(b);
			productVO.setProductFilePath(path.toString()); 
			productVO.setProductFileName(fileName);	
			bufferedOutputStream.flush();
			bufferedOutputStream.close();
		
		} catch (IOException e) {
			e.printStackTrace();
		}
		this.productService.insertProduct(productVO);
		return new ModelAndView("redirect:/mall/viewProduct");
	}
	
	@RequestMapping(value="mall/viewProduct", method=RequestMethod.GET)
	public ModelAndView viewProduct(@ModelAttribute ProductVO productVO)
	{
		List productList=this.productService.searchProduct();
		return new ModelAndView("mall/viewProduct","productList",productList);
	}
	
	@RequestMapping(value="mall/deleteProduct", method=RequestMethod.GET)
	public ModelAndView deleteProduct(@ModelAttribute ProductVO productVO, @RequestParam int findById)
	{
		productVO.setId(findById);
		List productList=this.productService.editProduct(productVO);
		ProductVO foundProductVO=(ProductVO)productList.get(0);
		foundProductVO.setStatus(false);
		this.productService.insertProduct(foundProductVO);
		return new ModelAndView("redirect:/mall/viewProduct");
	}
	
	@RequestMapping(value="mall/updateProduct", method=RequestMethod.GET)
	public ModelAndView updateProduct(@ModelAttribute ProductVO productVO, @RequestParam int findById, Model model)
	{
		productVO.setId(findById);
		List productList=this.productService.editProduct(productVO);
		List CategoryList=this.categoryService.searchCategory();
		List SubCategoryList=this.subCategoryService.searchSubCategory();
		List BranchList=this.branchService.searchBranch();
		model.addAttribute("productVO",(ProductVO)productList.get(0));
		model.addAttribute("categoryList",CategoryList);
		model.addAttribute("subCategoryList",SubCategoryList);
		model.addAttribute("branchList",BranchList);
		return new ModelAndView("mall/addProduct");
	}
	@RequestMapping(value="branch/viewProduct", method=RequestMethod.GET)
	public ModelAndView viewBranchProduct(@ModelAttribute ProductVO productVO)
	{
		List productList=this.productService.searchProduct();
		return new ModelAndView("branch/viewProduct","productList",productList);
	}
	@RequestMapping(value="user/productDetail", method=RequestMethod.GET)
	public ModelAndView viewProductDetail(@ModelAttribute SubCategoryVO subCategoryVO, @RequestParam int subCategoryId, @ModelAttribute ProductVO productVO)
	{
		subCategoryVO.setId(subCategoryId);
		productVO.setSubCategoryVO(subCategoryVO);
		List productList=this.productService.searchProductBySubCategory(productVO.getSubCategoryVO());
		System.out.println(productList.get(0).toString());
		return new ModelAndView("user/productDetail","productList",productList);
	}
}
