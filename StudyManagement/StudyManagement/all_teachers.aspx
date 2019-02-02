<%@ Page Title="" Language="C#" MasterPageFile="~/StudyManagement/studyManagement.Master" AutoEventWireup="true" CodeBehind="all_teachers.aspx.cs" Inherits="StudyManagement.StudyManagement.all_teachers" %>
<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">
    <!--======== All teachers profile ===========-->
    <!-- second banner -->
    <div class="banner_2_parallax">
        <div class="banner_overlay">
            <div class="container">
                <div class="banner_2_content">
                    <h1 class="text_white">Teachers</h1>
                </div>
            </div>
        </div>
    </div>
    <!-- //second banner -->
    <div class="all_teachers_area padding_top_bottom">
        <div class="container">
            <div class="all_teachers_profile text-center">
                <div class="row">
                    <asp:Repeater ID="rptrAllteachers" runat="server">
                        <ItemTemplate>
                            <div class="col-xs-12 col-sm-3 col-md-3 col-lg-3">
                                <div class="teacher_profile">
                                    <figure class="teachers_photo">
                                        <img class="img-responsive" src="<%#Eval("IMAGE") %>" alt=""/>
                                    </figure>
                                    <div class="teachers_designation">
                                        <a href="teacher_details.aspx"> <h4><%#Eval("TEACHERNAME") %></h4></a>
                                        <h5><%#Eval("[DESIGNATION]") %></h5>
                                    </div>
                                </div>
                            </div>
                        </ItemTemplate>
                    </asp:Repeater>
                </div>
            </div>
        </div>
    </div>
    <!--======== All teachers profile ===========-->
</asp:Content>
