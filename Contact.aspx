<%@ Page Title="Contact Us" Language="C#" MasterPageFile="~/MainMasterPage.master" 
AutoEventWireup="true" CodeFile="Contact.aspx.cs" Inherits="Contact" 
EnableTheming="true" Theme="Rodrigo" %>

<asp:Content ID="HeadContent" ContentPlaceHolderID="HeadContentPlaceHolder" Runat="Server">
</asp:Content>
<asp:Content ID="BodyContent" ContentPlaceHolderID="BodyContentPlaceHolder" Runat="Server">
    
    <asp:ValidationSummary ID="ValidationErrors" runat="server"
                      HeaderText="Please fix these errors before you can continue." />


    <asp:Label ID="FromLabel" runat="server" Text="From"></asp:Label>
    <asp:TextBox ID="FromTextBox" runat="server"></asp:TextBox>
    <asp:RequiredFieldValidator ID="FromFieldValidator" runat="server" 
    ErrorMessage="Please enter your email address." ControlToValidate="FromTextBox">*</asp:RequiredFieldValidator>

    <asp:RegularExpressionValidator ID="RegExEmailValidator" runat="server" 
    ErrorMessage="It doesn't seem like you entered a valid email address." ControlToValidate="FromTextBox"
    ValidationExpression="[a-z0-9!#$%&'*+/=?^_`{|}~-]+(?:\.[a-z0-9!#$%&'*+/=?^_`{|}~-]+)*@(?:[a-z0-9](?:[a-z0-9-]*[a-z0-9])?\.)+[a-z0-9](?:[a-z0-9-]*[a-z0-9])?">*</asp:RegularExpressionValidator>
    <br />

    <asp:Label ID="BodyLabel" runat="server" Text="Message"></asp:Label>
    <asp:TextBox ID="MessageTextBox" runat="server" TextMode="MultiLine"></asp:TextBox>
    <asp:RequiredFieldValidator ID="RequiredFieldValidator1" runat="server" 
    ErrorMessage="Please type something in the message box." ControlToValidate="MessageTextBox">*</asp:RequiredFieldValidator>
    <br /><br />

    <asp:Button ID="Submit" runat="server" Text="Submit" onclick="Button1_Click" />

</asp:Content>

