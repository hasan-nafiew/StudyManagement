<%@ Page Title="" Language="C#" MasterPageFile="~/StudyManagement/studyManagement.Master" AutoEventWireup="true" CodeBehind="UserProfileDetails.aspx.cs" Inherits="StudyManagement.StudyManagement.UserProfileDetails" %>
<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">
    <!-- second banner -->
    <div class="banner_2_parallax">
        <div class="banner_overlay">
            <div class="container">
                <div class="banner_2_content">
                    <h1 class="text_white">My Profile</h1>
                </div>
            </div>
        </div>
    </div>
    <!-- //second banner -->
    <div class="padding_top_bottom">
        <div class="container">
            <div class="user_details">
                <div class="row">
                    <div class="col-xs-12 col-sm-3 col-md-3">
                        <div class="student_details_photo text-center">
                            <figure>
                                <img class="img-responsive" src="../images/comment1.jpg" alt=""/>
                                <div class="student_details_photo_overlay">
                                    <asp:FileUpload ID="userPhotoUp" runat="server"/>
                                </div>
                                <div class="student_details_upload_btn_overlay text-center">
                                    <p>Change Photo</p>
                                </div>
                            </figure>
                            <h4>Martin</h4>
                            <p>Daffodil International University</p>
                            <p>Department of CSE</p>
                        </div>
                    </div>
                    <div class="col-xs-12 col-sm-9 col-md-9">
                        <div class="course_details_about">
                            <div class="teacher_details_contact">
                                <i class="fas fa-user"></i>
                                <div class="teacher_details_contact_content">
                                    <h5>My Information</h5>
                                    <div class="row_layout">
                                        <h5>First Name</h5>
                                        <p>Al</p>
                                    </div>
                                    <div class="row_layout">
                                        <h5>Last Name</h5>
                                        <p>Fahad</p>
                                    </div>
                                        
                                    <div class="row_layout">
                                        <h5>Gender</h5>
                                        <p>Male</p>
                                    </div>
                                    <div class="row_layout">
                                        <h5>E-mail</h5>
                                        <p>info@mail.com</p>
                                    </div>
                                </div>
                                <div class="clearfix"></div>
                            </div>
                            <asp:UpdatePanel ID="UpdatePanel1" runat="server">
                                <ContentTemplate>
                                    <div class="teacher_details_contact">
                                        <i class="fas fa-lock"></i>
                                        <div class="teacher_details_contact_content">
                                            <h5>Change Password</h5>
                                            <p>It's a good idea to use a strong password that you're not using elsewhere</p>
                                            <button id="changePwdBtn" type="button" class="btn btn_primary changePwdBtn" data-toggle="collapse" data-target="#changePwdToggle">Change</button>
                                            
                                            <div id="changePwdToggle" class="changePwdToggle collapse">
                                                <div class="form-inline">
                                                    <asp:Label ID="lblCrntPwd" runat="server" Text="Current Password" ></asp:Label>
                                                    <asp:TextBox ID="txtCrntPwd" CssClass="form-control" runat="server" TextMode="Password"></asp:TextBox>
                                                    <asp:RequiredFieldValidator ID="RequiredFieldValidator1" CssClass="validation_msg" runat="server" ControlToValidate="txtCrntPwd" ForeColor="Red" ErrorMessage="This field is requirded"></asp:RequiredFieldValidator>
                                                </div>
                                                <div class="form-inline">
                                                    <asp:Label ID="lblNwPwd" runat="server" Text="New Password"></asp:Label>
                                                    <asp:TextBox ID="txtNwPwd" CssClass="form-control" runat="server" TextMode="Password"></asp:TextBox>
                                                    <asp:RequiredFieldValidator ID="RequiredFieldValidator2" CssClass="validation_msg" runat="server" ControlToValidate="txtNwPwd" ForeColor="Red" ErrorMessage="This field is requirded"></asp:RequiredFieldValidator>
                                                </div>
                                                <div class="form-inline">
                                                    <asp:Label ID="lblRNwPwd" runat="server" Text="Re-type New"></asp:Label>
                                                    <asp:TextBox ID="txtRNwPwd" CssClass="form-control" runat="server" TextMode="Password"></asp:TextBox>
                                                    <asp:RequiredFieldValidator ID="RequiredFieldValidator3" runat="server" CssClass="validation_msg" ControlToValidate="txtRNwPwd" ForeColor="Red" ErrorMessage="This field is requirded"></asp:RequiredFieldValidator>
                                                    <asp:CompareValidator ID="CompareValidator1" runat="server" CssClass="validation_msg" ControlToValidate="txtRNwPwd" ControlToCompare="txtNwPwd" ErrorMessage="Password should match" ForeColor="Red"></asp:CompareValidator>
                                                </div><hr/>
                                                <asp:Button ID="btnPwdChangeSave" CssClass="btn btn-primary" runat="server" Text="Save" OnClick="btnPwdChangeSave_Click" />
                                            </div>
                                        </div>
                                        <div class="clearfix"></div>
                                    </div>
                                </ContentTemplate>
                            </asp:UpdatePanel>
                            
                        </div>                            
                    </div>
                </div>
            </div>
        </div>
    </div>
</asp:Content>
