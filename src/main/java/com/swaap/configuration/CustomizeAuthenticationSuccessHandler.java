package com.swaap.configuration;

import java.io.IOException;

import javax.servlet.ServletException;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import org.springframework.security.core.Authentication;
import org.springframework.security.core.GrantedAuthority;
import org.springframework.security.web.authentication.AuthenticationSuccessHandler;
import org.springframework.stereotype.Component;

@Component
public class CustomizeAuthenticationSuccessHandler implements AuthenticationSuccessHandler {

	@Override
	public void onAuthenticationSuccess(HttpServletRequest request, HttpServletResponse response,
			Authentication authentication) throws IOException, ServletException {
		// set our response to OK status
		response.setStatus(HttpServletResponse.SC_OK);

		boolean mall = false;
		boolean branch = false;
		boolean user=false;
		
		System.out.println("AT onAuthenticationSuccess(...) function!");

		for (GrantedAuthority auth : authentication.getAuthorities()) {
			if ("ROLE_MALL".equals(auth.getAuthority())) {
				mall = true;
			}else if ("ROLE_BRANCH".equals(auth.getAuthority())) {
				branch = true;
			}else if ("ROLE_USER".equals(auth.getAuthority())) {
				user = true;
			}else {
				
			}
		}

		if (mall) {
			System.out.println("user is mall");
			response.sendRedirect("/mall/index");
		} else if(branch) {
			System.out.println("user is branch");
			response.sendRedirect("/branch/index");
		}else if(user) {
			System.out.println("user is user");
			response.sendRedirect("/user/index");
		}else {
			System.out.println("user is anonymous");
			response.sendRedirect("/403");
		}
	}
}
