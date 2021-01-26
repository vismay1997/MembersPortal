package com.vismay.membersportal.controllers;

import com.vismay.membersportal.databeans.FilesUploadDataBean;
import com.vismay.membersportal.exceptions.MyFileNotFoundException;
import com.vismay.membersportal.services.DBFileStorageService;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.http.MediaType;
import org.springframework.stereotype.Controller;
import org.springframework.util.StreamUtils;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.RequestParam;

import javax.servlet.http.HttpServletResponse;
import java.io.IOException;

@Controller
public class CommonController {

    @Autowired
    private DBFileStorageService dbFileStorageService;

        @GetMapping(path = "/getimage",produces = MediaType.IMAGE_JPEG_VALUE)
        public void getImageFromID(@RequestParam("id") String imageID, HttpServletResponse httpServletResponse) throws MyFileNotFoundException, IOException {
            httpServletResponse.setContentType(MediaType.IMAGE_JPEG_VALUE);
            FilesUploadDataBean filesUploadDataBean=dbFileStorageService.getFile(imageID);
            StreamUtils.copy(filesUploadDataBean.getData(), httpServletResponse.getOutputStream());
        }
    }
