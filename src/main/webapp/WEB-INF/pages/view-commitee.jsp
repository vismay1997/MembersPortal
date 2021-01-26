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
    <decorator:content placeholder="title">View Commitee Information</decorator:content>
    <decorator:content placeholder="pagetitle">Commitee</decorator:content>
    <decorator:content placeholder="content">
        <form:form modelAttribute="databean" class="form">
            <div class="card-body">
                <div class="form-group row">
                    <div class="col-lg-3">
                        <label>Commitee Title</label>
                    </div>
                    <div class="col-lg-3">
                        <div>${databean.commiteeTitle}</div>
                    </div>
                </div>
                <div class="form-group row">
                    <div class="col-lg-3">
                        <label>Commitee Image / Logo:</label>
                    </div>
                    <div class="col-lg-3">
                        <div><img src="/getimage?id=${databean.logo}" height="70ox" width="70px"></div>
                    </div>
                </div>
                <div class="form-group row">
                    <div class="col-lg-3">
                        <label>Commitee Description:</label>
                    </div>
                    <div class="col-lg-3">
                        <div>${databean.description}</div>
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
                                        Commitee Members Information
                                    </h3>
                                </div>
                            </div>
                            <div class="card-body">
                                <table class="table table-bordered">
                                    <thead>
                                    <tr>
                                        <th>SR. No</th>
                                        <th>Committee Name</th>
                                        <th>Name Of Member</th>
                                    </tr>
                                    </thead>
                                    <tbody>
                                    <c:forEach items="${databean.commiteeMembers}" var="qi" varStatus="i">
                                        <tr>
                                            <td><span>${i.index+1}</span></td>
                                            <td>${qi.nameOfCommitee}</td>
                                            <td>${qi.nameOfMember}</td>
                                        </tr>
                                    </c:forEach>
                                    </tbody>
                                </table>
                            </div>
                        </div>
                    </div>
                </div>
            </div>
            <div class="card-footer">
                <div class="row">
                    <div class="col-lg-8">
                        <a href="<c:url value="/search-commitee"></c:url>" type="submit" class="btn btn-primary mr-2">Go back</a>
                    </div>
                </div>
            </div>
        </form:form>
    </decorator:content>
    <decorator:content placeholder="scripts"></decorator:content>
</decorator:decorate>