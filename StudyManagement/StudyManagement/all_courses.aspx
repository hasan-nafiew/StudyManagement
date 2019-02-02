<%@ Page Title="" Language="C#" MasterPageFile="~/StudyManagement/studyManagement.Master" AutoEventWireup="true" CodeBehind="all_courses.aspx.cs" Inherits="StudyManagement.StudyManagement.AllCourses" %>
<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">
    <!--======== All Courses ===========-->
    <!-- second banner -->
    <div class="banner_2_parallax">
        <div class="banner_overlay">
            <div class="container">
                <div class="banner_2_content">
                    <h1 class="text_white">Courses</h1>
                    <div class="banner_search_box pull-right">
                        <div class="form-group">
                            <asp:TextBox ID="banner_search_box" placeholder="Search Course" CssClass="form-control" runat="server"></asp:TextBox>
                            <asp:Button ID="submit" CssClass="btn" runat="server" Text="S" />
                            <i class="fas fa-search"></i>
                        </div>
                    </div>
                </div>
            </div>
        </div>
    </div>
    <!-- //second banner -->
    <div class="all_courses_area padding_top_bottom">
        <div class="container">
            <div class="all_courses_slide">
            <asp:Repeater ID="rptrAllCoursesPic" runat="server">
            <ItemTemplate>
                <a href="CourseDetails.aspx">
                    <img class="img-responsive" src="<%#Eval("CoursePhoto") %>" alt="">
                    <div class="all_courses_slide_overlay">
                        <h5>Graphics Design</h5>
                    </div>
                </a>
                </ItemTemplate>
            </asp:Repeater>
            </div>
            <div class="all_courses text-center">
                <div class="row">
                    <asp:Repeater ID="rptrAllCourses" runat="server">
                        <ItemTemplate>
                            <div class="col-xs-12 col-sm-3 col-md-3">
                                <div class="single_course">
                                    <figure class="course_photo">
                                        <img class="img-responsive" src="<%#Eval("CoursePhoto") %>" alt=""/>
                                    </figure>
                                    <div class="course_description">
                                        <a href="CourseDetails.aspx"><h5><%#Eval("COURSENAME") %></h5></a>
                                        <p><%#Eval("CourseDescription") %></p>
                                    </div>
                                </div>
                            </div>
                        </ItemTemplate>
                    </asp:Repeater>
                    
                </div>
            </div>
        </div>
    </div>
    <!--======== //All Courses ===========-->
</asp:Content>
