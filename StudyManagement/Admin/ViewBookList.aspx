<%@ Page Title="" Language="C#" MasterPageFile="~/Admin/Admin.Master" AutoEventWireup="true" CodeBehind="ViewBookList.aspx.cs" Inherits="StudyManagement.Admin.ViewBookList" %>
<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">
    All Book List
</asp:Content>
<asp:Content ID="Content3" ContentPlaceHolderID="ContentPlaceHolder2" runat="server">
    
    <%--Write Code here with row class--%>
    <asp:GridView ID="gvViewBook" runat="server" AutoGenerateColumns="False" DataKeyNames="BOOKID" DataSourceID="SqlDataSource1">
        <Columns>
            <asp:TemplateField HeaderText="BOOKID" InsertVisible="False" SortExpression="BOOKID">
                <EditItemTemplate>
                    <asp:Label ID="Label1" runat="server" Text='<%# Eval("BOOKID") %>'></asp:Label>
                </EditItemTemplate>
                <ItemTemplate>
                    <asp:Label ID="Label1" runat="server" Text='<%# Bind("BOOKID") %>'></asp:Label>
                </ItemTemplate>
            </asp:TemplateField>
            <asp:BoundField DataField="BOOKNAME" HeaderText="BOOKNAME" SortExpression="BOOKNAME" />
            <asp:BoundField DataField="BOOKAUTHOR" HeaderText="BOOKAUTHOR" SortExpression="BOOKAUTHOR" />
            <asp:BoundField DataField="BOOKCOST" HeaderText="BOOKCOST" SortExpression="BOOKCOST" />
            <asp:CommandField HeaderText="Details" ShowSelectButton="True" />
        </Columns>
    </asp:GridView>
    <asp:DetailsView ID="dvViewBook" runat="server" Height="50px" Width="125px" AutoGenerateRows="False" DataKeyNames="BOOKID" DataSourceID="SqlDataSource2">
        <Fields>
            <asp:BoundField DataField="BOOKID" HeaderText="BOOKID" InsertVisible="False" ReadOnly="True" SortExpression="BOOKID" />
            <asp:BoundField DataField="BOOKNAME" HeaderText="BOOKNAME" SortExpression="BOOKNAME" />
            <asp:BoundField DataField="BOOKAUTHOR" HeaderText="BOOKAUTHOR" SortExpression="BOOKAUTHOR" />
            <asp:BoundField DataField="BOOKCOST" HeaderText="BOOKCOST" SortExpression="BOOKCOST" />
            <asp:BoundField DataField="BOOKPHOTO" HeaderText="BOOKPHOTO" SortExpression="BOOKPHOTO" />
            <asp:CommandField ShowDeleteButton="True" ShowEditButton="True" ShowInsertButton="True" />
        </Fields>
    </asp:DetailsView>
    <asp:SqlDataSource ID="SqlDataSource1" runat="server" ConnectionString="<%$ ConnectionStrings:DbConnection %>" SelectCommand="SELECT [BOOKID], [BOOKNAME], [BOOKAUTHOR], [BOOKCOST] FROM [STUDYADDBOOK]"></asp:SqlDataSource>
    <asp:SqlDataSource ID="SqlDataSource2" runat="server" ConnectionString="<%$ ConnectionStrings:DbConnection %>" DeleteCommand="DELETE FROM [STUDYADDBOOK] WHERE [BOOKID] = @BOOKID" InsertCommand="INSERT INTO [STUDYADDBOOK] ([BOOKNAME], [BOOKAUTHOR], [BOOKCOST], [BOOKPHOTO]) VALUES (@BOOKNAME, @BOOKAUTHOR, @BOOKCOST, @BOOKPHOTO)" SelectCommand="SELECT * FROM [STUDYADDBOOK] WHERE ([BOOKID] = @BOOKID)" UpdateCommand="UPDATE [STUDYADDBOOK] SET [BOOKNAME] = @BOOKNAME, [BOOKAUTHOR] = @BOOKAUTHOR, [BOOKCOST] = @BOOKCOST, [BOOKPHOTO] = @BOOKPHOTO WHERE [BOOKID] = @BOOKID">
        <DeleteParameters>
            <asp:Parameter Name="BOOKID" Type="Int32" />
        </DeleteParameters>
        <InsertParameters>
            <asp:Parameter Name="BOOKNAME" Type="String" />
            <asp:Parameter Name="BOOKAUTHOR" Type="String" />
            <asp:Parameter Name="BOOKCOST" Type="Int32" />
            <asp:Parameter Name="BOOKPHOTO" Type="String" />
        </InsertParameters>
        <SelectParameters>
            <asp:ControlParameter ControlID="gvViewBook" Name="BOOKID" PropertyName="SelectedValue" Type="Int32" />
        </SelectParameters>
        <UpdateParameters>
            <asp:Parameter Name="BOOKNAME" Type="String" />
            <asp:Parameter Name="BOOKAUTHOR" Type="String" />
            <asp:Parameter Name="BOOKCOST" Type="Int32" />
            <asp:Parameter Name="BOOKPHOTO" Type="String" />
            <asp:Parameter Name="BOOKID" Type="Int32" />
        </UpdateParameters>
    </asp:SqlDataSource>
    
</asp:Content>
