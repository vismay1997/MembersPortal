package com.vismay.membersportal.services;

import com.vismay.membersportal.databeans.FilesUploadDataBean;
import com.vismay.membersportal.databeans.MarqueeDataBean;
import com.vismay.membersportal.databeans.MemberRegistrationDatabean;
import com.vismay.membersportal.exceptions.FileStorageException;
import com.vismay.membersportal.exceptions.MyFileNotFoundException;
import com.vismay.membersportal.repositories.RegisterMemberDao;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;
import org.springframework.web.multipart.MultipartFile;

import java.util.List;
import java.util.Map;

@Service
public class RegisterMemberService {

    @Autowired
    private RegisterMemberDao registerMemberDao;

    @Autowired
    private DBFileStorageService dbFileStorageService;

    public MemberRegistrationDatabean saveMember(MemberRegistrationDatabean memberRegistrationDatabean, MultipartFile multipartFile) throws FileStorageException {
        FilesUploadDataBean filesUploadDataBean = dbFileStorageService.storeFile(multipartFile);
        memberRegistrationDatabean.setImage(filesUploadDataBean.getId());
        memberRegistrationDatabean.setStatus("Active");
        return registerMemberDao.save(memberRegistrationDatabean);
    }

    public List<MemberRegistrationDatabean> getAllMemberList() {
        return registerMemberDao.findAll();
    }

    public MemberRegistrationDatabean getMemberFromId(Long id) {
        return registerMemberDao.findById(id).get();
    }

    public MemberRegistrationDatabean updateMember(MemberRegistrationDatabean memberRegistrationDatabean, MultipartFile multipartFile) throws FileStorageException, MyFileNotFoundException {
        FilesUploadDataBean filesUploadDataBean;

        if (!multipartFile.isEmpty()){
            filesUploadDataBean = dbFileStorageService.storeFile(multipartFile);
            memberRegistrationDatabean.setImage(filesUploadDataBean.getId());
        }else{
            filesUploadDataBean = dbFileStorageService.getFile(memberRegistrationDatabean.getImage());
            memberRegistrationDatabean.setImage(filesUploadDataBean.getId());
        }

        return registerMemberDao.save(memberRegistrationDatabean);
    }

    public List<String> getAllVillages() {
        return registerMemberDao.getAllVillages();
    }

    public List<String> getAllStreets() {
        return registerMemberDao.getAllStreets();
    }

    public List<MemberRegistrationDatabean> getMemberData(String village, String street, String mobileNo, String pinCode) {
        return registerMemberDao.getMemberData(village,street,mobileNo,pinCode);
    }
}
