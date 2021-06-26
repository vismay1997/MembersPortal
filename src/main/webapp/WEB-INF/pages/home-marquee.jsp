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
    <decorator:content placeholder="title">View Notification Information</decorator:content>
    <decorator:content placeholder="pagetitle">View Notification Information</decorator:content>
    <decorator:content placeholder="content">
        <div class="card">
            <div class="card-body">
                <c:forEach items="${marqueelist}" var="item">
                    <table class="table table-bordered">
                        <thead>
                        <tr>
                            <th scope="col">Notification Name</th>
                            <th scope="col">Notification Description</th>
                            <th scope="col">Notification Image / Logo:</th>
                            <th scope="col">Notification Start Timing:</th>
                            <th scope="col">Notification End Timing:</th>
                        </tr>
                        </thead>
                        <tbody>
                        <tr>
                            <td>${item.title}</td>
                            <td>${item.description}</td>
                            <td><img src="/getimage?id=${item.image}" height="50px" width="50px"></td>
                            <td>${item.startDateTime}</td>
                            <td>${item.endDateTime}</td>
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