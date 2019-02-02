<%@ Page Title="" Language="C#" MasterPageFile="~/Admin/Admin.Master" AutoEventWireup="true" CodeBehind="AddStaff.aspx.cs" Inherits="StudyManagement.Admin.AddStalff" %>
<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">
    Add New Staff
</asp:Content>
<asp:Content ID="Content3" ContentPlaceHolderID="ContentPlaceHolder2" runat="server">
    <div class="row">
        <div class="col-md-offset-2 col-sm-8">
            <div class="panel panel-green">
                <div class="panel-heading">Add Staff Information</div>
                <div class="panel-body padding_all">
                    <div class="form-group">
                        <asp:TextBox ID="txtStaffName" CssClass="form-control" placeholder="Staff Name" runat="server"></asp:TextBox>
                    </div>
                    <div class="form-group">
                        <asp:TextBox ID="txtStaffQualification" CssClass="form-control" placeholder="Qualification" runat="server"></asp:TextBox>
                    </div>

                    <div class="form-group">
                        <asp:TextBox ID="txtStaffPost" CssClass="form-control" placeholder="Position" runat="server"></asp:TextBox>
                    </div>
                    <div class="form-group">
                        <label>Birth Date</label>
                        <asp:TextBox ID="txtStaffDoB" CssClass="form-control" runat="server" TextMode="Date"></asp:TextBox>
                    </div>
                    <div class="form-group">
                        <asp:TextBox ID="txtStaffPhone" CssClass="form-control" placeholder="Phone Number" runat="server"></asp:TextBox>
                    </div>            
                    <div class="form-group">
                        <asp:TextBox ID="txtStaffAddress" CssClass="form-control" TextMode="multiline" Columns="50" Rows="5" placeholder="Address" runat="server"></asp:TextBox>
                    </div>
                    <div class="form-group">
                        <asp:TextBox ID="txtStaffSalary" CssClass="form-control" placeholder="Salary" runat="server"></asp:TextBox>
                    </div>

                    <div class="form-group">
                        <label>Joining Date</label>
                        <asp:TextBox ID="txtStaffJoDate" CssClass="form-control" runat="server" TextMode="Date"></asp:TextBox>
                    </div>

                    <div class="form-group">
                        <asp:FileUpload ID="staffPhoto" runat="server" CssClass="form-control"/>
                    </div>
                    <asp:Button ID="btnStaffAdd"  CssClass="btn btn-primary btn-success" runat="server" Text="Save" OnClick="btnStaffAdd_Click"/>
                    <input id="btnReset" type="reset" value="Reset" class="btn btn-success" />
                </div>
            </div>
        </div>
    </div>
</asp:Content>
