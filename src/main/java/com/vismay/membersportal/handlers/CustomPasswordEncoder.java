package com.vismay.membersportal.handlers;

import org.springframework.security.crypto.password.PasswordEncoder;

public class    CustomPasswordEncoder  implements PasswordEncoder {
    @Override
    public String encode(CharSequence rawPassword) {
        return rawPassword.toString();
    }

    @Override
    public boolean matches(CharSequence rawPassword, String encodedPassword) {
        String rawPasswordString=rawPassword.toString();
        return rawPassword.equals(encodedPassword);
    }
}
