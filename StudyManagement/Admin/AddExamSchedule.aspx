<%@ Page Title="" Language="C#" MasterPageFile="~/Admin/Admin.Master" AutoEventWireup="true" CodeBehind="AddExamSchedule.aspx.cs" Inherits="StudyManagement.Admin.AddExamSchedule" %>
<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">
    Add New Exam Schedule
</asp:Content>
<asp:Content ID="Content3" ContentPlaceHolderID="ContentPlaceHolder2" runat="server">
    <div class="row">
        <div class="col-md-offset-2 col-sm-7">
            <div class="panel panel-green">
                <div class="panel-heading">Exam Schedule</div>
                <div class="panel-body padding_all">
                    <div class="form-group">
                        <asp:TextBox ID="exampleInputName" CssClass="form-control" placeholder="Exam Description" TextMode="MultiLine" Rows="3" runat="server"></asp:TextBox>
                    </div>
                    <div class="form-group">
                        <asp:DropDownList ID="exampleInputCourse" CssClass="form-control" placeholder="Course Name" runat="server">
                            <asp:ListItem>-- Select Course --</asp:ListItem>
                            <asp:ListItem>Java</asp:ListItem>
                            <asp:ListItem>DotNet</asp:ListItem>
                            <asp:ListItem>PHP</asp:ListItem>
                            <asp:ListItem>C#</asp:ListItem>
                            <asp:ListItem>Python</asp:ListItem>
                            <asp:ListItem>Web Development</asp:ListItem>
                            <asp:ListItem>Web Design </asp:ListItem>
                            <asp:ListItem>Degital Marketing </asp:ListItem>
                        </asp:DropDownList> 
                    </div>
                    <div class="form-group">
                        <asp:TextBox ID="exampleInputTime" CssClass="form-control" runat="server" TextMode="Time"></asp:TextBox>
                    </div>

                    <div class="form-group">
                        <asp:TextBox ID="exampleInputDate" runat="server" CssClass="form-control" TextMode="Date"></asp:TextBox>
                    </div>
                    <asp:Button ID="btnExmSchedule"  CssClass="btn btn-primary btn-success" runat="server" Text="Save" OnClick="btnExmSchedule_Click"/>
                    <input id="btnReset" type="reset" value="Reset" class="btn btn-success" />
                </div>
            </div>
        </div>
    </div>
</asp:Content>
