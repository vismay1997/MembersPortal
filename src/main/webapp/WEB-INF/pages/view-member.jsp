<%--
  Created by Vismay Patel.
  Position: Sr. Java Developer
  Education: Be Computer Engineer
  Date: 1/23/2021
  Time: 12:19 PM
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<%@ taglib prefix="c"  uri="http://java.sun.com/jsp/jstl/core" %>
<%@ taglib prefix="form" uri="http://www.springframework.org/tags/form"%>
<%@ taglib prefix="spring" uri="http://www.springframework.org/tags" %>
<%@ taglib prefix="decorator" uri="http://claudiushauptmann.com/jsp-decorator/" %>

<decorator:decorate filename="template.jsp">
    <decorator:content placeholder="title">View Member Information</decorator:content>
    <decorator:content placeholder="pagetitle">View Member Information</decorator:content>
    <decorator:content placeholder="content">
        <div class="form-group row">
            <div class="col-lg-3">
                <label>Full Name:</label>
            </div>
            <div class="col-lg-3">
                <div>${databean.fullName}</div>
            </div>
            <div class="col-lg-3">
                <label>Birth Date:</label>
            </div>
            <div class="col-lg-3">
                <div>${databean.birthDate}</div>
            </div>
        </div>
        <div class="form-group row">
            <div class="col-lg-3">
                <label>Profile Pic:</label>
            </div>
            <div class="col-lg-3">
                <div><img src="/getimage?id=${databean.image}" height="50px" width="50px"></div>
            </div>
            <div class="col-lg-3">
                <label>Address :</label>
            </div>
            <div class="col-lg-3">
                <div>${databean.address}</div>
            </div>
        </div>
        <div class="form-group row">
            <div class="col-lg-3">
                <label>Chief of Family::</label>
            </div>
            <div class="col-lg-3">
                <div>${databean.chiefOfFamily}</div>
            </div>
            <div class="col-lg-3">
                <label>Chief Name:</label>
            </div>
            <div class="col-lg-3">
                <div>${databean.chiefName}</div>
            </div>
        </div>
        <div class="form-group row">
            <div class="col-lg-3">
                <label>Age:</label>
            </div>
            <div class="col-lg-3">
                <div>${databean.age}</div>
            </div>
            <div class="col-lg-3">
                <label>Phone Number::</label>
            </div>
            <div class="col-lg-3">
                <div>${databean.phoneNo}</div>
            </div>
        </div>
        <div class="form-group row">
            <div class="col-lg-3">
                <label>Mobile No:</label>
            </div>
            <div class="col-lg-3">
                <div>${databean.mobileNo}</div>
            </div>
            <div class="col-lg-3">
                <label>Blood Group:</label>
            </div>
            <div class="col-lg-3">
                <div>${databean.bloodGroup}</div>
            </div>
        </div>
        <div class="form-group row">
            <div class="col-lg-3">
                <label>Email Address:</label>
            </div>
            <div class="col-lg-3">
                <div>${databean.emailAddress}</div>
            </div>
            <div class="col-lg-3">
                <label>Marital Status:</label>
            </div>
            <div class="col-lg-3">
                <div>${databean.maritalStatus}</div>
            </div>
        </div>
        <div class="form-group row">
            <div class="col-lg-3">
                <label>Pin Code:</label>
            </div>
            <div class="col-lg-3">
                <div>${databean.pinCode}</div>
            </div>
        </div>
        <div class="form-group row">
            <div class="col-lg-12">
                <div class="card card-custom">
                    <div class="card-header">
                        <div class="card-title">
                                                        <span class="card-icon">
                                                            <i class="flaticon2-chat-1 text-primary"></i>
                                                        </span>
                            <h3 class="card-label">
                                Qualification Information
                            </h3>
                        </div>
                    </div>
                    <div class="card-body">
                        <table class="table table-bordered">
                            <thead>
                            <tr>
                                <th>SR. No</th>
                                <th>Name Of Course:</th>
                                <th>School / University</th>
                                <th>Passing Year</th>
                                <th>Percentage:</th>
                            </tr>
                            </thead>
                            <tbody>
                            <c:forEach items="${databean.qualificationInformations}" var="qi" varStatus="i">
                                <tr>
                                    <td><span>${i.index+1}</span></td>
                                    <td>${qi.nameOfCourse}</td>
                                    <td>${qi.instituteName}</td>
                                    <td>${qi.passingYear}</td>
                                    <td>${qi.percentage}</td>
                                </tr>
                            </c:forEach>
                            </tbody>
                        </table>
                    </div>
                </div>
            </div>
            <div class="col-lg-12">
                <div class="card card-custom">
                    <div class="card-header">
                        <div class="card-title">
                                <span class="card-icon">
                                    <i class="flaticon2-chat-1 text-primary"></i>
                                </span>
                            <h3 class="card-label">
                                Revenue Information
                            </h3>
                        </div>
                    </div>
                    <div class="card-body">
                        <table class="table">
                            <thead>
                            <tr>
                                <th>SR. No</th>
                                <th>Type OF Revenue</th>
                                <th>Government / Private</th>
                                <th>Experience in Years</th>
                                <th>Working Place</th>
                            </tr>
                            </thead>
                            <tbody>
                            <c:forEach items="${databean.revenueInformations}" var="ri" varStatus="i">
                                <tr>
                                    <td><span>${i.index+1}</span></td>
                                    <td>${ri.typeOFRevenue}</td>
                                    <td>${ri.typeOfJob}</td>
                                    <td>${ri.experience}</td>
                                    <td>${ri.workingPlace}</td>
                                </tr>
                            </c:forEach>
                            </tbody>
                        </table>
                    </div>
                </div>
            </div>
        </div>

        <div class="card-footer">
            <div class="row">
                <div class="col-lg-8">
                    <a href="<c:url value="/search-member"></c:url>" type="submit" class="btn btn-primary mr-2">Go back</a>
                </div>
            </div>
        </div>
    </decorator:content>
</decorator:decorate>