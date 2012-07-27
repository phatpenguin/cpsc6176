<%@ Page Title="Rub BBQ About Us" Language="C#" MasterPageFile="~/MainMasterPage.master" AutoEventWireup="true" 
CodeFile="About.aspx.cs" Inherits="About" EnableTheming="true"  UICulture="auto:en-US" Culture="auto:en-US" meta:resourcekey="PageResource1"%>

<asp:Content ID="HeadContent" ContentPlaceHolderID="HeadContentPlaceHolder" Runat="Server">
</asp:Content>
<asp:Content ID="BodyContent" ContentPlaceHolderID="BodyContentPlaceHolder" Runat="Server">

<div class="about-us-main">

<p>
    
<img alt="About Us" src="Images/aboutus.gif" class="about-us-text" />
    <asp:Button ID="Button1" runat="server" Text="Show in Spanish" 
        onclick="Button1_Click" />

<br />
<br />
    <asp:Label ID="Label1" runat="server" Text="RUB BBQ COMPANY is a family owned business in Rogers Park."></asp:Label>

</p>

<p>
    <asp:Label ID="Label2" runat="server" Text="Label">
<span class="about-us-redtext">From the owners</span>
 - "We traveled North America looking for a place to settle.
We lived on an island, tried out the desert, and spent some time in the mountains.
I grew up in Chicago & met my wife here. 
We were married here, we recently started our family here, and now we are lucky enough 
    to be sharing our love for BBQ with the great people in Chicago and Rogers Park"
</asp:Label>
<br />

<span>
&nbsp;&nbsp;-Jared

<img alt="Family Pic" src="Images/JaredAmandaBrighton.jpg" class="family-pic" />

<br />
<br />
    <asp:Label ID="Label3" runat="server" Text="Label">
BBQ is a leisurely hobby, but also a highly skilled craft. 
Other BBQ teams focus on their sauce; while we respect the competition and their methods, 
we think it's the wrong approach. Great BBQ is created simply from top quality meats 
accompanied by a dry rub. We've spent years developing our rub, and are proud to share it with you. 
Our house-made sauce is served on the side, but most of our customers agree that you don't need it. 
</span>
</asp:Label>
</p>

</div>


<div class="about-us-footer">
OUR MOTTO: <span class="about-us-redtext">RUB IT, SMOKE IT, EAT IT!</span>
</div>

</span>

</asp:Content>

