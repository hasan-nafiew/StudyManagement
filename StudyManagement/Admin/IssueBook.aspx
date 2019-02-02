<%@ Page Title="" Language="C#" MasterPageFile="~/Admin/Admin.Master" AutoEventWireup="true" CodeBehind="IssueBook.aspx.cs" Inherits="StudyManagement.Admin.IssueBook" %>
<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">
    Issue Book
</asp:Content>
<asp:Content ID="Content3" ContentPlaceHolderID="ContentPlaceHolder2" runat="server">
    <div class="row">
        <div class="col-md-offset-2 col-sm-8">
            <div class="panel panel-green">
                <div class="panel-heading">Issue Book</div>
                <div class="panel-body padding_all">
                    <div class="form-group">
                        <asp:TextBox ID="exampleInputStudentName" CssClass="form-control" placeholder="Student Name" runat="server"></asp:TextBox>
                    </div>
                    <div class="form-group">
                        <asp:TextBox ID="exampleInputID" class="form-control" placeholder="Student ID" runat="server"></asp:TextBox>
                    </div>
                    <div class="form-group">
                        <asp:TextBox ID="exampleInputNumber" CssClass="form-control" placeholder="Phone Number" runat="server"></asp:TextBox>
                    </div>
                    <div class="form-group">
                        <asp:TextBox ID="exampleInputBookName" CssClass="form-control" placeholder="Book Name" runat="server"></asp:TextBox>
                    </div>
                    <div class="form-group">
                        <asp:DropDownList ID="exampleInputAuthorNm" class="form-control" runat="server">
                            <asp:ListItem>-- Author Name --</asp:ListItem>
                            <asp:ListItem>Kamal Prathap</asp:ListItem>
                            <asp:ListItem>Rakib</asp:ListItem>
                            <asp:ListItem>Hasan ali</asp:ListItem>
                            <asp:ListItem>Al Fahad</asp:ListItem>
                        </asp:DropDownList>
                    </div>
                    <div class="radio-inline">
                        <label>Data Issue or Not</label>
                        <asp:RadioButtonList ID="rdoIssueOrNot" runat="server">
                            <asp:ListItem>Issue</asp:ListItem>
                            <asp:ListItem>Not</asp:ListItem>
                        </asp:RadioButtonList>
                    </div>

                    <div class="form-group">
                        <label>Issue Date</label>
                        <asp:TextBox ID="exampleInputIssueDate" CssClass="form-control" runat="server" TextMode="Date"></asp:TextBox>
                    </div>
                    <div class="form-group">
                        <label>Return Date</label>
                        <asp:TextBox ID="exampleInputRDate" CssClass="form-control" runat="server" TextMode="Date"></asp:TextBox>
                    </div>
                    <div class="form-group">
                        <asp:TextBox ID="exampleInputBookCost" CssClass="form-control" placeholder="Book Cost" runat="server"></asp:TextBox>
                    </div>

                    <asp:Button ID="btnIssueBook"  CssClass="btn btn-success" runat="server" Text="Save" OnClick="btnIssueBook_Click"/>
                </div>
            </div>
        </div>
    </div>
</asp:Content>
