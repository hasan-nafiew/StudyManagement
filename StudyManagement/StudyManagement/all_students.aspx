<%@ Page Title="" Language="C#" MasterPageFile="~/StudyManagement/studyManagement.Master" AutoEventWireup="true" CodeBehind="all_students.aspx.cs" Inherits="StudyManagement.StudyManagement.all_students" %>
<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">
    <!--======== All Students profile ===========-->
    <!-- second banner -->
    <div class="banner_2_parallax">
        <div class="banner_overlay">
            <div class="container">
                <div class="banner_2_content">
                    <h1 class="text_white">Students</h1>
                </div>
            </div>
        </div>
    </div>
    <!-- //second banner -->
    <div class="all_students_area padding_top_bottom">
        <div class="container">
            <div class="all_students_profile text-center">
                <div class="row">
                    <asp:Repeater ID="rptrStdnts" runat="server">
                        <ItemTemplate>
                            <div class="col-xs-12 col-sm-3 col-md-3">
                                <div class=" single_student_profile">
                                    <figure class=" student_photo">
                                        <img class="img-responsive" src="<%#Eval("UploadPhoto") %>"" alt=""/>
                                    </figure>
                                    <div class="student_description">
                                        <a href="StudentProfile.aspx"> <h4><%#Eval("FirstName") %>&nbsp;<%#Eval("LastName") %></h4></a>
                                        <p><%#Eval("UniversityName") %></p>
                                        <p><%#Eval("Department") %></p>
                                    </div>
                                </div>
                            </div>
                        </ItemTemplate>
                    </asp:Repeater>
                </div>
            </div>
        </div>
    </div>
</asp:Content>
