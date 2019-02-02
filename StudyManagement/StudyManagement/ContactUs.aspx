<%@ Page Title="" Language="C#" MasterPageFile="~/StudyManagement/studyManagement.Master" AutoEventWireup="true" CodeBehind="ContactUs.aspx.cs" Inherits="StudyManagement.StudyManagement.ContactUs" %>
<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">
    <!-- second banner -->
    <div class="banner_2_parallax">
        <div class="banner_overlay">
            <div class="container">
                <div class="banner_2_content">
                    <h1 class="text_white"></h1>
                </div>
            </div>
        </div>
    </div>
    <!-- //second banner -->
    <div class="contact_us_studymanagement_area padding_top_bottom">
        <div class="container">
            <div class="contact_us_studymanagement">
                <div class="section_heading">
                    <h2>Contact <span>Us</span></h2>
                </div>
                <div class="row">
                    <div class="col-xs-12 col-sm-6 col-md-8">
                        <div class="contact_us_mailing">
                            <div class="form-group" runat="server">
                                <asp:TextBox ID="txt_usr_name" CssClass="form-control" runat="server" placeholder="Enter Name"></asp:TextBox>
                                <asp:RequiredFieldValidator ID="RequiredFieldValidator1" ForeColor="Red" runat="server" ErrorMessage="Enter your name" ControlToValidate="txt_usr_name"></asp:RequiredFieldValidator>
                                <asp:TextBox ID="txt_usr_email" runat="server" CssClass="form-control" TextMode="Email" placeholder="Enter E-mail"></asp:TextBox>
                                <asp:RequiredFieldValidator ID="RequiredFieldValidator2" ForeColor="Red" runat="server" ErrorMessage="Enter an E-mail" ControlToValidate="txt_usr_email"></asp:RequiredFieldValidator>
                                <asp:TextBox ID="txt_usr_msg" runat="server" CssClass="form-control" TextMode="MultiLine" Rows="5" placeholder="Write your massage"></asp:TextBox>
                                <asp:RequiredFieldValidator ID="RequiredFieldValidator4" runat="server" ForeColor="Red" ErrorMessage="Write massage" ControlToValidate="txt_usr_msg"></asp:RequiredFieldValidator>
                                <asp:Button ID="btnRqusetInfoSubmit" CssClass="btn btn-default bg_primary text_white pull-right" runat="server" Text="Submit Request" OnClick="btnRqusetInfoSubmit_Click"/>
                            </div>
                        </div>
                    </div>
                    <div class="col-xs-12 col-sm-6 col-md-4">
                        <div class="contact_us_aderess">
                            <div class="cu_address">
                                <h5>Phone Number</h5>
                                <p><i class="fas fa-phone"></i> +88 01700000000</p>
                            </div>
                            <div class="cu_address">
                                <h5>E-mail</h5>
                                <p><i class="fas fa-envelope"></i> studymanagement.bd@gmail.com</p>
                            </div>
                             <div class="cu_address">
                                <h5>Address</h5>
                                <p><i class="fas fa-home"></i> Dhanmondi, Dhaka</p>
                            </div>
                        </div>
                    </div>
                </div>
            </div>
        </div>
    </div>
</asp:Content>
