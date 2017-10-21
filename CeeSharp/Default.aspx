<%@ Page Title="Home Page" Language="C#" MasterPageFile="~/Site.Master" AutoEventWireup="true" CodeBehind="Default.aspx.cs" Inherits="CeeSharp._Default" %>

<asp:Content ID="BodyContent" ContentPlaceHolderID="MainContent" runat="server">


    <asp:GridView ID="GridView1" runat="server" AutoGenerateColumns="False" DataKeyNames="UserId" DataSourceID="SqlDataSource1" EmptyDataText="There are no data records to display." Visible="False">
    <Columns>
        <asp:BoundField DataField="UserId" HeaderText="UserId" ReadOnly="True" SortExpression="UserId" />
        <asp:BoundField DataField="Password" HeaderText="Password" SortExpression="Password" />
        <asp:BoundField DataField="Achievement" HeaderText="Achievement" SortExpression="Achievement" />
        <asp:BoundField DataField="Profile_Picture" HeaderText="Profile_Picture" SortExpression="Profile_Picture" />
        <asp:BoundField DataField="Email" HeaderText="Email" SortExpression="Email" />
    </Columns>
</asp:GridView>
<asp:SqlDataSource ID="SqlDataSource1" runat="server" ConnectionString="<%$ ConnectionStrings:CeeSharpConnectionString1 %>" DeleteCommand="DELETE FROM [Accounts] WHERE [UserId] = @UserId" InsertCommand="INSERT INTO [Accounts] ([UserId], [Password], [Achievement], [Profile_Picture], [Email]) VALUES (@UserId, @Password, @Achievement, @Profile_Picture, @Email)" ProviderName="<%$ ConnectionStrings:CeeSharpConnectionString1.ProviderName %>" SelectCommand="SELECT [UserId], [Password], [Achievement], [Profile_Picture], [Email] FROM [Accounts]" UpdateCommand="UPDATE [Accounts] SET [Password] = @Password, [Achievement] = @Achievement, [Profile_Picture] = @Profile_Picture, [Email] = @Email WHERE [UserId] = @UserId">
    <DeleteParameters>
        <asp:Parameter Name="UserId" Type="String" />
    </DeleteParameters>
    <InsertParameters>
        <asp:Parameter Name="UserId" Type="String" />
        <asp:Parameter Name="Password" Type="String" />
        <asp:Parameter Name="Achievement" Type="String" />
        <asp:Parameter Name="Profile_Picture" Type="String" />
        <asp:Parameter Name="Email" Type="String" />
    </InsertParameters>
    <UpdateParameters>
        <asp:Parameter Name="Password" Type="String" />
        <asp:Parameter Name="Achievement" Type="String" />
        <asp:Parameter Name="Profile_Picture" Type="String" />
        <asp:Parameter Name="Email" Type="String" />
        <asp:Parameter Name="UserId" Type="String" />
    </UpdateParameters>
</asp:SqlDataSource>

</asp:Content>
