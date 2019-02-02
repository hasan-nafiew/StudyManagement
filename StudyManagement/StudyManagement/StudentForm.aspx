<%@ Page Title="" Language="C#" MasterPageFile="~/StudyManagement/studyManagement.Master" AutoEventWireup="true" CodeBehind="StudentForm.aspx.cs" Inherits="StudyManagement.StudyManagement.StudentForm" %>
<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">
    <!-- second banner -->
    <div class="banner_2_parallax">
        <div class="banner_overlay">
            <div class="container">
                <div class="banner_2_content">
                    <h1 class="text_white">Welcome <asp:Label ID="login_status" CssClass="login_status_msg" runat="server"></asp:Label> <asp:Label ID="login_status1" CssClass="login_status_msg" runat="server"></asp:Label></h1>
                </div>
            </div>
        </div>
    </div> <!-- //second banner -->
    <div class="student_form padding_top_bottom">
        <div class="container">
            <div class="row">
                <div class="col-md-1"></div>
                <div class="col-xs-12 col-sm-12 col-md-10">
                    <div class="panel panel-default">
                        <div class="panel-heading">Student Information</div>
                        <div class="panel-body">
                            <table class="table table-responsive">
                                <tr>
                                    <td>
                                        <asp:Label ID="lblNameUniversity" runat="server" Text="Name of University">Name of University <strong>*</strong></asp:Label>
                                    </td>
                                    <td class="form-group">
                                        <asp:TextBox ID="txtNameUniversity" runat="server" CssClass="form-control"></asp:TextBox>
                                        <asp:RequiredFieldValidator CssClass="validation_msg" ID="UniversityNmValidation" runat="server" ControlToValidate="txtNameUniversity" ErrorMessage="Enter your university name" ForeColor="Red"></asp:RequiredFieldValidator>
                                    </td>
                                </tr>
                                <tr>
                                    <td>
                                        <asp:Label ID="lblProgramName" runat="server" Text="Program">Program <strong>*</strong></asp:Label>
                                    </td>
                                    <td class="form-group">
                                        <asp:DropDownList ID="ddlProgramName" runat="server" CssClass="form-control">
                                            <asp:ListItem>-- Select Program --</asp:ListItem>
                                            <asp:ListItem>Graduate</asp:ListItem>
                                            <asp:ListItem>Post-Graduate</asp:ListItem>
                                        </asp:DropDownList>
                                        <asp:RequiredFieldValidator CssClass="validation_msg" ID="addressValidation" runat="server" ControlToValidate="ddlProgramName" ErrorMessage="Enter your Address" ForeColor="Red"></asp:RequiredFieldValidator>
                                    </td>
                                </tr>
                                <tr>
                                    <td>
                                        <asp:Label ID="lblDepartMent" runat="server" Text="Department">Department <strong>*</strong></asp:Label>
                                    </td>
                                    <td class="form-group">
                                        <asp:TextBox ID="txtDepartMent" runat="server" CssClass="form-control"></asp:TextBox>
                                        <asp:RequiredFieldValidator CssClass="validation_msg" ID="dprtmntValidation" runat="server" ControlToValidate="txtDepartMent" ErrorMessage="Enter Department Name" ForeColor="Red"></asp:RequiredFieldValidator>
                                    </td>
                                </tr>
                                <tr>
                                    <td>
                                        <asp:Label ID="lblNumber" runat="server" Text="Phone Number">Phone Number <strong>*</strong></asp:Label>
                                    </td>
                                    <td class="form-group">
                                        <asp:TextBox ID="txtNumber" runat="server" CssClass="form-control"></asp:TextBox>
                                        <asp:RequiredFieldValidator CssClass="validation_msg" ID="pnumberValidation" runat="server" ControlToValidate="txtNumber" ErrorMessage="Enter your phone number" ForeColor="Red"></asp:RequiredFieldValidator>
                                    </td>
                                </tr>
                                <tr>
                                    <td>
                                        <asp:Label ID="lblstdAltEmail" runat="server" Text="Alternative E-mail"></asp:Label>
                                    </td>
                                    <td class="form-group">
                                        <asp:TextBox ID="stdAltEmail" runat="server" TextMode="Email" CssClass="form-control"></asp:TextBox>
                                    </td>
                                </tr>
                                <tr>
                                    <td>
                                        <asp:Label ID="lblMeritalSts" runat="server" Text="Marital Status">Marital Status <strong>*</strong></asp:Label>
                                    </td>
                                    <td class="form-group">
                                    
                                        <asp:TextBox ID="txtMeritalSts" runat="server" CssClass="form-control"></asp:TextBox>
                                        <asp:RequiredFieldValidator CssClass="validation_msg" ID="maritalStsValidation" runat="server" ControlToValidate="txtMeritalSts" ErrorMessage="Enter marital status" ForeColor="Red"></asp:RequiredFieldValidator>
                                    </td>
                                </tr>
                                <tr>
                                    <td>
                                        <asp:Label ID="lblBloodGrp" runat="server" Text="Blood Group "></asp:Label>
                                    </td>
                                    <td class="form-group">
                                        <asp:DropDownList ID="ddlBloodGrp" runat="server" CssClass="form-control">
                                            <asp:ListItem>-- Select Blood Group --</asp:ListItem>
                                            <asp:ListItem>A+</asp:ListItem>
                                            <asp:ListItem>A-</asp:ListItem>
                                            <asp:ListItem>B+</asp:ListItem>
                                            <asp:ListItem>B-</asp:ListItem>
                                            <asp:ListItem>O+</asp:ListItem>
                                            <asp:ListItem>O-</asp:ListItem>
                                            <asp:ListItem>AB+</asp:ListItem>
                                            <asp:ListItem>AB-</asp:ListItem>
                                        </asp:DropDownList>
                                    </td>
                                </tr>
                                <tr>
                                    <td>
                                        <asp:Label ID="lblReligion" runat="server" Text="Religion">Religion <strong>*</strong></asp:Label>
                                    </td>
                                    <td class="form-group">
                                        <asp:TextBox ID="stdReligion" runat="server" CssClass="form-control"></asp:TextBox>
                                        <asp:RequiredFieldValidator CssClass="validation_msg" ID="religionValidation" runat="server" ControlToValidate="stdReligion" ErrorMessage="Enter your Religion" ForeColor="Red"></asp:RequiredFieldValidator>
                                    </td>
                                </tr>
                                <tr>
                                    <td>
                                        <asp:Label ID="lblNationality" runat="server" Text="Nationality">Nationality <strong>*</strong></asp:Label>
                                    </td>
                                    <td class="form-group">
                                        <asp:TextBox ID="txtNationality" runat="server" CssClass="form-control"></asp:TextBox>
                                        <asp:RequiredFieldValidator CssClass="validation_msg" ID="ntionalityVaidation" runat="server" ControlToValidate="txtNationality" ErrorMessage="Nationality" ForeColor="Red"></asp:RequiredFieldValidator>
                                    </td>
                                </tr>
                                <tr>
                                    <td>
                                        <asp:Label ID="lblStdAddress" runat="server" Text="Present Address">Present Address <strong>*</strong></asp:Label>
                                    </td>
                                    <td class="form-group">
                                        <asp:TextBox ID="txtstdntAddress" runat="server" CssClass="form-control" TextMode="MultiLine" Rows="3" placeholder="Your Present Address"></asp:TextBox>
                                        <asp:RequiredFieldValidator CssClass="validation_msg" ID="addrsValidation" runat="server" ControlToValidate="txtstdntAddress" ErrorMessage="Enter your Address" ForeColor="Red"></asp:RequiredFieldValidator>
                                    </td>
                                </tr>
                                <tr>
                                    <td>
                                        <asp:Label ID="lblStdPhoto" runat="server" Text="Upload Photo"></asp:Label>
                                    </td>
                                    <td class="form-group">
                                        <asp:FileUpload ID="upStdPhoto" runat="server" CssClass="form-control h_auto" />
                                    </td>
                                </tr>
                                <tr>
                                    <td></td>
                                    <td>
                                        <asp:Button ID="btnStudentAdd"  CssClass="btn btn-success" runat="server" Text="Save"/>
                                        <input id="btnReset" type="reset" value="Reset" class="btn btn-success" />
                                    </td>
                                </tr>
                            </table>
                        </div>
                    </div>
                </div>
                
            </div>
        </div>
    </div>
</asp:Content>
