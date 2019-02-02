<%@ Page Title="" Language="C#" MasterPageFile="~/Admin/Admin.Master" AutoEventWireup="true" CodeBehind="ViewStudentList.aspx.cs" Inherits="StudyManagement.Admin.ViewStudentList" %>
<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
    
  
</asp:Content>
<asp:Content ID="Content3" ContentPlaceHolderID="ContentPlaceHolder2" runat="server">
    <%--Write Code here with row class--%>
    <asp:GridView ID="gvViewStudent" runat="server" AutoGenerateColumns="False" DataKeyNames="StudentId" DataSourceID="SqlDataSource1">
        <Columns>
            <asp:BoundField DataField="StudentId" HeaderText="StudentId" InsertVisible="False" ReadOnly="True" SortExpression="StudentId" />
            <asp:BoundField DataField="FirstName" HeaderText="FirstName" SortExpression="FirstName" />
            <asp:BoundField DataField="LastName" HeaderText="LastName" SortExpression="LastName" />
            <asp:BoundField DataField="UserName" HeaderText="UserName" SortExpression="UserName" />
            <asp:CommandField HeaderText="Details" ShowSelectButton="True" />
        </Columns>
    </asp:GridView>
    <asp:DetailsView ID="dvViewStudent" runat="server" Height="50px" Width="125px" AutoGenerateRows="False" DataKeyNames="StudentId" DataSourceID="SqlDataSource2">
        <Fields>
            <asp:BoundField DataField="StudentId" HeaderText="StudentId" InsertVisible="False" ReadOnly="True" SortExpression="StudentId" />
            <asp:BoundField DataField="FirstName" HeaderText="FirstName" SortExpression="FirstName" />
            <asp:BoundField DataField="LastName" HeaderText="LastName" SortExpression="LastName" />
            <asp:BoundField DataField="UserName" HeaderText="UserName" SortExpression="UserName" />
            <asp:BoundField DataField="PassWord" HeaderText="PassWord" SortExpression="PassWord" />
            <asp:BoundField DataField="Gender" HeaderText="Gender" SortExpression="Gender" />
            <asp:BoundField DataField="Email" HeaderText="Email" SortExpression="Email" />
            <asp:BoundField DataField="UniversityName" HeaderText="UniversityName" SortExpression="UniversityName" />
            <asp:BoundField DataField="Program" HeaderText="Program" SortExpression="Program" />
            <asp:BoundField DataField="Department" HeaderText="Department" SortExpression="Department" />
            <asp:BoundField DataField="PhoneNumber" HeaderText="PhoneNumber" SortExpression="PhoneNumber" />
            <asp:BoundField DataField="Date" HeaderText="Date" SortExpression="Date" />
            <asp:BoundField DataField="MaritalStatus" HeaderText="MaritalStatus" SortExpression="MaritalStatus" />
            <asp:BoundField DataField="BloodGroup" HeaderText="BloodGroup" SortExpression="BloodGroup" />
            <asp:BoundField DataField="Religion" HeaderText="Religion" SortExpression="Religion" />
            <asp:BoundField DataField="Nationality" HeaderText="Nationality" SortExpression="Nationality" />
            <asp:BoundField DataField="PresentAddress" HeaderText="PresentAddress" SortExpression="PresentAddress" />
            <asp:BoundField DataField="UploadPhoto" HeaderText="UploadPhoto" SortExpression="UploadPhoto" />
            <asp:CommandField ShowDeleteButton="True" ShowEditButton="True" ShowInsertButton="True" />
        </Fields>
    </asp:DetailsView>
    <asp:SqlDataSource ID="SqlDataSource1" runat="server" ConnectionString="<%$ ConnectionStrings:DbConnection %>" SelectCommand="SELECT [LastName], [StudentId], [FirstName], [UserName] FROM [STUDYADDSTUDENT]"></asp:SqlDataSource>
    <asp:SqlDataSource ID="SqlDataSource2" runat="server" ConnectionString="<%$ ConnectionStrings:DbConnection %>" DeleteCommand="DELETE FROM [STUDYADDSTUDENT] WHERE [StudentId] = @StudentId" InsertCommand="INSERT INTO [STUDYADDSTUDENT] ([FirstName], [LastName], [UserName], [PassWord], [Gender], [Email], [UniversityName], [Program], [Department], [PhoneNumber], [Date], [MaritalStatus], [BloodGroup], [Religion], [Nationality], [PresentAddress], [UploadPhoto]) VALUES (@FirstName, @LastName, @UserName, @PassWord, @Gender, @Email, @UniversityName, @Program, @Department, @PhoneNumber, @Date, @MaritalStatus, @BloodGroup, @Religion, @Nationality, @PresentAddress, @UploadPhoto)" SelectCommand="SELECT * FROM [STUDYADDSTUDENT] WHERE ([StudentId] = @StudentId)" UpdateCommand="UPDATE [STUDYADDSTUDENT] SET [FirstName] = @FirstName, [LastName] = @LastName, [UserName] = @UserName, [PassWord] = @PassWord, [Gender] = @Gender, [Email] = @Email, [UniversityName] = @UniversityName, [Program] = @Program, [Department] = @Department, [PhoneNumber] = @PhoneNumber, [Date] = @Date, [MaritalStatus] = @MaritalStatus, [BloodGroup] = @BloodGroup, [Religion] = @Religion, [Nationality] = @Nationality, [PresentAddress] = @PresentAddress, [UploadPhoto] = @UploadPhoto WHERE [StudentId] = @StudentId">
        <DeleteParameters>
            <asp:Parameter Name="StudentId" Type="Int32" />
        </DeleteParameters>
        <InsertParameters>
            <asp:Parameter Name="FirstName" Type="String" />
            <asp:Parameter Name="LastName" Type="String" />
            <asp:Parameter Name="UserName" Type="String" />
            <asp:Parameter Name="PassWord" Type="String" />
            <asp:Parameter Name="Gender" Type="String" />
            <asp:Parameter Name="Email" Type="String" />
            <asp:Parameter Name="UniversityName" Type="String" />
            <asp:Parameter Name="Program" Type="String" />
            <asp:Parameter Name="Department" Type="String" />
            <asp:Parameter Name="PhoneNumber" Type="Int32" />
            <asp:Parameter DbType="Date" Name="Date" />
            <asp:Parameter Name="MaritalStatus" Type="String" />
            <asp:Parameter Name="BloodGroup" Type="String" />
            <asp:Parameter Name="Religion" Type="String" />
            <asp:Parameter Name="Nationality" Type="String" />
            <asp:Parameter Name="PresentAddress" Type="String" />
            <asp:Parameter Name="UploadPhoto" Type="String" />
        </InsertParameters>
        <SelectParameters>
            <asp:ControlParameter ControlID="gvViewStudent" Name="StudentId" PropertyName="SelectedValue" Type="Int32" />
        </SelectParameters>
        <UpdateParameters>
            <asp:Parameter Name="FirstName" Type="String" />
            <asp:Parameter Name="LastName" Type="String" />
            <asp:Parameter Name="UserName" Type="String" />
            <asp:Parameter Name="PassWord" Type="String" />
            <asp:Parameter Name="Gender" Type="String" />
            <asp:Parameter Name="Email" Type="String" />
            <asp:Parameter Name="UniversityName" Type="String" />
            <asp:Parameter Name="Program" Type="String" />
            <asp:Parameter Name="Department" Type="String" />
            <asp:Parameter Name="PhoneNumber" Type="Int32" />
            <asp:Parameter DbType="Date" Name="Date" />
            <asp:Parameter Name="MaritalStatus" Type="String" />
            <asp:Parameter Name="BloodGroup" Type="String" />
            <asp:Parameter Name="Religion" Type="String" />
            <asp:Parameter Name="Nationality" Type="String" />
            <asp:Parameter Name="PresentAddress" Type="String" />
            <asp:Parameter Name="UploadPhoto" Type="String" />
            <asp:Parameter Name="StudentId" Type="Int32" />
        </UpdateParameters>
    </asp:SqlDataSource>
</asp:Content>

