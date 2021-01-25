package com.vismay.membersportal.databeans;

import javax.persistence.*;

@Entity
public class QualificationInformation {

    @Id
    @GeneratedValue
    private Long qualificationId;

    private String nameOfCourse;
    private String instituteName;
    private String passingYear;
    private String percentage;

    public Long getQualificationId() {
        return qualificationId;
    }

    public void setQualificationId(Long qualificationId) {
        this.qualificationId = qualificationId;
    }

    public String getNameOfCourse() {
        return nameOfCourse;
    }

    public void setNameOfCourse(String nameOfCourse) {
        this.nameOfCourse = nameOfCourse;
    }

    public String getInstituteName() {
        return instituteName;
    }

    public void setInstituteName(String instituteName) {
        this.instituteName = instituteName;
    }

    public String getPassingYear() {
        return passingYear;
    }

    public void setPassingYear(String passingYear) {
        this.passingYear = passingYear;
    }

    public String getPercentage() {
        return percentage;
    }

    public void setPercentage(String percentage) {
        this.percentage = percentage;
    }

    @Override
    public String toString() {
        return "QualificationInformation{" +
                "qualificationId=" + qualificationId +
                ", nameOfCourse='" + nameOfCourse + '\'' +
                ", instituteName='" + instituteName + '\'' +
                ", passingYear='" + passingYear + '\'' +
                ", percentage='" + percentage + '\'' +
                '}';
    }
}
