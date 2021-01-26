package com.vismay.membersportal.services;

import com.vismay.membersportal.databeans.UserRegistrationDataBean;
import com.vismay.membersportal.exceptions.FileStorageException;
import com.vismay.membersportal.repositories.UserRegistrationDao;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import java.util.List;

@Service
public class UserRegistrationService {

    @Autowired
    private UserRegistrationDao userRegistrationDao;


    public UserRegistrationDataBean saveUserDetail(UserRegistrationDataBean userRegistrationDataBean) {
        return userRegistrationDao.save(userRegistrationDataBean);
    }


    public List<UserRegistrationDataBean> getAllUserDetailsList() {
        return userRegistrationDao.findAll();
    }

    public UserRegistrationDataBean getUserDetailFromId(Long id) {
        return userRegistrationDao.findById(id).get();
    }

    public UserRegistrationDataBean updateUserDetail(UserRegistrationDataBean userRegistrationDataBean) {
        return userRegistrationDao.save(userRegistrationDataBean);
    }

}
