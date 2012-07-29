<%@ Page Title="Rub BBQ 403 error" Language="C#" MasterPageFile="~/MainMasterPage.master" AutoEventWireup="true" CodeFile="403Error.aspx.cs" Inherits="ErrorPages_403Error" %>

<asp:Content ID="Content1" ContentPlaceHolderID="HeadContentPlaceHolder" Runat="Server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="BodyContentPlaceHolder" Runat="Server">

<div class="centered-text">

    <asp:Image ID="ErrorImage403" SkinID="largePhotoWithPadding" runat="server" ImageUrl="~/Images/ErrorPages/403.jpg"
    Height="400px" Width="450px" />

    <br />
    <br />
    <h1>But you don't have the right to be here!</h1><br />
    Why don't you try logging in!<br />
    Or you can click on the menu above and visit one of our other pages!

</div>

</asp:Content>

