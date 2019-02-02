<%@ Page Title="" Language="C#" MasterPageFile="~/StudyManagement/studyManagement.Master" AutoEventWireup="true" CodeBehind="StudentProfile.aspx.cs" Inherits="StudyManagement.StudyManagement.StudentProfile" %>
<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">
    <!-- second banner -->
    <div class="banner_2_parallax">
        <div class="banner_overlay">
            <div class="container">
                <div class="banner_2_content">
                    <h1 class="text_white">Welcome <asp:Label ID="login_status" CssClass="login_status_msg" runat="server"></asp:Label> <asp:Label ID="login_status1" CssClass="login_status_msg" runat="server"></asp:Label></h1>
                </div>
            </div>
        </div>
    </div> <!-- //second banner -->
    <div class="student_details_area padding_top_bottom">
        <div class="container">
            <div class="student_details">
                <div class="row">
                    <div class="col-xs-12 col-sm-3 col-md-3">
                        <div class="student_details_photo text-center">
                            <figure>
                                <img id="profile_image" class="img-responsive" src="../images/teacher-1.jpg" alt=""/>
                                <div class="student_details_photo_overlay">
<%--                                    <input type="file" id="userPhotoUp" runat="server"/>--%>
                                    <asp:FileUpload ID="userPhotoUp" runat="server"/>
                                </div>
                                <div id="txtPhotoUp" class="student_details_upload_btn_overlay text-center">
                                    <p>Change Photo</p>
                                </div>
                                <div id="PhotoUpBtn" class="student_details_upload_btn_overlay text-center">
                                    <asp:Button ID="btnUserPhotoUp" CssClass="btn" runat="server" Text="Upload" OnClick="btnUserPhotoUp_Click" />
                                </div>
                            </figure>
                            <h4>Martin</h4>
                            <p>Daffodil International University</p>
                            <p>Department of CSE</p>
                        </div>
                    </div>
                    <div class="col-xs-12 col-sm-9 col-md-9">
                        <div class="course_details_about student_details_body">
                            <ul class="nav nav-pills">
                                <li class="active"><a data-toggle="pill" href="#course_details_description">Information</a></li>
                                <li><a data-toggle="pill" href="#course_details_teachers">Courses</a></li>
                            </ul>
                            <div class="tab-content">
                                <div id="course_details_description" class="tab-pane fade in active">                                    
                                    <div class="teacher_details_contact_area">
                                        <div class="teacher_details_contact">
                                            <i class="fas fa-user"></i>
                                            <div class="teacher_details_contact_content">
                                                <h5>Personal Information</h5>
                                                <div class="row_layout">
                                                    <h5>First Name</h5>
                                                    <p>Al</p>
                                                </div>
                                                <div class="row_layout">
                                                    <h5>Last Name</h5>
                                                    <p>Martin</p>
                                                </div>
                                        
                                                <div class="row_layout">
                                                    <h5>Blood Group</h5>
                                                    <p></p>
                                                </div>
                                                <div class="row_layout">
                                                    <h5>Gender</h5>
                                                    <p>Female</p>
                                                </div>
                                                <div class="row_layout">
                                                    <h5>Marital Status</h5>
                                                    <p>Single</p>
                                                </div>
                                                <div class="row_layout">
                                                    <h5>Religion </h5>
                                                    <p>Islam</p>
                                                </div>
                                                <div class="row_layout">
                                                    <h5>Nationality</h5>
                                                    <p>Bangladesh</p>
                                                </div>
                                            </div>
                                            <div class="clearfix"></div>
                                        </div>
                                        <div class="teacher_details_contact">
                                            <i class="fas fa-university"></i>
                                            <div class="teacher_details_contact_content">
                                                <h5>Educational Information</h5>
                                                <div class="row_layout">
                                                    <h5>University Name</h5>
                                                    <p>Daffodil International University</p>
                                                </div>
                                                <div class="row_layout">
                                                    <h5>Program Name</h5>
                                                    <p>Graduate</p>
                                                </div>
                                                <div class="row_layout">
                                                    <h5>Department Name</h5>
                                                    <p>CSE</p>
                                                </div>
                                            </div>
                                            <div class="clearfix"></div>
                                        </div>
                                        <div class="teacher_details_contact">
                                            <i class="fas fa-phone"></i>
                                            <div class="teacher_details_contact_content">
                                                <h5>Contact</h5>
                                                <div class="row_layout">
                                                    <h5>PHone Number</h5>
                                                    <p>01700000000</p>
                                                </div>
                                                <div class="row_layout">
                                                    <h5>E-mail</h5>
                                                    <p>info@mail.com</p>
                                                </div>
                                                <div class="row_layout">
                                                    <h5>Alternative E-mail</h5>
                                                    <p>info@mail.com</p>
                                                </div>
                                            </div>
                                            <div class="clearfix"></div>
                                        </div>
                                        <div class="teacher_details_contact">
                                            <i class="fas fa-map-marker"></i>
                                            <div class="teacher_details_contact_content">
                                                <h5>Address</h5>
                                                <p>Dhanmondi, Dhaka, Bangladesh</p>
                                            </div>
                                            <div class="clearfix"></div>
                                        </div>
                                    </div>
                                </div>
                                <div id="course_details_teachers" class="tab-pane fade">
                                    <a href="CourseDetails.aspx">
                                        <div class="teacher_profile course_details_teacher_profile student_details_course">
                                            <figure class="teachers_photo">
                                                <img class="img-responsive" src="../images/sm5.jpg" alt=""/>
                                            </figure>
                                            <div class="teachers_designation">
                                               <h5>Graphics Design</h5>
                                            </div>
                                        </div>
                                    </a>
                                    <a href="CourseDetails.aspx">
                                        <div class="teacher_profile course_details_teacher_profile student_details_course">
                                            <figure class="teachers_photo">
                                                <img class="img-responsive" src="../images/sm1.jpg" alt=""/>
                                            </figure>
                                            <div class="teachers_designation">
                                               <h5>Graphics Design</h5>
                                            </div>
                                        </div>
                                    </a>
                                    <a href="CourseDetails.aspx">
                                        <div class="teacher_profile course_details_teacher_profile student_details_course">
                                            <figure class="teachers_photo">
                                                <img class="img-responsive" src="../images/sm2.jpg" alt=""/>
                                            </figure>
                                            <div class="teachers_designation">
                                               <h5>Graphics Design</h5>
                                            </div>
                                        </div>
                                    </a>
                                    <a href="CourseDetails.aspx">
                                        <div class="teacher_profile course_details_teacher_profile student_details_course">
                                            <figure class="teachers_photo">
                                                <img class="img-responsive" src="../images/sm3.jpg" alt=""/>
                                            </figure>
                                            <div class="teachers_designation">
                                               <h5>Graphics Design</h5>
                                            </div>
                                        </div>
                                    </a>
                                    <a href="CourseDetails.aspx">
                                        <div class="teacher_profile course_details_teacher_profile student_details_course">
                                            <figure class="teachers_photo">
                                                <img class="img-responsive" src="../images/sm4.jpg" alt=""/>
                                            </figure>
                                            <div class="teachers_designation">
                                                <h5>Graphics Design</h5>
                                            </div>
                                        </div>
                                    </a>
                                </div>
                            </div><!-- tab content close -->
                        </div>
                    </div>
                </div>
            </div>
        </div>
    </div>
</asp:Content>
