<%@ Page Title="Special Deals" Language="C#" MasterPageFile="~/MainMasterPage.master"
    AutoEventWireup="true" CodeFile="Specials.aspx.cs" Inherits="Specials" %>

<asp:Content ID="HeadContent" ContentPlaceHolderID="HeadContentPlaceHolder" runat="Server">
</asp:Content>
<asp:Content ID="BodyContent" ContentPlaceHolderID="BodyContentPlaceHolder" runat="Server">
    <p id="SpecialsBar">
        RUB BBQ HOT DEALS</p>
    <asp:ListView ID="ListView1" runat="server" DataSourceID="SqlDataSource1">
        <EmptyDataTemplate>
            No specials today
        </EmptyDataTemplate>
        <ItemSeparatorTemplate>
            <br />
        </ItemSeparatorTemplate>
        <ItemTemplate>
            <asp:Table ID="Table1" runat="server" GridLines="Both" BackImageUrl="~/Images/table_bg.jpg"
                Width="600px">
                <asp:TableRow>
                    <asp:TableCell>
                <asp:Image class="ImageSpecials"  runat="server" ImageUrl='<%# Eval("Image") %>' />
                    </asp:TableCell>
                    <asp:TableCell>
                        <asp:Label ID="ItemNameLabel" SkinID="ItemNameLabelSkin" runat="server" Text='<%# Eval("ItemName") %>' />
                        <br />
                        <br />
                        <asp:Label ID="DescLabel" runat="server" Text='<%# Eval("Desc") %>' Font-Size="Small" /><br />
                        <br />
                        <asp:Label ID="ConditionLabel" runat="server" Text='<%# Eval("Condition") %>' Font-Size="X-Small" />
                    </asp:TableCell><asp:TableCell>
                        <asp:Label ID="PriceLabel" SkinID="PriceLabelSkin" runat="server" Text='<%# Eval("Price") %>' /><br />
                        
                    </asp:TableCell></asp:TableRow>
            </asp:Table>
        </ItemTemplate>
        <LayoutTemplate>
            <ul id="itemPlaceholderContainer" runat="server" style="">
                <li runat="server" id="itemPlaceholder" />
            </ul>
            <div style="">
            </div>
        </LayoutTemplate>
    </asp:ListView>
    <asp:SqlDataSource ID="SqlDataSource1" ConnectionString="<%$ ConnectionStrings:LocalSqlServer %>"
        runat="server" SelectCommand="SELECT [ItemName], [Desc], [Condition], [Price], [Image] FROM [Specials]">
    </asp:SqlDataSource>
</asp:Content>
