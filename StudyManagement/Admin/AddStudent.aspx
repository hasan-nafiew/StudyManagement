<%@ Page Title="" Language="C#" MasterPageFile="~/Admin/Admin.Master" AutoEventWireup="true" CodeBehind="AddStudent.aspx.cs" Inherits="StudyManagement.Admin.AddStudent" %>
<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">
    Add New Student
</asp:Content>
<asp:Content ID="Content3" ContentPlaceHolderID="ContentPlaceHolder2" runat="server">
    <div class="row">
        <div class="col-md-offset-2 col-sm-8">
            <div class="panel panel-green">
                <div class="panel-heading">Student Information</div>
                <div class="panel-body padding_all">
                    <div class="form-group">
                        <asp:TextBox ID="txtStFirstName" CssClass="form-control" placeholder="First Name" runat="server"></asp:TextBox>
                    </div>
                    <div class="form-group">
                        <asp:TextBox ID="txtStLastName" CssClass="form-control" placeholder="Last Name" runat="server"></asp:TextBox>
                    </div>
                    <div class="form-group">
                        <asp:TextBox ID="txtStUserName" CssClass="form-control" placeholder="User Name" runat="server"></asp:TextBox>
                    </div>
                    <div class="form-group">
                        <asp:TextBox ID="txtStPwd" CssClass="form-control" placeholder="Password" runat="server" type="password"></asp:TextBox>
                    </div>
                    <div class="form-group">
                        <label>Gender</label>
                        <asp:RadioButtonList ID="rblGender" CssClass="rdoListGender" runat="server" RepeatDirection="Horizontal">
                            <asp:ListItem> Male</asp:ListItem> 
                            <asp:ListItem> Female</asp:ListItem>
                            <asp:ListItem> Other</asp:ListItem>
                        </asp:RadioButtonList>
                    </div>

                    <div class="form-group">
                        <asp:TextBox ID="txtStEmail" runat="server" TextMode="Email" placeholder="Email" CssClass="form-control"></asp:TextBox>
                    </div>
                    <div class="form-group">
                        <asp:TextBox ID="txtStUniversityName" CssClass="form-control" placeholder="University Name" runat="server"></asp:TextBox>
                    </div>

                    <div class="form-group">
                        <asp:DropDownList ID="ddlProgramName" runat="server" CssClass="form-control">
                            <asp:ListItem>-- Select Program --</asp:ListItem>
                            <asp:ListItem>Graduate</asp:ListItem>
                            <asp:ListItem>Post-Graduate</asp:ListItem>
                        </asp:DropDownList>
                    </div>
                    <div class="form-group">
                        <asp:TextBox ID="txtDepartMent" runat="server" CssClass="form-control" placeholder="Department Name"></asp:TextBox>
                    </div>
                    <div class="form-group">
                        <asp:TextBox ID="txtStPhoneNo" CssClass="form-control"  placeholder="Phone Number" runat="server"></asp:TextBox>
                    </div>
                    
                    <div class="form-group">
                        <label>Date of Birth</label>
                        <asp:TextBox ID="txtStDateOfBath" CssClass="form-control" runat="server" TextMode="Date"></asp:TextBox>
                    </div>
                    <div class="form-group">
                        <asp:DropDownList ID="ddlMaritalStatus" runat="server" CssClass="form-control">
                            <asp:ListItem>-- Select Marital Status --</asp:ListItem>
                            <asp:ListItem>Single</asp:ListItem>
                            <asp:ListItem>Married</asp:ListItem>
                            <asp:ListItem>Unmarried</asp:ListItem>
                        </asp:DropDownList>
                    </div>
                    <div class="form-group">
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
                    </div>
                    <div class="form-group">
                        <asp:DropDownList ID="ddlReligion" runat="server" CssClass="form-control">
                            <asp:ListItem>-- Select Religion --</asp:ListItem>
                            <asp:ListItem>Islam</asp:ListItem>
                            <asp:ListItem>Hinduism</asp:ListItem>
                            <asp:ListItem>Christanity</asp:ListItem>
                            <asp:ListItem>Buddhism</asp:ListItem>
                            <asp:ListItem>Others</asp:ListItem>
                        </asp:DropDownList>
                    </div>
                    <div class="form-group">
                        <asp:TextBox ID="txtNationality" runat="server" CssClass="form-control" placeholder="Nationality"></asp:TextBox>
                    </div>
                    <div class="form-group">
                        <asp:TextBox ID="txtStAddress" runat="server" CssClass="form-control" TextMode="MultiLine" Rows="3" placeholder="Your Present Address"></asp:TextBox>
                    </div>

                    <div class="form-group">
                        <label>Upload Photo</label>
                        <asp:FileUpload ID="studentPhoto" runat="server" CssClass="form-control" />
                    </div>
                        
                    <asp:Button ID="btnStudentAdd"  CssClass="btn btn-success" runat="server" Text="Save" OnClick="btnStudentAdd_Click"/>
                    <input id="btnReset" type="reset" value="Reset" class="btn btn-success" />
                </div>
            </div>
        </div>
    </div>
</asp:Content>
