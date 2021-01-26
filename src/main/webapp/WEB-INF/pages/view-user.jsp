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
    <decorator:content placeholder="title">View User Information</decorator:content>
    <decorator:content placeholder="pagetitle">View User Information</decorator:content>
    <decorator:content placeholder="content">
        <div class="card">
            <div class="card-body">
                <div class="form-group row">
                    <div class="col-lg-3">
                        <label>Full Name</label>
                    </div>
                    <div class="col-lg-6">
                        <div>${databean.fullName}</div>
                    </div>
                </div>
                <div class="form-group row">
                    <div class="col-lg-3">
                        <label>Email Id</label>
                    </div>
                    <div class="col-lg-6">
                        <div>${databean.emailId}</div>
                    </div>
                </div>
                <div class="form-group row">
                    <div class="col-lg-3">
                        <label>Mobile No.:</label>
                    </div>
                    <div class="col-lg-6">
                        <div>${databean.mobileNo}</div>
                    </div>
                </div>
                <div class="form-group row">
                    <div class="col-lg-3">
                        <label>User Role</label>
                    </div>
                    <div class="col-lg-6">
                        <div>${databean.userRole}</div>
                    </div>
                </div>
            </div>
            <div class="card-footer">
                <div class="row">
                    <div class="col-lg-8">
                        <a href="<c:url value="/search-user"></c:url>" class="btn btn-primary mr-2">Go Back</a>
                    </div>
                </div>
            </div>
        </div>
    </decorator:content>
</decorator:decorate>