package com.vismay.membersportal.handlers;

import org.springframework.security.core.Authentication;
import org.springframework.security.core.GrantedAuthority;
import org.springframework.security.web.DefaultRedirectStrategy;
import org.springframework.security.web.RedirectStrategy;
import org.springframework.security.web.authentication.AuthenticationSuccessHandler;
import org.springframework.stereotype.Component;

import javax.servlet.ServletException;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import java.io.IOException;
import java.util.Collection;

@Component
public class CustomAuthenticationSuccessHandler implements AuthenticationSuccessHandler {

    private RedirectStrategy redirectStrategy = new DefaultRedirectStrategy();

    @Override
    public void onAuthenticationSuccess(HttpServletRequest arg0, HttpServletResponse arg1,
                                        Authentication authentication) throws IOException, ServletException {

        boolean hasSAdminRole = false;
        boolean hasAdminRole = false;
        boolean hasAuditorRole = false;
        boolean hasPresidentRole = false;
        boolean hasCommitteeMemberRole= false;
        boolean hasMemberRole = false;


        Collection<? extends GrantedAuthority> authorities = authentication.getAuthorities();
        System.out.println(authentication.getAuthorities());
        for (GrantedAuthority grantedAuthority : authorities) {
            if (grantedAuthority.getAuthority().equals("ROLE_SADMIN")) {
                hasSAdminRole = true;
                break;
            } else if (grantedAuthority.getAuthority().equals("ROLE_ADMIN")) {
                hasAdminRole = true;
                break;
            }else if (grantedAuthority.getAuthority().equals("ROLE_PRESIDENT")) {
                hasPresidentRole = true;
                break;
            }else if (grantedAuthority.getAuthority().equals("ROLE_CMEMBER")) {
                hasCommitteeMemberRole = true;
                break;
            }else if (grantedAuthority.getAuthority().equals("ROLE_AUDITOR")) {
                hasAuditorRole = true;
                break;
            }else if (grantedAuthority.getAuthority().equals("ROLE_MEMBER")) {
                hasMemberRole = true;
                break;
            }
        }

        if (hasSAdminRole) {
            redirectStrategy.sendRedirect(arg0, arg1, "/super-admin/dashboard");
        } else if (hasAdminRole) {
            redirectStrategy.sendRedirect(arg0, arg1, "/admin/dashboard");
        } else if (hasCommitteeMemberRole) {
            redirectStrategy.sendRedirect(arg0, arg1, "/committee-member/dashboard");
        }  else if (hasAuditorRole) {
            redirectStrategy.sendRedirect(arg0, arg1, "/auditor/dashboard");
        }  else if (hasMemberRole) {
            redirectStrategy.sendRedirect(arg0, arg1, "/member/dashboard");
        } else {
            throw new IllegalStateException();
        }

    }
}
