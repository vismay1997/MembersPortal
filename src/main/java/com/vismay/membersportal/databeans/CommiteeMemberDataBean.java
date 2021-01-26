package com.vismay.membersportal.databeans;

import javax.persistence.Entity;
import javax.persistence.GeneratedValue;
import javax.persistence.Id;

@Entity
public class CommiteeMemberDataBean {
    @Id
    @GeneratedValue
    private Long commiteeMemberId;
    private String nameOfCommitee;
    private String nameOfMember;

    public Long getCommiteememberId() {
        return commiteeMemberId;
    }

    public void setCommiteememberId(Long commiteememberId) {
        this.commiteeMemberId = commiteememberId;
    }

    public String getNameOfCommitee() {
        return nameOfCommitee;
    }

    public void setNameOfCommitee(String nameOfCommitee) {
        this.nameOfCommitee = nameOfCommitee;
    }

    public String getNameOfMember() {
        return nameOfMember;
    }

    public void setNameOfMember(String nameOfMember) {
        this.nameOfMember = nameOfMember;
    }
}
