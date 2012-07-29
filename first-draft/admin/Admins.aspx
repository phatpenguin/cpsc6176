<%@ Page Title="Admins Page" Language="C#" MasterPageFile="~/MainMasterPage.master" AutoEventWireup="true" CodeFile="Admins.aspx.cs" Inherits="admin_admins" %>

<%@ Register src="../Controls/adminXML.ascx" tagname="adminXML" tagprefix="uc1" %>

<asp:Content ID="Content1" ContentPlaceHolderID="HeadContentPlaceHolder" Runat="Server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="BodyContentPlaceHolder" Runat="Server">
    <uc1:adminXML ID="adminXML1" runat="server" />
</asp:Content>

