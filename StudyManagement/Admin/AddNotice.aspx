<%@ Page Title="" Language="C#" MasterPageFile="~/Admin/Admin.Master" AutoEventWireup="true" CodeBehind="AddNotice.aspx.cs" Inherits="StudyManagement.Admin.AddNotice" %>
<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">
    Add Notice
</asp:Content>
<asp:Content ID="Content3" ContentPlaceHolderID="ContentPlaceHolder2" runat="server">
    <div class="row">
        <div class="col-md-offset-2 col-sm-7">
            <div class="panel panel-green">
                <div class="panel-heading">Add Notice</div>
                <div class="panel-body padding_all">
                    <div class="form-group">
                        <asp:TextBox ID="exampleInputNBoard" CssClass="form-control" TextMode="multiline" Rows="4" placeholder="notice board" runat="server"></asp:TextBox>
                    </div>
                    <div class="form-group">
                        <asp:TextBox ID="exampleInputDate" placeholder="Notice Date" runat="server" CssClass="form-control" TextMode="Date"></asp:TextBox>
                    </div>

                    <asp:Button ID="btnNoticeAdd"  CssClass="btn btn-primary btn-success" runat="server" Text="Save" OnClick="btnNoticeAdd_Click"/>
                    <input id="btnReset" type="reset" value="Reset" class="btn btn-success" />
                </div>
            </div>
        </div>
    </div>
</asp:Content>
