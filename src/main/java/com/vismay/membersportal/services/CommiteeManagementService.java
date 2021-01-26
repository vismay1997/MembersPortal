package com.vismay.membersportal.services;

import com.vismay.membersportal.databeans.CommiteeDatabean;
import com.vismay.membersportal.databeans.FilesUploadDataBean;
import com.vismay.membersportal.databeans.MemberRegistrationDatabean;
import com.vismay.membersportal.exceptions.FileStorageException;
import com.vismay.membersportal.exceptions.MyFileNotFoundException;
import com.vismay.membersportal.repositories.CommiteeManagementDao;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;
import org.springframework.web.multipart.MultipartFile;

import java.util.List;

@Service
public class CommiteeManagementService {

    @Autowired
    private CommiteeManagementDao commiteeManagementDao;

    @Autowired
    private DBFileStorageService dbFileStorageService;

    public CommiteeDatabean saveCommitee(CommiteeDatabean commiteeDatabean, MultipartFile multipartFile) throws FileStorageException {
        FilesUploadDataBean filesUploadDataBean = dbFileStorageService.storeFile(multipartFile);
        commiteeDatabean.setLogo(filesUploadDataBean.getId());
        commiteeDatabean.setStatus("Active");
        return commiteeManagementDao.save(commiteeDatabean);
    }

    public List<CommiteeDatabean> getAllCommiteeList() {
        return commiteeManagementDao.findAll();
    }

    public CommiteeDatabean getCommiteeFromId(Long id) {
        return commiteeManagementDao.findById(id).get();
    }

    public CommiteeDatabean updateCommitee(CommiteeDatabean commiteeDatabean, MultipartFile multipartFile) throws FileStorageException, MyFileNotFoundException {
        FilesUploadDataBean filesUploadDataBean;

        if (!multipartFile.isEmpty()){
            filesUploadDataBean = dbFileStorageService.storeFile(multipartFile);
            commiteeDatabean.setLogo(filesUploadDataBean.getId());
        }else{
            filesUploadDataBean = dbFileStorageService.getFile(commiteeDatabean.getLogo());
            commiteeDatabean.setLogo(filesUploadDataBean.getId());
        }

        return commiteeManagementDao.save(commiteeDatabean);
    }


}
