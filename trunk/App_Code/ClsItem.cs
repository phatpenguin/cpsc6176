using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;

/// <summary>
/// Class to add and manage menu items
/// </summary>
public class ClsItem
{

    public string Name { get; set; }
    public int Quantity { get; set; }
    public decimal Price { get; set; }
    public decimal SubTotal { get; set; }
    public decimal Tax { get; set; }
    public decimal Total { get; set; }

    public ClsItem()
    {
    }

    public ClsItem(string name, decimal price, int qty)
    {
        Name = name;
        Quantity = qty;
        Price = price;
    }

}

public static class classClsItemsManager
{
    private static decimal SubTotal;
    private static decimal Total;
    public static decimal TAX = .10m;
    public static int ItemToDelete { get; set; }
    public static WcfServiceReference.Order CurrentOrder { get; set; }

    static classClsItemsManager()
    {
        //TODO MAKE THIS USE THE LOGGED IN USERID
        CurrentOrder = new WcfServiceReference.Order(){UserId = 1, Number = 123, DinerTypeId = 1, OrderStateId = 1, OrderTypeId = 1, PaymentStateId = 1, Date = DateTime.Now};
    }

    public static void AddItem(WcfServiceReference.MenuItem menuItem)
    {
        CurrentOrder.OrderItems.Add(new WcfServiceReference.OrderItem() { Name = menuItem.Name,MenuItemId = menuItem.Id, Quantity = 1, UnitPrice = menuItem.Price, UnitTax = menuItem.Price * TAX });
    }

    public static List<WcfServiceReference.OrderItem> getItems()
    {
        return CurrentOrder.OrderItems.ToList();
    }

    public static string getSubTotal()
    {
        SubTotal = 0.0m;
        foreach (var oi in CurrentOrder.OrderItems)
        {
            SubTotal += (oi.UnitPrice * oi.Quantity);
        }

        return SubTotal.ToString("C2");
    }
    public static string getTax()
    {
        //TODO: Remove hard coded
        decimal tempTotal = 0.0m;
        foreach (var oi in CurrentOrder.OrderItems)
        {
            tempTotal += (oi.UnitPrice * oi.Quantity);
        }
        return (tempTotal * TAX).ToString("C2");
    }
    public static string getTotal()
    {
        Total = 0.0m;
        //Total = SubTotal + Double.Parse(getTax());

        return (SubTotal + (SubTotal * TAX)).ToString("C2");
    }
    public static void deleteItem()
    {
        CurrentOrder.OrderItems.RemoveAt(ItemToDelete);

    }

    public static void deleteAllItems()
    {
        CurrentOrder.OrderItems.Clear();

        Total = 0.0m;
        SubTotal = 0.0m;
    }

    public static void createNewOrder()
    {
        CurrentOrder = new WcfServiceReference.Order() { UserId = 1, Number = 123, DinerTypeId = 1, OrderStateId = 1, OrderTypeId = 1, PaymentStateId = 1, Date = DateTime.Now };
    }
}



