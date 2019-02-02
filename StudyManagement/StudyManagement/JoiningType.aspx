<%@ Page Title="" Language="C#" MasterPageFile="~/StudyManagement/studyManagement.Master" AutoEventWireup="true" CodeBehind="JoiningType.aspx.cs" Inherits="StudyManagement.StudyManagement.JoiningType" %>
<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">
    <!-- second banner -->
    <div class="banner_2_parallax">
        <div class="banner_overlay">
            <div class="container">
                <div class="banner_2_content">
                    <h1 class="text_white">Welcome <asp:Label ID="login_status" CssClass="login_status_msg" runat="server" Text="Label"></asp:Label> <asp:Label ID="login_status1" CssClass="login_status_msg" runat="server" Text="Label"></asp:Label></h1>
                </div>
            </div>
        </div>
    </div> <!-- //second banner -->
    <div class="joining_type_area">
        <div class="container">
            <div class="joining_type text-center">
                <div class="row">
                    <div class="col-xs-12">
                      <h3><asp:Button ID="btnJoinAsStd" runat="server" Text="Join as a Student" OnClick="btnJoinAsStd_Click"/></h3>
                      <p><asp:Button ID="btnContinueUsr" runat="server" Text="Continue" OnClick="btnContinueUsr_Click" /></p>
                    </div>
                </div>
            </div>
        </div>
    </div>
</asp:Content>
