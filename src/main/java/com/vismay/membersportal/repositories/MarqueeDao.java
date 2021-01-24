package com.vismay.membersportal.repositories;

import com.vismay.membersportal.databeans.MarqueeDataBean;
import org.springframework.data.jpa.repository.JpaRepository;
import org.springframework.data.jpa.repository.Query;
import org.springframework.stereotype.Repository;

import javax.persistence.Id;
import java.util.List;

@Repository
public interface MarqueeDao extends JpaRepository<MarqueeDataBean,Long> {
}
