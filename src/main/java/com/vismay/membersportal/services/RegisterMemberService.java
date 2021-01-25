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

@Service
public class RegisterMemberService {

    @Autowired
    private RegisterMemberDao registerMemberDao;

    public MemberRegistrationDatabean saveMember(MemberRegistrationDatabean memberRegistrationDatabean) {
        memberRegistrationDatabean.setStatus("Active");
        return registerMemberDao.save(memberRegistrationDatabean);
    }

    public List<MemberRegistrationDatabean> getAllMemberList() {
        return registerMemberDao.findAll();
    }

    public MemberRegistrationDatabean getMemberFromId(Long id) {
        return registerMemberDao.findById(id).get();
    }

    public MemberRegistrationDatabean updateMember(MemberRegistrationDatabean memberRegistrationDatabean) throws FileStorageException, MyFileNotFoundException {
        return registerMemberDao.save(memberRegistrationDatabean);
    }

}
