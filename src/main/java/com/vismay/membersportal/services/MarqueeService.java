package com.vismay.membersportal.services;

import com.vismay.membersportal.databeans.FilesUploadDataBean;
import com.vismay.membersportal.databeans.MarqueeDataBean;
import com.vismay.membersportal.exceptions.FileStorageException;
import com.vismay.membersportal.repositories.MarqueeDao;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;
import org.springframework.web.multipart.MultipartFile;

import java.util.List;

@Service
public class MarqueeService {

    @Autowired
    private MarqueeDao marqueeDao;

    @Autowired
    private DBFileStorageService dbFileStorageService;


    public MarqueeDataBean saveMarquee(MarqueeDataBean marqueeDataBean, MultipartFile file) throws FileStorageException {
        FilesUploadDataBean filesUploadDataBean = dbFileStorageService.storeFile(file);
        marqueeDataBean.setImage(filesUploadDataBean.getId());
        marqueeDataBean.setStatus("Active");
        return marqueeDao.save(marqueeDataBean);
    }


    public List<MarqueeDataBean> getAllMarqueesList() {
        return marqueeDao.findAll();
    }
}
