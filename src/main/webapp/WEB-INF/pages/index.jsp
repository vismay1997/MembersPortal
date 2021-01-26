<%--
  Created by IntelliJ IDEA.
  User: vismay
  Date: 1/23/2021
  Time: 12:19 PM
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<!doctype html>
<html lang="en">

<head>
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1">
    <meta http-equiv="X-UA-Compatible" content="IE=edge">
    <title>Multipurpose</title>

    <link rel="stylesheet" href="<c:url value="/cdn/home/css/loader/loaders.css"></c:url>">
    <link rel="stylesheet" href="<c:url value="/cdn/home/css/font-awesome/font-awesome.css"></c:url>">
    <link rel="stylesheet" href="<c:url value="/cdn/home/css/bootstrap.css"></c:url>">
    <link rel="stylesheet" href="<c:url value="/cdn/home/css/aos/aos.css"></c:url>">
    <link rel="stylesheet" href="<c:url value="/cdn/home/css/swiper/swiper.css"></c:url>">
    <link rel="stylesheet" href="<c:url value="/cdn/home/css/lightgallery.min.css"></c:url>">
    <!-- Template Stylesheet -->
    <link rel="stylesheet" href="<c:url value="/cdn/home/css/style.css"></c:url>">
    <!-- Responsive Stylesheet -->
    <link rel="stylesheet" href="<c:url value="/cdn/home/css/responsive.css"></c:url>">
</head>

<body>
<!-- Loader Start -->
<div class="css-loader">
    <div class="loader-inner line-scale d-flex align-items-center justify-content-center"></div>
</div>
<!-- Loader End -->
<!-- Header Start -->
<header class="position-absolute w-100">
    <div class="container">
        <div class="top-header d-none d-sm-flex justify-content-between align-items-center">
            <div class="contact"></div>
            <nav class="d-flex aic">
                <a href="<c:url value="/login"></c:url>" class="login"><i class="fa fa-user" aria-hidden="true"></i>Login</a>
                <ul class="nav social d-none d-md-flex">
                    <li><a href="https://www.facebook.com/fh5co" target="_blank"><i class="fa fa-facebook"></i></a></li>
                    <li><a href="#"><i class="fa fa-google-plus"></i></a></li>
                    <li><a href="#"><i class="fa fa-twitter"></i></a></li>
                </ul>
            </nav>
        </div>
        <nav class="navbar navbar-expand-md navbar-light">
            <a class="navbar-brand" href="index.html"><img src="<c:url value="/cdn/home/images/logo.png"></c:url>" alt="Multipurpose"></a>
            <div class="collapse navbar-collapse justify-content-end" id="navbarSupportedContent">
                <ul class="navbar-nav">
                    <li class="nav-item"><a class="nav-link" href="<c:url value="/"></c:url>">Home</a></li>
                    <li class="nav-item"><a class="nav-link" href="<c:url value="/search-member"></c:url>">Member Search</a></li>
                    <li class="nav-item"><a class="nav-link" href="<c:url value="/"></c:url>">Contact Us</a></li>
                </ul>
            </div>
        </nav>
    </div>
</header>
<!-- Header End -->
<!-- Hero Start -->
<section class="hero">
    <div class="container">
        <div class="row">
            <div class="col-12 offset-md-1 col-md-11">
                <div class="swiper-container hero-slider">
                    <div class="swiper-wrapper">
                        <div class="swiper-slide slide-content d-flex align-items-center">
                            <div class="single-slide">
                                <h1 data-aos="fade-right" data-aos-delay="200">૨૪ ગામ લેવા પાટીદાર સમાજ </h1>
                                <p data-aos="fade-right" data-aos-delay="600">Crafted by innovative creators for
                                    Expecting
                                    Peoples’s predefined dummy text<br> chunks as necessary, making this the first.
                                </p>
                                <a data-aos="fade-right" data-aos-delay="900" href="#" class="btn btn-primary">See
                                    More</a>
                                <a data-aos="fade-right" data-aos-delay="900" href="#" class="btn btn-primary">Get
                                    Now</a>
                            </div>
                        </div>
                        <div class="swiper-slide slide-content d-flex align-items-center">
                            <div class="single-slide">
                                <h1 data-aos="fade-right" data-aos-delay="200">Creative<br> Multipurpose websites
                                </h1>
                                <p data-aos="fade-right" data-aos-delay="600">Crafted by innovative creators for
                                    Expecting
                                    Peoples’s predefined dummy text<br> chunks as necessary, making this the first.
                                </p>
                                <a data-aos="fade-right" data-aos-delay="900" href="#" class="btn btn-primary">See
                                    More</a>
                                <a data-aos="fade-right" data-aos-delay="900" href="#" class="btn btn-primary">Get
                                    Now</a>
                            </div>
                        </div>
                    </div>

                </div>
            </div>
        </div>
        <!-- Add Control -->
        <span class="arr-left"><i class="fa fa-angle-left"></i></span>
        <span class="arr-right"><i class="fa fa-angle-right"></i></span>
    </div>
    <div class="texture"></div>
    <div class="diag-bg"></div>
