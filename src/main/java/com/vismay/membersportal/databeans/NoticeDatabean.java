package com.vismay.membersportal.databeans;

import javax.persistence.*;
import java.util.List;

@Entity
public class NoticeDatabean {

    @Id
    @GeneratedValue
    private long noticeId;
    private String noticeTitle;
    private String noticeLogo;
    private String noticeDescription;
    private String status;
    private String supportingDocs;

    public long getNoticeId() {
        return noticeId;
    }

    public void setNoticeId(long noticeId) {
        this.noticeId = noticeId;
    }

    public String getNoticeTitle() {
        return noticeTitle;
    }

    public void setNoticeTitle(String noticeTitle) {
        this.noticeTitle = noticeTitle;
    }

    public String getNoticeLogo() {
        return noticeLogo;
    }

    public void setNoticeLogo(String noticeLogo) {
        this.noticeLogo = noticeLogo;
    }

    public String getNoticeDescription() {
        return noticeDescription;
    }

    public void setNoticeDescription(String noticeDescription) {
        this.noticeDescription = noticeDescription;
    }


    public String getSupportingDocs() {
        return supportingDocs;
    }

    public void setSupportingDocs(String supportingDocs) {
        this.supportingDocs = supportingDocs;
    }

    public String getStatus() {
        return status;
    }

    public void setStatus(String status) {
        this.status = status;
    }

    @Override
    public String toString() {
        return "NoticeDatabean{" +
                "noticeId=" + noticeId +
                ", noticeTitle='" + noticeTitle + '\'' +
                ", noticeLogo='" + noticeLogo + '\'' +
                ", noticeDescription='" + noticeDescription + '\'' +
                ", status='" + status + '\'' +
                ", supportingDocs='" + supportingDocs + '\'' +
                '}';
    }
}
