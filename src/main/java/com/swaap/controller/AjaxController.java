package com.swaap.controller;

import com.swaap.model.CategoryVO;
import com.swaap.model.CityVO;
import com.swaap.model.ProductVO;
import com.swaap.model.SubCategoryVO;
import org.hibernate.Query;
import org.hibernate.Session;
import org.hibernate.SessionFactory;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.http.HttpStatus;
import org.springframework.http.ResponseEntity;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.PathVariable;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RestController;

import java.util.List;

@RestController
@RequestMapping("api/")
public class AjaxController {

    @Autowired
    SessionFactory sessionFactory;

    @GetMapping("cityList/{stateId}")
    public ResponseEntity<List<CityVO>> getCityList(@PathVariable int stateId){
        Session session = sessionFactory.openSession();
        Query q = session.createQuery("from CityVO where status=true and stateVO.status=true and stateVO.id =:stateId");
        q.setParameter("stateId", stateId);
        List<CityVO> cities = q.list();

        if (cities == null || cities.isEmpty())
            return new ResponseEntity<List<CityVO>>(HttpStatus.NOT_FOUND);

        return new ResponseEntity<List<CityVO>>(cities, HttpStatus.OK);
    }

    @GetMapping("allCategoryList/")
    public ResponseEntity<List<CategoryVO>> getSubcategories() {
        Session session = sessionFactory.openSession();
        Query q = session.createQuery("from CategoryVO where status=true");
        List<CategoryVO> categories = q.list();

        if (categories == null && categories.isEmpty())
            return new ResponseEntity<List<CategoryVO>>(HttpStatus.NOT_FOUND);

        return new ResponseEntity<List<CategoryVO>>(categories, HttpStatus.OK);
    }

    @GetMapping("subCategoryList/{categoryId}")
    public ResponseEntity<List<SubCategoryVO>> getSubcategories(@PathVariable int categoryId) {
        Session session = sessionFactory.openSession();
        Query q = session.createQuery("from SubCategoryVO where status=true and categoryVO.status = true and categoryVO.id =:categoryId");
        q.setParameter("categoryId", categoryId);
        List<SubCategoryVO> subCategories = q.list();

        if (subCategories == null && subCategories.isEmpty())
            return new ResponseEntity<List<SubCategoryVO>>(HttpStatus.NOT_FOUND);

        return new ResponseEntity<List<SubCategoryVO>>(subCategories, HttpStatus.OK);
    }

    @GetMapping("allSubCategoryList/")
    public ResponseEntity<List<SubCategoryVO>> getAllSubcategories() {
        Session session = sessionFactory.openSession();
        Query q = session.createQuery("from SubCategoryVO where status=true");
        List<SubCategoryVO> subCategories = q.list();

        if (subCategories == null && subCategories.isEmpty())
            return new ResponseEntity<List<SubCategoryVO>>(HttpStatus.NOT_FOUND);

        return new ResponseEntity<List<SubCategoryVO>>(subCategories, HttpStatus.OK);
    }

    @GetMapping("productList/{subCategoryId}")
    public ResponseEntity<List<ProductVO>> getProducts(@PathVariable int subCategoryId) {
        Session session = sessionFactory.openSession();
        Query q = session.createQuery("from ProductVO where status=true and subCategoryVO.status = true and categoryVO.status = true and subCategoryVO.id =:subCategoryId");
        q.setParameter("subCategoryId", subCategoryId);
        List<ProductVO> products = q.list();

        if (products == null || products.isEmpty())
            return new ResponseEntity<List<ProductVO>>(HttpStatus.NOT_FOUND);

        return new ResponseEntity<List<ProductVO>>(products, HttpStatus.OK);
    }

    @GetMapping("allProductList/")
    public ResponseEntity<List<ProductVO>> getAllProducts() {
        Session session = sessionFactory.openSession();
        Query q = session.createQuery("from ProductVO where status=true");
        List<ProductVO> products = q.list();

        if (products == null || products.isEmpty())
            return new ResponseEntity<List<ProductVO>>(HttpStatus.NOT_FOUND);

        return new ResponseEntity<List<ProductVO>>(products, HttpStatus.OK);
    }

}
