package com.vismay.membersportal.repositories;

import com.vismay.membersportal.databeans.CommiteeDatabean;
import org.springframework.data.jpa.repository.JpaRepository;
import org.springframework.stereotype.Repository;

@Repository
public interface CommiteeManagementDao extends JpaRepository<CommiteeDatabean,Long> {

}
