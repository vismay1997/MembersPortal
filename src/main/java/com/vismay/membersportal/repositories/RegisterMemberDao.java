package com.vismay.membersportal.repositories;

import com.vismay.membersportal.databeans.MemberRegistrationDatabean;
import org.springframework.data.jpa.repository.JpaRepository;
import org.springframework.data.jpa.repository.Query;
import org.springframework.data.repository.query.Param;
import org.springframework.stereotype.Repository;

import java.util.List;

@Repository
public interface RegisterMemberDao extends JpaRepository<MemberRegistrationDatabean,Long> {
    @Query("select village from MemberRegistrationDatabean")
    List<String> getAllVillages();

    @Query("select street from MemberRegistrationDatabean")
    List<String> getAllStreets();

    @Query("select mem from MemberRegistrationDatabean mem where mem.village = :village or mem.street = :street or mem.mobileNo = :mobileNo or mem.pinCode= :pinCode")
    List<MemberRegistrationDatabean> getMemberData(@Param("village") String village, @Param("street")String street, @Param("mobileNo") String mobileNo, @Param("pinCode") String pinCode);
}
