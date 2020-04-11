package com.swaap.controller;

import com.swaap.model.LoginVO;
import com.swaap.model.RegisterVO;
import com.swaap.service.LoginService;
import com.swaap.service.RegisterService;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.security.crypto.bcrypt.BCryptPasswordEncoder;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.ModelAttribute;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.servlet.ModelAndView;

@Controller
public class RegisterController {

    @Autowired
    RegisterService registerService;

    @Autowired
    LoginService loginService;

    @Autowired
    BCryptPasswordEncoder bCryptPasswordEncoder;

    @RequestMapping(value = "/register", method = RequestMethod.GET)
    public ModelAndView loadRegister(Model model) {
        model.addAttribute("registerVO", new RegisterVO());
        return new ModelAndView("register");
    }

    @RequestMapping(value = "/insert", method = RequestMethod.POST)
    public ModelAndView goToHomePage(@ModelAttribute RegisterVO registerVO, @ModelAttribute LoginVO loginVO) {

        loginVO.setUsername(registerVO.getLoginVO().getUsername());
        loginVO.setPassword(bCryptPasswordEncoder.encode(registerVO.getLoginVO().getPassword()));
        loginVO.setEnabled("1");
        loginVO.setRole("ROLE_USER");
        loginVO.setStatus(true);
        this.loginService.insertLogin(loginVO);

        registerVO.setLoginVO(loginVO);
        this.registerService.insertRegister(registerVO);

        return new ModelAndView("redirect:/login");
    }
}
