<%@ Page Title="Home" Language="C#" MasterPageFile="~/MainMasterPage.master" AutoEventWireup="true" CodeFile="Default.aspx.cs" Inherits="_Default" %>

<asp:Content ID="HeadContent" ContentPlaceHolderID="HeadContentPlaceHolder" Runat="Server">
</asp:Content>
<asp:Content ID="BodyContent" ContentPlaceHolderID="BodyContentPlaceHolder" Runat="Server">

<%--MainContent--%>
<div> 
    
    <%--Top--%>
    <div class="left">
    
        <span>
        testing layout top (top-left)
        </span>

        <span class="right">
        testing layout top (top-right)
        </span>

    </div>

    <%--Right--%>
    <div class="right">
    testing layout right
    </div>

    <%--Left top-half--%>
    <div class="left">
    testing layout left top
    </div>

    <%--Left bottom-half--%>
    <div class="left, centered-text">
    testing layout left bottom centered
    </div>

</div>
</asp:Content>

