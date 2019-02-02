<%@ Page Title="" Language="C#" MasterPageFile="~/StudyManagement/studyManagement.Master" AutoEventWireup="true" CodeBehind="Home.aspx.cs" Inherits="StudyManagement.StudyManagement.Home" %>
<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
</asp:Content>

<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">
    <section class="banner_area banner_area_parallax">
        <div class="banner_overlay">
            <div id="banner_carousel" class="carousel slide" data-ride="carousel">
                <div class="container">
                    <div class="carousel-inner">
                        <div class="item active">
                            <div class="slider_content pull-left">
                                <h1>Take the <strong>world's </strong> best <strong>Education</strong> site</h1>
                                <p>We provides always our best services for our clients and always try to achieve our client's trust and satisfaction.</p>
                                <a href="#" class="btn btn_rd_more">Read More</a>
                                <a href="#" class="btn btn_rgstr">Register Now</a>
                            </div>
                        </div>
                        <div class="item">
                            <div class="slider_content margin_auto text-center">
                                <h3>Online Solution</h3>
                                <h1>Grow up <strong>Future</strong> Choose <strong>Right</strong> Solution</h1>
                                <p class="margin_auto">We provides always our best services for our clients and always try to achieve our client's trust and satisfaction.</p>
                                <a href="#" class="btn btn_primary">Read More</a>
                            </div>
                        </div>
                        <div class="item">
                            <div class="slider_content pull-right">
                                <h1>We help you <strong>Education</strong> to grow up and expand</h1>
                                <p>We provides always our best services for our clients and always try to achieve our client's trust and satisfaction.</p>
                                <a href="#" class="btn btn_primary">Read More</a>
                            </div>
                        </div>
                    </div>
                    <a class="left carousel-control" href="#banner_carousel" data-slide="prev">
                        <span class="glyphicon glyphicon-chevron-left"></span>
                        <span class="sr-only">Previous</span>
                    </a>
                    <a class="right carousel-control" href="#banner_carousel" data-slide="next">
                        <span class="glyphicon glyphicon-chevron-right"></span>
                        <span class="sr-only">Previous</span>
                    </a>
                </div>
            </div>
        </div>
    </section>
    <!--  Services area  -->
    <section class="services_area">
        <div class="container">
            <div class="services text-center">
                <div class="row">
                    <div class="col-xs-12 col-sm-4 col-md-4">
                        <div class="service_online_course bg_secondary text_white wow slideInLeft" data-wow-duration="1s">
                            <a href="#"><i class="fas fa-book"></i> </a>
                            <h3>Online Course</h3>
                            <p>Lorem ipsum dolor sit amet adipisi elit molestlas non nulla placeat odio dolor amet dicta alias.</p>
                        </div>
                    </div>
                    <div class="col-xs-12 col-sm-4 col-md-4">
                        <div class="service_admission_sp wow slideInUp" data-wow-duration="1.5s">
                            <div class="service_admission_sp_overlay">
                                <h3>Admission for Sp</h3>
                                <h1>40% Off</h1>
                                <a href="#" class="btn btn-default">Signup Now</a>
                            </div>
                        </div>
                    </div>
                    <div class="col-xs-12 col-sm-4 col-md-4">
                        <div class="service_expart_teachers bg_secondary text_white wow slideInRight" data-wow-duration="1s">
                            <a href="#"><i class="far fa-user"></i></a>
                            <h3>Expart Teachers</h3>
                            <p>Lorem ipsum dolor sit amet adipisi elit molestlas non nulla placeat odio dolor amet dicta alias.</p>
                        </div>
                    </div>
                </div>
            </div>
        </div>
    </section>
    <!-- //Services area -->
    <!--  About University Area  -->
    <section class="about_varsity_area">
        <div class="container">
            <div class="about_varsity">
                <div class="row">
                    <div class="col-xs-12 col-sm-5 col-md-5">
                        <div class="about_varsity_left">
                            <h4 class="text-capitalize">Welcome to</h4>
                            <h2 class="text_primary">Study Management</h2>
                            <div class="about_varsity_items">
                                <img class="img-responsive" src="../images/s3.jpg"/>
                                <div class="about_varsity_item_content">
                                    <h3>Our Mission</h3>
                                    <p>Lorem ipsum dolor set amet, consectator adipi molestlas non nulla placeat odio dolor amet dicta alias.</p>
                                </div>
                            </div>
                            <div class="about_varsity_items">
                                <img class="img-responsive" src="../images/s3.jpg"/>
                                <div class="about_varsity_item_content">
                                    <h3>Our Activity</h3>
                                    <p>Lorem ipsum dolor set amet, consectator adipi molestlas non nulla placeat odio dolor amet dicta alias.</p>
                                </div>
                            </div>
                            <div class="about_varsity_items">
                                <img class="img-responsive" src="../images/s3.jpg"/>
                                <div class="about_varsity_item_content">
                                    <h3>Our Vission</h3>
                                    <p>Lorem ipsum dolor set amet, consectator adipi molestlas non nulla placeat odio dolor amet dicta alias.</p>
                                </div>
                            </div>
                        </div>
                        
                    </div>
                    <div class="col-xs-12 col-sm-7 col-md-7 no_gutter">
                        <div class="col-xs-12 col-sm-6 col-md-6">
                            <figure class="about_varsity_middle wow slideInRight" data-wow-duration="1s">
                                <img src="../images/dc1.png"/>
                            </figure>
                        </div>
                        <div class="col-xs-12 col-sm-6 col-md-6">
                            <div class="about_varsity_right bg_secondary wow slideInUp" data-wow-delay="0.2s" data-wow-duration="1s">
                                <h3>Request Information</h3>
                                <div class="form-group" runat="server">
                                    <asp:TextBox ID="txt_ri_name" CssClass="form-control" runat="server" placeholder="Enter Name"></asp:TextBox>
                                    <asp:RequiredFieldValidator ID="RequiredFieldValidator1" ForeColor="Red" runat="server" ErrorMessage="Enter your name" ControlToValidate="txt_ri_name"></asp:RequiredFieldValidator>
                                    <asp:TextBox ID="txt_ri_email" runat="server" CssClass="form-control" TextMode="Email" placeholder="Enter E-mail"></asp:TextBox>
                                    <asp:RequiredFieldValidator ID="RequiredFieldValidator2" ForeColor="Red" runat="server" ErrorMessage="Enter an E-mail" ControlToValidate="txt_ri_email"></asp:RequiredFieldValidator>
                                    <asp:DropDownList ID="slc_ri_subjectList" runat="server" ValidationGroup="ddlSubject" CssClass="form-control">
                                        <asp:ListItem>-- Choose Subject --</asp:ListItem>
                                        <asp:ListItem> Bangla</asp:ListItem>
                                        <asp:ListItem> English</asp:ListItem>
                                        <asp:ListItem> Math</asp:ListItem>
                                    </asp:DropDownList>
                                    <asp:RequiredFieldValidator ID="RequiredFieldValidator3" ForeColor="Red" runat="server" ErrorMessage="Select Subject" ControlToValidate="slc_ri_subjectList" ValidationGroup="ddlSubject"></asp:RequiredFieldValidator>
                                    <asp:TextBox ID="txt_ri_msg" runat="server" CssClass="form-control" TextMode="MultiLine" Rows="4" placeholder="Write your massage"></asp:TextBox>
                                    <asp:RequiredFieldValidator ID="RequiredFieldValidator4" runat="server" ForeColor="Red" ErrorMessage="Write massage" ControlToValidate="txt_ri_msg"></asp:RequiredFieldValidator>
                                    <asp:Button ID="btnRqusetInfoSubmit" CssClass="btn btn-default bg_primary text_white" runat="server" Text="Submit Request" OnClick="btnRqusetInfoSubmit_Click"/>
                                </div>
                            </div>
                        </div>
                    </div>
                </div>
            </div>
            <div class="about_varsity_services text-uppercase text-center">
                <div class="row">
                    <div class="col-xs-12 col-sm-3 col-md-3 no_gutter">
                        <div class="wow slideInLeft" data-wow-duration="2s">
                            <a href="#">
                                <div class="about_varsity_services_item bg_secondary">
                                    <i class="fas fa-user"></i>
                                    <h4>24 hours service</h4>
                                </div>
                            </a>
                        </div>
                    </div>
                    <div class="col-xs-12 col-sm-3 col-md-3 no_gutter">
                        <div class="wow slideInLeft" data-wow-duration="1s">
                            <a href="#">
                                <div class="about_varsity_services_item bg_primary">
                                    <i class="fas fa-comments"></i>
                                    <h4>online help</h4>
                                </div>
                            </a>
                        </div>
                    </div>
                    <div class="col-xs-12 col-sm-3 col-md-3 no_gutter">
                        <div class="wow slideInRight" data-wow-duration="1s">
                            <a href="#">
                                <div class="about_varsity_services_item bg_secondary">
                                    <i class="fab fa-cc-paypal"></i>
                                    <h4>Online payment</h4>
                                </div>
                            </a>
                        </div>
                    </div>
                    <div class="col-xs-12 col-sm-3 col-md-3 no_gutter">
                        <div class="wow slideInRight" data-wow-duration="2s">
                            <a href="#">
                                <div class="about_varsity_services_item bg_primary">
                                    <i class="fas fa-mobile-alt"></i>
                                    <h4>Call 0170000000</h4>
                                </div>
                            </a>
                        </div>
                    </div>
                </div>
            </div>
        </div>
    </section>
    <!-- //About University Area -->
    <!-- Popular courses Area -->
    <section class="courses_area padding_top_bottom bg_gray">
        <div class="container">
            <div class="section_heading">
                <h2>Popular <span>Courses</span></h2>
                <p>Lorem ipsum dolor set amet, consectator adipi molestlas non nulla placeat odio dolor amet dicta alias.</p>
            </div>
            <div class="course_items wow slideInUp" data-wow-duration="1s">
                <div class="course_single_item">
                    <div class="panel panel-default">
                        <div class="panel-heading no_gutter">
                            <img class="img-responsive" src="../images/sm1.jpg"/> 
                            <strong class="price_unit">Free</strong>    
                        </div>
                        <div class="panel-body text-center">
                            <figure>
                                <img class="img-responsive" src="../images/xs1.jpg"/>
                            </figure>
                            <h4 class="text-capitalize">Nural networking course</h4>   
                            <div class="star_ratings">
                                <i class="fas fa-star rating_checked"></i>
                                <i class="fas fa-star rating_checked"></i>
                                <i class="fas fa-star rating_checked"></i>
                                <i class="fas fa-star rating_checked"></i>
                                <i class="fas fa-star rating_checked"></i>
                            </div>
                            <p>Lorem ipsum dolor set amet, consectator adipi molestlas non nulla placeat odio dolor amet dicta alias.</p>
                        </div>
                        <div class="panel-footer text-center">
                            <div class="course_meta bg_secondary text_white">
                                <ul class="list-unstyled">
                                    <li>
                                        <i class="fas fa-calendar-alt"></i>
                                        <p>3 hours</p>
                                    </li>
                                    <li>
                                        <i class="fas fa-book"></i>
                                        <p>18 lessons</p>
                                    </li>
                                    <li>
                                        <i class="far fa-clock"></i>
                                        <p>34 seats</p>
                                    </li>
                                </ul>
                            </div>
                        </div>
                    </div>
                </div>
                <div class="course_single_item">
                    <div class="panel panel-default">
                        <div class="panel-heading no_gutter">
                            <img class="img-responsive" src="../images/sm2.jpg"/> 
                            <strong class="price_unit">Free</strong>    
                        </div>
                        <div class="panel-body text-center">
                            <figure>
                                <img class="img-responsive" src="../images/xs1.jpg"/>
                            </figure>
                            <h4 class="text-capitalize">Computer Science</h4>   
                            <div class="star_ratings">
                                <i class="fas fa-star rating_checked"></i>
                                <i class="fas fa-star rating_checked"></i>
                                <i class="fas fa-star rating_checked"></i>
                                <i class="fas fa-star rating_checked"></i>
                                <i class="fas fa-star rating_checked"></i>
                            </div>
                            <p>Lorem ipsum dolor set amet, consectator adipi molestlas non nulla placeat odio dolor amet dicta alias.</p>
                        </div>
                        <div class="panel-footer text-center">
                            <div class="course_meta bg_secondary text_white">
                                <ul class="list-unstyled">
                                    <li>
                                        <i class="fas fa-calendar-alt"></i>
                                        <p>3 hours</p>
                                    </li>
                                    <li>
                                        <i class="fas fa-book"></i>
                                        <p>18 lessons</p>
                                    </li>
                                    <li>
                                        <i class="far fa-clock"></i>
                                        <p>34 seats</p>
                                    </li>
                                </ul>
                            </div>
                        </div>
                    </div>
                </div>
                <div class="course_single_item">
                    <div class="panel panel-default">
                        <div class="panel-heading no_gutter">
                            <img class="img-responsive" src="../images/sm3.jpg"/> 
                            <strong class="price_unit">Free</strong>    
                        </div>
                        <div class="panel-body text-center">
                            <figure>
                                <img class="img-responsive" src="../images/fahad.jpg"/>
                            </figure>
                            <h4 class="text-capitalize">Accounting</h4>   
                            <div class="star_ratings">
                                <i class="fas fa-star rating_checked"></i>
                                <i class="fas fa-star rating_checked"></i>
                                <i class="fas fa-star rating_checked"></i>
                                <i class="fas fa-star rating_checked"></i>
                                <i class="fas fa-star rating_checked"></i>
                            </div>
                            <p>Lorem ipsum dolor set amet, consectator adipi molestlas non nulla placeat odio dolor amet dicta alias.</p>
                        </div>
                        <div class="panel-footer text-center">
                            <div class="course_meta bg_secondary text_white">
                                <ul class="list-unstyled">
                                    <li>
                                        <i class="fas fa-calendar-alt"></i>
                                        <p>3 hours</p>
                                    </li>
                                    <li>
                                        <i class="fas fa-book"></i>
                                        <p>18 lessons</p>
                                    </li>
                                    <li>
                                        <i class="far fa-clock"></i>
                                        <p>34 seats</p>
                                    </li>
                                </ul>
                            </div>
                        </div>
                    </div>
                </div>
                <div class="course_single_item">
                    <div class="panel panel-default">
                        <div class="panel-heading no_gutter">
                            <img class="img-responsive" src="../images/sm5.jpg"/> 
                            <strong class="price_unit">Free</strong>    
                        </div>
                        <div class="panel-body text-center">
                            <figure>
                                <img class="img-responsive" src="../images/xs1.jpg"/>
                            </figure>
                            <h4 class="text-capitalize">Communication</h4>   
                            <div class="star_ratings">
                                <i class="fas fa-star rating_checked"></i>
                                <i class="fas fa-star rating_checked"></i>
                                <i class="fas fa-star rating_checked"></i>
                                <i class="fas fa-star rating_checked"></i>
                                <i class="fas fa-star rating_checked"></i>
                            </div>
                            <p>Lorem ipsum dolor set amet, consectator adipi molestlas non nulla placeat odio dolor amet dicta alias.</p>
                        </div>
                        <div class="panel-footer text-center">
                            <div class="course_meta bg_secondary text_white">
                                <ul class="list-unstyled">
                                    <li>
                                        <i class="fas fa-calendar-alt"></i>
                                        <p>3 hours</p>
                                    </li>
                                    <li>
                                        <i class="fas fa-book"></i>
                                        <p>18 lessons</p>
                                    </li>
                                    <li>
                                        <i class="far fa-clock"></i>
                                        <p>34 seats</p>
                                    </li>
                                </ul>
                            </div>
                        </div>
                    </div>
                </div>
                <div class="course_single_item">
                    <div class="panel panel-default">
                        <div class="panel-heading no_gutter">
                            <img class="img-responsive" src="../images/sm6.jpg"/> 
                            <strong class="price_unit">Free</strong>    
                        </div>
                        <div class="panel-body text-center">
                            <figure>
                                <img class="img-responsive" src="../images/xs1.jpg"/>
                            </figure>
                            <h4 class="text-capitalize">Electrical engineering</h4>   
                            <div class="star_ratings">
                                <i class="fas fa-star rating_checked"></i>
                                <i class="fas fa-star rating_checked"></i>
                                <i class="fas fa-star rating_checked"></i>
                                <i class="fas fa-star rating_checked"></i>
                                <i class="fas fa-star rating_checked"></i>
                            </div>
                            <p>Lorem ipsum dolor set amet, consectator adipi molestlas non nulla placeat odio dolor amet dicta alias.</p>
                        </div>
                        <div class="panel-footer text-center">
                            <div class="course_meta bg_secondary text_white">
                                <ul class="list-unstyled">
                                    <li>
                                        <i class="fas fa-calendar-alt"></i>
                                        <p>3 hours</p>
                                    </li>
                                    <li>
                                        <i class="fas fa-book"></i>
                                        <p>18 lessons</p>
                                    </li>
                                    <li>
                                        <i class="far fa-clock"></i>
                                        <p>34 seats</p>
                                    </li>
                                </ul>
                            </div>
                        </div>
                    </div>
                </div>
            </div>
        </div>
        <div class="clearfix"></div>
    </section>
    <!-- //Popular courses Area -->
    <section class="funfact_area text-center padding_top_bottom funfact_parallax">
        <div class="par_overlay"></div>
        <div class="container">
            <h2>We are always ahead<br/>Professional Education for Your Future </h2>
            <div class="row">
                <div class="col-xs-12 col-sm-3 col-md-3">
                    <div class="funfact_content">
                        <i class="far fa-smile"></i>
                        <h1 class="fanfact_counter">5100</h1>
                        <h4 class="text-uppercase">happy customer</h4>
                    </div>
                </div>
                <div class="col-xs-12 col-sm-3 col-md-3">
                    <div class="funfact_content">
                        <i class="far fa-sticky-note"></i>
                        <h1 class="fanfact_counter">200</h1>
                        <h4 class="text-uppercase">Approved Courses</h4>
                    </div>
                </div>
                <div class="col-xs-12 col-sm-3 col-md-3">
                    <div class="funfact_content">
                        <i class="far fa-user"></i>
                        <h1 class="fanfact_counter">20</h1>
                        <h4 class="text-uppercase">Certified Teachers</h4>
                    </div>
                </div>
                <div class="col-xs-12 col-sm-3 col-md-3">
                    <div class="funfact_content">
                        <i class="fab fa-asymmetrik"></i>
                        <h1 class="fanfact_counter">600</h1>
                        <h4 class="text-uppercase">Awards Won</h4> 
                    </div>
                </div>
            </div>
        </div>
    </section>
    <!-- Our teachers -->
    <section class="teachers_area padding_top_bottom">
        <div class="container">
            <div class="section_heading">
                <h2>Our <span>Teachers</span></h2>
                <p>Lorem ipsum dolor set amet,>Lorem ipsum dolor set amet, consectator adipi molestlas non nulla placeat odio dolor amet dicta alias.</p>
            </div>
            <div class="teachers_slider wow slideInUp" data-wow-duration="1s">
                <div class="teacher_info text-center">
                    <div class="panel panel-default">
                        <div class="panel-heading no_gutter">
                            <img class="img-responsive" src="../images/teacher-1.jpg"/>
                        </div>
                        <div class="panel-body">
                            <a href="#"><h3 class="text_primary">Maria Martin</h3></a>
                            <h4>Teacher - MSC</h4>
                        </div>
                        <div class="panel-footer bg_secondary">
                            <a href="#"><i class="fab fa-facebook-f"></i></a>
                            <a href="#"><i class="fab fa-twitter"></i></a>
                            <a href="#"><i class="fab fa-instagram"></i></a>
                            <a href="#"><i class="fab fa-skype"></i></a>
                        </div>
                    </div>
                </div>
                <div class="teacher_info text-center">
                    <div class="panel panel-default">
                        <div class="panel-heading no_gutter">
                            <img class="img-responsive" src="../images/teacher-3.jpg"/>
                        </div>
                        <div class="panel-body">
                            <a href="#"><h3 class="text_primary">Maria Martin</h3></a>
                            <h4>Teacher - MSC</h4>
                        </div>
                        <div class="panel-footer bg_secondary">
                            <a href="#"><i class="fab fa-facebook-f"></i></a>
                            <a href="#"><i class="fab fa-twitter"></i></a>
                            <a href="#"><i class="fab fa-instagram"></i></a>
                            <a href="#"><i class="fab fa-skype"></i></a>
                        </div>
                    </div>
                </div>
                <div class="teacher_info text-center">
                    <div class="panel panel-default">
                        <div class="panel-heading no_gutter">
                            <img class="img-responsive" src="../images/teacher-1.jpg"/>
                        </div>
                        <div class="panel-body">
                            <a href="#"><h3 class="text_primary">Maria Martin</h3></a>
                            <h4>Teacher - MSC</h4>
                        </div>
                        <div class="panel-footer bg_secondary">
                            <a href="#"><i class="fab fa-facebook-f"></i></a>
                            <a href="#"><i class="fab fa-twitter"></i></a>
                            <a href="#"><i class="fab fa-instagram"></i></a>
                            <a href="#"><i class="fab fa-skype"></i></a>
                        </div>
                    </div>
                </div>
                <div class="teacher_info text-center">
                    <div class="panel panel-default">
                        <div class="panel-heading no_gutter">
                            <img class="img-responsive" src="../images/teacher-3.jpg"/>
                        </div>
                        <div class="panel-body">
                            <a href="#"><h3 class="text_primary">Maria Martin</h3></a>
                            <h4>Teacher - MSC</h4>
                        </div>
                        <div class="panel-footer bg_secondary">
                            <a href="#"><i class="fab fa-facebook-f"></i></a>
                            <a href="#"><i class="fab fa-twitter"></i></a>
                            <a href="#"><i class="fab fa-instagram"></i></a>
                            <a href="#"><i class="fab fa-skype"></i></a>
                        </div>
                    </div>
                </div>
                <div class="teacher_info text-center">
                    <div class="panel panel-default">
                        <div class="panel-heading no_gutter">
                            <img class="img-responsive" src="../images/teacher-1.jpg"/>
                        </div>
                        <div class="panel-body">
                            <a href="#"><h3 class="text_primary">Maria Martin</h3></a>
                            <h4>Teacher - MSC</h4>
                        </div>
                        <div class="panel-footer bg_secondary">
                            <a href="#"><i class="fab fa-facebook-f"></i></a>
                            <a href="#"><i class="fab fa-twitter"></i></a>
                            <a href="#"><i class="fab fa-instagram"></i></a>
                            <a href="#"><i class="fab fa-skype"></i></a>
                        </div>
                    </div>
                </div>
                <div class="teacher_info text-center">
                    <div class="panel panel-default">
                        <figure class="panel-heading no_gutter">
                            <img class="img-responsive" src="../images/teacher-3.jpg"/>
                        </figure>
                        <div class="panel-body">
                            <a href="#"><h3 class="text_primary">Maria Martin</h3></a>
                            <h4>Teacher - MSC</h4>
                        </div>
                        <div class="panel-footer bg_secondary">
                            <a href="#"><i class="fab fa-facebook-f"></i></a>
                            <a href="#"><i class="fab fa-twitter"></i></a>
                            <a href="#"><i class="fab fa-instagram"></i></a>
                            <a href="#"><i class="fab fa-skype"></i></a>
                        </div>
                    </div>
                </div>
            </div>
        </div>
    </section>
    <!-- //Our teachers -->
    <!-- important news and videos -->
    <section class="important_news_nd_videos_area bg_gray padding_top_bottom">
        <div class="container">
            <div class="important_news_nd_videos">
                <div class="important_news_bottom_overlay"></div>
                <div class="row">
                    <!-- Important news -->
                    <div class="col-xs-12 col-sm-6 col-md-6">
                        <div class="wow slideInLeft" data-wow-duration="1s">
                            <h2 class="heading_title_2"><i class="far fa-calendar-alt"></i> Important <strong>News</strong></h2>
                            <div class="important_news">
                                <div class="media">
                                    <div class="media-left">
                                        <div class="important_news_date text-center">
                                            <h2>28</h2>
                                            <h3 class="text-uppercase">Feb</h3>
                                        </div>
                                    </div>
                                    <div class="media-body">
                                        <a href="#"><h3 class="text-capitalize">News Title</h3></a>
                                        <p>Lorem ipsum dolor set amet, consectator adipi molestlas non nulla placeat odio dolor amet dicta alias.</p>
   
                                    </div>
                                </div>
                                <div class="media">
                                    <div class="media-left">
                                        <div class="important_news_date text-center">
                                            <h2>28</h2>
                                            <h3 class="text-uppercase">Feb</h3>
                                        </div>
                                    </div>
                                    <div class="media-body">
                                        <a href="#"><h3 class="text-capitalize">News Title</h3></a>
                                        <p>Lorem ipsum dolor set amet, consectator adipi molestlas non nulla placeat odio dolor amet dicta alias.</p>
   
                                    </div>
                                </div>
                                <div class="media">
                                    <div class="media-left">
                                        <div class="important_news_date text-center">
                                            <h2>28</h2>
                                            <h3 class="text-uppercase">Feb</h3>
                                        </div>
                                    </div>
                                    <div class="media-body">
                                        <a href="#"><h3 class="text-capitalize">News Title</h3></a>
                                        <p>Lorem ipsum dolor set amet, consectator adipi molestlas non nulla placeat odio dolor amet dicta alias.</p>
   
                                    </div>
                                </div>
                                <div class="media">
                                    <div class="media-left">
                                        <div class="important_news_date text-center">
                                            <h2>28</h2>
                                            <h3 class="text-uppercase">Feb</h3>
                                        </div>
                                    </div>
                                    <div class="media-body">
                                        <a href="#"><h3 class="text-capitalize">News Title</h3></a>
                                        <p>Lorem ipsum dolor set amet, consectator adipi molestlas non nulla placeat odio dolor amet dicta alias.</p>
   
                                    </div>
                                </div>
                            </div>
                        </div>
                    </div><!-- //Important news -->
                    <!-- Campus video -->
                    <div class="col-xs-12 col-sm-6 col-md-6">
                        <div class="wow slideInRight" data-wow-duration="1s">
                            <h2 class="heading_title_2">University <strong>Video</strong></h2>
                            <div class="campus_video">
                                <figure>
                                    <img class="img-responsive" src="../images/bg8.jpg"/>
                                </figure>
                                <a class="campus_vdo_play" href="https://www.youtube.com/watch?v=3SJf1Ibnblc">
                                    <i class="fas fa-play-circle"></i>
                                </a>
                            </div>
                        </div>
                    </div> <!-- //Campus video -->
                </div>
            </div>
        </div>
        <div class="clearfix"></div>
    </section>
