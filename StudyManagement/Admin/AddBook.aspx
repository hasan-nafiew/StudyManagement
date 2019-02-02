<%@ Page Title="" Language="C#" MasterPageFile="~/Admin/Admin.Master" AutoEventWireup="true" CodeBehind="AddBook.aspx.cs" Inherits="StudyManagement.Admin.AddBook" %>
<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">
    Add New Book
</asp:Content>
<asp:Content ID="Content3" ContentPlaceHolderID="ContentPlaceHolder2" runat="server">
    <div class="row">
        <div class=""></div>
        <div class="col-md-offset-2 col-sm-7">
            <div class="panel panel-green">
                <div class="panel-heading">Book Information</div>
                <div class="panel-body padding_all">
                    <div class="form-group">
                       
                        <asp:TextBox ID="txtBookName" CssClass="form-control" placeholder="Book Name" runat="server"></asp:TextBox>
                    </div>
                    <div class="form-group">
                        <asp:TextBox ID="txtBookAuthor" CssClass="form-control" placeholder="Book Author" runat="server"></asp:TextBox>
                    </div>

                    <div class="form-group">
                        <asp:TextBox ID="txtBookCost" CssClass="form-control" placeholder="Book Cost" runat="server"></asp:TextBox>
                    </div>
                    <div class="form-group">
                        <asp:FileUpload ID="bookPhoto" runat="server" CssClass="form-control" />
                    </div>
                    <asp:Button ID="btnBookAdd"  CssClass="btn btn-primary btn-success" runat="server" Text="Save" OnClick="btnBookAdd_Click"/>
                    <input id="btnReset" type="reset" value="Reset" class="btn btn-success" />
                </div>
            </div>
        </div>
    </div>
</asp:Content>
