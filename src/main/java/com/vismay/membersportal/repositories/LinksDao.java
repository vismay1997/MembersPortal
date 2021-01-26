package com.vismay.membersportal.repositories;

import com.vismay.membersportal.databeans.LinkDataBean;
import org.springframework.data.jpa.repository.JpaRepository;
import org.springframework.stereotype.Repository;

@Repository
public interface LinksDao  extends JpaRepository<LinkDataBean,Long> {

}
