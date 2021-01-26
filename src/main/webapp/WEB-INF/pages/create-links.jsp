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
                    <div class="col-lg-12">
                        <label>Link Title</label>
                        <form:input  path="linkTitle" class="form-control" placeholder="Enter full name"/>
                        <form:errors path="linkTitle" cssClass="text-danger"/>
                    </div>
                </div>
                <div class="form-group row">
                    <div class="col-lg-12">
                        <label>Links Logo:</label>
                        <div class="custom-file">
                            <input type="file" name="images" class="custom-file-input" id="customFile"/>
                            <label class="custom-file-label" for="customFile">Choose file</label>
                            <form:hidden path="image"></form:hidden>
                            <form:errors path="image" cssClass="text-danger"/>
                        </div>
                    </div>
                </div>
                <div class="form-group row">
                    <div class="col-lg-12">
                        <label>Page Description:</label>
                        <form:textarea class="form-control" path="pageDescription" placeholder="Enter a menu" rows="3"></form:textarea>
                        <form:errors path="pageDescription" cssClass="text-danger"/>
                    </div>
                </div>
                <div class="form-group row">
                    <div class="col-lg-12">
                        <label>Page Images:</label>
                        <div class="custom-file">
                            <input type="file" name="pageimages" class="custom-file-input" id="customFile"/>
                            <form:hidden path="pageImage"></form:hidden>
                            <form:errors path="pageImage" cssClass="text-danger"/>
                            <label class="custom-file-label" for="customFile">Choose files</label>
                        </div>
                    </div>
                </div>

            </div>
            <div class="card-footer">
                <div class="row">
                    <div class="col-lg-8">
                        <button type="submit" class="btn btn-primary mr-2">Save</button>
                        <button type="submit" class="btn btn-secondary">Cancel</button>
                    </div>
                </div>
            </div>
        </form:form>
    </decorator:content>
    <decorator:content placeholder="scripts">
        <script src="<c:url value="/cdn/js/pages/widgets.js"></c:url>"></script>
    </decorator:content>
</decorator:decorate>