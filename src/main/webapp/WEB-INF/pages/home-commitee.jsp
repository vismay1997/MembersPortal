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
                <c:forEach items="${commiteelist}" var="item">
                    <table class="table table-bordered">
                        <thead>
                        <tr>
                            <th scope="col">Commitee Name</th>
                            <th scope="col">Commitee Description</th>
                            <th scope="col">Commitee Image / Logo:</th>
                            <th scope="col">Commitee Members Information</th>
                        </tr>
                        </thead>
                        <tbody>
                        <tr>
                            <td>${item.commiteeTitle}</td>
                            <td>${item.description}</td>
                            <td><img src="/getimage?id=${item.logo}" height="50px" width="50px"></td>
                            <td>
                                <table class="table table-bordered">
                                    <thead>
                                    <tr>
                                        <th>SR. No</th>
                                        <th>Committee Name</th>
                                        <th>Name Of Member</th>
                                    </tr>
                                    </thead>
                                    <tbody>
                                    <c:forEach items="${item.commiteeMembers}" var="qi" varStatus="i">
                                        <tr>
                                            <td><span>${i.index+1}</span></td>
                                            <td>${qi.nameOfCommitee}</td>
                                            <td>${qi.nameOfMember}</td>
                                        </tr>
                                    </c:forEach>
                                    </tbody>
                                </table>

                            </td>
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