</section>
<!-- Hero End -->
<!-- Call To Action Start -->
<section class="cta" data-aos="fade-up" data-aos-delay="0">
    <div class="container">
        <div class="cta-content d-xl-flex align-items-center justify-content-around text-center text-xl-left">
            <div class="content" data-aos="fade-right" data-aos-delay="200">
                <h2>FOR BUILDING THE MODERN WEBSITE</h2>
                <p>Packed with all the goodies you can get, Kallyas is our flagship premium template.</p>
            </div>
            <div class="subscribe-btn" data-aos="fade-left" data-aos-delay="400" data-aos-offset="0">
                <a href="#" class="btn btn-primary">Join Newsletter</a>
            </div>
        </div>
    </div>
</section>
<!-- Call To Action End -->
<!-- Services Start -->
<section class="services">
    <div class="container">
        <div class="title text-center">
            <h6>Our Members</h6>
            <h1 class="title-blue">Patidar Members</h1>
        </div>
        <div class="container">
            <div class="row">
                <div class="col-sm-6 col-lg-4">
                    <div class="media" data-aos="fade-up" data-aos-delay="200" data-aos-duration="400">
                        <img class="mr-4" src="<c:url value="/cdn/home/images/service1.png"></c:url>" alt="Web Development">
                        <div class="media-body">
                            <h5>Web Development</h5>
                            Donec volutpat tincidunt neque, vitae lobortis libero mattis sed tempus.
                        </div>
                    </div>
                </div>
                <div class="col-sm-6 col-lg-4">
                    <div class="media" data-aos="fade-up" data-aos-delay="400" data-aos-duration="600">
                        <img class="mr-4" src="<c:url value="/cdn/home/images/service2.png"></c:url>" alt="Web Development">
                        <div class="media-body">
                            <h5>Testing for perfection</h5>
                            Donec volutpat tincidunt neque, vitae lobortis libero mattis sed tempus.
                        </div>
                    </div>
                </div>
                <div class="col-sm-6 col-lg-4">
                    <div class="media" data-aos="fade-up" data-aos-delay="600" data-aos-duration="800">
                        <img class="mr-4" src="<c:url value="/cdn/home/images/service3.png"></c:url>" alt="Web Development">
                        <div class="media-body">
                            <h5>Discussion of the idea</h5>
                            Donec volutpat tincidunt neque, vitae lobortis libero mattis sed tempus.
                        </div>
                    </div>
                </div>
                <div class="col-sm-6 col-lg-4">
                    <div class="media" data-aos="fade-up" data-aos-delay="200" data-aos-duration="400">
                        <img class="mr-4" src="<c:url value="/cdn/home/images/service4.png"></c:url>" alt="Web Development">
                        <div class="media-body">
                            <h5>Modern style</h5>
                            Donec volutpat tincidunt neque, vitae lobortis libero mattis sed tempus.
                        </div>
                    </div>
                </div>
                <div class="col-sm-6 col-lg-4">
                    <div class="media" data-aos="fade-up" data-aos-delay="400" data-aos-duration="600">
                        <img class="mr-4" src="<c:url value="/cdn/home/images/service1.png"></c:url>" alt="Web Development">
                        <div class="media-body">
                            <h5>Web Development</h5>
                            Donec volutpat tincidunt neque, vitae lobortis libero mattis sed tempus.
                        </div>
                    </div>
                </div>
                <div class="col-sm-6 col-lg-4">
                    <div class="media" data-aos="fade-up" data-aos-delay="600" data-aos-duration="800">
                        <img class="mr-4" src="<c:url value="/cdn/home/images/service5.png"></c:url>" alt="Web Development">
                        <div class="media-body">
                            <h5>Elaboration of the core</h5>
                            Donec volutpat tincidunt neque, vitae lobortis libero mattis sed tempus.
                        </div>
                    </div>
                </div>
            </div>
        </div>
    </div>
