﻿<%@ Page Language="C#" AutoEventWireup="true" CodeFile="Login.aspx.cs" Inherits="Login" %>

<%@ Register Assembly="AjaxControlToolkit" Namespace="AjaxControlToolkit" TagPrefix="asp" %>

<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Transitional//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd">

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title>Rub BBQ Login</title>
</head>
<body>
<i>Name:Admin Password=password!</i>
    <form id="form1" runat="server">
    <div>
        <asp:ToolkitScriptManager ID="ToolkitScriptManager1" runat="server">
        </asp:ToolkitScriptManager>
        <asp:RoundedCornersExtender ID="RoundedCornersExtenderForLogin" runat="server"
        TargetControlID="LogInPanel">
        </asp:RoundedCornersExtender>

        <asp:Panel ID="LogInPanel" SkinID="LogInPanel" runat="server">
        <asp:Login ID="Login1" runat="server" DestinationPageUrl="~/Default.aspx" 
                CreateUserText="Create an Account" CreateUserUrl="~/CreateAccount.aspx">
        </asp:Login>
        </asp:Panel>
    
    </div>
    </form>
</body>
</html>
