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
    <decorator:content placeholder="title">View Notice Information</decorator:content>
    <decorator:content placeholder="pagetitle">View Notice Information</decorator:content>
    <decorator:content placeholder="content">
        <div class="card">
            <div class="card-body">
                <div class="form-group row">
                    <div class="col-lg-3">
                        <label>Notice Title</label>
                    </div>
                    <div class="col-lg-6">
                        <div>${databean.noticeTitle}</div>
                    </div>
                </div>
                <div class="form-group row">
                    <div class="col-lg-3">
                        <label>Notice Image / Logo:</label>
                    </div>
                    <div class="col-lg-6">
                        <div><img src="/getimage?id=${databean.noticeLogo}" height="50px" width="50px"></div>
                    </div>
                </div>
                <div class="form-group row">
                    <div class="col-lg-3">
                        <label>Notice Description:</label>
                    </div>
                    <div class="col-lg-6">
                        <div>${databean.noticeDescription}</div>
                    </div>
                </div>
                <div class="form-group row">
                    <div class="col-lg-3">
                        <label>Supporting Document</label>
                    </div>
                    <div class="col-lg-6">
                        <div><a href="/getimage?id=${databean.supportingDocs}" class="btn btn-primary" height="50px" width="50px">Download</a></div>
                    </div>
                </div>
            </div>
            <div class="card-footer">
                <div class="row">
                    <div class="col-lg-8">
                        <a href="<c:url value="/search-notice"></c:url>" class="btn btn-primary mr-2">Go Back</a>
                    </div>
                </div>
            </div>
        </div>
    </decorator:content>
</decorator:decorate>