</section>
<!-- Services End -->
<!-- Featured Start -->
<section class="featured">
    <div class="container">
        <div class="row">
            <div class="col-md-6" data-aos="fade-right" data-aos-delay="400" data-aos-duration="800">
                <div class="title">
                    <h6 class="title-primary">about Tamplate</h6>
                    <h1 class="title-blue">a rich featured, epic & premium work.</h1>
                </div>
                <p>There are many variations of passages of available but the majority have suffered alteration in
                    some form, by injected humour, or randomised words which don't look even slightly believable. If
                    you are going to use a passage of you need to be sure there isn't anything embarrassing hidden
                    in the middle of text. All the generators on the Internet.</p>
                <div class="media-element d-flex justify-content-between">
                    <div class="media">
                        <i class="fa fa-magic mr-4"></i>
                        <div class="media-body">
                            <h5>any offer</h5>
                            New York, United States
                        </div>
                    </div>
                    <div class="media">
                        <i class="fa fa-magic mr-4"></i>
                        <div class="media-body">
                            <h5>any offer</h5>
                            New York, United States
                        </div>
                    </div>
                </div>
                <a href="#" class="btn btn-primary">See More</a>
            </div>
            <div class="col-md-6" data-aos="fade-left" data-aos-delay="400" data-aos-duration="800">
                <div class="featured-img">
                    <img class="featured-big" src="<c:url value="/cdn/home/images/featured-img1.jpg"></c:url>" alt="Featured 1">
                    <img class="featured-small" src="<c:url value="/cdn/home/images/featured-img2.jpg"></c:url>" alt="Featured 2">
                </div>
            </div>
        </div>
    </div>
</section>
<!-- Featured End -->
<!-- Recent Posts Start -->
<section class="recent-posts">
    <div class="container">
        <div class="row">
            <div class="col-lg-6">
                <div class="single-rpost d-sm-flex align-items-center" data-aos="fade-right"
                     data-aos-duration="800">
                    <div class="post-content text-sm-right">
                        <time datetime="2019-04-06T13:53">15 Oct, 2019</time>
                        <h3><a href="#">Proudly for us to build stylish</a></h3>
                        <p><a href="#">Seanding</a>, <a href="#">Website</a>, <a href="#">E-commerce</a></p>
                        <a class="post-btn" href="#"><i class="fa fa-arrow-right"></i></a>
                    </div>
                    <div class="post-thumb">
                        <img class="img-fluid" src="<c:url value="/cdn/home/images/post1.jpg"></c:url>" alt="Post 1">
                    </div>
                </div>
            </div>
            <div class="col-lg-6">
                <div class="single-rpost d-sm-flex align-items-center" data-aos="fade-left" data-aos-duration="800">
                    <div class="post-thumb">
                        <img class="img-fluid" src="<c:url value="/cdn/home/images/post2.jpg"></c:url>" alt="Post 1">
                    </div>
                    <div class="post-content">
                        <time datetime="2019-04-06T13:53">15 Oct, 2019</time>
                        <h3><a href="#">Remind me to water the plants</a></h3>
                        <p><a href="#">Seanding</a>, <a href="#">Website</a>, <a href="#">E-commerce</a></p>
                        <a class="post-btn" href="#"><i class="fa fa-arrow-right"></i></a>
                    </div>
                </div>
            </div>
            <div class="col-lg-6">
                <div class="single-rpost d-sm-flex align-items-center" data-aos="fade-right" data-aos-delay="200"
                     data-aos-duration="800">
                    <div class="post-content text-sm-right">
                        <time datetime="2019-04-06T13:53">15 Oct, 2019</time>
                        <h3><a href="#">Add apples to the grocery list</a></h3>
                        <p><a href="#">Seanding</a>, <a href="#">Website</a>, <a href="#">E-commerce</a></p>
                        <a class="post-btn" href="#"><i class="fa fa-arrow-right"></i></a>
                    </div>
                    <div class="post-thumb">
                        <img class="img-fluid" src="<c:url value="/cdn/home/images/post3.jpg"></c:url>" alt="Post 1">
                    </div>
                </div>
            </div>
            <div class="col-lg-6">
                <div class="single-rpost d-sm-flex align-items-center" data-aos="fade-left" data-aos-delay="200"
                     data-aos-duration="800">
                    <div class="post-thumb">
                        <img class="img-fluid" src="<c:url value="/cdn/home/images/post4.jpg"></c:url>" alt="Post 1">
                    </div>
                    <div class="post-content">
                        <time datetime="2019-04-06T13:53">15 Oct, 2019</time>
                        <h3><a href="#">Make it warmer downstairs</a></h3>
                        <p><a href="#">Seanding</a>, <a href="#">Website</a>, <a href="#">E-commerce</a></p>
                        <a class="post-btn" href="#"><i class="fa fa-arrow-right"></i></a>
                    </div>
                </div>
            </div>
        </div>
        <div class="text-center">
            <a href="#" class="btn btn-primary">See More</a>
        </div>
    </div>
