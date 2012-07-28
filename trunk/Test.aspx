<%@ Page Title="" Language="C#" MasterPageFile="~/MainMasterPage.master" AutoEventWireup="true" CodeFile="Test.aspx.cs" Inherits="Test" %>


<%@ Register src="Controls/OrderDetails.ascx" tagname="OrderDetails" tagprefix="uc1" %>


<asp:Content ID="Content1" ContentPlaceHolderID="HeadContentPlaceHolder" Runat="Server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="BodyContentPlaceHolder" Runat="Server">
    
    
    <uc1:OrderDetails ID="OrderDetails1" runat="server" />
    
    
    <asp:Button ID="Button1" runat="server" Text="Button" onclick="Button1_Click" />
</asp:Content>

