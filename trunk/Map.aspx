<%@ Page Title="Rub BBQ Map Page" Language="C#" MasterPageFile="~/MainMasterPage.master" AutoEventWireup="true" CodeFile="Map.aspx.cs" Inherits="Map" %>

<asp:Content ID="HeadContent" ContentPlaceHolderID="HeadContentPlaceHolder" Runat="Server">
</asp:Content>
<asp:Content ID="BodyContent" ContentPlaceHolderID="BodyContentPlaceHolder" Runat="Server">
    <asp:TreeView ID="TreeView1" runat="server" DataSourceID="SiteMapDataSource">
    </asp:TreeView>
    <asp:SiteMapDataSource ID="SiteMapDataSource" runat="server" />
</asp:Content>