</section>
<!-- Recent Posts End -->
<!-- Trust Start -->
<section class="trust">
    <div class="container">
        <div class="row">
            <div class="offset-xl-1 col-xl-6" data-aos="fade-right" data-aos-delay="200" data-aos-duration="800">
                <div class="title">
                    <h6 class="title-primary">about Tamplate</h6>
                    <h1>a rich featured, epic & premium work.</h1>
                </div>
                <p>Suspendisse facilisis commodo lobortis. Nullam mollis lobortis ex vel faucibus. Proin nec viverra
                    turpis. Nulla eget justo scelerisque, pretium purus vel, congue libero. Suspendisse potenti.
                </p>
                <h5>Web Design & Development</h5>
                <ul class="list-unstyled">
                    <li>Web Content</li>
                    <li>Website other</li>
                    <li>Fashion</li>
                    <li>Moblie & Tablette</li>
                </ul>
            </div>
            <div class="col-xl-5 gallery">
                <div class="row no-gutters h-100" id="lightgallery">
                    <a href="https://lorempixel.com/600/400/" class="w-50 h-100 gal-img" data-aos="fade-up"
                       data-aos-delay="200" data-aos-duration="400">
                        <img class="img-fluid" src="<c:url value="/cdn/home/images/gallery1.jpg"></c:url>" alt="Gallery Image">
                        <i class="fa fa-caret-right"></i>
                    </a>
                    <a href="https://lorempixel.com/600/400/" class="w-50 h-50 gal-img" data-aos="fade-up"
                       data-aos-delay="400" data-aos-duration="600">
                        <img class="img-fluid" src="<c:url value="/cdn/home/images/gallery2.jpg"></c:url>" alt="Gallery Image">
                        <i class="fa fa-caret-right"></i>
                    </a>
                    <a href="https://lorempixel.com/600/400/" class="w-50 h-50 gal-img gal-img3" data-aos="fade-up"
                       data-aos-delay="0" data-aos-duration="600">
                        <img class="img-fluid" src="<c:url value="/cdn/home/images/gallery3.jpg"></c:url>" alt="Gallery Image">
                        <i class="fa fa-caret-right"></i>
                    </a>
                </div>
            </div>
        </div>
    </div>
