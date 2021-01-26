<%--
  Created by IntelliJ IDEA.
  User: vismay
  Date: 1/23/2021
  Time: 12:19 PM
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<%@ taglib prefix="c"  uri="http://java.sun.com/jsp/jstl/core" %>
<%@ taglib prefix="form" uri="http://www.springframework.org/tags/form"%>
<%@ taglib prefix="spring" uri="http://www.springframework.org/tags" %>
<html>
<head>
    <title>Home Page Section</title>
    <link href="<c:url value="plugins/global/plugins.bundle.css"></c:url>" rel="stylesheet" type="text/css" />
    <link href="<c:url value="plugins/custom/prismjs/prismjs.bundle.css"></c:url>" rel="stylesheet" type="text/css" />
    <link href="<c:url value="css/style.bundle.css"></c:url>" rel="stylesheet" type="text/css" />
    <!--end::Global Theme Styles-->
    <!--begin::Layout Themes(used by all pages)-->
    <link href="<c:url value="css/themes/layout/header/base/light.css"></c:url>" rel="stylesheet" type="text/css" />
    <link href="<c:url value="css/themes/layout/header/menu/light.css"></c:url>" rel="stylesheet" type="text/css" />
    <link href="<c:url value="css/themes/layout/brand/dark.css"></c:url>" rel="stylesheet" type="text/css" />
    <link href="<c:url value="css/themes/layout/aside/dark.css"></c:url>" rel="stylesheet" type="text/css" />
</head>
<body id="kt_body" style="background-image: url(assets/media/bg/bg-10.jpg)" class="quick-panel-right demo-panel-right offcanvas-right header-fixed subheader-enabled page-loading">
<!--begin::Main-->
<!--begin::Header Mobile-->
<div id="kt_header_mobile" class="header-mobile">
    <!--begin::Logo-->
    <a href="index.html">
        <img alt="Logo" src="assets/media/logos/logo-letter-1.png" class="logo-default max-h-30px" />
    </a>
    <!--end::Logo-->
    <!--begin::Toolbar-->
    <div class="d-flex align-items-center">
        <button class="btn p-0 burger-icon burger-icon-left ml-4" id="kt_header_mobile_toggle">
            <span></span>
        </button>
        <button class="btn btn-icon btn-hover-transparent-white p-0 ml-3" id="kt_header_mobile_topbar_toggle">
					<span class="svg-icon svg-icon-xl">
						<!--begin::Svg Icon | path:assets/media/svg/icons/General/User.svg-->
						<svg xmlns="http://www.w3.org/2000/svg" xmlns:xlink="http://www.w3.org/1999/xlink" width="24px" height="24px" viewBox="0 0 24 24" version="1.1">
							<g stroke="none" stroke-width="1" fill="none" fill-rule="evenodd">
								<polygon points="0 0 24 0 24 24 0 24" />
								<path d="M12,11 C9.790861,11 8,9.209139 8,7 C8,4.790861 9.790861,3 12,3 C14.209139,3 16,4.790861 16,7 C16,9.209139 14.209139,11 12,11 Z" fill="#000000" fill-rule="nonzero" opacity="0.3" />
								<path d="M3.00065168,20.1992055 C3.38825852,15.4265159 7.26191235,13 11.9833413,13 C16.7712164,13 20.7048837,15.2931929 20.9979143,20.2 C21.0095879,20.3954741 20.9979143,21 20.2466999,21 C16.541124,21 11.0347247,21 3.72750223,21 C3.47671215,21 2.97953825,20.45918 3.00065168,20.1992055 Z" fill="#000000" fill-rule="nonzero" />
							</g>
						</svg>
                        <!--end::Svg Icon-->
					</span>
        </button>
    </div>
    <!--end::Toolbar-->
