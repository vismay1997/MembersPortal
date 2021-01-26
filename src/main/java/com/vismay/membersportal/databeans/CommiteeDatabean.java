package com.vismay.membersportal.databeans;

import javax.persistence.*;
import java.util.List;

@Entity
public class CommiteeDatabean {
    @Id
    @GeneratedValue
    private Long commiteeId;
    private String commiteeTitle;
    private String description;
    private String status;

    @Lob
    private String logo;

    @OneToMany(fetch = FetchType.LAZY,
            cascade = CascadeType.ALL)
    private List<CommiteeMemberDataBean> commiteeMembers;

    public Long getCommiteeId() {
        return commiteeId;
    }

    public void setCommiteeId(Long commiteeId) {
        this.commiteeId = commiteeId;
    }

    public String getCommiteeTitle() {
        return commiteeTitle;
    }

    public void setCommiteeTitle(String commiteeTitle) {
        this.commiteeTitle = commiteeTitle;
    }

    public String getLogo() {
        return logo;
    }

    public void setLogo(String logo) {
        this.logo = logo;
    }

    public List<CommiteeMemberDataBean> getCommiteeMembers() {
        return commiteeMembers;
    }

    public void setCommiteeMembers(List<CommiteeMemberDataBean> commiteeMembers) {
        this.commiteeMembers = commiteeMembers;
    }

    public String getDescription() {
        return description;
    }

    public void setDescription(String description) {
        this.description = description;
    }

    public String getStatus() {
        return status;
    }

    public void setStatus(String status) {
        this.status = status;
    }

    @Override
    public String toString() {
        return "CommiteeDatabean{" +
                "commiteeId=" + commiteeId +
                ", commiteeTitle='" + commiteeTitle + '\'' +
                ", description='" + description + '\'' +
                ", status='" + status + '\'' +
                ", logo='" + logo + '\'' +
                ", commiteeMembers=" + commiteeMembers +
                '}';
    }
}
