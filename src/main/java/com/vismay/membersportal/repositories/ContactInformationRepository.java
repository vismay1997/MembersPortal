package com.vismay.membersportal.repositories;

import com.vismay.membersportal.databeans.ContactInformation;
import org.springframework.data.jpa.repository.JpaRepository;

public interface ContactInformationRepository extends JpaRepository<ContactInformation,Long> {
}