</div>
<!--end::Header Mobile-->
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
                        <div class="header-menu-wrapper header-menu-wrapper-left" id="kt_header_menu_wrapper">
                            <!--begin::Header Menu-->
                            <div id="kt_header_menu" class="header-menu header-menu-left header-menu-mobile header-menu-layout-default">
                                <!--begin::Header Nav-->
                                <ul class="menu-nav">
                                    <li class="menu-item menu-item-submenu menu-item-rel" data-menu-toggle="click" aria-haspopup="true">
                                        <a href="javascript:;" class="menu-link menu-toggle">
                                            <span class="menu-text">Members Management Section</span>
                                            <span class="menu-desc"></span>
                                            <i class="menu-arrow"></i>
                                        </a>
                                        <div class="menu-submenu menu-submenu-classic menu-submenu-left">
                                            <ul class="menu-subnav">
                                                <li class="menu-item" aria-haspopup="true">
                                                    <a href="javascript:;" class="menu-link">
															<span class="svg-icon menu-icon">
																<!--begin::Svg Icon | path:assets/media/svg/icons/Communication/Safe-chat.svg-->
																<svg xmlns="http://www.w3.org/2000/svg" xmlns:xlink="http://www.w3.org/1999/xlink" width="24px" height="24px" viewBox="0 0 24 24" version="1.1">
																	<g stroke="none" stroke-width="1" fill="none" fill-rule="evenodd">
																		<rect x="0" y="0" width="24" height="24" />
																		<path d="M8,17 C8.55228475,17 9,17.4477153 9,18 L9,21 C9,21.5522847 8.55228475,22 8,22 L3,22 C2.44771525,22 2,21.5522847 2,21 L2,18 C2,17.4477153 2.44771525,17 3,17 L3,16.5 C3,15.1192881 4.11928813,14 5.5,14 C6.88071187,14 8,15.1192881 8,16.5 L8,17 Z M5.5,15 C4.67157288,15 4,15.6715729 4,16.5 L4,17 L7,17 L7,16.5 C7,15.6715729 6.32842712,15 5.5,15 Z" fill="#000000" opacity="0.3" />
																		<path d="M2,11.8650466 L2,6 C2,4.34314575 3.34314575,3 5,3 L19,3 C20.6568542,3 22,4.34314575 22,6 L22,15 C22,15.0032706 21.9999948,15.0065399 21.9999843,15.009808 L22.0249378,15 L22.0249378,19.5857864 C22.0249378,20.1380712 21.5772226,20.5857864 21.0249378,20.5857864 C20.7597213,20.5857864 20.5053674,20.4804296 20.317831,20.2928932 L18.0249378,18 L12.9835977,18 C12.7263047,14.0909841 9.47412135,11 5.5,11 C4.23590829,11 3.04485894,11.3127315 2,11.8650466 Z M6,7 C5.44771525,7 5,7.44771525 5,8 C5,8.55228475 5.44771525,9 6,9 L15,9 C15.5522847,9 16,8.55228475 16,8 C16,7.44771525 15.5522847,7 15,7 L6,7 Z" fill="#000000" />
																	</g>
																</svg>
                                                                <!--end::Svg Icon-->
															</span>
                                                        <span class="menu-text">Create New Member</span>
                                                    </a>
                                                </li>
                                                <li class="menu-item" aria-haspopup="true">
                                                    <a href="javascript:;" class="menu-link">
															<span class="svg-icon menu-icon">
																<!--begin::Svg Icon | path:assets/media/svg/icons/Communication/Safe-chat.svg-->
																<svg xmlns="http://www.w3.org/2000/svg" xmlns:xlink="http://www.w3.org/1999/xlink" width="24px" height="24px" viewBox="0 0 24 24" version="1.1">
																	<g stroke="none" stroke-width="1" fill="none" fill-rule="evenodd">
																		<rect x="0" y="0" width="24" height="24" />
																		<path d="M8,17 C8.55228475,17 9,17.4477153 9,18 L9,21 C9,21.5522847 8.55228475,22 8,22 L3,22 C2.44771525,22 2,21.5522847 2,21 L2,18 C2,17.4477153 2.44771525,17 3,17 L3,16.5 C3,15.1192881 4.11928813,14 5.5,14 C6.88071187,14 8,15.1192881 8,16.5 L8,17 Z M5.5,15 C4.67157288,15 4,15.6715729 4,16.5 L4,17 L7,17 L7,16.5 C7,15.6715729 6.32842712,15 5.5,15 Z" fill="#000000" opacity="0.3" />
																		<path d="M2,11.8650466 L2,6 C2,4.34314575 3.34314575,3 5,3 L19,3 C20.6568542,3 22,4.34314575 22,6 L22,15 C22,15.0032706 21.9999948,15.0065399 21.9999843,15.009808 L22.0249378,15 L22.0249378,19.5857864 C22.0249378,20.1380712 21.5772226,20.5857864 21.0249378,20.5857864 C20.7597213,20.5857864 20.5053674,20.4804296 20.317831,20.2928932 L18.0249378,18 L12.9835977,18 C12.7263047,14.0909841 9.47412135,11 5.5,11 C4.23590829,11 3.04485894,11.3127315 2,11.8650466 Z M6,7 C5.44771525,7 5,7.44771525 5,8 C5,8.55228475 5.44771525,9 6,9 L15,9 C15.5522847,9 16,8.55228475 16,8 C16,7.44771525 15.5522847,7 15,7 L6,7 Z" fill="#000000" />
																	</g>
																</svg>
                                                                <!--end::Svg Icon-->
															</span>
                                                        <span class="menu-text">Search And Modify Member</span>
                                                    </a>
                                                </li>
                                            </ul>
                                        </div>
                                    </li>
                                    <li class="menu-item menu-item-submenu menu-item-rel" data-menu-toggle="click" aria-haspopup="true">
                                        <a href="javascript:;" class="menu-link menu-toggle">
                                            <span class="menu-text">Users Management Section</span>
                                            <span class="menu-desc"></span>
                                            <i class="menu-arrow"></i>
                                        </a>
                                        <div class="menu-submenu menu-submenu-classic menu-submenu-left">
                                            <ul class="menu-subnav">
                                                <li class="menu-item" aria-haspopup="true">
                                                    <a href="javascript:;" class="menu-link">
															<span class="svg-icon menu-icon">
																<!--begin::Svg Icon | path:assets/media/svg/icons/Communication/Safe-chat.svg-->
																<svg xmlns="http://www.w3.org/2000/svg" xmlns:xlink="http://www.w3.org/1999/xlink" width="24px" height="24px" viewBox="0 0 24 24" version="1.1">
																	<g stroke="none" stroke-width="1" fill="none" fill-rule="evenodd">
																		<rect x="0" y="0" width="24" height="24" />
																		<path d="M8,17 C8.55228475,17 9,17.4477153 9,18 L9,21 C9,21.5522847 8.55228475,22 8,22 L3,22 C2.44771525,22 2,21.5522847 2,21 L2,18 C2,17.4477153 2.44771525,17 3,17 L3,16.5 C3,15.1192881 4.11928813,14 5.5,14 C6.88071187,14 8,15.1192881 8,16.5 L8,17 Z M5.5,15 C4.67157288,15 4,15.6715729 4,16.5 L4,17 L7,17 L7,16.5 C7,15.6715729 6.32842712,15 5.5,15 Z" fill="#000000" opacity="0.3" />
																		<path d="M2,11.8650466 L2,6 C2,4.34314575 3.34314575,3 5,3 L19,3 C20.6568542,3 22,4.34314575 22,6 L22,15 C22,15.0032706 21.9999948,15.0065399 21.9999843,15.009808 L22.0249378,15 L22.0249378,19.5857864 C22.0249378,20.1380712 21.5772226,20.5857864 21.0249378,20.5857864 C20.7597213,20.5857864 20.5053674,20.4804296 20.317831,20.2928932 L18.0249378,18 L12.9835977,18 C12.7263047,14.0909841 9.47412135,11 5.5,11 C4.23590829,11 3.04485894,11.3127315 2,11.8650466 Z M6,7 C5.44771525,7 5,7.44771525 5,8 C5,8.55228475 5.44771525,9 6,9 L15,9 C15.5522847,9 16,8.55228475 16,8 C16,7.44771525 15.5522847,7 15,7 L6,7 Z" fill="#000000" />
																	</g>
																</svg>
                                                                <!--end::Svg Icon-->
															</span>
                                                        <span class="menu-text">Create New User</span>
                                                    </a>
                                                </li>
                                                <li class="menu-item" aria-haspopup="true">
                                                    <a href="javascript:;" class="menu-link">
															<span class="svg-icon menu-icon">
																<!--begin::Svg Icon | path:assets/media/svg/icons/Communication/Safe-chat.svg-->
																<svg xmlns="http://www.w3.org/2000/svg" xmlns:xlink="http://www.w3.org/1999/xlink" width="24px" height="24px" viewBox="0 0 24 24" version="1.1">
																	<g stroke="none" stroke-width="1" fill="none" fill-rule="evenodd">
																		<rect x="0" y="0" width="24" height="24" />
																		<path d="M8,17 C8.55228475,17 9,17.4477153 9,18 L9,21 C9,21.5522847 8.55228475,22 8,22 L3,22 C2.44771525,22 2,21.5522847 2,21 L2,18 C2,17.4477153 2.44771525,17 3,17 L3,16.5 C3,15.1192881 4.11928813,14 5.5,14 C6.88071187,14 8,15.1192881 8,16.5 L8,17 Z M5.5,15 C4.67157288,15 4,15.6715729 4,16.5 L4,17 L7,17 L7,16.5 C7,15.6715729 6.32842712,15 5.5,15 Z" fill="#000000" opacity="0.3" />
																		<path d="M2,11.8650466 L2,6 C2,4.34314575 3.34314575,3 5,3 L19,3 C20.6568542,3 22,4.34314575 22,6 L22,15 C22,15.0032706 21.9999948,15.0065399 21.9999843,15.009808 L22.0249378,15 L22.0249378,19.5857864 C22.0249378,20.1380712 21.5772226,20.5857864 21.0249378,20.5857864 C20.7597213,20.5857864 20.5053674,20.4804296 20.317831,20.2928932 L18.0249378,18 L12.9835977,18 C12.7263047,14.0909841 9.47412135,11 5.5,11 C4.23590829,11 3.04485894,11.3127315 2,11.8650466 Z M6,7 C5.44771525,7 5,7.44771525 5,8 C5,8.55228475 5.44771525,9 6,9 L15,9 C15.5522847,9 16,8.55228475 16,8 C16,7.44771525 15.5522847,7 15,7 L6,7 Z" fill="#000000" />
																	</g>
																</svg>
                                                                <!--end::Svg Icon-->
															</span>
                                                        <span class="menu-text">Search And Modify User</span>
                                                    </a>
                                                </li>
                                            </ul>
                                        </div>
                                    </li>
                                    <li class="menu-item menu-item-submenu menu-item-rel" data-menu-toggle="click" aria-haspopup="true">
                                        <a href="javascript:;" class="menu-link menu-toggle">
                                            <span class="menu-text">Event And Notice Management Section</span>
                                            <span class="menu-desc"></span>
                                            <i class="menu-arrow"></i>
                                        </a>
                                        <div class="menu-submenu menu-submenu-classic menu-submenu-left">
                                            <ul class="menu-subnav">
                                                <li class="menu-item" aria-haspopup="true">
                                                    <a href="javascript:;" class="menu-link">
															<span class="svg-icon menu-icon">
																<!--begin::Svg Icon | path:assets/media/svg/icons/Communication/Safe-chat.svg-->
																<svg xmlns="http://www.w3.org/2000/svg" xmlns:xlink="http://www.w3.org/1999/xlink" width="24px" height="24px" viewBox="0 0 24 24" version="1.1">
																	<g stroke="none" stroke-width="1" fill="none" fill-rule="evenodd">
																		<rect x="0" y="0" width="24" height="24" />
																		<path d="M8,17 C8.55228475,17 9,17.4477153 9,18 L9,21 C9,21.5522847 8.55228475,22 8,22 L3,22 C2.44771525,22 2,21.5522847 2,21 L2,18 C2,17.4477153 2.44771525,17 3,17 L3,16.5 C3,15.1192881 4.11928813,14 5.5,14 C6.88071187,14 8,15.1192881 8,16.5 L8,17 Z M5.5,15 C4.67157288,15 4,15.6715729 4,16.5 L4,17 L7,17 L7,16.5 C7,15.6715729 6.32842712,15 5.5,15 Z" fill="#000000" opacity="0.3" />
																		<path d="M2,11.8650466 L2,6 C2,4.34314575 3.34314575,3 5,3 L19,3 C20.6568542,3 22,4.34314575 22,6 L22,15 C22,15.0032706 21.9999948,15.0065399 21.9999843,15.009808 L22.0249378,15 L22.0249378,19.5857864 C22.0249378,20.1380712 21.5772226,20.5857864 21.0249378,20.5857864 C20.7597213,20.5857864 20.5053674,20.4804296 20.317831,20.2928932 L18.0249378,18 L12.9835977,18 C12.7263047,14.0909841 9.47412135,11 5.5,11 C4.23590829,11 3.04485894,11.3127315 2,11.8650466 Z M6,7 C5.44771525,7 5,7.44771525 5,8 C5,8.55228475 5.44771525,9 6,9 L15,9 C15.5522847,9 16,8.55228475 16,8 C16,7.44771525 15.5522847,7 15,7 L6,7 Z" fill="#000000" />
																	</g>
																</svg>
                                                                <!--end::Svg Icon-->
															</span>
                                                        <span class="menu-text">Create New Event Or Notice</span>
                                                    </a>
                                                </li>
                                                <li class="menu-item" aria-haspopup="true">
                                                    <a href="javascript:;" class="menu-link">
															<span class="svg-icon menu-icon">
																<!--begin::Svg Icon | path:assets/media/svg/icons/Communication/Safe-chat.svg-->
																<svg xmlns="http://www.w3.org/2000/svg" xmlns:xlink="http://www.w3.org/1999/xlink" width="24px" height="24px" viewBox="0 0 24 24" version="1.1">
																	<g stroke="none" stroke-width="1" fill="none" fill-rule="evenodd">
																		<rect x="0" y="0" width="24" height="24" />
																		<path d="M8,17 C8.55228475,17 9,17.4477153 9,18 L9,21 C9,21.5522847 8.55228475,22 8,22 L3,22 C2.44771525,22 2,21.5522847 2,21 L2,18 C2,17.4477153 2.44771525,17 3,17 L3,16.5 C3,15.1192881 4.11928813,14 5.5,14 C6.88071187,14 8,15.1192881 8,16.5 L8,17 Z M5.5,15 C4.67157288,15 4,15.6715729 4,16.5 L4,17 L7,17 L7,16.5 C7,15.6715729 6.32842712,15 5.5,15 Z" fill="#000000" opacity="0.3" />
																		<path d="M2,11.8650466 L2,6 C2,4.34314575 3.34314575,3 5,3 L19,3 C20.6568542,3 22,4.34314575 22,6 L22,15 C22,15.0032706 21.9999948,15.0065399 21.9999843,15.009808 L22.0249378,15 L22.0249378,19.5857864 C22.0249378,20.1380712 21.5772226,20.5857864 21.0249378,20.5857864 C20.7597213,20.5857864 20.5053674,20.4804296 20.317831,20.2928932 L18.0249378,18 L12.9835977,18 C12.7263047,14.0909841 9.47412135,11 5.5,11 C4.23590829,11 3.04485894,11.3127315 2,11.8650466 Z M6,7 C5.44771525,7 5,7.44771525 5,8 C5,8.55228475 5.44771525,9 6,9 L15,9 C15.5522847,9 16,8.55228475 16,8 C16,7.44771525 15.5522847,7 15,7 L6,7 Z" fill="#000000" />
																	</g>
																</svg>
                                                                <!--end::Svg Icon-->
															</span>
                                                        <span class="menu-text">Search And Modify Event Or Notice</span>
                                                    </a>
                                                </li>
                                            </ul>
                                        </div>
                                    </li>
                                    <li class="menu-item menu-item-submenu menu-item-rel" data-menu-toggle="click" aria-haspopup="true">
                                        <a href="javascript:;" class="menu-link menu-toggle">
                                            <span class="menu-text">Committee Management Section</span>
                                            <span class="menu-desc"></span>
                                            <i class="menu-arrow"></i>
                                        </a>
                                        <div class="menu-submenu menu-submenu-classic menu-submenu-left">
                                            <ul class="menu-subnav">
                                                <li class="menu-item" aria-haspopup="true">
                                                    <a href="javascript:;" class="menu-link">
															<span class="svg-icon menu-icon">
																<!--begin::Svg Icon | path:assets/media/svg/icons/Communication/Safe-chat.svg-->
																<svg xmlns="http://www.w3.org/2000/svg" xmlns:xlink="http://www.w3.org/1999/xlink" width="24px" height="24px" viewBox="0 0 24 24" version="1.1">
																	<g stroke="none" stroke-width="1" fill="none" fill-rule="evenodd">
																		<rect x="0" y="0" width="24" height="24" />
																		<path d="M8,17 C8.55228475,17 9,17.4477153 9,18 L9,21 C9,21.5522847 8.55228475,22 8,22 L3,22 C2.44771525,22 2,21.5522847 2,21 L2,18 C2,17.4477153 2.44771525,17 3,17 L3,16.5 C3,15.1192881 4.11928813,14 5.5,14 C6.88071187,14 8,15.1192881 8,16.5 L8,17 Z M5.5,15 C4.67157288,15 4,15.6715729 4,16.5 L4,17 L7,17 L7,16.5 C7,15.6715729 6.32842712,15 5.5,15 Z" fill="#000000" opacity="0.3" />
																		<path d="M2,11.8650466 L2,6 C2,4.34314575 3.34314575,3 5,3 L19,3 C20.6568542,3 22,4.34314575 22,6 L22,15 C22,15.0032706 21.9999948,15.0065399 21.9999843,15.009808 L22.0249378,15 L22.0249378,19.5857864 C22.0249378,20.1380712 21.5772226,20.5857864 21.0249378,20.5857864 C20.7597213,20.5857864 20.5053674,20.4804296 20.317831,20.2928932 L18.0249378,18 L12.9835977,18 C12.7263047,14.0909841 9.47412135,11 5.5,11 C4.23590829,11 3.04485894,11.3127315 2,11.8650466 Z M6,7 C5.44771525,7 5,7.44771525 5,8 C5,8.55228475 5.44771525,9 6,9 L15,9 C15.5522847,9 16,8.55228475 16,8 C16,7.44771525 15.5522847,7 15,7 L6,7 Z" fill="#000000" />
																	</g>
																</svg>
                                                                <!--end::Svg Icon-->
															</span>
                                                        <span class="menu-text">Create New Committee</span>
                                                    </a>
                                                </li>
                                                <li class="menu-item" aria-haspopup="true">
                                                    <a href="javascript:;" class="menu-link">
															<span class="svg-icon menu-icon">
																<!--begin::Svg Icon | path:assets/media/svg/icons/Communication/Safe-chat.svg-->
																<svg xmlns="http://www.w3.org/2000/svg" xmlns:xlink="http://www.w3.org/1999/xlink" width="24px" height="24px" viewBox="0 0 24 24" version="1.1">
																	<g stroke="none" stroke-width="1" fill="none" fill-rule="evenodd">
																		<rect x="0" y="0" width="24" height="24" />
																		<path d="M8,17 C8.55228475,17 9,17.4477153 9,18 L9,21 C9,21.5522847 8.55228475,22 8,22 L3,22 C2.44771525,22 2,21.5522847 2,21 L2,18 C2,17.4477153 2.44771525,17 3,17 L3,16.5 C3,15.1192881 4.11928813,14 5.5,14 C6.88071187,14 8,15.1192881 8,16.5 L8,17 Z M5.5,15 C4.67157288,15 4,15.6715729 4,16.5 L4,17 L7,17 L7,16.5 C7,15.6715729 6.32842712,15 5.5,15 Z" fill="#000000" opacity="0.3" />
																		<path d="M2,11.8650466 L2,6 C2,4.34314575 3.34314575,3 5,3 L19,3 C20.6568542,3 22,4.34314575 22,6 L22,15 C22,15.0032706 21.9999948,15.0065399 21.9999843,15.009808 L22.0249378,15 L22.0249378,19.5857864 C22.0249378,20.1380712 21.5772226,20.5857864 21.0249378,20.5857864 C20.7597213,20.5857864 20.5053674,20.4804296 20.317831,20.2928932 L18.0249378,18 L12.9835977,18 C12.7263047,14.0909841 9.47412135,11 5.5,11 C4.23590829,11 3.04485894,11.3127315 2,11.8650466 Z M6,7 C5.44771525,7 5,7.44771525 5,8 C5,8.55228475 5.44771525,9 6,9 L15,9 C15.5522847,9 16,8.55228475 16,8 C16,7.44771525 15.5522847,7 15,7 L6,7 Z" fill="#000000" />
																	</g>
																</svg>
                                                                <!--end::Svg Icon-->
															</span>
                                                        <span class="menu-text">Search And Modify Committee</span>
                                                    </a>
                                                </li>
                                            </ul>
                                        </div>
                                    </li>
                                    <li class="menu-item menu-item-submenu menu-item-rel" data-menu-toggle="click" aria-haspopup="true">
                                        <a href="javascript:;" class="menu-link menu-toggle">
                                            <span class="menu-text">Job Management Portal</span>
                                            <span class="menu-desc"></span>
                                            <i class="menu-arrow"></i>
                                        </a>
                                        <div class="menu-submenu menu-submenu-classic menu-submenu-left">
                                            <ul class="menu-subnav">
                                                <li class="menu-item" aria-haspopup="true">
                                                    <a href="javascript:;" class="menu-link">
															<span class="svg-icon menu-icon">
																<!--begin::Svg Icon | path:assets/media/svg/icons/Communication/Safe-chat.svg-->
																<svg xmlns="http://www.w3.org/2000/svg" xmlns:xlink="http://www.w3.org/1999/xlink" width="24px" height="24px" viewBox="0 0 24 24" version="1.1">
																	<g stroke="none" stroke-width="1" fill="none" fill-rule="evenodd">
																		<rect x="0" y="0" width="24" height="24" />
																		<path d="M8,17 C8.55228475,17 9,17.4477153 9,18 L9,21 C9,21.5522847 8.55228475,22 8,22 L3,22 C2.44771525,22 2,21.5522847 2,21 L2,18 C2,17.4477153 2.44771525,17 3,17 L3,16.5 C3,15.1192881 4.11928813,14 5.5,14 C6.88071187,14 8,15.1192881 8,16.5 L8,17 Z M5.5,15 C4.67157288,15 4,15.6715729 4,16.5 L4,17 L7,17 L7,16.5 C7,15.6715729 6.32842712,15 5.5,15 Z" fill="#000000" opacity="0.3" />
																		<path d="M2,11.8650466 L2,6 C2,4.34314575 3.34314575,3 5,3 L19,3 C20.6568542,3 22,4.34314575 22,6 L22,15 C22,15.0032706 21.9999948,15.0065399 21.9999843,15.009808 L22.0249378,15 L22.0249378,19.5857864 C22.0249378,20.1380712 21.5772226,20.5857864 21.0249378,20.5857864 C20.7597213,20.5857864 20.5053674,20.4804296 20.317831,20.2928932 L18.0249378,18 L12.9835977,18 C12.7263047,14.0909841 9.47412135,11 5.5,11 C4.23590829,11 3.04485894,11.3127315 2,11.8650466 Z M6,7 C5.44771525,7 5,7.44771525 5,8 C5,8.55228475 5.44771525,9 6,9 L15,9 C15.5522847,9 16,8.55228475 16,8 C16,7.44771525 15.5522847,7 15,7 L6,7 Z" fill="#000000" />
																	</g>
																</svg>
                                                                <!--end::Svg Icon-->
															</span>
                                                        <span class="menu-text">Create New Job Application</span>
                                                    </a>
                                                </li>
                                                <li class="menu-item" aria-haspopup="true">
                                                    <a href="javascript:;" class="menu-link">
															<span class="svg-icon menu-icon">
																<!--begin::Svg Icon | path:assets/media/svg/icons/Communication/Safe-chat.svg-->
																<svg xmlns="http://www.w3.org/2000/svg" xmlns:xlink="http://www.w3.org/1999/xlink" width="24px" height="24px" viewBox="0 0 24 24" version="1.1">
																	<g stroke="none" stroke-width="1" fill="none" fill-rule="evenodd">
																		<rect x="0" y="0" width="24" height="24" />
																		<path d="M8,17 C8.55228475,17 9,17.4477153 9,18 L9,21 C9,21.5522847 8.55228475,22 8,22 L3,22 C2.44771525,22 2,21.5522847 2,21 L2,18 C2,17.4477153 2.44771525,17 3,17 L3,16.5 C3,15.1192881 4.11928813,14 5.5,14 C6.88071187,14 8,15.1192881 8,16.5 L8,17 Z M5.5,15 C4.67157288,15 4,15.6715729 4,16.5 L4,17 L7,17 L7,16.5 C7,15.6715729 6.32842712,15 5.5,15 Z" fill="#000000" opacity="0.3" />
																		<path d="M2,11.8650466 L2,6 C2,4.34314575 3.34314575,3 5,3 L19,3 C20.6568542,3 22,4.34314575 22,6 L22,15 C22,15.0032706 21.9999948,15.0065399 21.9999843,15.009808 L22.0249378,15 L22.0249378,19.5857864 C22.0249378,20.1380712 21.5772226,20.5857864 21.0249378,20.5857864 C20.7597213,20.5857864 20.5053674,20.4804296 20.317831,20.2928932 L18.0249378,18 L12.9835977,18 C12.7263047,14.0909841 9.47412135,11 5.5,11 C4.23590829,11 3.04485894,11.3127315 2,11.8650466 Z M6,7 C5.44771525,7 5,7.44771525 5,8 C5,8.55228475 5.44771525,9 6,9 L15,9 C15.5522847,9 16,8.55228475 16,8 C16,7.44771525 15.5522847,7 15,7 L6,7 Z" fill="#000000" />
																	</g>
																</svg>
                                                                <!--end::Svg Icon-->
															</span>
                                                        <span class="menu-text">Search And Modify Job Application</span>
                                                    </a>
                                                </li>
                                                <li class="menu-item" aria-haspopup="true">
                                                    <a href="javascript:;" class="menu-link">
															<span class="svg-icon menu-icon">
																<!--begin::Svg Icon | path:assets/media/svg/icons/Communication/Safe-chat.svg-->
																<svg xmlns="http://www.w3.org/2000/svg" xmlns:xlink="http://www.w3.org/1999/xlink" width="24px" height="24px" viewBox="0 0 24 24" version="1.1">
																	<g stroke="none" stroke-width="1" fill="none" fill-rule="evenodd">
																		<rect x="0" y="0" width="24" height="24" />
																		<path d="M8,17 C8.55228475,17 9,17.4477153 9,18 L9,21 C9,21.5522847 8.55228475,22 8,22 L3,22 C2.44771525,22 2,21.5522847 2,21 L2,18 C2,17.4477153 2.44771525,17 3,17 L3,16.5 C3,15.1192881 4.11928813,14 5.5,14 C6.88071187,14 8,15.1192881 8,16.5 L8,17 Z M5.5,15 C4.67157288,15 4,15.6715729 4,16.5 L4,17 L7,17 L7,16.5 C7,15.6715729 6.32842712,15 5.5,15 Z" fill="#000000" opacity="0.3" />
																		<path d="M2,11.8650466 L2,6 C2,4.34314575 3.34314575,3 5,3 L19,3 C20.6568542,3 22,4.34314575 22,6 L22,15 C22,15.0032706 21.9999948,15.0065399 21.9999843,15.009808 L22.0249378,15 L22.0249378,19.5857864 C22.0249378,20.1380712 21.5772226,20.5857864 21.0249378,20.5857864 C20.7597213,20.5857864 20.5053674,20.4804296 20.317831,20.2928932 L18.0249378,18 L12.9835977,18 C12.7263047,14.0909841 9.47412135,11 5.5,11 C4.23590829,11 3.04485894,11.3127315 2,11.8650466 Z M6,7 C5.44771525,7 5,7.44771525 5,8 C5,8.55228475 5.44771525,9 6,9 L15,9 C15.5522847,9 16,8.55228475 16,8 C16,7.44771525 15.5522847,7 15,7 L6,7 Z" fill="#000000" />
																	</g>
																</svg>
                                                                <!--end::Svg Icon-->
															</span>
                                                        <span class="menu-text">Search And Apply Job Application</span>
                                                    </a>
                                                </li>
                                            </ul>
                                        </div>
                                    </li>
                                </ul>
                                <!--end::Header Nav-->
                            </div>
                            <!--end::Header Menu-->
                        </div>
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
                                        Member Registration Page
                                    </h3>
                                </div>
                            </div>
                            <div class="card-body">
                                <form:form modelAttribute="databean" class="form"  enctype="multipart/form-data">
                                    <div class="card-body">
                                        <div class="form-group row">
                                            <div class="col-lg-6">
                                                <label>Full Name:</label>
                                                <form:input path="fullName" class="form-control"/>
                                                <form:errors path="fullName" cssClass="text-danger"/>
                                            </div>
                                            <div class="col-lg-6">
                                                <label>Birth Date:</label>
                                                <form:input path="birthDate" type="date" class="form-control" placeholder="Enter Your BirthDate"/>
                                                <form:errors path="birthDate" cssClass="text-danger"/>
                                            </div>
                                        </div>
                                        <div class="form-group row">
                                            <div class="col-lg-6">
                                                <label>Chief of Family:</label>
                                                <form:select path="chiefOfFamily" class="form-control selectpicker">
                                                    <form:option  value="Yes" label="Yes"></form:option>
                                                    <form:option value="No" label="No"></form:option>
                                                </form:select>
                                                <form:errors path="chiefOfFamily" cssClass="text-danger"/>
                                            </div>
                                            <div class="col-lg-6">
                                                <label>Chief Name:</label>
                                                <form:input path="chiefName" class="form-control" placeholder="Enter Your BirthDate"/>
                                                <form:errors path="chiefName" cssClass="text-danger"/>
                                            </div>
                                        </div>
                                        <div class="form-group row">
                                            <div class="col-lg-6">
                                                <label>Age:</label>
                                                <form:input path="age" class="form-control" placeholder="Enter Your Age"/>
                                                <form:errors path="age" cssClass="text-danger"/>
                                            </div>
                                            <div class="col-lg-6">
                                                <label>Marquee Image / Logo:</label>
                                                <div class="custom-file">
                                                    <form:hidden path="image" />
                                                    <input type="file" name="profilePic" class="custom-file-input" id="customFile"/>
                                                    <label class="custom-file-label" for="customFile">Choose file</label>
                                                </div>
                                                <form:errors path="image" cssClass="text-danger"/>
                                            </div>
                                        </div>
                                        <div class="form-group row">
                                            <div class="col-lg-6">
                                                <label>Phone Number:</label>
                                                <form:input path="phoneNo" class="form-control"/>
                                                <form:errors path="phoneNo" cssClass="text-danger"/>
                                            </div>
                                            <div class="col-lg-6">
                                                <label>Mobile No:</label>
                                                <form:input path="mobileNo" class="form-control" placeholder="Enter Your Age"/>
                                                <form:errors path="mobileNo" cssClass="text-danger"/>
                                            </div>
                                        </div>
                                        <div class="form-group row">
                                            <div class="col-lg-6">
                                                <label>Blood Group:</label>
                                                <form:select path="bloodGroup" class="form-control selectpicker">
                                                    <form:options items="${bloodGroupList}"></form:options>
                                                </form:select>
                                                <form:errors path="bloodGroup" cssClass="text-danger"/>
                                            </div>
                                            <div class="col-lg-6">
                                                <label>Email Address:</label>
                                                <form:input path="emailAddress" class="form-control" placeholder="Enter Your Age"/>
                                                <form:errors path="emailAddress" cssClass="text-danger"/>
                                            </div>
                                        </div>
                                        <div class="form-group row">
                                            <div class="col-lg-6">
                                                <label>Marital Status:</label>
                                                <form:select path="maritalStatus" class="form-control selectpicker">
                                                    <form:options items="${maritalStatusList}"></form:options>
                                                </form:select>
                                                <form:errors path="maritalStatus" cssClass="text-danger"/>
                                            </div>
                                            <div class="col-lg-6">
                                                <label>Pin Code :</label>
                                                <form:input path="pinCode" class="form-control" placeholder="Enter Your Age"/>
                                                <form:errors path="pinCode" cssClass="text-danger"/>
                                            </div>
                                        </div>
                                        <div class="form-group row">
                                            <div class="col-lg-6">
                                                <label>Address :</label>
                                                <form:textarea  path="address" class="form-control" name="memo" placeholder="Enter a menu" rows="3"></form:textarea>
                                                <form:errors path="address" cssClass="text-danger"/>
                                            </div>
                                            <div class="col-lg-6">
                                                <label>Gender :</label>
                                                <form:select path="gender" class="form-control selectpicker">
                                                    <form:option  value="Male" label="Male"></form:option>
                                                    <form:option value="Female" label="Female"></form:option>
                                                    <form:option value="Not Given" label="Not Given"></form:option>
                                                </form:select>
                                                <form:errors path="pinCode" cssClass="text-danger"/>
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
                                                                Qualification Information
                                                            </h3>
                                                        </div>
                                                        <div class="card-toolbar">
                                                            <button type="button" class="btn btn-primary mr-2 add-more-qualification">Add Qualification</button>
                                                            <button type="button" class="btn btn-primary mr-2 delete-qualification">Remove Qualification</button>

                                                        </div>
                                                    </div>
                                                    <div class="card-body">
                                                        <table class="table">
                                                            <thead>
                                                            <tr>
                                                                <th><input class='check_all' type='checkbox' class="form-control" onclick="select_all()"/></th>
                                                                <th>SR. No</th>
                                                                <th>Name Of Course:</th>
                                                                <th>School / University</th>
                                                                <th>Passing Year</th>
                                                                <th>Percentage:</th>
                                                            </tr>
                                                            </thead>
                                                            <tbody class="qualification-body">
                                                            <c:forEach items="${databean.qualificationInformations}" var="qi" varStatus="i">
                                                                <tr>
                                                                    <td><input type='checkbox' class='qualification_case' class="form-control" /></td>
                                                                    <td><span class="row_no">1.</span></td>
                                                                    <td>
                                                                        <form:input path="qualificationInformations[${i.index}].nameOfCourse" class="form-control"/>
                                                                        <form:errors path="qualificationInformations[${i.index}].nameOfCourse" cssClass="text-danger"/>
                                                                    </td>
                                                                    <td>
                                                                        <form:input path="qualificationInformations[${i.index}].instituteName" class="form-control"/>
                                                                        <form:errors path="qualificationInformations[${i.index}].instituteName" cssClass="text-danger"/>
                                                                    </td>
                                                                    <td>
                                                                        <form:input path="qualificationInformations[${i.index}].passingYear" class="form-control"/>
                                                                        <form:errors path="qualificationInformations[${i.index}].passingYear" cssClass="text-danger"/>
                                                                    </td>
                                                                    <td>
                                                                        <form:input path="qualificationInformations[${i.index}].percentage" class="form-control"/>
                                                                        <form:errors path="qualificationInformations[${i.index}].percentage" cssClass="text-danger"/>
                                                                    </td>
                                                                </tr>
                                                            </c:forEach>
                                                            </tbody>
                                                        </table>
                                                    </div>
                                                </div>
                                            </div>
                                            <div class="col-lg-12">
                                                <div class="card card-custom">
                                                    <div class="card-header">
                                                        <div class="card-title">
                                                            <span class="card-icon">
                                                                <i class="flaticon2-chat-1 text-primary"></i>
                                                            </span>
                                                            <h3 class="card-label">
                                                                Revenue Information
                                                            </h3>
                                                        </div>
                                                        <div class="card-toolbar">
                                                            <button type="button" class="btn btn-primary mr-2 add-more-revenue">Add Experience</button>
                                                            <button type="button" class="btn btn-secondary delete_revenue">Remove Experience</button>
                                                        </div>
                                                    </div>
                                                    <div class="card-body">
                                                        <table class="table">
                                                            <thead>
                                                            <tr>
                                                                <th><input class='check_all' type='checkbox' class="form-control" onclick="select_all()"/></th>
                                                                <th>SR. No</th>
                                                                <th>Type OF Revenue</th>
                                                                <th>Government / Private</th>
                                                                <th>Experience in Years</th>
                                                                <th>Working Place</th>
                                                            </tr>
                                                            </thead>
                                                            <tbody class="revenue-body">
                                                            <c:forEach items="${databean.revenueInformations}" var="qi" varStatus="i">
                                                                <tr>
                                                                    <td><input type='checkbox' class='revenue_case' class="form-control" /></td>
                                                                    <td><span class="row_no">1.</span></td>
                                                                    <td>
                                                                        <form:input path="revenueInformations[${i.index}].typeOFRevenue" class="form-control"/>
                                                                        <form:errors path="revenueInformations[${i.index}].typeOFRevenue" cssClass="text-danger"/>
                                                                    </td>
                                                                    <td>
                                                                        <form:input path="revenueInformations[${i.index}].typeOfJob" class="form-control"/>
                                                                        <form:errors path="revenueInformations[${i.index}].typeOfJob" cssClass="text-danger"/>
                                                                    </td>
                                                                    <td>
                                                                        <form:input path="revenueInformations[${i.index}].experience" class="form-control"/>
                                                                        <form:errors path="revenueInformations[${i.index}].experience" cssClass="text-danger"/>
                                                                    </td>
                                                                    <td>
                                                                        <form:input path="revenueInformations[${i.index}].workingPlace" class="form-control"/>
                                                                        <form:errors path="revenueInformations[${i.index}].workingPlace" cssClass="text-danger"/>
                                                                    </td>
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
                                                <button type="submit" class="btn btn-primary mr-2">Save</button>
                                                <button type="reset" class="btn btn-secondary">Cancel</button>
                                            </div>
                                        </div>
                                    </div>
                                </form:form>
                            </div>
                        </div>
                    </div>
                    <!--end::Container-->
                </div>
                <!--end::Entry-->
            </div>
            <!--end::Content-->
            <!--begin::Footer-->
            <div class="footer bg-white py-4 d-flex flex-lg-column" id="kt_footer">
                <!--begin::Container-->
                <div class="container d-flex flex-column flex-md-row align-items-center justify-content-between">
                    <!--begin::Copyright-->
                    <div class="text-dark order-2 order-md-1">
                        <span class="text-muted font-weight-bold mr-2">2020©</span>
                        <a href="http://keenthemes.com/metronic" target="_blank" class="text-dark-75 text-hover-primary">Keenthemes</a>
                    </div>
                    <!--end::Copyright-->
                    <!--begin::Nav-->
                    <div class="nav nav-dark order-1 order-md-2">
                        <a href="http://keenthemes.com/metronic" target="_blank" class="nav-link pr-3 pl-0">About</a>
                        <a href="http://keenthemes.com/metronic" target="_blank" class="nav-link px-3">Team</a>
                        <a href="http://keenthemes.com/metronic" target="_blank" class="nav-link pl-3 pr-0">Contact</a>
                    </div>
                    <!--end::Nav-->
                </div>
                <!--end::Container-->
            </div>
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
<script src="<c:url value="plugins/global/plugins.bundle.js"></c:url>"></script>
<script src="<c:url value="plugins/custom/prismjs/prismjs.bundle.js"></c:url>"></script>
<script src="<c:url value="js/scripts.bundle.js"></c:url>"></script>
<!--end::Global Theme Bundle-->
<!--begin::Page Vendors(used by this page)-->
<script src="<c:url value="plugins/custom/fullcalendar/fullcalendar.bundle.js"></c:url>"></script>
<!--end::Page Vendors-->
<!--begin::Page Scripts(used by this page)-->
<script src="<c:url value="js/pages/widgets.js"></c:url>"></script>
<!--end::Page Scripts-->

