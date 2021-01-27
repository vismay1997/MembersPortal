<%--
  Created by IntelliJ IDEA.
  User: Vismay Patel
  Date: 1/24/2021
  Time: 6:26 AM
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>

<!DOCTYPE html>
<html lang="en">
<!--begin::Head-->
<head>
    <meta charset="utf-8" />
    <title>Login Page</title>
    <meta name="viewport" content="width=device-width, initial-scale=1, shrink-to-fit=no" />
    <link href="css/pages/login/classic/login-4.css" rel="stylesheet" type="text/css" />
    <link href="<c:url value="/cdn/plugins/global/plugins.bundle.css"></c:url>" rel="stylesheet" type="text/css" />
    <link href="<c:url value="/cdn/plugins/custom/prismjs/prismjs.bundle.css"></c:url>" rel="stylesheet" type="text/css" />
    <link href="<c:url value="/cdn/css/style.bundle.css"></c:url>" rel="stylesheet" type="text/css" />
    <link href="<c:url value="/cdn/css/themes/layout/header/base/light.css"></c:url>" rel="stylesheet" type="text/css" />
    <link href="<c:url value="/cdn/css/themes/layout/header/menu/light.css"></c:url>" rel="stylesheet" type="text/css" />
    <link href="<c:url value="/cdn/css/themes/layout/brand/dark.css"></c:url>" rel="stylesheet" type="text/css" />
    <link href="<c:url value="/cdn/css/themes/layout/aside/dark.css"></c:url>" rel="stylesheet" type="text/css" />
</head>
<!--end::Head-->
<!--begin::Body-->
<body id="kt_body" class="header-fixed header-mobile-fixed subheader-enabled subheader-fixed aside-enabled aside-fixed aside-minimize-hoverable page-loading">
<!--begin::Main-->
<div class="d-flex flex-column flex-root">
    <!--begin::Login-->
    <div class="login login-4 login-signin-on d-flex flex-row-fluid" id="kt_login">
        <div class="d-flex flex-center flex-row-fluid bgi-size-cover bgi-position-top bgi-no-repeat" style="background-image: url('images/backgrounds/background-white.jpg');">
            <div class="login-form text-center p-7 position-relative overflow-hidden">
                <!--begin::Login Header-->
                <div class="d-flex flex-center mb-15">
                    <a href="#">
                        <img src="media/logos/logo-letter-13.png" class="max-h-75px" alt="" />
                    </a>
                </div>
                <!--end::Login Header-->
                <c:if test="${message != null}">
                    <div class="alert alert-custom alert-light-primary fade show mb-5" role="alert">
                        <div class="alert-icon"><i class="flaticon-warning"></i></div>
                        <div class="alert-text">${message}</div>
                        <div class="alert-close">
                            <button type="button" class="close" data-dismiss="alert" aria-label="Close">
                                <span aria-hidden="true"><i class="ki ki-close"></i></span>
                            </button>
                        </div>
                    </div>
                </c:if>
                <!--begin::Login Sign in form-->
                <div class="login-signin">
                    <div class="mb-20">
                        <h3>Login To Member Portal Please Login</h3>
                    </div>
                    <form class="form" method="post">
                        <div class="form-group mb-5">
                            <input class="form-control h-auto form-control-solid py-4 px-8" type="text" name="username" placeholder="Please Enter UserName" autocomplete="off" />
                        </div>
                        <div class="form-group mb-5">
                            <input class="form-control h-auto form-control-solid py-4 px-8" type="password" placeholder="Please Enter Password" name="password" />
                        </div>
                        <button type="submit" class="btn btn-primary font-weight-bold px-9 py-4 my-3 mx-4">Sign In</button>
                    </form>
                </div>
                <!--end::Login Sign in form-->
            </div>
        </div>
    </div>
    <!--end::Login-->
</div>
<!--end::Main-->
<script>var HOST_URL = "https://preview.keenthemes.com/metronic/theme/html/tools/preview";</script>
<!--begin::Global Config(global config for global JS scripts)-->
<script>var KTAppSettings = { "breakpoints": { "sm": 576, "md": 768, "lg": 992, "xl": 1200, "xxl": 1400 }, "colors": { "theme": { "base": { "white": "#ffffff", "primary": "#3699FF", "secondary": "#E5EAEE", "success": "#1BC5BD", "info": "#8950FC", "warning": "#FFA800", "danger": "#F64E60", "light": "#E4E6EF", "dark": "#181C32" }, "light": { "white": "#ffffff", "primary": "#E1F0FF", "secondary": "#EBEDF3", "success": "#C9F7F5", "info": "#EEE5FF", "warning": "#FFF4DE", "danger": "#FFE2E5", "light": "#F3F6F9", "dark": "#D6D6E0" }, "inverse": { "white": "#ffffff", "primary": "#ffffff", "secondary": "#3F4254", "success": "#ffffff", "info": "#ffffff", "warning": "#ffffff", "danger": "#ffffff", "light": "#464E5F", "dark": "#ffffff" } }, "gray": { "gray-100": "#F3F6F9", "gray-200": "#EBEDF3", "gray-300": "#E4E6EF", "gray-400": "#D1D3E0", "gray-500": "#B5B5C3", "gray-600": "#7E8299", "gray-700": "#5E6278", "gray-800": "#3F4254", "gray-900": "#181C32" } }, "font-family": "Poppins" };</script>
<!--end::Global Config-->
<!--begin::Global Theme Bundle(used by all pages)-->
<script src="<c:url value="/cdn/plugins/global/plugins.bundle.js"></c:url>"></script>
<script src="<c:url value="/cdn/plugins/custom/prismjs/prismjs.bundle.js"></c:url>"></script>
<script src="<c:url value="/cdn/js/scripts.bundle.js"></c:url>"></script>
<!--end::Global Theme Bundle-->
</body>
<!--end::Body-->
</html>