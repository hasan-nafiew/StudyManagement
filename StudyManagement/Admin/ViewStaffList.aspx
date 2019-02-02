<%@ Page Title="" Language="C#" MasterPageFile="~/Admin/Admin.Master" AutoEventWireup="true" CodeBehind="ViewStaffList.aspx.cs" Inherits="StudyManagement.Admin.ViewStaffList" %>
<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">
    All Staffs
</asp:Content>
<asp:Content ID="Content3" ContentPlaceHolderID="ContentPlaceHolder2" runat="server">
    <%--Write Code here with row class--%>
    <asp:GridView ID="gvViewStaff" runat="server" DataSourceID="SqlDataSource1" DataKeyNames="STAFFID" AutoGenerateColumns="False">
        <Columns>
            <asp:TemplateField HeaderText="STAFFID" InsertVisible="False" SortExpression="STAFFID">
                <EditItemTemplate>
                    <asp:Label ID="Label1" runat="server" Text='<%# Eval("STAFFID") %>'></asp:Label>
                </EditItemTemplate>
                <ItemTemplate>
                    <asp:Label ID="Label1" runat="server" Text='<%# Bind("STAFFID") %>'></asp:Label>
                </ItemTemplate>
            </asp:TemplateField>
            <asp:BoundField DataField="STAFFNAME" HeaderText="STAFFNAME" SortExpression="STAFFNAME" />
            <asp:BoundField DataField="POST" HeaderText="POST" SortExpression="POST" />
            <asp:BoundField DataField="STAFFADDRESS" HeaderText="STAFFADDRESS" SortExpression="STAFFADDRESS" />
            <asp:CommandField HeaderText="Details" ShowSelectButton="True" />
        </Columns>
    </asp:GridView>
    <asp:DetailsView ID="dvViewStaff" runat="server" Height="50px" Width="125px" AutoGenerateRows="False" DataKeyNames="STAFFID" DataSourceID="SqlDataSource2" OnItemDeleted="dvViewStaff_ItemDeleted" OnItemInserted="dvViewStaff_ItemInserted" OnItemUpdated="dvViewStaff_ItemUpdated">
        <Fields>
            <asp:BoundField DataField="STAFFID" HeaderText="STAFFID" InsertVisible="False" ReadOnly="True" SortExpression="STAFFID" />
            <asp:BoundField DataField="STAFFNAME" HeaderText="STAFFNAME" SortExpression="STAFFNAME" />
            <asp:BoundField DataField="QUALIFICATION" HeaderText="QUALIFICATION" SortExpression="QUALIFICATION" />
            <asp:BoundField DataField="POST" HeaderText="POST" SortExpression="POST" />
            <asp:BoundField DataField="STAFFDATEBIRTH" HeaderText="STAFFDATEBIRTH" SortExpression="STAFFDATEBIRTH" />
            <asp:BoundField DataField="PHONE" HeaderText="PHONE" SortExpression="PHONE" />
            <asp:BoundField DataField="STAFFADDRESS" HeaderText="STAFFADDRESS" SortExpression="STAFFADDRESS" />
            <asp:BoundField DataField="SALARY" HeaderText="SALARY" SortExpression="SALARY" />
            <asp:BoundField DataField="JOINDATE" HeaderText="JOINDATE" SortExpression="JOINDATE" />
            <asp:BoundField DataField="STAFFPHOTO" HeaderText="STAFFPHOTO" SortExpression="STAFFPHOTO" />
            <asp:CommandField ShowDeleteButton="True" ShowEditButton="True" ShowInsertButton="True" />
        </Fields>
    </asp:DetailsView>
    <asp:SqlDataSource ID="SqlDataSource1" runat="server" ConnectionString="<%$ ConnectionStrings:DbConnection %>" SelectCommand="SELECT [STAFFID], [STAFFNAME], [POST], [STAFFADDRESS] FROM [STUDYADDSTAFF]"></asp:SqlDataSource>
    <asp:SqlDataSource ID="SqlDataSource2" runat="server" ConnectionString="<%$ ConnectionStrings:DbConnection %>" DeleteCommand="DELETE FROM [STUDYADDSTAFF] WHERE [STAFFID] = @STAFFID" InsertCommand="INSERT INTO [STUDYADDSTAFF] ([STAFFNAME], [QUALIFICATION], [POST], [STAFFDATEBIRTH], [PHONE], [STAFFADDRESS], [SALARY], [JOINDATE], [STAFFPHOTO]) VALUES (@STAFFNAME, @QUALIFICATION, @POST, @STAFFDATEBIRTH, @PHONE, @STAFFADDRESS, @SALARY, @JOINDATE, @STAFFPHOTO)" SelectCommand="SELECT * FROM [STUDYADDSTAFF] WHERE ([STAFFID] = @STAFFID)" UpdateCommand="UPDATE [STUDYADDSTAFF] SET [STAFFNAME] = @STAFFNAME, [QUALIFICATION] = @QUALIFICATION, [POST] = @POST, [STAFFDATEBIRTH] = @STAFFDATEBIRTH, [PHONE] = @PHONE, [STAFFADDRESS] = @STAFFADDRESS, [SALARY] = @SALARY, [JOINDATE] = @JOINDATE, [STAFFPHOTO] = @STAFFPHOTO WHERE [STAFFID] = @STAFFID">
        <DeleteParameters>
            <asp:Parameter Name="STAFFID" Type="Int32" />
        </DeleteParameters>
        <InsertParameters>
            <asp:Parameter Name="STAFFNAME" Type="String" />
            <asp:Parameter Name="QUALIFICATION" Type="String" />
            <asp:Parameter Name="POST" Type="String" />
            <asp:Parameter DbType="Date" Name="STAFFDATEBIRTH" />
            <asp:Parameter Name="PHONE" Type="Int32" />
            <asp:Parameter Name="STAFFADDRESS" Type="String" />
            <asp:Parameter Name="SALARY" Type="Int32" />
            <asp:Parameter DbType="Date" Name="JOINDATE" />
            <asp:Parameter Name="STAFFPHOTO" Type="String" />
        </InsertParameters>
        <SelectParameters>
            <asp:ControlParameter ControlID="gvViewStaff" Name="STAFFID" PropertyName="SelectedValue" Type="Int32" />
        </SelectParameters>
        <UpdateParameters>
            <asp:Parameter Name="STAFFNAME" Type="String" />
            <asp:Parameter Name="QUALIFICATION" Type="String" />
            <asp:Parameter Name="POST" Type="String" />
            <asp:Parameter DbType="Date" Name="STAFFDATEBIRTH" />
            <asp:Parameter Name="PHONE" Type="Int32" />
            <asp:Parameter Name="STAFFADDRESS" Type="String" />
            <asp:Parameter Name="SALARY" Type="Int32" />
            <asp:Parameter DbType="Date" Name="JOINDATE" />
            <asp:Parameter Name="STAFFPHOTO" Type="String" />
            <asp:Parameter Name="STAFFID" Type="Int32" />
        </UpdateParameters>
    </asp:SqlDataSource>
</asp:Content>
