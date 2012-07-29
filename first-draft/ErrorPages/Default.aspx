<%@ Page Title="Rub BBQ default error" Language="C#" MasterPageFile="~/MainMasterPage.master" AutoEventWireup="true" CodeFile="Default.aspx.cs" Inherits="ErrorPages_Default" %>

<%@ Register Assembly="AjaxControlToolkit" Namespace="AjaxControlToolkit" TagPrefix="asp" %>

<asp:Content ID="Content1" ContentPlaceHolderID="HeadContentPlaceHolder" Runat="Server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="BodyContentPlaceHolder" Runat="Server">

<div class="centered-text">

    <asp:Image ID="ErrorImageDefault" SkinID="largePhotoWithPadding" runat="server" ImageUrl="~/Images/ErrorPages/default.jpg"
    Height="400px" Width="450px" />

    <br />
    <br />
    <h1>I don't know what the problem is, <br />
    but I assure you we have our best guys on it!</h1><br />
    Why don't you try logging in!<br />
    Or you can click on the menu above and visit one of our other pages!
    </div>

</asp:Content>

