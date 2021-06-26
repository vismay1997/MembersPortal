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

<decorator:decorate filename="template-home.jsp">
    <decorator:content placeholder="title">View Notice Information</decorator:content>
    <decorator:content placeholder="pagetitle">View Notice Information</decorator:content>
    <decorator:content placeholder="content">
        <div class="card">
            <div class="card-body">
                <c:forEach items="${noticeList}" var="item">
                <table class="table table-bordered">
                    <thead>
                    <tr>
                        <th scope="col">Notice Name</th>
                        <th scope="col">Notice Description</th>
                        <th scope="col">Notice Image / Logo:</th>
                        <th scope="col">Supporting Document</th>
                    </tr>
                    </thead>
                    <tbody>
                        <tr>
                            <td>${item.noticeTitle}</td>
                            <td>${item.noticeDescription}</td>
                            <td><img src="/getimage?id=${item.noticeLogo}" height="50px" width="50px"></td>
                            <td><a href="/getimage?id=${item.supportingDocs}" class="btn btn-primary" height="50px" width="50px">Download</a></td>
                        </tr>
                    </tbody>
                </table>
                </c:forEach>
            </div>
            <div class="card-footer">
                <div class="row">
                    <div class="col-lg-8">
                        <a href="<c:url value="/"></c:url>" class="btn btn-primary mr-2">Go Back</a>
                    </div>
                </div>
            </div>
        </div>
    </decorator:content>
</decorator:decorate>