package com.vismay.membersportal.services;

import com.vismay.membersportal.databeans.ContactInformation;
import com.vismay.membersportal.repositories.ContactInformationRepository;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import java.util.List;

@Service
public class ContactInformationServices {

    @Autowired
    private ContactInformationRepository contactInformationRepository;


    public List<ContactInformation> getAllContactInformation(){
        return contactInformationRepository.findAll();
    }
}