<script type="text/javascript">
    function select_all() {
        $('input[class=case]:checkbox').each(function(){
            if($('input[class=check_all]:checkbox:checked').length == 0){
                $(this).prop("checked", false);
            } else {
                $(this).prop("checked", true);
            }
        });
    }

    $(document).ready(function() {
        var index = $('.qualification-body').length;
        var index_revenue = $('.revenue-body').length;

        $(".add-more-qualification").click(function(){
            index++;
            var data="<tr><td><input type='checkbox' class='qualification_case' class='form-control' /></td><td><span class='row_no'>"+index+"</span></td><td><input name='qualificationInformations["+index+"].nameOfCourse' class='form-control'/></td><td><input name='qualificationInformations["+index+"].instituteName' class='form-control'/></td><td><input name='qualificationInformations["+index+"].passingYear' class='form-control'/></td><td><input name='qualificationInformations["+index+"].percentage' class='form-control'/></td></tr>";
            $(".qualification-body").append(data);

        });

        $(".add-more-revenue").click(function(){
            index_revenue++;
            var data="<tr><td><input type='checkbox' class='revenue_case' class='form-control' /></td><td><span class='row_no'>"+index_revenue+"</span></td><td><input name='revenueInformations["+index_revenue+"].typeOFRevenue' class='form-control'/></td><td><input name='revenueInformations["+index_revenue+"].typeOfJob' class='form-control'/></td><td><input name='revenueInformations["+index_revenue+"].experience' class='form-control'/></td><td><input name='revenueInformations["+index_revenue+"].workingPlace' class='form-control'/></td></tr>";
            $(".revenue-body").append(data);

        });

        $(".delete-qualification").on('click', function() {
            $('.qualification_case:checkbox:checked').parents("tr").remove();
            $('.row_no').each((k,ele)=>{
                $(ele).html(k+1+'.')
            });
            var row=0;
            $(".qualification-body tr").each(function() {
                $(this).find("td:nth-child(2)").text(row+1);
                $(this).find("td:nth-child(3) input").attr('name','qualificationInformations['+row+'].nameOfCourse');
                $(this).find("td:nth-child(4) input").attr('name','qualificationInformations['+row+'].instituteName');
                $(this).find("td:nth-child(5) input").attr('name','qualificationInformations['+row+'].passingYear');
                $(this).find("td:nth-child(6) input").attr('name','qualificationInformations['+row+'].percentage');
                $(this).find("td:nth-child(3) input").attr('id','qualificationInformations['+row+'].nameOfCourse');
                $(this).find("td:nth-child(4) input").attr('id','qualificationInformations['+row+'].instituteName');
                $(this).find("td:nth-child(5) input").attr('id','qualificationInformations['+row+'].passingYear');
                $(this).find("td:nth-child(6) input").attr('id','qualificationInformations['+row+'].percentage');
                $(this).find("td:nth-child(3) input").attr('path','qualificationInformations['+row+'].nameOfCourse');
                $(this).find("td:nth-child(4) input").attr('path','qualificationInformations['+row+'].instituteName');
                $(this).find("td:nth-child(5) input").attr('path','qualificationInformations['+row+'].passingYear');
                $(this).find("td:nth-child(6) input").attr('path','qualificationInformations['+row+'].percentage');
                row++;
            });
        });

        $(".delete_revenue").on('click', function() {
            $('.revenue_case:checkbox:checked').parents("tr").remove();
            $('.row_no').each((k,ele)=>{
                $(ele).html(k+1+'.')
            });
            var row=0;
            $(".revenue-body tr").each(function() {
                $(this).find("td:nth-child(2)").text(row+1);
                $(this).find("td:nth-child(3) input").attr('name','revenueInformations['+row+'].typeOFRevenue');
                $(this).find("td:nth-child(4) input").attr('name','revenueInformations['+row+'].typeOfJob');
                $(this).find("td:nth-child(5) input").attr('name','revenueInformations['+row+'].experience');
                $(this).find("td:nth-child(6) input").attr('name','revenueInformations['+row+'].workingPlace');
                $(this).find("td:nth-child(3) input").attr('id','revenueInformations['+row+'].typeOFRevenue');
                $(this).find("td:nth-child(4) input").attr('id','revenueInformations['+row+'].typeOfJob');
                $(this).find("td:nth-child(5) input").attr('id','revenueInformations['+row+'].experience');
                $(this).find("td:nth-child(6) input").attr('id','revenueInformations['+row+'].workingPlace');
                $(this).find("td:nth-child(3) input").attr('path','revenueInformations['+row+'].typeOFRevenue');
                $(this).find("td:nth-child(4) input").attr('path','revenueInformations['+row+'].typeOfJob');
                $(this).find("td:nth-child(5) input").attr('path','revenueInformations['+row+'].experience');
                $(this).find("td:nth-child(6) input").attr('path','revenueInformations['+row+'].workingPlace');
                row++;
            });
        });

    });


</script>

</html>