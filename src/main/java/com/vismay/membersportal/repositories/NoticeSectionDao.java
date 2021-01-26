package com.vismay.membersportal.repositories;

import com.vismay.membersportal.databeans.NoticeDatabean;
import org.springframework.data.jpa.repository.JpaRepository;
import org.springframework.stereotype.Repository;

@Repository
public interface NoticeSectionDao  extends JpaRepository<NoticeDatabean,Long> {

}
