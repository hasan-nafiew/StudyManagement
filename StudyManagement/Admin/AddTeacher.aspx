<%@ Page Title="" Language="C#" MasterPageFile="~/Admin/Admin.Master" AutoEventWireup="true" CodeBehind="AddTeacher.aspx.cs" Inherits="StudyManagement.Admin.AddTeacher" %>
<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">
    Add New Teacher
</asp:Content>
<asp:Content ID="Content3" ContentPlaceHolderID="ContentPlaceHolder2" runat="server">
   <div class="row">
       <div class="col-md-offset-2 col-sm-8">
           <%--Write Code here with row class--%>
           <div class="panel panel-green">
               <div class="panel-heading">Teacher Information</div>
               <div class="panel-body padding_all">
                       <div class="form-group">
                           <asp:TextBox ID="txtTeacherName" CssClass="form-control" placeholder="Teacher Name" runat="server"></asp:TextBox>
                       </div>
                       <div class="form-group">
                           <asp:TextBox ID="txtTeacherAddress"  CssClass="form-control" placeholder="Address" TextMode="multiline" Rows="4" runat="server"></asp:TextBox>
                       </div>

                       <div class="form-group">
                           <asp:TextBox ID="txtTeacherDegree"  CssClass="form-control" placeholder="Degree" runat="server"></asp:TextBox>
                       </div>

                       <div class="form-group">
                           <asp:TextBox  ID="txtTeacherEducationalInstitute" CssClass="form-control" placeholder="Educational Institute" runat="server"></asp:TextBox>
                       </div>

                       <div class="form-group">
                           <label>Gender</label>
                           <asp:RadioButtonList ID="rdlGender" runat="server" RepeatDirection="Horizontal">
                               <asp:ListItem>Male</asp:ListItem>
                               <asp:ListItem>Female</asp:ListItem>
                               <asp:ListItem>Other</asp:ListItem>
                           </asp:RadioButtonList>
                       </div>
                       <div class="form-group">
                           <asp:TextBox ID="txtDesignation" CssClass="form-control" placeholder="Designation" runat="server"></asp:TextBox>
                       </div>

                       <div class="form-group">
                           <asp:TextBox ID="txtDepartment" CssClass="form-control" placeholder="Department" runat="server"></asp:TextBox>
                       </div>

                       <div class="form-group">
                           <label>Date of Birth</label>
                           <asp:TextBox ID="txtDateOfBirth" CssClass="form-control" runat="server" TextMode="Date"></asp:TextBox>
                       </div>

                       <div class="form-group">
                           <asp:TextBox ID="txtSpeciality" CssClass="form-control" placeholder="Speciality" runat="server"></asp:TextBox>
                       </div>

                       <div class="form-group">
                           <asp:DropDownList ID="ddlWorkingTime" runat="server" CssClass="form-control">
                               <asp:ListItem>-- Select Working Time --</asp:ListItem>
                               <asp:ListItem>Morning</asp:ListItem>
                               <asp:ListItem>Evening</asp:ListItem>
                               <asp:ListItem>Weekly</asp:ListItem>
                               <asp:ListItem>Only Weekend</asp:ListItem>
                               <asp:ListItem>Other</asp:ListItem>
                           </asp:DropDownList>
                       </div>
                       <div class="form-group">
                           <label>Photo</label>
                           <asp:FileUpload ID="FileUpload1" CssClass="form-control" runat="server" />
                       </div>
                       <asp:Button ID="btnAddTeacher"  class="btn btn-success" runat="server" Text="Save" OnClick="btnAddTeacher_Click"/>
                      <input id="btnReset" type="reset" value="Reset" class="btn btn-success" />
               </div>
           </div>
       </div>
   </div>
</asp:Content>
