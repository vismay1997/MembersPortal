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
    <decorator:content placeholder="title">Notice Registration Form</decorator:content>
    <decorator:content placeholder="pagetitle">Notice Registration Form</decorator:content>
    <decorator:content placeholder="content">
        <form:form modelAttribute="databean" enctype="multipart/form-data" class="form">
            <div class="card-body">
                <div class="form-group row">
                    <div class="col-lg-12">
                        <label>Notice Title</label>
                        <form:input path="noticeTitle"  class="form-control" placeholder="Enter full name"/>
                        <form:errors path="noticeTitle" cssClass="text-danger"/>
                    </div>
                </div>
                <div class="form-group row">
                    <div class="col-lg-12">
                        <label>Notice Image / Logo:</label>
                        <div class="custom-file">
                            <form:hidden path="noticeLogo" />
                            <input type="file" name="noticeLogoFile" class="custom-file-input" id="customFile"/>
                            <label class="custom-file-label" for="customFile">Choose file</label>
                            <form:errors path="noticeLogo" cssClass="text-danger"/>
                        </div>
                    </div>
                </div>
                <div class="form-group row">
                    <div class="col-lg-12">
                        <label>Notice Description:</label>
                        <form:textarea  path="noticeDescription"  class="form-control" name="memo" placeholder="Enter a menu" rows="3"></form:textarea>
                        <form:errors path="noticeDescription" cssClass="text-danger"/>
                    </div>
                </div>
                <div class="form-group row">
                    <div class="col-lg-12">
                        <label>Supporting Document:</label>
                        <div class="custom-file">
                            <form:hidden path="supportingDocs" />
                            <input type="file" name="supportingDocsFile" class="custom-file-input" id="customFile"/>
                            <label class="custom-file-label" for="customFile">Choose file</label>
                            <form:errors path="supportingDocs" cssClass="text-danger"/>
                        </div>
                    </div>
                </div>
            </div>
            <div class="card-footer">
                <div class="row">
                    <div class="col-lg-8">
                        <button type="submit" class="btn btn-primary mr-2">Save</button>
                        <button type="reset" class="btn btn-secondary">Cancel</button>
                    </div>
                </div>
            </div>
        </form:form>
    </decorator:content>
</decorator:decorate>