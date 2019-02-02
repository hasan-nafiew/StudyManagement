<%@ Page Title="" Language="C#" MasterPageFile="~/Admin/Admin.Master" AutoEventWireup="true" CodeBehind="ViewTeacherList.aspx.cs" Inherits="StudyManagement.Admin.ViewTeacherList" %>
<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">
    All Teachers
</asp:Content>
<asp:Content ID="Content3" ContentPlaceHolderID="ContentPlaceHolder2" runat="server">
    <%--Write Code here with row class--%>
       

    <asp:GridView ID="gvViewTeacher" runat="server" AutoGenerateColumns="False" DataKeyNames="TEACHERID" DataSourceID="SqlDataSource1">
        <Columns>
            <asp:BoundField DataField="TEACHERID" HeaderText="TEACHERID" InsertVisible="False" ReadOnly="True" SortExpression="TEACHERID" />
            <asp:BoundField DataField="TEACHERNAME" HeaderText="TEACHERNAME" SortExpression="TEACHERNAME" />
            <asp:BoundField DataField="DESIGNATION" HeaderText="DESIGNATION" SortExpression="DESIGNATION" />
            <asp:BoundField DataField="WORKINGTIME" HeaderText="WORKINGTIME" SortExpression="WORKINGTIME" />
            <asp:CommandField ShowSelectButton="True" />
        </Columns>
    </asp:GridView>
    
    <asp:DetailsView ID="dvViewTeacher" runat="server" Height="50px" Width="125px" AutoGenerateRows="False" DataKeyNames="TEACHERID" DataSourceID="SqlDataSource2">
        <Fields>
            <asp:BoundField DataField="TEACHERID" HeaderText="TEACHERID" InsertVisible="False" ReadOnly="True" SortExpression="TEACHERID" />
            <asp:BoundField DataField="TEACHERNAME" HeaderText="TEACHERNAME" SortExpression="TEACHERNAME" />
            <asp:BoundField DataField="TEACHERADDRESS" HeaderText="TEACHERADDRESS" SortExpression="TEACHERADDRESS" />
            <asp:BoundField DataField="DEGREE" HeaderText="DEGREE" SortExpression="DEGREE" />
            <asp:BoundField DataField="INSTITUTE" HeaderText="INSTITUTE" SortExpression="INSTITUTE" />
            <asp:BoundField DataField="GENDER" HeaderText="GENDER" SortExpression="GENDER" />
            <asp:BoundField DataField="DESIGNATION" HeaderText="DESIGNATION" SortExpression="DESIGNATION" />
            <asp:BoundField DataField="DEPARTMENT" HeaderText="DEPARTMENT" SortExpression="DEPARTMENT" />
            <asp:BoundField DataField="DATEBIRTH" HeaderText="DATEBIRTH" SortExpression="DATEBIRTH" />
            <asp:BoundField DataField="SPECIALIST" HeaderText="SPECIALIST" SortExpression="SPECIALIST" />
            <asp:BoundField DataField="WORKINGTIME" HeaderText="WORKINGTIME" SortExpression="WORKINGTIME" />
            <asp:BoundField DataField="IMAGE" HeaderText="IMAGE" SortExpression="IMAGE" />
            <asp:CommandField ShowDeleteButton="True" ShowEditButton="True" ShowInsertButton="True" />
        </Fields>
    </asp:DetailsView>
    <asp:SqlDataSource ID="SqlDataSource1" runat="server" ConnectionString="<%$ ConnectionStrings:DbConnection %>" SelectCommand="SELECT [TEACHERID], [TEACHERNAME], [DESIGNATION], [WORKINGTIME] FROM [STUDYTEACHER]"></asp:SqlDataSource>
    <asp:SqlDataSource ID="SqlDataSource2" runat="server" ConnectionString="<%$ ConnectionStrings:DbConnection %>" DeleteCommand="DELETE FROM [STUDYTEACHER] WHERE [TEACHERID] = @TEACHERID" InsertCommand="INSERT INTO [STUDYTEACHER] ([TEACHERNAME], [TEACHERADDRESS], [DEGREE], [INSTITUTE], [GENDER], [DESIGNATION], [DEPARTMENT], [DATEBIRTH], [SPECIALIST], [WORKINGTIME], [IMAGE]) VALUES (@TEACHERNAME, @TEACHERADDRESS, @DEGREE, @INSTITUTE, @GENDER, @DESIGNATION, @DEPARTMENT, @DATEBIRTH, @SPECIALIST, @WORKINGTIME, @IMAGE)" SelectCommand="SELECT * FROM [STUDYTEACHER] WHERE ([TEACHERID] = @TEACHERID)" UpdateCommand="UPDATE [STUDYTEACHER] SET [TEACHERNAME] = @TEACHERNAME, [TEACHERADDRESS] = @TEACHERADDRESS, [DEGREE] = @DEGREE, [INSTITUTE] = @INSTITUTE, [GENDER] = @GENDER, [DESIGNATION] = @DESIGNATION, [DEPARTMENT] = @DEPARTMENT, [DATEBIRTH] = @DATEBIRTH, [SPECIALIST] = @SPECIALIST, [WORKINGTIME] = @WORKINGTIME, [IMAGE] = @IMAGE WHERE [TEACHERID] = @TEACHERID">
        <DeleteParameters>
            <asp:Parameter Name="TEACHERID" Type="Int32" />
        </DeleteParameters>
        <InsertParameters>
            <asp:Parameter Name="TEACHERNAME" Type="String" />
            <asp:Parameter Name="TEACHERADDRESS" Type="String" />
            <asp:Parameter Name="DEGREE" Type="String" />
            <asp:Parameter Name="INSTITUTE" Type="String" />
            <asp:Parameter Name="GENDER" Type="String" />
            <asp:Parameter Name="DESIGNATION" Type="String" />
            <asp:Parameter Name="DEPARTMENT" Type="String" />
            <asp:Parameter DbType="Date" Name="DATEBIRTH" />
            <asp:Parameter Name="SPECIALIST" Type="String" />
            <asp:Parameter Name="WORKINGTIME" Type="String" />
            <asp:Parameter Name="IMAGE" Type="String" />
        </InsertParameters>
        <SelectParameters>
            <asp:ControlParameter ControlID="gvViewTeacher" Name="TEACHERID" PropertyName="SelectedValue" Type="Int32" />
        </SelectParameters>
        <UpdateParameters>
            <asp:Parameter Name="TEACHERNAME" Type="String" />
            <asp:Parameter Name="TEACHERADDRESS" Type="String" />
            <asp:Parameter Name="DEGREE" Type="String" />
            <asp:Parameter Name="INSTITUTE" Type="String" />
            <asp:Parameter Name="GENDER" Type="String" />
            <asp:Parameter Name="DESIGNATION" Type="String" />
            <asp:Parameter Name="DEPARTMENT" Type="String" />
            <asp:Parameter DbType="Date" Name="DATEBIRTH" />
            <asp:Parameter Name="SPECIALIST" Type="String" />
            <asp:Parameter Name="WORKINGTIME" Type="String" />
            <asp:Parameter Name="IMAGE" Type="String" />
            <asp:Parameter Name="TEACHERID" Type="Int32" />
        </UpdateParameters>
    </asp:SqlDataSource>
</asp:Content>
