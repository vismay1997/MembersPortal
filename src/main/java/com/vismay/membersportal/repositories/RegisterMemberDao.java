package com.vismay.membersportal.repositories;

import com.vismay.membersportal.databeans.MemberRegistrationDatabean;
import org.springframework.data.jpa.repository.JpaRepository;
import org.springframework.stereotype.Repository;

import java.util.List;

@Repository
public interface RegisterMemberDao extends JpaRepository<MemberRegistrationDatabean,Long> {
}
