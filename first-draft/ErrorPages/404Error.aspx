<%@ Page Title="Rub BBQ 404 error" Language="C#" MasterPageFile="~/MainMasterPage.master" AutoEventWireup="true" CodeFile="404Error.aspx.cs" Inherits="ErrorPages_404Error" %>

<asp:Content ID="Content1" ContentPlaceHolderID="HeadContentPlaceHolder" Runat="Server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="BodyContentPlaceHolder" Runat="Server">

<div class="centered-text">

    <asp:Image ID="ErrorImage404" SkinID="largePhotoWithPadding" runat="server" ImageUrl="~/Images/ErrorPages/404.jpg"
    Height="400px" Width="450px" />

    <br />
    <br />
    <h1>Looks like the BBQ you were looking for has gone and moved!</h1><br />
    Why don't you try logging in!<br />
    Or you can click on the menu above and visit one of our other pages!

</div>

</asp:Content>

