package com.vismay.membersportal.repositories;

import com.vismay.membersportal.databeans.FilesUploadDataBean;
import org.springframework.data.jpa.repository.JpaRepository;
import org.springframework.stereotype.Repository;

@Repository
public interface DBFileRepository  extends JpaRepository<FilesUploadDataBean, String> {
}
