<%@ Page Title="" Language="C#" MasterPageFile="~/MainMasterPage.master" AutoEventWireup="true" CodeFile="Login.aspx.cs" Inherits="Login" %>
<%@ Register Assembly="AjaxControlToolkit" Namespace="AjaxControlToolkit" TagPrefix="asp" %>
<asp:Content ID="Content1" ContentPlaceHolderID="HeadContentPlaceHolder" Runat="Server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="BodyContentPlaceHolder" Runat="Server">

<i>Name:Admin Password=password!</i>
    <asp:ScriptManagerProxy ID="ScriptManagerProxy1" runat="server">
    </asp:ScriptManagerProxy>  
        <asp:RoundedCornersExtender ID="RoundedCornersExtenderForLogin" runat="server"
        TargetControlID="LoginPanel">
        </asp:RoundedCornersExtender>

        <asp:Panel ID="LogInPanel" SkinID="LogInPanel" runat="server"  BackColor="#FFFBD6" Width="200px">
        
        <asp:Login ID="Login1" runat="server" DestinationPageUrl="~/Default.aspx" Width="200px"
                CreateUserText="Create an Account" CreateUserUrl="~/CreateAccount.aspx" 
                BackColor="#FFFBD6" BorderColor="#FFDFAD" BorderPadding="4" BorderStyle="Solid" 
                BorderWidth="1px" Font-Names="Verdana" Font-Size="0.8em" ForeColor="#333333" 
                TextLayout="TextOnTop">
            <InstructionTextStyle Font-Italic="True" ForeColor="Black" />
            <LoginButtonStyle BackColor="White" BorderColor="#CC9966" BorderStyle="Solid" 
                BorderWidth="1px" Font-Names="Verdana" Font-Size="0.8em" ForeColor="#990000" />
            <TextBoxStyle Font-Size="0.8em" />
            <TitleTextStyle BackColor="#990000" Font-Bold="True" Font-Size="0.9em" 
                ForeColor="White" />
        </asp:Login>
    </asp:Panel>
    
</asp:Content>

