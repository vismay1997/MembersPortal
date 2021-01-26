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
    <decorator:content placeholder="title">Links Registration Form</decorator:content>
    <decorator:content placeholder="pagetitle">Links Registration Form</decorator:content>
    <decorator:content placeholder="content">
        <form:form modelAttribute="databean" enctype="multipart/form-data" class="form">
            <div class="card-body">
                <div class="form-group row">
                    <div class="col-lg-6">
                        <label>full Name</label>
                        <form:input  path="fullName" class="form-control" placeholder="Enter full name"/>
                        <form:errors path="fullName" cssClass="text-danger"/>
                    </div>
                </div>
                <div class="form-group row">
                    <div class="col-lg-6">
                        <label>Email ID:</label>
                        <form:input  path="emailId" class="form-control" placeholder="Enter Email ID"/>
                        <form:errors path="emailId" cssClass="text-danger"/>
                    </div>
                </div>
                <div class="form-group row">
                    <div class="col-lg-6">
                        <label>Mobile No.:</label>
                        <form:input class="form-control" path="mobileNo" placeholder="Enter mobile No." rows="3"></form:input>
                        <form:errors path="mobileNo" cssClass="text-danger"/>
                    </div>
                </div>
                <div class="form-group row">
                    <div class="col-lg-6">
                        <label>Login Password:</label>
                        <form:input type="password" class="form-control" path="password" placeholder="Enter mobile No." rows="3"></form:input>
                        <form:errors path="password" cssClass="text-danger"/>
                    </div>
                </div>
                <div class="form-group row">
                    <div class="col-lg-6">
                        <label>User Name:</label>
                        <form:input type="text" class="form-control" path="username" placeholder="Enter mobile No." rows="3"></form:input>
                        <form:errors path="username" cssClass="text-danger"/>
                    </div>
                </div>
                <div class="form-group row">
                    <div class="col-lg-6">
                        <label>User Role:</label>
                        <form:select path="userRole" class="form-control selectpicker">
                            <form:option value="admin" label="Admin"></form:option>
                            <form:option value="president" label="President"></form:option>
                            <form:option value="cmember" label="Commitee Member"></form:option>
                            <form:option value="auditor" label="Auditor"></form:option>
                        </form:select>
                        <form:errors path="userRole" cssClass="text-danger"/>
                    </div>
                </div>
            </div>
            <div class="card-footer">
                <div class="row">
                    <div class="col-lg-8">
                        <button type="submit" class="btn btn-primary mr-2">Save</button>
                        <button type="reset" class="btn btn-secondary">Reset</button>
                    </div>
                </div>

            </div>
        </form:form>
    </decorator:content>
    <decorator:content placeholder="scripts">
        <script src="<c:url value="/cdn/js/pages/widgets.js"></c:url>"></script>
    </decorator:content>
</decorator:decorate>