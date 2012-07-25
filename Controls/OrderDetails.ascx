<%@ Control Language="C#" AutoEventWireup="true" CodeFile="OrderDetails.ascx.cs" Inherits="OrderDetails" %>



    <asp:ListView ID="ListView1" runat="server"  DataSourceID="ObjectDataSource1"
        onitemdeleting="ListView1_ItemDeleting" 
    onitemdeleted="ListView1_ItemDeleted">
        <EmptyDataTemplate>
            <table id="Table1" runat="server" 
                style="background-color: #FFFFFF;border-collapse: collapse;border-color: #999999;border-style:none;border-width:1px;">
                <tr>
                    <td>
                        No items in the Order</td>
                </tr>
            </table>
        </EmptyDataTemplate>
        <ItemTemplate>
            <tr style="background-color: #FFFBD6;color: #333333;">
                <td>
                    <asp:Button ID="DeleteButton" runat="server" CommandName="Delete" Text="X" style="background-color:white; color:Red" 
                         ToolTip="Delete" />
                </td>
                <td>
                    <asp:Label ID="NameLabel" runat="server" Text='<%# Eval("Name") %>' />
                </td>
                <td>
                    <asp:Label ID="QuantityLabel" runat="server" Text='<%# Eval("Quantity") %>' />
                </td>
                <td>
                    <asp:Label ID="PriceLabel" runat="server" Text='<%# Eval("Price") %>' />
                </td>
                
            </tr>
        </ItemTemplate>
        <LayoutTemplate>
            <table id="Table2" runat="server">
                <tr id="Tr1" runat="server">
                    <td id="Td1" runat="server">
                        <table ID="itemPlaceholderContainer" runat="server" 
                            style="background-color: #FFFFFF;border-collapse: collapse;border-color: #999999;border-style:none;border-width:1px;font-family: Verdana, Arial, Helvetica, sans-serif;">
                            <tr id="Tr2" runat="server" style="background-color: #CC0000; color: #FFFFFF;">
                                <th id="Th1" runat="server">
                                </th>
                                <th id="Th2" runat="server">
                                    Name</th>
                                <th id="Th3" runat="server">
                                    Quantity</th>
                                <th id="Th4" runat="server">
                                    Price</th>
                              </tr> 
                            <tr ID="itemPlaceholder" runat="server">
                            </tr>
                        </table>
                    </td>
                </tr>
                <tr id="Tr3" runat="server">
                    <td id="Td2" runat="server" 
                        style="text-align: center;background-color: #CC0000; font-family: Verdana, Arial, Helvetica, sans-serif;color: #333333;">
                        <asp:DataPager ID="DataPager1" runat="server" PageSize="5">
                            <Fields>
                                <asp:NextPreviousPagerField ButtonType="Button" ShowFirstPageButton="True" 
                                    ShowLastPageButton="True" NextPageText=">>" PreviousPageText="<<" FirstPageText="<" LastPageText=">>" />
                            </Fields>
                        </asp:DataPager>
                    </td>
                </tr>
            </table>
           
        </LayoutTemplate>

    </asp:ListView>


<table class="UserControlTableTotal" ID="UserControlTableTotal" runat="server">
<tr runat="server"> 
<td runat="server" style="width:140px">SubTotal </td>
<td>:</td>
<td runat="server">
<asp:Label ID="SubTotalLabel" runat="server"></asp:Label>
</td>
</tr>

<tr  runat="server"> 
<td runat="server">Tax</td>
<td>:</td>
<td  runat="server" class="style1">
<asp:Label ID="TaxLabel" runat="server"></asp:Label>
</td>
</tr>

<tr   runat="server"> 
<td   runat="server">Delivery</td>
<td>:</td>
<td  runat="server" class="style1">
<asp:Label ID="DeliveryLabel" runat="server">Free</asp:Label>
</td>
</tr>
<tr runat="server"> 
<td  runat="server">Total</td>
<td>:</td>
<td  runat="server">
<asp:Label ID="TotalLabel" runat="server"></asp:Label>
</td>
</tr>
</table>


<asp:ObjectDataSource ID="ObjectDataSource1" runat="server"
        TypeName="classClsItemsManager" DeleteMethod="deleteItem" 
    SelectMethod="getItems">
    </asp:ObjectDataSource>
 
 
 









