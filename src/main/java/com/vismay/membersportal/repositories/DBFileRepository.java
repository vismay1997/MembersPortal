package com.vismay.membersportal.repositories;

import com.vismay.membersportal.databeans.FilesUploadDataBean;
import org.springframework.data.jpa.repository.JpaRepository;
import org.springframework.data.jpa.repository.Query;
import org.springframework.data.repository.query.Param;
import org.springframework.stereotype.Repository;

@Repository
public interface DBFileRepository  extends JpaRepository<FilesUploadDataBean, String> {
    @Query("select fud from FilesUploadDataBean fud where  fud.id = :fileId" )
    FilesUploadDataBean getFileFromId(@Param("fileId") String fileId);
}