</section>
<!-- Trust End -->
<!-- Testimonial and Clients Start -->
<section class="testimonial-and-clients">
    <div class="container">
        <div class="testimonials">
            <div class="swiper-container test-slider">
                <div class="swiper-wrapper">
                    <div class="swiper-slide text-center">
                        <div class="row">
                            <div class="offset-lg-1 col-lg-10">
                                <div class="test-img" data-aos="fade-up" data-aos-delay="0" data-aos-offset="0"><img
                                        src="<c:url value="/cdn/home/images/test1.png"></c:url>" alt="Testimonial 1"></div>
                                <h5 data-aos="fade-up" data-aos-delay="200" data-aos-duration="600"
                                    data-aos-offset="0">John</h5>
                                <span data-aos="fade-up" data-aos-delay="400" data-aos-duration="600"
                                      data-aos-offset="0">UI/UX
                                        Designer</span>
                                <p data-aos="fade-up" data-aos-delay="600" data-aos-duration="600"
                                   data-aos-offset="0">Ash's tactics &
                                    books have helped me a lot in my understanding on how social
                                    media
                                    advertising works.I can say that he is one of the best development professionals
                                    i have
                                    dealt with so far. His experience is great & he is such a great & pleasant
                                    person to
                                    work with as he understands what you are</p>
                            </div>
                        </div>
                    </div>
                    <div class="swiper-slide text-center">
                        <div class="row">
                            <div class="offset-lg-1 col-lg-10">
                                <div class="test-img" data-aos="fade-up" data-aos-delay="0" data-aos-offset="0"><img
                                        src="images/test1.png" alt="Testimonial 1"></div>
                                <h5 data-aos="fade-up" data-aos-delay="200" data-aos-duration="600"
                                    data-aos-offset="0">John</h5>
                                <span data-aos="fade-up" data-aos-delay="400" data-aos-duration="600"
                                      data-aos-offset="0">UI/UX
                                        Designer</span>
                                <p data-aos="fade-up" data-aos-delay="600" data-aos-duration="600"
                                   data-aos-offset="0">Ash's tactics &
                                    books have helped me a lot in my understanding on how social
                                    media
                                    advertising works.I can say that he is one of the best development professionals
                                    i have
                                    dealt with so far. His experience is great & he is such a great & pleasant
                                    person to
                                    work with as he understands what you are</p>
                            </div>
                        </div>
                    </div>
                    <div class="swiper-slide text-center">
                        <div class="row">
                            <div class="offset-lg-1 col-lg-10">
                                <div class="test-img" data-aos="fade-up" data-aos-delay="0" data-aos-offset="0"><img
                                        src="<c:url value="/cdn/home/images/test1.png"></c:url>" alt="Testimonial 1"></div>
                                <h5 data-aos="fade-up" data-aos-delay="200" data-aos-duration="600"
                                    data-aos-offset="0">John</h5>
                                <span data-aos="fade-up" data-aos-delay="400" data-aos-duration="600"
                                      data-aos-offset="0">UI/UX
                                        Designer</span>
                                <p data-aos="fade-up" data-aos-delay="600" data-aos-duration="600"
                                   data-aos-offset="0">Ash's tactics &
                                    books have helped me a lot in my understanding on how social
                                    media
                                    advertising works.I can say that he is one of the best development professionals
                                    i have
                                    dealt with so far. His experience is great & he is such a great & pleasant
                                    person to
                                    work with as he understands what you are</p>
                            </div>
                        </div>
                    </div>
                </div>
                <div class="test-pagination"></div>
            </div>
        </div>
        <div class="clients" data-aos="fade-up" data-aos-delay="200" data-aos-duration="600">
            <div class="swiper-container clients-slider">
                <div class="swiper-wrapper">
                    <div class="swiper-slide">
                        <img src="<c:url value="/cdn/home/images/client1.png"></c:url>" alt="Client 1">
                    </div>
                    <div class="swiper-slide">
                        <img src="<c:url value="/cdn/home/images/client2.png"></c:url>" alt="Client 2">
                    </div>
                    <div class="swiper-slide">
                        <img src="<c:url value="/cdn/home/images/client3.png"></c:url>" alt="Client 3">
                    </div>
                    <div class="swiper-slide">
                        <img src="<c:url value="/cdn/home/images/client4.png"></c:url>" alt="Client 4">
                    </div>
                    <div class="swiper-slide">
                        <img src="<c:url value="/cdn/home/images/client5.png"></c:url>" alt="Client 5">
                    </div>
                </div>
                <div class="test-pagination"></div>
            </div>
        </div>
    </div>