<!-- //important news and videos -->
    <section class="campus_gallery_area padding_top_bottom">
        <div class="container">
            <div class="campus_gallery">
                <div class="section_heading">
                    <h2>Campus <span>Gallery</span></h2>
                    <p>
                        Lorem ipsum dolor sit amet, consectetur adipisicing elit. Rem autem voluptatem obcaecati! 
                        ipsum dolor sit Rem autem voluptatem obcaecati
                    </p>
                </div>
                <div class="campus_gallery_grid wow slideInUp" data-wow-duration="0.7s">
                    <div class="gallery_item gallery_item_width2 gallery_item_height2">
                        <div class="gallery_thumb">
                            <img src="../images/campus_gallery/m1.jpg" alt=""/>
                            <div class="gallery_item_overlay"></div>
                            <div class="gallery_icon">
                                <a class="gallery_zm" href="../images/campus_gallery/m1.jpg"><i class="fas fa-search-plus"></i></a>
                                <a href="#"><i class="fas fa-link"></i></a>
                            </div>
                        </div>
                    </div>
                    <div class="gallery_item">
                        <div class="gallery_thumb">
                            <img src="../images/campus_gallery/m3.jpg" alt=""/>
                            <div class="gallery_item_overlay"></div>
                            <div class="gallery_icon">
                                <a class="gallery_zm" href="../images/campus_gallery/m3.jpg"><i class="fas fa-search-plus"></i></a>
                                <a href="#"><i class="fas fa-link"></i></a>
                            </div>
                        </div>
                    </div>
                    <div class="gallery_item">
                        <div class="gallery_thumb">
                            <img src="../images/campus_gallery/m4.jpg" alt=""/>
                            <div class="gallery_item_overlay"></div>
                            <div class="gallery_icon">
                                <a class="gallery_zm" href="../images/campus_gallery/m4.jpg"><i class="fas fa-search-plus"></i></a>
                                <a href="#"><i class="fas fa-link"></i></a>
                            </div>
                        </div>
                    </div>
                    <div class="gallery_item">
                        <div class="gallery_thumb">
                            <img src="../images/campus_gallery/m6.jpg" alt=""/>
                            <div class="gallery_item_overlay"></div>
                            <div class="gallery_icon">
                                <a class="gallery_zm" href="../images/campus_gallery/m6.jpg"><i class="fas fa-search-plus"></i></a>
                                <a href="#"><i class="fas fa-link"></i></a>
                            </div>
                        </div>
                    </div>
                    <div class="gallery_item gallery_item_height2">
                        <div class="gallery_thumb">
                            <img src="../images/campus_gallery/m2.jpg" alt=""/>
                            <div class="gallery_item_overlay"></div>
                            <div class="gallery_icon">
                                <a class="gallery_zm" href="../images/campus_gallery/m2.jpg"><i class="fas fa-search-plus"></i></a>
                                <a href="#"><i class="fas fa-link"></i></a>
                            </div>
                        </div>
                    </div>
                    <div class="gallery_item">
                        <div class="gallery_thumb">
                            <img src="../images/campus_gallery/m7.jpg" alt=""/>
                            <div class="gallery_item_overlay"></div>
                            <div class="gallery_icon">
                                <a class="gallery_zm" href="../images/campus_gallery/m7.jpg"><i class="fas fa-search-plus"></i></a>
                                <a href="#"><i class="fas fa-link"></i></a>
                            </div>
                        </div>
                    </div>
                    <div class="gallery_item">
                        <div class="gallery_thumb">
                            <img src="../images/campus_gallery/m3.jpg" alt=""/>
                            <div class="gallery_item_overlay"></div>
                            <div class="gallery_icon">
                                <a class="gallery_zm" href="../images/campus_gallery/m3.jpg"><i class="fas fa-search-plus"></i></a>
                                <a href="#"><i class="fas fa-link"></i></a>
                            </div>
                        </div>
                    </div>
                    <div class="gallery_item">
                        <div class="gallery_thumb">
                            <img src="../images/campus_gallery/m4.jpg" alt=""/>
                            <div class="gallery_item_overlay"></div>
                            <div class="gallery_icon">
                                <a class="gallery_zm" href="../images/campus_gallery/m4.jpg"><i class="fas fa-search-plus"></i></a>
                                <a href="#"><i class="fas fa-link"></i></a>
                            </div>
                        </div>
                    </div>
                </div>
            </div>
        </div>
        <div class="clearfix"></div>
    </section>
