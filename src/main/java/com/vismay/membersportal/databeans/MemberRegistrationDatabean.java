package com.vismay.membersportal.databeans;

import javax.persistence.*;
import java.util.List;

@Entity
public class MemberRegistrationDatabean {

    @Id
    @GeneratedValue
    private Long memberId;

    private String fullName;
    private String birthDate;
    private String age;
    private String mobileNo;
    private String phoneNo;
    private String bloodGroup;
    private String emailAddress;
    private String maritalStatus;
    private String pinCode;
    private String  address;

    @OneToMany(mappedBy = "memberRegistrationDatabean", fetch = FetchType.LAZY,
            cascade = CascadeType.ALL)
    private List<QualificationInformation> qualificationInformations;


    @OneToMany(mappedBy = "memberRegistrationDatabean", fetch = FetchType.LAZY,
            cascade = CascadeType.ALL)
    private List<RevenueInformation> revenueInformations;


    public Long getMemberId() {
        return memberId;
    }

    public void setMemberId(Long memberId) {
        this.memberId = memberId;
    }

    public String getFullName() {
        return fullName;
    }

    public void setFullName(String fullName) {
        this.fullName = fullName;
    }

    public String getBirthDate() {
        return birthDate;
    }

    public void setBirthDate(String birthDate) {
        this.birthDate = birthDate;
    }

    public String getMobileNo() {
        return mobileNo;
    }

    public void setMobileNo(String mobileNo) {
        this.mobileNo = mobileNo;
    }

    public String getPhoneNo() {
        return phoneNo;
    }

    public void setPhoneNo(String phoneNo) {
        this.phoneNo = phoneNo;
    }

    public String getBloodGroup() {
        return bloodGroup;
    }

    public void setBloodGroup(String bloodGroup) {
        this.bloodGroup = bloodGroup;
    }

    public String getEmailAddress() {
        return emailAddress;
    }

    public void setEmailAddress(String emailAddress) {
        this.emailAddress = emailAddress;
    }

    public String getMaritalStatus() {
        return maritalStatus;
    }

    public void setMaritalStatus(String maritalStatus) {
        this.maritalStatus = maritalStatus;
    }

    public String getPinCode() {
        return pinCode;
    }

    public void setPinCode(String pinCode) {
        this.pinCode = pinCode;
    }

    public String getAddress() {
        return address;
    }

    public void setAddress(String address) {
        this.address = address;
    }

    public List<RevenueInformation> getRevenueInformations() {
        return revenueInformations;
    }

    public void setRevenueInformations(List<RevenueInformation> revenueInformations) {
        this.revenueInformations = revenueInformations;
    }

    public List<QualificationInformation> getQualificationInformations() {
        return qualificationInformations;
    }

    public void setQualificationInformations(List<QualificationInformation> qualificationInformations) {
        this.qualificationInformations = qualificationInformations;
    }

    public String getAge() {
        return age;
    }

    public void setAge(String age) {
        this.age = age;
    }

    @Override
    public String toString() {
        return "MemberRegistrationDatabean{" +
                "memberId=" + memberId +
                ", fullName='" + fullName + '\'' +
                ", birthDate='" + birthDate + '\'' +
                ", mobileNo='" + mobileNo + '\'' +
                ", phoneNo='" + phoneNo + '\'' +
                ", bloodGroup='" + bloodGroup + '\'' +
                ", emailAddress='" + emailAddress + '\'' +
                ", maritalStatus='" + maritalStatus + '\'' +
                ", pinCode='" + pinCode + '\'' +
                ", address='" + address + '\'' +
                ", revenueInformations=" + revenueInformations +
                ", qualificationInformations=" + qualificationInformations +
                '}';
    }

}