</section>
<!-- Testimonial and Clients End -->
<!-- Call To Action 2 Start -->
<section class="cta cta2" data-aos="fade-up" data-aos-delay="0">
    <div class="container">
        <div class="cta-content d-xl-flex align-items-center justify-content-around text-center text-xl-left">
            <div class="content" data-aos="fade-right" data-aos-delay="200">
                <h2>FOR BUILDING THE MODERN WEBSITE</h2>
                <p>Packed with all the goodies you can get, Kallyas is our flagship premium template.</p>
            </div>
            <div class="subscribe-btn" data-aos="fade-left" data-aos-delay="400" data-aos-offset="0">
                <a href="#" class="btn btn-primary">Join Newsletter</a>
            </div>
        </div>
    </div>
</section>
<!-- Call To Action 2 End -->
<!-- Footer Start -->
<footer>
    <!-- Widgets Start -->
    <div class="footer-widgets">
        <div class="container">
            <div class="row">
                <div class="col-md-6 col-xl-3">
                    <div class="single-widget contact-widget" data-aos="fade-up" data-aos-delay="0">
                        <h6 class="widget-tiltle">&nbsp;</h6>
                        <p>By subscribing to our mailing list you will always be update with the latest news from
                            us.
                        </p>
                        <div class="media">
                            <i class="fa fa-map-marker"></i>
                            <div class="media-body ml-3">
                                <h6>Address</h6>
                                Level 13, 2 Elizabeth St,<br>
                                Melbourne, Victoria 3000 Australia
                            </div>
                        </div>
                        <div class="media">
                            <i class="fa fa-envelope-o"></i>
                            <div class="media-body ml-3">
                                <h6>Have any questions?</h6>
                                <a href="mailto:support@steelthemes.com">Support@Steelthemes.com</a>
                            </div>
                        </div>
                        <div class="media">
                            <i class="fa fa-phone"></i>
                            <div class="media-body ml-3">
                                <h6>Call us & Hire us</h6>
                                <a href="tel:+610791803458"> +61 (0) 7 9180 3458</a>
                            </div>
                        </div>
                        <div class="media">
                            <i class="fa fa-fax"></i>
                            <div class="media-body ml-3">
                                <h6>Fax</h6>
                                <a href="fax:911889047521432">(91) 188904752 1432</a>
                            </div>
                        </div>
                    </div>
                </div>
                <div class="col-md-6 col-xl-3">
                    <div class="single-widget twitter-widget" data-aos="fade-up" data-aos-delay="200">
                        <h6 class="widget-tiltle">Fresh Tweets</h6>
                        <div class="media">
                            <i class="fa fa-twitter"></i>
                            <div class="media-body ml-3">
                                <h6><a href="#">@Themes,</a> Html Version Out Now</h6>
                                <span>10 Mins Ago</span>
                            </div>
                        </div>
                        <div class="media">
                            <i class="fa fa-twitter"></i>
                            <div class="media-body ml-3">
                                <h6><a href="#">@Envato,</a> the best selling item of the day!</h6>
                                <span>20 Mins Ago</span>
                            </div>
                        </div>
                        <div class="media">
                            <i class="fa fa-twitter"></i>
                            <div class="media-body ml-3">
                                <h6><a href="#">@Collis,</a> We Planned to Update the Enavto Author Payment Method
                                    Soon!</h6>
                                <span>10 Mins Ago</span>
                            </div>
                        </div>
                        <div class="media">
                            <i class="fa fa-twitter"></i>
                            <div class="media-body ml-3">
                                <h6><a href="#">@SteelThemes,</a> Html Version Out Now</h6>
                                <span>15 Mins Ago</span>
                            </div>
                        </div>
                    </div>
                </div>
                <div class="col-md-6 col-xl-3">
                    <div class="single-widget recent-post-widget" data-aos="fade-up" data-aos-delay="400">
                        <h6 class="widget-tiltle">Latest Updates</h6>
                        <div class="media">
                            <a class="rcnt-img" href="#"><img src="<c:url value="/cdn/home/images/rcnt-post1.png"></c:url>"
                                                              alt="Recent Post"></a>
                            <div class="media-body ml-3">
                                <h6><a href="#">An engaging</a></h6>
                                <p><i class="fa fa-user"></i>Mano <i class="fa fa-eye"></i> 202 Views</p>
                            </div>
                        </div>
                        <div class="media">
                            <a class="rcnt-img" href="#"><img src="<c:url value="/cdn/home/images/rcnt-post2.png"></c:url>"
                                                              alt="Recent Post"></a>
                            <div class="media-body ml-3">
                                <h6><a href="#">Statistics and analysis. The key to succes.</a></h6>
                                <p><i class="fa fa-user"></i>Rosias <i class="fa fa-eye"></i> 20 Views</p>
                            </div>
                        </div>
                        <div class="media">
                            <a class="rcnt-img" href="#"><img src="<c:url value="/cdn/home/images/rcnt-post3.png"></c:url>"
                                                              alt="Recent Post"></a>
                            <div class="media-body ml-3">
                                <h6><a href="#">Envato Meeting turns into a photoshooting.</a></h6>
                                <p><i class="fa fa-user"></i>Kien <i class="fa fa-eye"></i> 74 Views</p>
                            </div>
                        </div>
                        <div class="media">
                            <a class="rcnt-img" href="#"><img src="<c:url value="/cdn/home/images/rcnt-post4.png"></c:url>"
                                                              alt="Recent Post"></a>
                            <div class="media-body ml-3">
                                <h6><a href="#">An engaging embedded the video posts</a></h6>
                                <p><i class="fa fa-user"></i>Robert <i class="fa fa-eye"></i> 48 Views</p>
                            </div>
                        </div>
                    </div>
                </div>
                <div class="col-md-6 col-xl-3">
                    <div class="single-widget tags-widget" data-aos="fade-up" data-aos-delay="800">
                        <h6 class="widget-tiltle">Popular Tags</h6>
                        <a href="#">Amazing</a>
                        <a href="#">Design</a>
                        <a href="#">Photoshop</a>
                        <a href="#">Art</a>
                        <a href="#">Wordpress</a>
                        <a href="#">jQuery</a>
                    </div>
                    <div class="single-widget subscribe-widget" data-aos="fade-up" data-aos-delay="800">
                        <h6 class="widget-tiltle">Subscribe us</h6>
                        <p>Sign up for our mailing list to get latest updates and offers</p>
                        <form class="" method="get">
                            <div class="input-group">
                                <input class="field form-control" name="subscribe" type="email"
                                       placeholder="Email Address">
                                <span class="input-group-btn">
                                        <button type="submit" name="submit-mail"><i class="fa fa-check"></i></button>
                                    </span>
                            </div>
                        </form>
                        <p>We respect your privacy</p>
                        <ul class="nav social-nav">
                            <li><a href="https://www.facebook.com/fh5co" target="_blank"><i class="fa fa-facebook"></i></a></li>
                            <li><a href="#"><i class="fa fa-google-plus"></i></a></li>
                            <li><a href="#"><i class="fa fa-twitter"></i></a></li>
                            <li><a href="#"><i class="fa fa-google-plus"></i></a></li>
                            <li><a href="#"><i class="fa fa-linkedin"></i></a></li>
                        </ul>
                    </div>
                </div>
            </div>
        </div>
    </div>
    <!-- Widgets End -->
    <!-- Foot Note Start -->
    <div class="foot-note">
        <div class="container">
            <div
                    class="footer-content text-center text-lg-left d-lg-flex justify-content-between align-items-center">
                <p class="mb-0" data-aos="fade-right" data-aos-offset="0"></p>
                <p class="mb-0" data-aos="fade-left" data-aos-offset="0">Design by Vismay Patel</p>
            </div>
        </div>
    </div>
    <!-- Foot Note End -->
</footer>
<!-- Footer Endt -->
<!--jQuery-->
<script src="<c:url value="/cdn/home/js/jquery-3.3.1.js"></c:url>"></script>
<!--Plugins-->
<script src="<c:url value="/cdn/home/js/bootstrap.bundle.js"></c:url>"></script>
<script src="<c:url value="/cdn/home/js/loaders.css.js"></c:url>"></script>
<script src="<c:url value="/cdn/home/js/aos.js"></c:url>"></script>
<script src="<c:url value="/cdn/home/js/swiper.min.js"></c:url>"></script>
<script src="<c:url value="/cdn/home/js/lightgallery-all.min.js"></c:url>"></script>
<!--Template Script-->
<script src="<c:url value="/cdn/home/js/main.js"></c:url>"></script>
</body>

</html>