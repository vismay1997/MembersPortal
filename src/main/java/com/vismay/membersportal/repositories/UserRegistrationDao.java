package com.vismay.membersportal.repositories;

import com.vismay.membersportal.databeans.UserRegistrationDataBean;
import org.springframework.data.jpa.repository.JpaRepository;
import org.springframework.stereotype.Repository;

@Repository
public interface UserRegistrationDao extends JpaRepository<UserRegistrationDataBean, Long> {

}
