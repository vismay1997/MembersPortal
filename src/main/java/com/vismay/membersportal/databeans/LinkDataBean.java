package com.vismay.membersportal.databeans;

import javax.persistence.Entity;
import javax.persistence.GeneratedValue;
import javax.persistence.Id;

@Entity
public class LinkDataBean {

    @Id
    @GeneratedValue
    private Long linkId;
    private String linkTitle;
    private String pageDescription;
    private String image;
    private String pageImage;
    private String status;

    public Long getLinkId() {
        return linkId;
    }

    public void setLinkId(Long linkId) {
        this.linkId = linkId;
    }

    public String getLinkTitle() {
        return linkTitle;
    }

    public void setLinkTitle(String linkTitle) {
        this.linkTitle = linkTitle;
    }

    public String getPageDescription() {
        return pageDescription;
    }

    public void setPageDescription(String pageDescription) {
        this.pageDescription = pageDescription;
    }

    public String getImage() {
        return image;
    }

    public void setImage(String image) {
        this.image = image;
    }

    public String getPageImage() {
        return pageImage;
    }

    public void setPageImage(String pageImage) {
        this.pageImage = pageImage;
    }

    public String getStatus() {
        return status;
    }

    public void setStatus(String status) {
        this.status = status;
    }

    @Override
    public String toString() {
        return "LinkDataBean{" +
                "linkId=" + linkId +
                ", linkTitle='" + linkTitle + '\'' +
                ", pageDescription='" + pageDescription + '\'' +
                ", image='" + image + '\'' +
                ", pageImage='" + pageImage + '\'' +
                ", status='" + status + '\'' +
                '}';
    }
}
