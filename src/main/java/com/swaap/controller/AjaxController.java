package com.swaap.controller;

import com.swaap.model.*;
import com.swaap.service.CartService;
import com.swaap.service.LoginService;
import com.swaap.utils.Basemethods;
import org.hibernate.Query;
import org.hibernate.Session;
import org.hibernate.SessionFactory;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.http.HttpStatus;
import org.springframework.http.ResponseEntity;
import org.springframework.web.bind.annotation.*;

import java.util.HashMap;
import java.util.List;
import java.util.Map;

@RestController
@RequestMapping("api/")
public class AjaxController {

    @Autowired
    SessionFactory sessionFactory;

    @Autowired
    LoginService loginService;

    @Autowired
    CartService cartService;

    @GetMapping("cityList/{stateId}")
    public ResponseEntity<List<CityVO>> getCityList(@PathVariable int stateId) {
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

    @GetMapping("toggleUser/{userId}/{enabled}")
    public ResponseEntity toggleUser(@PathVariable int userId, @PathVariable boolean enabled) {
        Session session = sessionFactory.openSession();
        Query q = session.createQuery("update LoginVO set enabled=:enabled where id=:userId");
        q.setParameter("enabled", enabled ? "1" : "0");
        q.setParameter("userId", userId);
        int updateCount = q.executeUpdate();
        return new ResponseEntity(updateCount == 1 ? HttpStatus.OK : HttpStatus.INTERNAL_SERVER_ERROR);
    }

    @GetMapping("user/modifyCart/{cartId}/{quantity}")
    public ResponseEntity modifyCart(@PathVariable int cartId, @PathVariable int quantity) {
        Session session = sessionFactory.openSession();
        Query q = session.createQuery("update CartVO set productQuantityBought=:quantity where id=:cartId");
        q.setParameter("quantity", quantity);
        q.setParameter("cartId", cartId);
        int updateCount = q.executeUpdate();
        return new ResponseEntity(updateCount == 1 ? HttpStatus.OK : HttpStatus.INTERNAL_SERVER_ERROR);
    }

    @GetMapping("user/removeFromCart/{cartId}")
    public ResponseEntity removeFromCart(@PathVariable int cartId) {
        Session session = sessionFactory.openSession();
        Query q = session.createQuery("delete from CartVO where id=:cartId");
        q.setParameter("cartId", cartId);
        int deleteCount = q.executeUpdate();
        return new ResponseEntity(deleteCount == 1 ? HttpStatus.OK : HttpStatus.INTERNAL_SERVER_ERROR);
    }

    @GetMapping(value = "/user/addToCart")
    public ResponseEntity addToCart(@RequestParam int productId) {
        ProductVO productVO = new ProductVO();
        productVO.setId(productId);

        Session session = sessionFactory.openSession();
        Query q = session.createQuery("from CartVO where status=false and productVO.id =:productId and orderVO IS NULL");
        q.setParameter("productId", productId);
        List<CartVO> cartList = q.list();

        if (cartList == null || cartList.isEmpty()) {
            CartVO cartVO = new CartVO();
            cartVO.setProductQuantityBought(1);
            cartVO.setStatus(false);
            cartVO.setProductVO(productVO);

            String userName = Basemethods.getUser();
            List userList = this.loginService.searchUserByUsername(userName);
            LoginVO loginVO = (LoginVO) userList.get(0);

            cartVO.setLoginVO(loginVO);
            this.cartService.insertProductToCart(cartVO);
            return new ResponseEntity(HttpStatus.OK);
        } else {
            return new ResponseEntity(HttpStatus.ALREADY_REPORTED);
        }
    }

    @GetMapping("/user/viewCart")
    public List searchCart() {
        String userName = Basemethods.getUser();
        List userList = this.loginService.searchUserByUsername(userName);
        LoginVO loginVO = (LoginVO) userList.get(0);
        Session session = sessionFactory.openSession();
        Query q = session.createQuery("from CartVO where login_id=" + loginVO.getLoginId() + " and status=false and orderVO IS NULL");
        List productList = q.list();
        return productList;
    }

    @GetMapping("/user/getCartDetails")
    public Map<String, String> getCartDetails() {
        String userName = Basemethods.getUser();
        List userList = this.loginService.searchUserByUsername(userName);
        LoginVO loginVO = (LoginVO) userList.get(0);
        Session session = sessionFactory.openSession();
        Query q = session.createQuery("from CartVO where login_id=" + loginVO.getLoginId() + " and status=false and orderVO IS NULL");
        List productList = q.list();
        int totalProducts = 0;
        double totalAmount = 0.0;
        if (productList != null && !productList.isEmpty()) {
            totalProducts = q.list().size();
            for (Object obj : productList) {
                CartVO cartVO = (CartVO) obj;
                totalAmount += cartVO.getProductQuantityBought() * cartVO.getProductVO().getProductPrice();
            }
        }
        HashMap<String, String> map = new HashMap<String, String>();
        map.put("quantity", totalProducts + "");
        map.put("totalAmount", totalAmount + "");
        return map;
    }

}