<%--<section class="students_feedback_area">
        <div class="container"></div>
    </section>--%>
    <!-- Latest news areaa -->
    <section class="latest_news_area bg_gray padding_top_bottom">
        <div class="container">
            <div class="section_heading">
                <h2>Latest <span>News</span></h2>
                <p>
                    Lorem ipsum dolor sit amet, consectetur adipisicing elit. Rem autem voluptatem obcaecati! 
                    ipsum dolor sit Rem autem voluptatem obcaecati
                </p>
            </div>
            <div class="latest_news_items wow slideInUp" data-wow-duration="0.7s">
                <div class="news_single_item">
                    <figure>
                        <img class="img-responsive" src="../images/L_news.jpg" alt="">
                    </figure>
                    <div class="news_single_item_content">
                        <a href="#"><h3 class="news_title text-uppercase">Post Title here</h3></a>
                        <div class="post_meta_element">
                            <span class="text-capitalize"><i class="far fa-comment-alt"></i> 214 Comments</span>
                            <span class="text-capitalize"><i class="far fa-heart"></i> 663 Likes</span>
                        </div>
                        <p>
                            consectetur adipisicing elit, sed do eiusmod tempor incididunt ut labore et dolore magnaali iqa.
                        </p>
                        <a href="#" class="btn btn_primary" role="button">View Details</a>
                    </div>
                </div>
                <div class="news_single_item">
                    <figure>
                        <img class="img-responsive" src="../images/L_news.jpg" alt="">
                    </figure>
                    <div class="news_single_item_content">
                        <a href="#"><h3 class="news_title text-uppercase">Post Title here</h3></a>
                        <div class="post_meta_element">
                            <span class="text-capitalize"><i class="far fa-comment-alt"></i> 214 Comments</span>
                            <span class="text-capitalize"><i class="far fa-heart"></i> 663 Likes</span>
                        </div>
                        <p>
                            consectetur adipisicing elit, sed do eiusmod tempor incididunt ut labore et dolore magnaali iqa.
                        </p>
                        <a href="#" class="btn btn_primary" role="button">View Details</a>
                    </div>
                </div>
                <div class="news_single_item">
                    <figure>
                        <img class="img-responsive" src="../images/L_news.jpg" alt="">
                    </figure>
                    <div class="news_single_item_content">
                        <a href="#"><h3 class="news_title text-uppercase">Post Title here</h3></a>
                        <div class="post_meta_element">
                            <span class="text-capitalize"><i class="far fa-comment-alt"></i> 214 Comments</span>
                            <span class="text-capitalize"><i class="far fa-heart"></i> 663 Likes</span>
                        </div>
                        <p>
                            consectetur adipisicing elit, sed do eiusmod tempor incididunt ut labore et dolore magnaali iqa.
                        </p>
                        <a href="#" class="btn btn_primary" role="button">View Details</a>
                    </div>
                </div>
                <div class="news_single_item">
                    <figure>
                        <img class="img-responsive" src="../images/L_news.jpg" alt="">
                    </figure>
                    <div class="news_single_item_content">
                        <a href="#"><h3 class="news_title text-uppercase">Post Title here</h3></a>
                        <div class="post_meta_element">
                            <span class="text-capitalize"><i class="far fa-comment-alt"></i> 214 Comments</span>
                            <span class="text-capitalize"><i class="far fa-heart"></i> 663 Likes</span>
                        </div>
                        <p>
                            consectetur adipisicing elit, sed do eiusmod tempor incididunt ut labore et dolore magnaali iqa.
                        </p>
                        <a href="#" class="btn btn_primary" role="button">View Details</a>
                    </div>
                </div>
            </div>
        </div>
    </section>
<!-- //Latest news areaa -->
</asp:Content>
