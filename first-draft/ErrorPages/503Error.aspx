<%@ Page Title="Rub BBQ 503 error" Language="C#" MasterPageFile="~/MainMasterPage.master" AutoEventWireup="true" CodeFile="503Error.aspx.cs" Inherits="ErrorPages_503Error" %>

<asp:Content ID="Content1" ContentPlaceHolderID="HeadContentPlaceHolder" Runat="Server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="BodyContentPlaceHolder" Runat="Server">

<div class="centered-text">

    <asp:Image ID="ErrorImage503" SkinID="largePhotoWithPadding" runat="server" ImageUrl="~/Images/ErrorPages/503.jpg"
    Height="400px" Width="450px" />

    <br />
    <br />
    <h1>Sorry for the wait, <br />
    but the Database service is currently unavailable!</h1><br />
    Why don't you try logging in!<br />
    Or you can click on the menu above and visit one of our other pages!

</div>

</asp:Content>

