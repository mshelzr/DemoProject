package pe.fap.hospital.citamedica.utils;

import org.springframework.security.core.context.SecurityContextHolder;
import org.springframework.security.core.userdetails.UserDetails;

/**
 * Created by esilva on 20/07/2017.
 */
public class AuthUtilImpl {

	/**
	 * Devuelve el nombre del usuario conectado.
	 */
    public static String getUser() {
    	
        String userName = null;
        
        Object principal = SecurityContextHolder.getContext().getAuthentication().getPrincipal();
        
        if (principal instanceof UserDetails) {
            userName = ((UserDetails) principal).getUsername();
        } else {
            userName = principal.toString();
        }
        
        return userName;
    }
    
}