<%@ Page Title="Rub BBQ Contact Us" Language="C#" MasterPageFile="~/MainMasterPage.master" 
AutoEventWireup="true" CodeFile="Contact.aspx.cs" Inherits="Contact" 
EnableTheming="true"  %>

<asp:Content ID="HeadContent" ContentPlaceHolderID="HeadContentPlaceHolder" Runat="Server">
</asp:Content>
<asp:Content ID="BodyContent" ContentPlaceHolderID="BodyContentPlaceHolder" Runat="Server">
    <table>
    <tr>
    
        <td colspan="2" class="align-center">
            <asp:ValidationSummary ID="ValidationErrors" runat="server"
             HeaderText="Please fix these errors before you can continue." />
        </td>
    
    </tr>

    <tr>
        <td colspan="2">
            <h1>We want to hear from you!</h1><br />
            Please leave us a message by filling out the fields below. 
            Have a wonderful experience with us?
            Have a problem?
            Whatever the case may be, your opinion is important to us. 
            Please fill out the form below and click submit and your message will be delivered to our staff.
            If a problem needs to be addressed we will respond as soon as possible. <br />
            <h3>Have a wonderful day!</h3>
        </td>
    </tr>

    <tr>
        <td>
            <asp:Label ID="FromEmailLabel" runat="server" Text="Email: "></asp:Label>
        </td>
        
        <td>
            <asp:TextBox SkinID="DefaultTextBox" ID="FromEmailTextBox" runat="server"></asp:TextBox>
            <asp:RequiredFieldValidator ID="FromEmailFieldValidator" runat="server" ControlToValidate="FromEmailTextBox"
            ErrorMessage="Please enter an email address.">*</asp:RequiredFieldValidator>

            <asp:RegularExpressionValidator ID="RegExEmailValidator" runat="server" 
            ErrorMessage="It doesn't seem like you entered a valid email address." ControlToValidate="FromEmailTextBox"
            ValidationExpression="[a-z0-9!#$%&'*+/=?^_`{|}~-]+(?:\.[a-z0-9!#$%&'*+/=?^_`{|}~-]+)*@(?:[a-z0-9](?:[a-z0-9-]*[a-z0-9])?\.)+[a-z0-9](?:[a-z0-9-]*[a-z0-9])?">*</asp:RegularExpressionValidator>
    
        </td>
        
    </tr>

    <tr>
    
        <td> 
            <asp:Label ID="FromUserLabel" runat="server" Text="Name: "></asp:Label>
        </td>

        <td>
            <asp:TextBox SkinID="DefaultTextBox" ID="FromTextBox" runat="server"></asp:TextBox>

            <asp:RequiredFieldValidator ID="FromUserFieldValidator" runat="server" 
            ErrorMessage="Please enter a name in the 'Name: ' field." ControlToValidate="FromTextBox">*</asp:RequiredFieldValidator>
        </td>
    
    </tr>

    <tr>
        
        <td>
        
            <asp:Label ID="BodyLabel" runat="server" Text="Message" ></asp:Label>

        </td>

        <td>
            
            <asp:TextBox SkinID="DefaultTextBox" ID="MessageTextBox" runat="server" TextMode="MultiLine" Height="200px"></asp:TextBox>
            <asp:RequiredFieldValidator ID="RequiredFieldValidator1" runat="server" 
            ErrorMessage="Please leave us a message in the message box!" ControlToValidate="MessageTextBox">*</asp:RequiredFieldValidator>
    
        </td>

    </tr>

    <tr>
    
        <td colspan="2">

             <asp:Button ID="Submit" runat="server" Text="Send Message" onclick="Button1_Click" />
        
        </td>

    </tr>
        
    </table>
    
</asp:Content>

