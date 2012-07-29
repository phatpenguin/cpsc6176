<%@ Page Title="Rub BBQ Order Menu" Language="C#" MasterPageFile="~/MainMasterPage.master" AutoEventWireup="true" CodeFile="Menu.aspx.cs" Inherits="Menu" %>
<%@ MasterType  virtualPath="~/MainMasterPage.master"%>

<asp:Content ID="HeadContent" ContentPlaceHolderID="HeadContentPlaceHolder" Runat="Server">
</asp:Content>
<asp:Content ID="BodyContent" ContentPlaceHolderID="BodyContentPlaceHolder" Runat="Server">
    <asp:Label ID="SearchLabel" runat="server" Text="Search for a menu item(e.g. Fries:)"></asp:Label>
<asp:TextBox ID="MenuSearchTextBox" runat="server"></asp:TextBox>
<asp:Button ID="MenuSearchButton" runat="server" 
    onclick="MenuSearchButton_Click" Text="Search" />
<br />
    <asp:DropDownList ID="MenuDropDownList" runat="server" AutoPostBack="True" 
    DataSourceID="MenuLinqDataSource" DataTextField="Name" DataValueField="Id" 
    onselectedindexchanged="MenuDropDownList_SelectedIndexChanged">
</asp:DropDownList>
<asp:LinqDataSource ID="MenuLinqDataSource" runat="server" 
    ContextTypeName="LinqDataClassesDataContext" EntityTypeName="" 
    TableName="Menus" Where="IsActive == @IsActive">
    <WhereParameters>
        <asp:Parameter DefaultValue="true" Name="IsActive" Type="Boolean" />
    </WhereParameters>
</asp:LinqDataSource>
<asp:GridView ID="MenuItemGridView" runat="server" AutoGenerateColumns="False" 
    DataSourceID="MenuItemSqlDataSource" Width="477px" 
        onrowcommand="MenuItemGridView_RowCommand" CellPadding="4" 
        ForeColor="#333333" GridLines="None">
    <AlternatingRowStyle BackColor="White" />
    <Columns>
        <asp:BoundField DataField="Id" HeaderText="Id" InsertVisible="False" 
            ReadOnly="True" SortExpression="Id" />
        <asp:BoundField DataField="Name" HeaderText="Name" SortExpression="Name" />
        <asp:BoundField DataField="Description" HeaderText="Description" 
            SortExpression="Description" />
        <asp:BoundField DataField="Price" HeaderText="Price" SortExpression="Price" />
        <asp:ButtonField ButtonType="Button" Text="Add to Order" 
            CommandName="AddItem" />
    </Columns>
    <FooterStyle BackColor="#990000" Font-Bold="True" ForeColor="White" />
    <HeaderStyle BackColor="#990000" Font-Bold="True" ForeColor="White" />
    <PagerStyle BackColor="#FFCC66" ForeColor="#333333" HorizontalAlign="Center" />
    <RowStyle BackColor="#FFFBD6" ForeColor="#333333" />
    <SelectedRowStyle BackColor="#FFCC66" Font-Bold="True" ForeColor="Navy" />
    <SortedAscendingCellStyle BackColor="#FDF5AC" />
    <SortedAscendingHeaderStyle BackColor="#4D0000" />
    <SortedDescendingCellStyle BackColor="#FCF6C0" />
    <SortedDescendingHeaderStyle BackColor="#820000" />
</asp:GridView>
<asp:SqlDataSource ID="MenuItemSqlDataSource" runat="server" 
    ConnectionString="<%$ ConnectionStrings:_6176_su12_TeamCConnectionString %>" 
    
        SelectCommand="SELECT MenuItem.Name, MenuItem.Description, MenuItem.Price, MenuItem.ImagePath, MenuItem.Id FROM Menu INNER JOIN MenuItemMap ON Menu.Id = MenuItemMap.MenuID INNER JOIN MenuItem ON MenuItemMap.MenuItemID = MenuItem.Id WHERE (Menu.Id = @MenuId) AND (MenuItem.IsActive = 1)">
    <SelectParameters>
        <asp:ControlParameter ControlID="MenuDropDownList" Name="MenuId" 
            PropertyName="SelectedValue" />
    </SelectParameters>
</asp:SqlDataSource>
<br />
</asp:Content>

