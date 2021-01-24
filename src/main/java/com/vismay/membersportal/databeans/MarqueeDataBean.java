package com.vismay.membersportal.databeans;

import javax.persistence.*;

@Entity
public class MarqueeDataBean {

    @Id
    @GeneratedValue
    private Long marqueeID;

    @Lob
    private String title;

    @Lob
    private String image;

    @Lob
    private String description;

    private String startDateTime;

    private String endDateTime;

    private String status;

    public Long getMarqueeID() {
        return marqueeID;
    }

    public void setMarqueeID(Long marqueeID) {
        this.marqueeID = marqueeID;
    }

    public String getTitle() {
        return title;
    }

    public void setTitle(String title) {
        this.title = title;
    }

    public String getImage() {
        return image;
    }

    public void setImage(String image) {
        this.image = image;
    }

    public String getDescription() {
        return description;
    }

    public void setDescription(String description) {
        this.description = description;
    }

    public String getStartDateTime() {
        return startDateTime;
    }

    public void setStartDateTime(String startDateTime) {
        this.startDateTime = startDateTime;
    }

    public String getEndDateTime() {
        return endDateTime;
    }

    public void setEndDateTime(String endDateTime) {
        this.endDateTime = endDateTime;
    }


    public String getStatus() {
        return status;
    }

    public void setStatus(String status) {
        this.status = status;
    }

    @Override
    public String toString() {
        return "MarqueeDataBean{" +
                "marqueeID=" + marqueeID +
                ", title='" + title + '\'' +
                ", image='" + image + '\'' +
                ", description='" + description + '\'' +
                ", startDateTime='" + startDateTime + '\'' +
                ", endDateTime='" + endDateTime + '\'' +
                ", status='" + status + '\'' +
                '}';
    }
}
