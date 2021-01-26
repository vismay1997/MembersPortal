package com.vismay.membersportal.services;

import com.vismay.membersportal.databeans.FilesUploadDataBean;
import com.vismay.membersportal.databeans.NoticeDatabean;
import com.vismay.membersportal.exceptions.FileStorageException;
import com.vismay.membersportal.exceptions.MyFileNotFoundException;
import com.vismay.membersportal.repositories.NoticeSectionDao;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;
import org.springframework.web.multipart.MultipartFile;

import java.io.IOException;
import java.util.List;

@Service
public class NoticeSectionService {

    @Autowired
    private NoticeSectionDao noticeSectionDao;

    @Autowired
    private DBFileStorageService dbFileStorageService;

    public NoticeDatabean saveNotice(NoticeDatabean noticeDatabean, MultipartFile multipartFile, MultipartFile file) throws FileStorageException, IOException {
        FilesUploadDataBean filesUploadDataBean = dbFileStorageService.storeFile(file);
        noticeDatabean.setNoticeLogo(filesUploadDataBean.getId());

        FilesUploadDataBean supportingFile = dbFileStorageService.storeFile(multipartFile);
        noticeDatabean.setSupportingDocs(supportingFile.getId());

        noticeDatabean.setStatus("Active");
        return noticeSectionDao.save(noticeDatabean);
    }


    public List<NoticeDatabean> getAllNoticesList() {
        return noticeSectionDao.findAll();
    }

    public NoticeDatabean getNoticeFromId(Long id) {
        return noticeSectionDao.findById(id).get();
    }

    public NoticeDatabean updateNotice(NoticeDatabean noticeDatabean, MultipartFile file, MultipartFile multipartFile) throws FileStorageException, MyFileNotFoundException {
        FilesUploadDataBean filesUploadDataBean;
        if (!multipartFile.isEmpty()){
            filesUploadDataBean = dbFileStorageService.storeFile(file);
            noticeDatabean.setNoticeLogo(filesUploadDataBean.getId());
        }else{
            filesUploadDataBean = dbFileStorageService.getFile(noticeDatabean.getNoticeLogo());
            noticeDatabean.setNoticeLogo(filesUploadDataBean.getId());
        }

        FilesUploadDataBean supportingDocs;
        if (!multipartFile.isEmpty()){
            supportingDocs = dbFileStorageService.storeFile(multipartFile);
            noticeDatabean.setSupportingDocs(supportingDocs.getId());
        }else{
            supportingDocs = dbFileStorageService.getFile(noticeDatabean.getSupportingDocs());
            noticeDatabean.setSupportingDocs(supportingDocs.getId());
        }
        return noticeSectionDao.save(noticeDatabean);
    }
}
