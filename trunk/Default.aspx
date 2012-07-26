<%@ Page Title="Rub BBQ Home" Language="C#" MasterPageFile="~/MainMasterPage.master" AutoEventWireup="true" CodeFile="Default.aspx.cs" Inherits="_Default" %>

<asp:Content ID="HeadContent" ContentPlaceHolderID="HeadContentPlaceHolder" Runat="Server">
</asp:Content>
<asp:Content ID="BodyContent" ContentPlaceHolderID="BodyContentPlaceHolder" Runat="Server">

<%--MainContent--%>
<div> 
    
    <%--Top--%>
    <div class="left">
    
        <span>
            <asp:Image ID="HomeWelcomeImage" runat="server" 
            width="180px" Height="40px"
            ImageUrl="~/Images/HomePage/welcome.GIF" />
        </span>

        <span class="right">
        *2012 Ribfest Chicago<br />
        "BEST RIBS" Winner*
        </span>

    </div>

    <%--Right--%>
    <div class="right, centered-text">
        <asp:Image ID="RibsImage" SkinID="largePhotoWithPadding" runat="server" 
            ImageUrl="~/Images/HomePage/Ribs.jpg" Width="150px" Height="200px" />
            <br />

        <asp:Image ID="OrderNowImage" SkinID="largePhotoWithPadding" runat="server" 
            ImageUrl="~/Images/HomePage/ordernow.png" Width="160px" Height="30px" />
            <br />

        773-675-1410 <br />
        NOW DELIVERING<br />
        
        <br />

        Or visit our new orders page and place an order online!<br />

        <br />

        <asp:Image ID="PorkImage" SkinID="largePhotoWithPadding" runat="server"
        Width="150px" Height="130" ImageUrl="~/Images/HomePage/pork.gif" />
        <br />

        Join Us On Facebook Today!

        <asp:HyperLink ID="FacebookHyperlink" runat="server"
        ImageUrl="~/Images/HomePage/facebook.jpg" Height="35px" Width="35px"
        NavigateUrl="http://www.facebook.com/pages/Chicago-IL/RUB-BBQ-Co/110481898970213?ref=ts">
        </asp:HyperLink>    
        
    </div>

    <%--Left top-half--%>
    <div class="left">
    <p>
    At
      <asp:Image ID="RubBBQCompanyImage" runat="server" 
            Width="150px" Height="20px"
            ImageUrl="~/Images/HomePage/rubbbqcompany.gif" />
    we do BBQ Right in Rogers Park!
    All our meats are hand rubbed with a secret blend of 14 seasonings,
    and set to rest in a chilled environment for 24 hours.
    This process allows the meat to fully experience all of the spices.
    We then smoke the meat for hours in a
    <span class="about-us-redtext"> 100% all hardwood smoker </span>
    to create the perfect BBQ taste.
    We complement all ur meats with gourmet side dishes created 
    from scratch with the freshest ingredients.
    </p>
    </div>

    <%--Left bottom-half--%>
    <div class="left, centered-text">
    Our motto is simple: 
    <br /><br />

    <span class="about-us-redtext">RUB IT, SMOKE IT, EAT IT!</span>
    <br /><br />
    
    Come on your own or bring a crowd!
    Just be ready to kick up your feet and enjoy some
    <br />

    <span class="about-us-redtext">GOOD BBQ!</span>
    <br /><br />

        <asp:HyperLink ID="abcNorthLink" runat="server" NavigateUrl="http://abclocal.go.com/wls/video?id=7731040">
        Watch us on ABC's 190 North!
        </asp:HyperLink>
    </div>

</div>
</asp:Content>

