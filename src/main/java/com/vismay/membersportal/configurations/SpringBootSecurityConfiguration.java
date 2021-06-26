package com.vismay.membersportal.configurations;

import com.vismay.membersportal.handlers.CustomAuthenticationSuccessHandler;
import com.vismay.membersportal.handlers.CustomPasswordEncoder;
import com.vismay.membersportal.services.CustomUserDetailsService;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.context.annotation.Bean;
import org.springframework.context.annotation.Configuration;
import org.springframework.security.authentication.dao.DaoAuthenticationProvider;
import org.springframework.security.config.annotation.authentication.builders.AuthenticationManagerBuilder;
import org.springframework.security.config.annotation.web.builders.HttpSecurity;
import org.springframework.security.config.annotation.web.configuration.WebSecurityConfigurerAdapter;
import org.springframework.security.core.userdetails.UserDetailsService;
import org.springframework.security.crypto.bcrypt.BCryptPasswordEncoder;

@Configuration
public class SpringBootSecurityConfiguration extends WebSecurityConfigurerAdapter {

    @Autowired
    CustomAuthenticationSuccessHandler successHandler;
    @Bean
     public UserDetailsService userDetailsService() {
        return new CustomUserDetailsService();
    }

    @Bean
     public CustomPasswordEncoder passwordEncoder() {
        return new CustomPasswordEncoder();
    }


     public DaoAuthenticationProvider authenticationProvider() {
        DaoAuthenticationProvider authProvider = new DaoAuthenticationProvider();
        authProvider.setUserDetailsService(userDetailsService());
        authProvider.setPasswordEncoder(passwordEncoder());

        return authProvider;
    }

    @Override
    protected void configure(AuthenticationManagerBuilder auth) throws Exception {
        auth.authenticationProvider(authenticationProvider());
    }

    @Override
    public void configure(HttpSecurity http) throws Exception {
        http
                .csrf().disable()
                .authorizeRequests()
                .antMatchers("/common/**","/cdn/**").permitAll()
                .antMatchers("/super-admin/**").hasAnyRole("SADMIN")
                .antMatchers("/admin/**").hasAnyRole("ADMIN","SADMIN")
                .antMatchers("/president/**").hasAnyRole("PRESIDENT","ADMIN","SADMIN")
                .antMatchers("/auditor").hasAnyRole("AUDITOR","ADMIN","SADMIN")
                .antMatchers("/committee-member").hasAnyRole("CMEMBER","ADMIN","SADMIN")
                .antMatchers("/member").hasAnyRole("MEMBER","AUDITOR","ADMIN","CMEMBER","SADMIN")
                .antMatchers("/home-commitee").permitAll()
                .antMatchers("/home-notices").permitAll()
                .antMatchers("/home-marquee").permitAll()
                .antMatchers("/home-aboutus").permitAll()
                .antMatchers("/home-contactus").permitAll().
                antMatchers("/").permitAll()

                .anyRequest().authenticated()
                .and().formLogin().loginPage("/login")
                .successHandler(successHandler)
                .permitAll()
                .and().logout();
    }
}
