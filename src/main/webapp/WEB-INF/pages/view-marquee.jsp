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
    <decorator:content placeholder="title">View Marquee Information</decorator:content>
    <decorator:content placeholder="pagetitle">View Marquee Information</decorator:content>
    <decorator:content placeholder="content">
        <div class="card">
            <div class="card-body">
                <div class="form-group row">
                    <div class="col-lg-3">
                        <label>Marquee Title</label>
                    </div>
                    <div class="col-lg-6">
                        <div>${databean.title}</div>
                    </div>
                </div>
                <div class="form-group row">
                    <div class="col-lg-3">
                        <label>Marquee Image / Logo:</label>
                    </div>
                    <div class="col-lg-6">
                        <div><img src="/getimage?id=${databean.image}" height="50px" width="50px"></div>
                    </div>
                </div>
                <div class="form-group row">
                    <div class="col-lg-3">
                        <label>Marquee Description:</label>
                    </div>
                    <div class="col-lg-6">
                        <div>${databean.description}</div>
                    </div>
                </div>
                <div class="form-group row">
                    <div class="col-lg-3">
                        <label>Marquee Start Timing:</label>
                    </div>
                    <div class="col-lg-6">
                        <div>${databean.title}</div>
                    </div>
                </div>
                <div class="form-group row">
                    <div class="col-lg-3">
                        <label>Marquee End Timing:</label>
                    </div>
                    <div class="col-lg-6">
                        <div>${databean.endDateTime}</div>
                    </div>
                </div>
            </div>
            <div class="card-footer">
                <div class="row">
                    <div class="col-lg-8">
                        <a href="<c:url value="/search-marquee"></c:url>" class="btn btn-primary mr-2">Go Back</a>
                    </div>
                </div>
            </div>
        </div>
    </decorator:content>
</decorator:decorate>
