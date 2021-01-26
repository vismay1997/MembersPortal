package com.vismay.membersportal.databeans;

import javax.persistence.*;

@Entity
public class RevenueInformation {
    @Id
    @GeneratedValue
    private Long QualificationId;
    private String typeOFRevenue;
    private String typeOfJob;
    private String experience;
    private String workingPlace;


    public Long getQualificationId() {
        return QualificationId;
    }

    public void setQualificationId(Long qualificationId) {
        QualificationId = qualificationId;
    }

    public String getTypeOFRevenue() {
        return typeOFRevenue;
    }

    public void setTypeOFRevenue(String typeOFRevenue) {
        this.typeOFRevenue = typeOFRevenue;
    }

    public String getTypeOfJob() {
        return typeOfJob;
    }

    public void setTypeOfJob(String typeOfJob) {
        this.typeOfJob = typeOfJob;
    }

    public String getExperience() {
        return experience;
    }

    public void setExperience(String experience) {
        this.experience = experience;
    }

    public String getWorkingPlace() {
        return workingPlace;
    }

    public void setWorkingPlace(String worlongPlace) {
        this.workingPlace = worlongPlace;
    }

    @Override
    public String toString() {
        return "RevenueInformation{" +
                "QualificationId=" + QualificationId +
                ", typeOFRevenue='" + typeOFRevenue + '\'' +
                ", typeOfJob='" + typeOfJob + '\'' +
                ", experience='" + experience + '\'' +
                ", WorkingPlace='" + workingPlace + '\'' +
                '}';
    }

}
