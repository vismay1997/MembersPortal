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
    private String WorkingPlace;

    @ManyToOne(fetch = FetchType.LAZY, optional = false)
    @JoinColumn(name = "memberId", nullable = false)
    private MemberRegistrationDatabean memberRegistrationDatabean;


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
        return WorkingPlace;
    }

    public void setWorkingPlace(String workingPlace) {
        WorkingPlace = workingPlace;
    }

    @Override
    public String toString() {
        return "RevenueInformation{" +
                "QualificationId=" + QualificationId +
                ", typeOFRevenue='" + typeOFRevenue + '\'' +
                ", typeOfJob='" + typeOfJob + '\'' +
                ", experience='" + experience + '\'' +
                ", WorkingPlace='" + WorkingPlace + '\'' +
                ", memberRegistrationDatabean=" + memberRegistrationDatabean +
                '}';
    }

}