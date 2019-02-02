<%@ Page Title="" Language="C#" MasterPageFile="~/StudyManagement/studyManagement.Master" AutoEventWireup="true" CodeBehind="CourseDetails.aspx.cs" Inherits="StudyManagement.StudyManagement.CourseDetails" %>
<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">
    <!--======== Course Details ===========-->
    <!-- second banner -->
    <div class="banner_2_parallax">
        <div class="banner_overlay">
            <div class="container">
                <div class="banner_2_content">
                    <h1 class="text_white">Course Details</h1>
                </div>
            </div>
        </div>
    </div>
    <!-- //second banner -->
    <div class="course_details_area padding_top_bottom">
        <div class="container">
            <div class="course_details">
                <div class="row">
                    <div class="col-xs-12 col-sm-4 col-md-4">
                        <aside class="course_details_left pull-right">
                            <div class="popular_courses">
                                <h3>Popular <strong>Courses</strong></h3>
                                <ul class="popular_courses_content list-unstyled">
                                    <li><a href="#">Computer Scince</a></li>
                                    <li><a href="#">Electrical Engineering</a></li>
                                    <li><a href="#">Accounting</a></li>
                                    <li><a href="#">Networking</a></li>
                                    <li><a href="#">Javascript</a></li>
                                </ul>
                            </div>
                            <div class="clearfix"></div>
                        </aside>
                    </div>
                    <div class="col-xs-12 col-sm-8 col-md-8">
                        <div class="course_details_right">
                            <figure class="course_details_photo">
                                <img class="img-responsive" src="../images/sm1.jpg" alt=""/>
                            </figure>
                            <h3>Web Design and Development Course</h3>
                            <div class="course_meta_element">
                                <div class="course_meta_element_item flex_item_center">
                                    <i class="far fa-user-circle"></i>
                                    <div class="course_meta_item_content">
                                        <p>Teacher</p>
                                        <h5>John Deo</h5>
                                    </div>
                                </div>
                                <div class="course_meta_element_item flex_item_center">
                                    <i class="far fa-bookmark"></i>
                                    <div class="course_meta_item_content">
                                        <p>Category</p>
                                        <h5>Web Design</h5>
                                    </div>
                                </div>
                                <div class="course_meta_element_item flex_item_center">
                                    <i class="far fa-money-bill-alt"></i>
                                    <div class="course_meta_item_content">
                                        <p>Course Price</p>
                                        <h5>Free</h5>
                                    </div>
                                </div>
                                <div class="course_meta_enroll flex_item_center pull-right">
                                    <i class="fas fa-plus"></i>
                                    <div class="course_meta_item_content">
                                        <asp:Button ID="btnEroll" CssClass="btn" runat="server" Text="Enroll" />
                                    </div>
                                </div>
                                <div class="clearfix"></div>
                            </div>
                            <div class="course_details_about">
                                <ul class="nav nav-pills">
                                    <li class="active"><a data-toggle="pill" href="#course_details_description">Descriptions</a></li>
                                    <li><a data-toggle="pill" href="#course_details_course_info">Course Info</a></li>
                                    <li><a data-toggle="pill" href="#course_details_teachers">Teachers</a></li>
                                    <li><a data-toggle="pill" href="#course_details_comments">Comments</a></li>
                                </ul>
                                <div class="tab-content">
                                    <div id="course_details_description" class="tab-pane fade in active">
                                        <div class="Course_descriptions">
                                            <h4>Course Details</h4>
                                            <p>
                                                Lorem ipsum dolor sit amet, consectetur adipisicing elit. Deleniti fugit eos quisquam sequi minima beatae ullam necessitatibus vel quae architecto, similique dicta voluptate iusto voluptatem suscipit, maxime vero rerum consequuntur quaerat dignissimos minus accusantium. Repellendus eum nihil aliquid quis soluta, quia ducimus omnis pariatur, illo!
                                            </p>
                                        </div>
                                        <div class="course_requirment">
                                            <h4>Requirment</h4>
                                            <ul class="list-unstyled">
                                                <li><i class="fas fa-angle-right"></i> Lorem ipsum dolor sit elit</li>
                                                <li><i class="fas fa-angle-right"></i> Lorem ipsum dolor sit elit</li>
                                                <li><i class="fas fa-angle-right"></i> Lorem ipsum dolor sit elit</li>
                                                <li><i class="fas fa-angle-right"></i> Lorem ipsum dolor sit elit</li>
                                            </ul>
                                        </div>
                                        <div class="course_requirment course_syllabus">
                                            <h4>Course Syllabus</h4>
                                            <ul class="list-unstyled">
                                                <li><i class="fas fa-angle-right"></i> Lorem ipsum dolor sit elit</li>
                                                <li><i class="fas fa-angle-right"></i> Lorem ipsum dolor sit elit</li>
                                                <li><i class="fas fa-angle-right"></i> Lorem ipsum dolor sit elit</li>
                                                <li><i class="fas fa-angle-right"></i> Lorem ipsum dolor sit elit</li>
                                            </ul>
                                        </div>
                                    </div>
                                    <div id="course_details_course_info" class="tab-pane fade">
                                        <div class="course_details_information">
                                            <h4>Course Information</h4>
                                            <ul class="list-unstyled">
                                                <li>
                                                    <h5><i class="fas fa-calendar-check"></i> Class Start :</h5>
                                                    <span>April 10, 2018</span>
                                                </li>
                                                <li>
                                                    <h5><i class="far fa-clock"></i> Course Duration :</h5>
                                                    <span>3 months</span>
                                                </li>
                                                <li>
                                                    <h5><i class="far fa-gem"></i> Total Credits :</h5>
                                                    <span>135</span>
                                                </li>
                                                <li>
                                                    <h5><i class="far fa-file-alt"></i> Class Schedule :</h5>
                                                    <span>Saturday, Monday & Wednesday</span>
                                                </li>
                                                <li>
                                                    <h5><i class="far fa-clock"></i> Class Time :</h5>
                                                    <span>9am - 12pm</span>
                                                </li>
                                                <li>
                                                    <h5><i class="fas fa-users"></i> Course Teachers :</h5>
                                                    <span>02</span>
                                                </li>
                                            </ul>
                                        </div>
                                    </div>
                                    <div id="course_details_teachers" class="tab-pane fade">
                                        <div class="teacher_profile course_details_teacher_profile">
                                            <figure class="teachers_photo">
                                                <img class="img-responsive" src="../images/fahad.jpg" alt=""/>
                                            </figure>
                                            <div class="teachers_designation">
                                                <a href="#"> <h5>Al Fahad</h5></a>
                                                <p>EEE Faculty</p>
                                            </div>
                                        </div>
                                        <div class="teacher_profile course_details_teacher_profile">
                                            <figure class="teachers_photo">
                                                <img class="img-responsive" src="../images/teacher-3.jpg" alt=""/>
                                            </figure>
                                            <div class="teachers_designation">
                                                <a href="#"> <h5>John Doe</h5></a>
                                                <p>CSE Facuclty</p>
                                            </div>
                                        </div>
                                        
                                    </div>
                                    <div id="course_details_comments" class="tab-pane fade">
                                        <div class="course_all_comments">
                                            <!-- single comment -->
                                            <div class="media">
                                                <figure class="media-left">
                                                    <img class="media-object" src="../images/comment1.jpg"/>
                                                </figure>
                                                <div class="media-body">
                                                    <h5 class="media-heading">
                                                        John Doe <small><i>Posted on february 10, 2018</i></small>
                                                    </h5>
                                                    <p>
                                                        Lorem ipsum dolor sit amet, consectetur adipiscing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua.
                                                    </p>
                                                    <!-- nested single comment -->
                                                    <div class="media">
                                                        <figure class="media-left">
                                                            <img class="media-object" src="../images/comment2.jpg"/>
                                                        </figure>
                                                        <div class="media-body">
                                                            <h5 class="media-heading">
                                                               Martin <small><i>Posted on february 10, 2018</i></small>
                                                            </h5>
                                                            <p>
                                                                Lorem ipsum dolor sit amet, consectetur adipiscing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua.
                                                            </p>
                                                        </div>
                                                    </div><!-- //nested single comment -->
                                                    <div class="course_comments_reply">
                                                        <div class="course_comment_reply_btn">
                                                            <a class="pull-right" data-toggle="collapse" href="#course_comment_reply"><i class="far fa-comment-alt"></i> Reply</a>
                                                            <div class="clearfix"></div>
                                                        </div>
                                                        <div id="course_comment_reply" class="form-group collapse">
                                                            <textarea id="course_comment" rows="1" class="form-control" placeholder="Reply.."></textarea>
                                                        </div>
                                                    </div>
                                                </div>
                                            </div> <!-- //single comment -->
                                            <!-- single comment -->
                                            <div class="media">
                                                <figure class="media-left">
                                                    <img class="media-object" src="../images/comment2.jpg"/>
                                                </figure>
                                                <div class="media-body">
                                                    <h5 class="media-heading">
                                                        Martin <small><i>Posted on february 10, 2018</i></small>
                                                    </h5>
                                                    <p>
                                                        Lorem ipsum dolor sit amet, consectetur adipiscing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua.
                                                    </p>
                                                    <!--  comment reply -->
                                                    <div class="course_comments_reply">
                                                        <div class="course_comment_reply_btn">
                                                            <a class="pull-right" data-toggle="collapse" href="#course_comment_reply2"><i class="far fa-comment-alt"></i> Reply</a>
                                                            <div class="clearfix"></div>
                                                        </div>
                                                        <div id="course_comment_reply2" class="form-group collapse">
                                                            <textarea id="course_comment2" rows="1" class="form-control" placeholder="Reply.."></textarea>
                                                        </div>
                                                    </div>
                                                </div>
                                            </div> <!-- //single comment -->
                                        </div>
                                        <!-- comment Box-->
                                        <div class="course_details_live_comment">
                                            <div class="form-group">
                                                <textarea id="course_comment3" rows="3" class="form-control"  placeholder="Write Your Comment ..."></textarea>
                                                <asp:Button runat="server" CssClass="btn btn_primary pull-right" Text="Submit"/>
                                            </div>
                                            <div class="clearfix"></div>
                                        </div><!-- //comment Box-->
                                    </div>
                                </div>
                            </div>
                            

                        </div>
                    </div>

                </div>
            </div>
        </div>
    </div>
    <!--======== Course Details ===========-->
</asp:Content>
