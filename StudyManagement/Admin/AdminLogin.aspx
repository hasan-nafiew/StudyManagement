<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="AdminLogin.aspx.cs" Inherits="StudyManagement.Admin.pages.AdminLogin" %>

<!DOCTYPE html>
<html lang="en">
<head runat="server">
    <link rel="shortcut icon" href="~/images/fav.png" type="jpg/png" />
    <title>Study Management Admin Panel</title>
    <link href="../css/bootstrap.min.css" rel="stylesheet" />
    <link href="css/sb-admin-2.min.css" rel="stylesheet" />
    <link href="css/Style_admin.css" rel="stylesheet" />
</head>
<body style="background-color: #ffffff;">
        <div class="admin_login_page">
            <div class="container">
                <div class="row">
                    <div class="col-md-4 col-md-offset-4">
                        <div class="login-panel panel panel-green">
                            <div class="panel-heading">
                                <h3 class="panel-title">Admin</h3>
                            </div>
                            <div class="panel-body">
                                <form id="formAdmin" runat="server" DefaultFocus="txtAdminUName">
                                    <fieldset>
                                        <asp:Label ID="lblunSuccessMsg" CssClass="unsuccess_msg" runat="server"></asp:Label>
                                        <br />
                                        <div class="form-group form-group-lg">
                                            <asp:TextBox ID="txtAdminUName" runat="server" CssClass="form-control" placeholder="User Name"></asp:TextBox>
                                        </div>
                                        <div class="form-group form-group-lg">
                                            <asp:TextBox ID="txtAdminPwd" runat="server" CssClass="form-control" placeholder="Password" TextMode="Password"></asp:TextBox>
                                        </div>
                                        <div class="checkbox">
                                            <label>
                                                <asp:CheckBox ID="admin_checkbox" runat="server" />Remember Me
                                            </label>
                                        </div>
                                        <!-- Change this to a button or input when using this as a form -->
                                        <asp:Button ID="btnAdminLogin" CssClass="btn btn-lg btn-success btn-block" runat="server" Text="Login" OnClick="btnAdminLogin_Click"  />
                                    </fieldset>
                                </form>
                            </div>
                        </div>
                    </div>
                </div>
            </div>
        </div>
    </body>
   </html>
