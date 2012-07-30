<%@ Page Title="" Language="C#" MasterPageFile="~/MainMasterPage.master" AutoEventWireup="true" CodeFile="OrderComplete.aspx.cs" Inherits="OrderComplete" %>

<asp:Content ID="Content1" ContentPlaceHolderID="HeadContentPlaceHolder" Runat="Server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="BodyContentPlaceHolder" Runat="Server">
    <asp:Label ID="OrderCompleteLabel" runat="server" 
        Text="Your order has been placed.  Your order will be ready in 30 minutes."></asp:Label>
</asp:Content>

