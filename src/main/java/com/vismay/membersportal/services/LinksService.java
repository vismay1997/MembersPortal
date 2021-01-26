package com.vismay.membersportal.services;

import com.vismay.membersportal.databeans.FilesUploadDataBean;
import com.vismay.membersportal.databeans.LinkDataBean;
import com.vismay.membersportal.databeans.MarqueeDataBean;
import com.vismay.membersportal.exceptions.FileStorageException;
import com.vismay.membersportal.exceptions.MyFileNotFoundException;
import com.vismay.membersportal.repositories.LinksDao;
import com.vismay.membersportal.repositories.MarqueeDao;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;
import org.springframework.web.multipart.MultipartFile;

import java.util.List;

@Service
public class LinksService {

    @Autowired
    private LinksDao linksDao;

    @Autowired
    private DBFileStorageService dbFileStorageService;


    public LinkDataBean saveMarquee(LinkDataBean linkDataBean, MultipartFile file, MultipartFile multipartLogoFile) throws FileStorageException {
        FilesUploadDataBean filesUploadDataBean = dbFileStorageService.storeFile(file);
        linkDataBean.setImage(filesUploadDataBean.getId());

        FilesUploadDataBean fileUploadDataBean = dbFileStorageService.storeFile(multipartLogoFile);
        linkDataBean.setPageImage(filesUploadDataBean.getId());
        linkDataBean.setStatus("Active");


        return linksDao.save(linkDataBean);
    }


    public List<LinkDataBean> getAllMarqueesList() {
        return linksDao.findAll();
    }

    public LinkDataBean getMarqueeFromId(Long id) {
        return linksDao.findById(id).get();
    }

    public LinkDataBean updateMarquee(LinkDataBean linkDataBean, MultipartFile multipartFile) throws FileStorageException, MyFileNotFoundException {
        FilesUploadDataBean filesUploadDataBean;
        if (!multipartFile.isEmpty()){
            filesUploadDataBean = dbFileStorageService.storeFile(multipartFile);
            linkDataBean.setImage(filesUploadDataBean.getId());
        }else{
            filesUploadDataBean = dbFileStorageService.getFile(linkDataBean.getImage());
            linkDataBean.setImage(filesUploadDataBean.getId());
        }
        linkDataBean.setStatus("Active");
        return linksDao.save(linkDataBean);
    }

}
