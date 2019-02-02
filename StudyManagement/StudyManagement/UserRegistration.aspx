<%@ Page Title="" Language="C#" MasterPageFile="~/StudyManagement/studyManagement.Master" AutoEventWireup="true" CodeBehind="UserRegistration.aspx.cs" Inherits="StudyManagement.StudyManagement.UserRegistration" %>
<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">
    <!-- second banner -->
    <div class="banner_2_parallax">
        <div class="banner_overlay">
            <div class="container">
                <div class="banner_2_content">
                    <h1 class="text_white">Registration Form</h1>
                </div>
            </div>
        </div>
    </div> <!-- //second banner -->
    <div >
        <!-- Modal for Registration-->
        <div class="user_registration_form">
            <div class="modal-dialog modal-lg">
                <!-- Modal content-->
                <div class="modal-content">
                    <div class="modal-header">
                        <h4 class="modal-title">User Ragistration</h4>
                    </div>
                    <asp:UpdatePanel ID="UpdatePanel1" runat="server">
                        <ContentTemplate>
                            <div class="modal-body">
                                <asp:Label ID="unsuccessfull_msg" CssClass="unsuccess_msg" runat="server"></asp:Label>
                                <div class="form-group reg_fullname">
                                    <div class="mr_15">
                                        <asp:TextBox ID="txtFirstName" runat="server" CssClass="form-control" placeholder="First Name"></asp:TextBox>
                                        <asp:RequiredFieldValidator CssClass="validation_msg" ID="firstNameValidation" runat="server" ControlToValidate="txtFirstName" ErrorMessage="First Name is required" ForeColor="Red"></asp:RequiredFieldValidator>
                                    </div>
                                    <div>
                                        <asp:TextBox ID="txtLastName" runat="server" CssClass="form-control" placeholder="Last Name"></asp:TextBox>
                                        <asp:RequiredFieldValidator CssClass="validation_msg" ID="lastNameValidation" runat="server" ControlToValidate="txtLastName" ErrorMessage="Last  Name is required" ForeColor="Red"></asp:RequiredFieldValidator>
                                    </div>
                                </div>
                                <div class="form-group">
                                    <asp:TextBox ID="txtUserName" runat="server" CssClass="form-control" placeholder="User Name" AutoPostBack="true" OnTextChanged="txtUserName_TextChanged"></asp:TextBox>
                                    <div id="checkUserName" runat="server"  Visible="false">
                                        <asp:Image ID="showingIMg" runat="server" Width="17px" Height="17px"/>
                                        <asp:Label ID="lblusermsg" runat="server"></asp:Label>
                                    </div>
                                    <asp:RequiredFieldValidator CssClass="validation_msg" ID="userNmValidation" runat="server" ControlToValidate="txtUserName" ErrorMessage="User Name is required" ForeColor="Red"></asp:RequiredFieldValidator>
                                </div>
                                <div class="form-group">
                                    <asp:TextBox ID="txtPwd" runat="server" CssClass="form-control" TextMode="Password" placeholder="Enter Password"></asp:TextBox>
                                    <asp:RequiredFieldValidator CssClass="validation_msg" ID="pwdValidation" runat="server" ControlToValidate="txtPwd" ErrorMessage="Password is required" ForeColor="Red"></asp:RequiredFieldValidator>
                                </div>
                                <div class="form-group">
                                    <asp:TextBox ID="txtConfirmPwd" runat="server" CssClass="form-control" TextMode="Password" placeholder="Confirm Password"></asp:TextBox>
                                    <asp:RequiredFieldValidator CssClass="validation_msg" ID="cpwdrqValidation" runat="server" ControlToValidate="txtConfirmPwd" ErrorMessage="Confirm password is required" ForeColor="Red"></asp:RequiredFieldValidator>
                                    <asp:CompareValidator CssClass="validation_msg" ID="cpwdValidation" runat="server" ControlToCompare="txtPwd" ControlToValidate="txtConfirmPwd" ErrorMessage="Password Not Match" ForeColor="Red"></asp:CompareValidator>
                                                            
                                </div>
                                <div class="form-group">
                                    <asp:TextBox ID="txtUserEmail" runat="server" CssClass="form-control"  TextMode="Email" placeholder="E-mail Address"></asp:TextBox>
                                    <asp:RequiredFieldValidator CssClass="validation_msg" ID="emalValidation" runat="server" ControlToValidate="txtUserEmail" ErrorMessage="Email is required" ForeColor="Red"></asp:RequiredFieldValidator>
                                </div>
                                <div class="form-group">
                                    Gender:
                                    <asp:RadioButtonList ID="rdoLstGender" CssClass="rdoListGender" runat="server" RepeatDirection="Horizontal">
                                        <asp:ListItem> Male</asp:ListItem> 
                                        <asp:ListItem> Female</asp:ListItem>
                                    </asp:RadioButtonList>
                                    <asp:RequiredFieldValidator CssClass="validation_msg" ID="gndrValidation" runat="server" ControlToValidate="rdoLstGender" ErrorMessage="Gender is required" ForeColor="Red"></asp:RequiredFieldValidator>
                                </div>
                                <asp:Button ID="submitSignup" CssClass="btn btn-success" runat="server" Text="Sign Up" OnClick="submitSignup_Click" />
                                <input type="reset" value="Reset" class="btn btn-success ml_10"/>
                                <span class="notHaveAcc">Already have an Account? <a data-dismiss="modal" href="#sm_login" data-toggle="modal">Sign in Here</a></span>
                            </div>
                        </ContentTemplate>
                    </asp:UpdatePanel>
                </div>
            </div>
        </div>
    </div>
</asp:Content>
