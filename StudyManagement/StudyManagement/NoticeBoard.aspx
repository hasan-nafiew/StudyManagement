<%@ Page Title="" Language="C#" MasterPageFile="~/StudyManagement/studyManagement.Master" AutoEventWireup="true" CodeBehind="NoticeBoard.aspx.cs" Inherits="StudyManagement.StudyManagement.NoticeBoard" %>
<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">
    <!--======== Notice Board ===========-->
    <!-- second banner -->
    <div class="banner_2_parallax">
        <div class="banner_overlay">
            <div class="container">
                <div class="banner_2_content">
                    <h1 class="text_white">Notice Board</h1>
                </div>
            </div>
        </div>
    </div>
    <!-- //second banner -->
    <div class="notice_board_area padding_top_bottom">
        <div class="container">
            <div class="notice_board">
                <div class="row">
                    <div class="col-xs-12 col-sm-8 col-md-8">
                        <div class="notice_board_left_content">
                            <div class="notice_heading">
                                <h4>Latest Notice</h4>
                                <h4>Published Date</h4>
                            </div>
                            <!-- Single notice -->
                            <asp:Repeater ID="rptrNotice" runat="server">
                                <ItemTemplate>
                                    <div class="single_notice">
                                        <div class="notice_title">
                                            <a href="#"><h5><%#Eval("NOTICEBOARD") %></h5></a>
                                        </div>
                                        <div class="notice_published_date">
                                            <p><%#Eval("NOTICEDATE") %></p>
                                        </div>
                                    </div>
                                </ItemTemplate>
                            </asp:Repeater>
                           
                            
                            
                        </div>
                    </div>
                     <div class="col-xs-12 col-sm-4 col-md-4">
                        <aside class="notice_board_right_content">
                            <div class="notice_right_content_item">
                                <h4 class="notice_right_content_title">Popular Courses</h4>
                                <div class="notice_right_content_body">
                                    <ul class="notice_right_body_inner list-unstyled">
                                        <li><a href="#"><i class="fas fa-angle-right"></i> Computer Scince</a></li>
                                        <li><a href="#"><i class="fas fa-angle-right"></i> Electrical Engineering</a></li>
                                        <li><a href="#"><i class="fas fa-angle-right"></i> Accounting</a></li>
                                        <li><a href="#"><i class="fas fa-angle-right"></i> Networking</a></li>
                                        <li><a href="#"><i class="fas fa-angle-right"></i> Javascript</a></li>
                                    </ul>
                                </div>
                            </div>
                            <div class="notice_right_content_item">
                                <h4 class="notice_right_content_title">Popular Books</h4>
                                <div class="notice_right_content_body">
                                    <ul class="notice_right_body_inner list-unstyled">
                                        <li><a href="#"><i class="fas fa-angle-right"></i> Computer Scince</a></li>
                                        <li><a href="#"><i class="fas fa-angle-right"></i> Electrical Engineering</a></li>
                                        <li><a href="#"><i class="fas fa-angle-right"></i> Accounting</a></li>
                                        <li><a href="#"><i class="fas fa-angle-right"></i> Networking</a></li>
                                        <li><a href="#"><i class="fas fa-angle-right"></i> Javascript</a></li>
                                    </ul>
                                </div>
                            </div>
                            
                        </aside>
                    </div>
                </div>
            </div>
        </div>
    </div>
    <!--======== //Notice Board ===========-->
</asp:Content>
