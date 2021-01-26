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
    <decorator:content placeholder="title">Create Marquee</decorator:content>
    <decorator:content placeholder="pagetitle">Create Marquee</decorator:content>
    <decorator:content placeholder="content">
        <form:form modelAttribute="databean" enctype="multipart/form-data"  method="post" class="form">
            <div class="card-body">
                <div class="form-group row">
                    <div class="col-lg-12">
                        <label>Marquee Title</label>
                        <form:input path="title" class="form-control"/>
                        <form:errors path="title" cssClass="text-danger"/>
                    </div>
                </div>
                <div class="form-group row">
                    <div class="col-lg-12">
                        <label>Marquee Image / Logo:</label>
                        <div class="custom-file">
                            <form:hidden path="image" />
                            <input type="file" name="file" class="custom-file-input" id="customFile"/>
                            <label class="custom-file-label" for="customFile">Choose file</label>
                        </div>
                        <form:errors path="image" cssClass="text-danger"/>
                    </div>
                </div>
                <div class="form-group row">
                    <div class="col-lg-12">
                        <label>Marquee Description:</label>
                        <form:textarea  type="hidden" path="description"  class="form-control" rows="3"></form:textarea>
                        <form:errors path="description" cssClass="text-danger"/>
                    </div>
                </div>
                <div class="form-group row">
                    <div class="col-lg-6">
                        <label>Marquee Start Timing:</label>
                        <form:input type="date" path="startDateTime" class="form-control"  placeholder="Select date"/>
                        <form:errors path="startDateTime" cssClass="text-danger"/>
                    </div>
                    <div class="col-lg-6">
                        <label>Marquee Start Timing:</label>
                        <form:input type="date" path="endDateTime" class="form-control" placeholder="Select date"/>
                        <form:errors path="endDateTime" cssClass="text-danger"/>
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
    <decorator:content placeholder="scripts"></decorator:content>
</decorator:decorate>