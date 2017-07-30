package pe.fap.hospital.citamedica.controller;

import java.util.Collection;
import java.util.Iterator;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import org.springframework.security.core.Authentication;
import org.springframework.security.core.GrantedAuthority;
import org.springframework.security.core.context.SecurityContextHolder;
import org.springframework.security.core.userdetails.UserDetails;
import org.springframework.security.web.authentication.logout.SecurityContextLogoutHandler;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.servlet.ModelAndView;

import pe.fap.hospital.citamedica.utils.AuthUtilImpl;

/**
 * Created by esilva on 20/07/2017.
 */
@Controller
@RequestMapping("/")
public class LoginController {

//	private Logger _log = Logger.getLogger(LoginController.class);
	
    @RequestMapping(value = {"/"}, method = RequestMethod.GET)
    public ModelAndView homePage() {
    	
        ModelAndView model = new ModelAndView();
        
        model.setViewName("security/welcome");
        
        return model;
    }

    @RequestMapping(value = {"/login"}, method = RequestMethod.GET)
    public ModelAndView loginPage() {
    	
        ModelAndView model = new ModelAndView();
        
        model.setViewName("security/login");
        
        return model;
    }

    @RequestMapping(value = {"/accessdenied"}, method = RequestMethod.GET)
    public ModelAndView accessDeniedPage() {
    	
        ModelAndView model = new ModelAndView();
        
        model.addObject("message", "Either username or password is incorrect.");
        
        model.setViewName("security/accessdenied");
        
        return model;
    }

    @RequestMapping(value = {"/userpage"}, method = RequestMethod.GET)
    public ModelAndView userPage() {

    	System.out.println(SecurityContextHolder.getContext().getAuthentication().getName());
    	System.out.println(SecurityContextHolder.getContext().getAuthentication().getCredentials());
    	System.out.println(SecurityContextHolder.getContext().getAuthentication().getDetails());
    	System.out.println(SecurityContextHolder.getContext().getAuthentication().isAuthenticated());
    	System.out.println(SecurityContextHolder.getContext().getAuthentication().getPrincipal());
    	System.out.println(SecurityContextHolder.getContext().getAuthentication().toString());
    	
    	for (GrantedAuthority a : SecurityContextHolder.getContext().getAuthentication().getAuthorities()) {
			System.out.println("	rol: " + a);
		}
    	
        Object principal = SecurityContextHolder.getContext().getAuthentication().getPrincipal();
        if (principal instanceof UserDetails) {
            Collection<? extends org.springframework.security.core.GrantedAuthority> authorities = ((UserDetails) principal).getAuthorities();
            if (authorities.size() == 1) {
                final Iterator<? extends org.springframework.security.core.GrantedAuthority> iterator = authorities.iterator();
                GrantedAuthority grantedAuthority = iterator.next();
                if (grantedAuthority.getAuthority().equals("ADMIN")) {
                    return adminPage();
                }
            }
        }
        ModelAndView model = new ModelAndView();
        model.setViewName("redirect:/cita/list");
        return model;
    }

    @RequestMapping(value = "/adminpage", method = RequestMethod.GET)
    public ModelAndView adminPage() {

        ModelAndView model = new ModelAndView();
        
        model.addObject("user", AuthUtilImpl.getUser());
        
        model.setViewName("security/admin");
        
        return model;
    }

    @RequestMapping(value = "/logout", method = RequestMethod.GET)
    public ModelAndView logoutPage(HttpServletRequest request, HttpServletResponse response) {
        Authentication auth = SecurityContextHolder.getContext().getAuthentication();
        if (auth != null) {
            new SecurityContextLogoutHandler().logout(request, response, auth);
        }
        return homePage();
    }

}