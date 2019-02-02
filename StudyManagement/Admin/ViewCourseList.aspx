<%@ Page Title="" Language="C#" MasterPageFile="~/Admin/Admin.Master" AutoEventWireup="true" CodeBehind="ViewCourseList.aspx.cs" Inherits="StudyManagement.Admin.ViewCourseList" %>
<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">
    All Courses
</asp:Content>
<asp:Content ID="Content3" ContentPlaceHolderID="ContentPlaceHolder2" runat="server">
    <%--Write Code here with row class--%>
    <asp:GridView ID="gvViewCourse" runat="server" AutoGenerateColumns="False" DataKeyNames="COURSEID" DataSourceID="SqlDataSource1">
        <Columns>
            <asp:TemplateField HeaderText="COURSEID" InsertVisible="False" SortExpression="COURSEID">
                <EditItemTemplate>
                    <asp:Label ID="Label1" runat="server" Text='<%# Eval("COURSEID") %>'></asp:Label>
                </EditItemTemplate>
                <ItemTemplate>
                    <asp:Label ID="Label1" runat="server" Text='<%# Bind("COURSEID") %>'></asp:Label>
                </ItemTemplate>
            </asp:TemplateField>
            <asp:BoundField DataField="COURSENAME" HeaderText="COURSENAME" SortExpression="COURSENAME" />
            <asp:BoundField DataField="COURSEFEE" HeaderText="COURSEFEE" SortExpression="COURSEFEE" />
            <asp:BoundField DataField="COURSEQUALIFICATION" HeaderText="COURSEQUALIFICATION" SortExpression="COURSEQUALIFICATION" />
            <asp:CommandField HeaderText="Details" ShowSelectButton="True" />
        </Columns>
    </asp:GridView>
    <asp:DetailsView ID="dvViewCourse" runat="server" Height="50px" Width="125px" AutoGenerateRows="False" DataKeyNames="COURSEID" DataSourceID="SqlDataSource2">
        <Fields>
            <asp:BoundField DataField="COURSEID" HeaderText="COURSEID" InsertVisible="False" ReadOnly="True" SortExpression="COURSEID" />
            <asp:BoundField DataField="COURSENAME" HeaderText="COURSENAME" SortExpression="COURSENAME" />
            <asp:BoundField DataField="COURSEDURATION" HeaderText="COURSEDURATION" SortExpression="COURSEDURATION" />
            <asp:BoundField DataField="COURSEQUALIFICATION" HeaderText="COURSEQUALIFICATION" SortExpression="COURSEQUALIFICATION" />
            <asp:BoundField DataField="COURSEFEE" HeaderText="COURSEFEE" SortExpression="COURSEFEE" />
            <asp:BoundField DataField="COURSEFEEMETHOD" HeaderText="COURSEFEEMETHOD" SortExpression="COURSEFEEMETHOD" />
            <asp:BoundField DataField="COURSEPHOTO" HeaderText="COURSEPHOTO" SortExpression="COURSEPHOTO" />
            <asp:CommandField ShowDeleteButton="True" ShowEditButton="True" ShowInsertButton="True" />
        </Fields>
    </asp:DetailsView>
    <asp:SqlDataSource ID="SqlDataSource1" runat="server" ConnectionString="<%$ ConnectionStrings:DbConnection %>" SelectCommand="SELECT [COURSEID], [COURSENAME], [COURSEFEE], [COURSEQUALIFICATION] FROM [STUDYCOURSEINFO1]"></asp:SqlDataSource>
    <asp:SqlDataSource ID="SqlDataSource2" runat="server" ConnectionString="<%$ ConnectionStrings:DbConnection %>" DeleteCommand="DELETE FROM [STUDYCOURSEINFO1] WHERE [COURSEID] = @COURSEID" InsertCommand="INSERT INTO [STUDYCOURSEINFO1] ([COURSENAME], [COURSEDURATION], [COURSEQUALIFICATION], [COURSEFEE], [COURSEFEEMETHOD], [COURSEPHOTO]) VALUES (@COURSENAME, @COURSEDURATION, @COURSEQUALIFICATION, @COURSEFEE, @COURSEFEEMETHOD, @COURSEPHOTO)" SelectCommand="SELECT * FROM [STUDYCOURSEINFO1] WHERE ([COURSEID] = @COURSEID)" UpdateCommand="UPDATE [STUDYCOURSEINFO1] SET [COURSENAME] = @COURSENAME, [COURSEDURATION] = @COURSEDURATION, [COURSEQUALIFICATION] = @COURSEQUALIFICATION, [COURSEFEE] = @COURSEFEE, [COURSEFEEMETHOD] = @COURSEFEEMETHOD, [COURSEPHOTO] = @COURSEPHOTO WHERE [COURSEID] = @COURSEID">
        <DeleteParameters>
            <asp:Parameter Name="COURSEID" Type="Int32" />
        </DeleteParameters>
        <InsertParameters>
            <asp:Parameter Name="COURSENAME" Type="String" />
            <asp:Parameter Name="COURSEDURATION" Type="String" />
            <asp:Parameter Name="COURSEQUALIFICATION" Type="String" />
            <asp:Parameter Name="COURSEFEE" Type="Int32" />
            <asp:Parameter Name="COURSEFEEMETHOD" Type="String" />
            <asp:Parameter Name="COURSEPHOTO" Type="String" />
        </InsertParameters>
        <SelectParameters>
            <asp:ControlParameter ControlID="gvViewCourse" Name="COURSEID" PropertyName="SelectedValue" Type="Int32" />
        </SelectParameters>
        <UpdateParameters>
            <asp:Parameter Name="COURSENAME" Type="String" />
            <asp:Parameter Name="COURSEDURATION" Type="String" />
            <asp:Parameter Name="COURSEQUALIFICATION" Type="String" />
            <asp:Parameter Name="COURSEFEE" Type="Int32" />
            <asp:Parameter Name="COURSEFEEMETHOD" Type="String" />
            <asp:Parameter Name="COURSEPHOTO" Type="String" />
            <asp:Parameter Name="COURSEID" Type="Int32" />
        </UpdateParameters>
    </asp:SqlDataSource>
  
</asp:Content>
