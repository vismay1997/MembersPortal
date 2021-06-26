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
    <decorator:content placeholder="title">Search Member</decorator:content>
    <decorator:content placeholder="pagetitle">Search Member Information</decorator:content>
    <decorator:content placeholder="content">

        <div class="card card-custom">
            <div class="card-header">
                <h3 class="card-title">
                    Search Member By Category
                </h3>
            </div>
            <!--begin::Form-->
            <form:form modelAttribute="databean" method="get" class="form">
                <div class="card-body">
                    <div class="form-group row">
                        <label class="col-form-label text-right col-lg-3 col-sm-12">Search User By Village Or Street</label>
                        <div class="col-lg-4 col-md-9 col-sm-12">
                            <form:select path="village" class="form-control selectpicker" data-size="7" data-live-search="true">
                                <option value="">Please select Village Name</option>
                                <c:forEach items="${villages}" var="item">
                                    <option value="${item}">${item}</option>
                                </c:forEach>
                            </form:select>
                        </div>
                        <div class="col-lg-4 col-md-9 col-sm-12">
                            <form:select path="street" class="form-control selectpicker" data-size="7" data-live-search="true">
                                <option value="">Please select Street Name</option>
                                <c:forEach items="${streets}" var="item">
                                    <option value="${item}">${item}</option>
                                </c:forEach>
                            </form:select>
                        </div>
                    </div>
                    <div class="form-group row">
                            <label class="col-form-label text-right col-lg-3 col-sm-12">Search Member By Mobile NO. Or Pincode</label>
                            <div class="col-lg-4 col-md-9 col-sm-12">
                                <form:input path="mobileNo"   class="form-control"  placeholder="Enter Mobile Number"/>
                            </div>
                            <div class="col-lg-4 col-md-9 col-sm-12">
                                <form:input path="pinCode"   class="form-control"  placeholder="Enter Pincode"/>
                            </div>
                        </div>
                </div>
                <div class="card-footer">
                    <button type="submit" class="btn btn-primary mr-2">Submit</button>
                    <button type="reset" class="btn btn-secondary">Cancel</button>
                </div>
            </form:form>
            <!--end::Form-->
        </div>




        <!--begin: Datatable-->
        <table id="kt_datatable" class="datatable datatable-bordered datatable-head-custom" id="kt_datatable">
            <thead>
            <tr>
                <th title="Field #1">Sr No.</th>
                <th title="Field #1">Full Name</th>
                <th title="Field #3">Email Address</th>
                <th title="Field #4">Pin Code</th>
                <th title="Field #5">Village</th>
                <th title="Field #6">Street</th>
                <th title="Field #7">Address</th>
            </tr>
            </thead>
            <tbody>
            <c:forEach items="${dataList}" var="item" varStatus="i">
                <tr>
                    <td>${i.index+1}</td>
                    <td>${item.fullName}</td>
                    <td>${item.emailAddress}</td>
                    <td>${item.pinCode}</td>
                    <td>${item.village}</td>
                    <td>${item.street}</td>
                    <td>${item.address}</td>
                </tr>
            </c:forEach>
            </tbody>
        </table>
        <!--end: Datatable-->





    </decorator:content>
    <decorator:content placeholder="scripts">
        <script src="<c:url value="/cdn/js/customs/searchmarquee.js"></c:url>"></script>
    </decorator:content>
</decorator:decorate>