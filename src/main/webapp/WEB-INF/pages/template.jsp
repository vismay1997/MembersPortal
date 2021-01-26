<%--
  Created by IntelliJ IDEA.
  User: Vismay Patel
  Date: 1/26/2021
  Time: 6:04 PM
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<%@ taglib prefix="c"  uri="http://java.sun.com/jsp/jstl/core" %>
<%@ taglib prefix="form" uri="http://www.springframework.org/tags/form"%>
<%@ taglib prefix="spring" uri="http://www.springframework.org/tags" %>
<%@ taglib prefix="decorator" uri="http://claudiushauptmann.com/jsp-decorator/" %>
<html>
<head>
    <title><decorator:placeholder name='title'/></title>
    <link href="<c:url value="/cdn/plugins/global/plugins.bundle.css"></c:url>" rel="stylesheet" type="text/css" />
    <link href="<c:url value="/cdn/plugins/custom/prismjs/prismjs.bundle.css"></c:url>" rel="stylesheet" type="text/css" />
    <link href="<c:url value="/cdn/css/style.bundle.css"></c:url>" rel="stylesheet" type="text/css" />
    <link href="<c:url value="/cdn/css/themes/layout/header/base/light.css"></c:url>" rel="stylesheet" type="text/css" />
    <link href="<c:url value="/cdn/css/themes/layout/header/menu/light.css"></c:url>" rel="stylesheet" type="text/css" />
    <link href="<c:url value="/cdn/css/themes/layout/brand/dark.css"></c:url>" rel="stylesheet" type="text/css" />
    <link href="<c:url value="/cdn/css/themes/layout/aside/dark.css"></c:url>" rel="stylesheet" type="text/css" />
    <decorator:placeholder name="styles"></decorator:placeholder>
</head>
<body id="kt_body" class="quick-panel-right demo-panel-right offcanvas-right header-fixed subheader-enabled page-loading">
<jsp:include page="mobile-header.jsp"></jsp:include>
<!--start::Main-->
    <div class="d-flex flex-column flex-root">
    <!--begin::Page-->
    <div class="d-flex flex-row flex-column-fluid page">
        <!--begin::Wrapper-->
        <div class="d-flex flex-column flex-row-fluid wrapper" id="kt_wrapper">
            <!--begin::Header-->
            <div id="kt_header" class="header header-fixed">
                <!--begin::Container-->
                <div class="container d-flex align-items-stretch justify-content-between">
                    <!--begin::Left-->
                    <div class="d-flex align-items-stretch mr-3">
                        <!--begin::Header Logo-->
                        <div class="header-logo">
                            <a href="index.html"></a>
                        </div>
                        <!--end::Header Logo-->
                        <!--begin::Header Menu Wrapper-->
                            <jsp:include page="header.jsp"></jsp:include>
                        <!--end::Header Menu Wrapper-->
                    </div>
                    <!--end::Left-->
                </div>
                <!--end::Container-->
            </div>
            <!--end::Header-->
            <!--begin::Content-->
            <div class="content d-flex flex-column flex-column-fluid" id="kt_content">
                <!--begin::Entry-->
                <div class="d-flex flex-column-fluid">
                    <!--begin::Container-->
                    <div class="container">
                        <div class="card card-custom gutter-b mt-15">
                            <div class="card-header">
                                <div class="card-title">
                                    <h3 class="card-label">
                                        <decorator:placeholder name="pagetitle"></decorator:placeholder>
                                    </h3>
                                </div>
                            </div>
                            <div class="card-body">
                                <decorator:placeholder name="content"></decorator:placeholder>
                            </div>
                        </div>
                    </div>
                    <!--end::Container-->
                </div>
                <!--end::Entry-->
            </div>
            <!--end::Content-->
            <!--begin::Footer-->
                <jsp:include page="footer.jsp"></jsp:include>
            <!--end::Footer-->
        </div>
        <!--end::Wrapper-->
    </div>
    <!--end::Page-->
</div>
<!--end::Main-->
</body>
    <!--begin::Global Config(global config for global JS scripts)-->
    <script>var KTAppSettings = { "breakpoints": { "sm": 576, "md": 768, "lg": 992, "xl": 1200, "xxl": 1400 }, "colors": { "theme": { "base": { "white": "#ffffff", "primary": "#3699FF", "secondary": "#E5EAEE", "success": "#1BC5BD", "info": "#8950FC", "warning": "#FFA800", "danger": "#F64E60", "light": "#E4E6EF", "dark": "#181C32" }, "light": { "white": "#ffffff", "primary": "#E1F0FF", "secondary": "#EBEDF3", "success": "#C9F7F5", "info": "#EEE5FF", "warning": "#FFF4DE", "danger": "#FFE2E5", "light": "#F3F6F9", "dark": "#D6D6E0" }, "inverse": { "white": "#ffffff", "primary": "#ffffff", "secondary": "#3F4254", "success": "#ffffff", "info": "#ffffff", "warning": "#ffffff", "danger": "#ffffff", "light": "#464E5F", "dark": "#ffffff" } }, "gray": { "gray-100": "#F3F6F9", "gray-200": "#EBEDF3", "gray-300": "#E4E6EF", "gray-400": "#D1D3E0", "gray-500": "#B5B5C3", "gray-600": "#7E8299", "gray-700": "#5E6278", "gray-800": "#3F4254", "gray-900": "#181C32" } }, "font-family": "Poppins" };</script>
    <!--end::Global Config-->
    <!--begin::Global Theme Bundle(used by all pages)-->
    <script src="<c:url value="/cdn/plugins/global/plugins.bundle.js"></c:url>"></script>
    <script src="<c:url value="/cdn/plugins/custom/prismjs/prismjs.bundle.js"></c:url>"></script>
    <script src="<c:url value="/cdn/js/scripts.bundle.js"></c:url>"></script>
    <!--end::Global Theme Bundle-->
    <decorator:placeholder name="scripts"></decorator:placeholder>
</html>