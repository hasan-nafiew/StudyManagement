<%@ Page Title="" Language="C#" MasterPageFile="~/StudyManagement/studyManagement.Master" AutoEventWireup="true" CodeBehind="UserLogin.aspx.cs" Inherits="StudyManagement.StudyManagement.UserLogin" %>
<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">

    <div class="user_login_form padding_top_bottom">
        <div class="container">
            <div class="modal-dialog">
                <!-- Modal content-->
                <div class="modal-content">
                    <div class="modal-header">
                        <h4 class="modal-title"> Login to your account</h4>
                    </div>

                    <div class="modal-body">
                        <asp:Label ID="successfull_msg" CssClass="success_msg" runat="server"></asp:Label>
                        <asp:Label ID="unsuccessfull_msg" CssClass="unsuccess_msg" runat="server"></asp:Label>
                        <div class="input-group">
                            <span class="input-group-addon"><i class="glyphicon glyphicon-user"></i></span>
                            <asp:TextBox ID="txtLoginUserName" runat="server" CssClass="form-control" placeholder="User Name or E-mail"></asp:TextBox>
                        </div>
                        <div class="input-group">
                            <span class="input-group-addon"><i class="glyphicon glyphicon-lock"></i></span>
                            <asp:TextBox ID="txtLoginPwd" runat="server" CssClass="form-control" TextMode="Password" placeholder="Password"></asp:TextBox>
                        </div>
                        <div class="checkbox">
                            <label>
                                <asp:CheckBox ID="chckUser" runat="server" /> Remember Username and Password
                            </label>
                            <div class="clearfix"></div>
                        </div>
                        <div class="radio login_user_role">
                            <span>Role:</span>
                            <div class="user_role_list">
                                <label>
                                    <asp:RadioButton ID="rdoNormalUserRole" runat="server" GroupName="userType" />Login as a User
                                </label>
                                <label>
                                    <asp:RadioButton ID="rdoStdntRole" runat="server" GroupName="userType" />Login as a Student
                                </label>
                            </div>
                        </div>
                        <asp:Button ID="btnUserLogin" runat="server" Text="Login" CssClass="btn btn-success" OnClick="btnUserLogin_Click"/>

                        <span class="notHaveAcc">Not have Account? <a href="UserRegistration.aspx">Sign up Here</a></span>
                    </div>
                </div>

            </div>
        </div>
    </div>
</asp:Content>
