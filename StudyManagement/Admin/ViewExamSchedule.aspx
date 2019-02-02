<%@ Page Title="" Language="C#" MasterPageFile="~/Admin/Admin.Master" AutoEventWireup="true" CodeBehind="ViewExamSchedule.aspx.cs" Inherits="StudyManagement.Admin.ViewExamSchedule" %>
<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">
</asp:Content>
<asp:Content ID="Content3" ContentPlaceHolderID="ContentPlaceHolder2" runat="server">
    <asp:GridView ID="gvViewExamShedule" runat="server" AutoGenerateColumns="False" BackColor="LightGoldenrodYellow" BorderColor="Tan" BorderWidth="1px" CellPadding="2" DataKeyNames="ExamId" DataSourceID="SqlDataSource1" ForeColor="Black" GridLines="None">
        <AlternatingRowStyle BackColor="PaleGoldenrod" />
        <Columns>
            <asp:BoundField DataField="ExamId" HeaderText="ExamId" InsertVisible="False" ReadOnly="True" SortExpression="ExamId" />
            <asp:BoundField DataField="ExamName" HeaderText="ExamName" SortExpression="ExamName" />
            <asp:BoundField DataField="CourseName" HeaderText="CourseName" SortExpression="CourseName" />
            <asp:BoundField DataField="Time" HeaderText="Time" SortExpression="Time" />
            <asp:BoundField DataField="Date" HeaderText="Date" SortExpression="Date" />
            <asp:CommandField HeaderText="Eidit,Update" ShowEditButton="True" />
            <asp:CommandField HeaderText="Delete" ShowDeleteButton="True" />
        </Columns>
        <FooterStyle BackColor="Tan" />
        <HeaderStyle BackColor="Tan" Font-Bold="True" />
        <PagerStyle BackColor="PaleGoldenrod" ForeColor="DarkSlateBlue" HorizontalAlign="Center" />
        <SelectedRowStyle BackColor="DarkSlateBlue" ForeColor="GhostWhite" />
        <SortedAscendingCellStyle BackColor="#FAFAE7" />
        <SortedAscendingHeaderStyle BackColor="#DAC09E" />
        <SortedDescendingCellStyle BackColor="#E1DB9C" />
        <SortedDescendingHeaderStyle BackColor="#C2A47B" />
    </asp:GridView>
    <asp:SqlDataSource ID="SqlDataSource1" runat="server" ConnectionString="<%$ ConnectionStrings:DbConnection %>" DeleteCommand="DELETE FROM [STUDYEXAMINFO] WHERE [ExamId] = @ExamId" InsertCommand="INSERT INTO [STUDYEXAMINFO] ([ExamName], [CourseName], [Time], [Date]) VALUES (@ExamName, @CourseName, @Time, @Date)" SelectCommand="SELECT * FROM [STUDYEXAMINFO]" UpdateCommand="UPDATE [STUDYEXAMINFO] SET [ExamName] = @ExamName, [CourseName] = @CourseName, [Time] = @Time, [Date] = @Date WHERE [ExamId] = @ExamId">
        <DeleteParameters>
            <asp:Parameter Name="ExamId" Type="Int32" />
        </DeleteParameters>
        <InsertParameters>
            <asp:Parameter Name="ExamName" Type="String" />
            <asp:Parameter Name="CourseName" Type="String" />
            <asp:Parameter DbType="Time" Name="Time" />
            <asp:Parameter DbType="Date" Name="Date" />
        </InsertParameters>
        <UpdateParameters>
            <asp:Parameter Name="ExamName" Type="String" />
            <asp:Parameter Name="CourseName" Type="String" />
            <asp:Parameter DbType="Time" Name="Time" />
            <asp:Parameter DbType="Date" Name="Date" />
            <asp:Parameter Name="ExamId" Type="Int32" />
        </UpdateParameters>
    </asp:SqlDataSource>
</asp:Content>
