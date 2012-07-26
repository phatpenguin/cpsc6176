<%@ Page Title="Rub BBQ 500 error" Language="C#" MasterPageFile="~/MainMasterPage.master" AutoEventWireup="true" CodeFile="500Error.aspx.cs" Inherits="ErrorPages_500Error" %>

<asp:Content ID="Content1" ContentPlaceHolderID="HeadContentPlaceHolder" Runat="Server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="BodyContentPlaceHolder" Runat="Server">

<div class="centered-text">

    <asp:Image ID="ErrorImage500" SkinID="largePhotoWithPadding" runat="server" ImageUrl="~/Images/ErrorPages/500.gif"
    Height="400px" Width="600px" />

    <br />
    <br />
    <h1>Something seems to be wrong with the database again!</h1><br />
    Why don't you try logging in!<br />
    Or you can click on the menu above and visit one of our other pages!

</div>

</asp:Content>

