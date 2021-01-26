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
    <decorator:content placeholder="title">Search Links Information</decorator:content>
    <decorator:content placeholder="pagetitle">Search Links Information</decorator:content>
    <decorator:content placeholder="content">
        <!--begin: Search Form-->
        <!--begin::Search Form-->
        <div class="mb-7">
            <div class="row align-items-center">
                <div class="col-lg-9 col-xl-8">
                    <div class="row align-items-center">
                        <div class="col-md-4 my-2 my-md-0">
                            <div class="input-icon">
                                <input type="text" class="form-control" placeholder="Search..." id="kt_datatable_search_query" />
                                <span>
                                                            <i class="flaticon2-search-1 text-muted"></i>
                                                        </span>
                            </div>
                        </div>
                    </div>
                </div>
                <div class="col-lg-3 col-xl-4 mt-5 mt-lg-0">
                    <a href="#" class="btn btn-light-primary px-6 font-weight-bold">Search</a>
                </div>
            </div>
        </div>
        <!--end::Search Form-->
        <!--end: Search Form-->
        <!--begin: Datatable-->
        <table id="kt_datatable" class="datatable datatable-bordered datatable-head-custom" id="kt_datatable">
            <thead>
            <tr>
                <th title="Field #1">Sr No.</th>
                <th title="Field #1">Link Title</th>
                <th title="Field #2">Links Logo:</th>
                <th title="Field #3">Page Description:</th>
                <th title="Field #3">Page Images:</th>
                <th title="Field #6">View</th>
                <th title="Field #7">Edit</th>
                <th title="Field #8">Status</th>

            </tr>
            </thead>
            <tbody>
            <c:forEach items="${dataList}" var="item" varStatus="i">
                <tr>
                    <td>${i.index+1}</td>
                    <td>${item.linkTitle}</td>
                    <td><img src="<c:url value="/getimage?id=${item.image}"></c:url>" height="70px" width="50px"></td>
                    <td>${item.pageDescription}</td>
                    <td><img src="<c:url value="/getimage?id=${item.pageImage}"></c:url>" height="70px" width="50px"></td>
                    <td class="text-right"><a href="/view-links?id=${item.linkId}" class="btn btn-primary">View Links</a></td>
                    <td class="text-right"><a href="/edit-links?id=${item.linkId}" class="btn btn-primary">Edit links</a></td>
                    <td>${item.status}</td>
                </tr>
            </c:forEach>
            </tbody>
        </table>
        <!--end: Datatable-->
    </decorator:content>
    <decorator:content placeholder="scripts">
        <script src="<c:url value="/cdn/js/customs/searchlinks.js"></c:url>"></script>
    </decorator:content>
</decorator:decorate>