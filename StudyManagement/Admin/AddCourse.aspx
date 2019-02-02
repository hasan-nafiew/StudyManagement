<%@ Page Title="" Language="C#" MasterPageFile="~/Admin/Admin.Master" AutoEventWireup="true" CodeBehind="AddCourse.aspx.cs" Inherits="StudyManagement.Admin.AddCourse" %>
<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">
    Add New Course
</asp:Content>
<asp:Content ID="Content3" ContentPlaceHolderID="ContentPlaceHolder2" runat="server">
        <div class="row">
            <div class="col-md-offset-2 col-sm-7">
                <div class="panel panel-green">
                    <div class="panel-heading">Add Course Information</div>
                    <div class="panel-body padding_all">
                        <div class="form-group">
                            <asp:TextBox ID="exampleInputCourse" CssClass="form-control" placeholder="Course Name" runat="server"></asp:TextBox>
                        </div>
                        <div class="form-group">
                            <asp:TextBox ID="exampleInputDuration" CssClass="form-control" placeholder="Course Duration" runat="server"></asp:TextBox>
                        </div>

                        <div class="form-group">
                           
                            <asp:TextBox ID="exampleInputQualification" CssClass="form-control" placeholder="Course Qualification" runat="server"></asp:TextBox>
                        </div>

                        <div class="form-group">
                            <asp:TextBox ID="exampleInputFee" CssClass="form-control" placeholder="Total Fee" runat="server"></asp:TextBox>
                        </div>

                        <div class="form-group">
                            <asp:DropDownList ID="exampleInputMethod" CssClass="form-control" placeholder="Fee Method" runat="server">
                                <asp:ListItem>Monthly</asp:ListItem>
                                <asp:ListItem>Quarterly</asp:ListItem>
                                <asp:ListItem>Half-Yearly</asp:ListItem>
                                <asp:ListItem>Yearly</asp:ListItem>
                            </asp:DropDownList>
                        </div>
                        <div class="form-group">
                            <asp:TextBox ID="CourseDescription" TextMode="MultiLine" Rows="3" CssClass="form-control" placeholder="Course Description" runat="server"></asp:TextBox>
                        </div>
                        <div class="form-group">
                            <asp:FileUpload ID="CoursePhoto" runat="server" CssClass="form-control" />
                        </div>
                        <asp:Button ID="btnCourseAdd"  CssClass="btn btn-success" runat="server" Text="Save" OnClick="btnCourseAdd_Click"/>
                        <input id="btnReset" type="reset" value="Reset" class="btn btn-success" />
                    </div>
                </div>
            </div>
        </div>
</asp:Content>
