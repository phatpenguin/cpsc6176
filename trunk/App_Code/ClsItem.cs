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
    private static List<ClsItem> Items = new List<ClsItem>();

    private static decimal SubTotal;
    private static decimal Total;
    private static decimal TAX = .10m;
    public static int ItemToDelete { get; set; }

    public static void AddItem(string name, decimal price, int qty)
    {
        //TODO: From database getItemPrice(name);
        ClsItem newItem = new ClsItem(name, price, qty);
        Items.Add(newItem);

    }

    public static List<ClsItem> getItems()
    {
        return Items;
    }

    public static string getSubTotal()
    {
        SubTotal = 0.0m;
        foreach (ClsItem Item in Items)
        {
            SubTotal += (Item.Price * Item.Quantity);
        }

        return SubTotal.ToString("C2");
    }
    public static string getTax()
    {
        //TODO: Remove hard coded
        decimal tempTotal = 0.0m;
        foreach (ClsItem Item in Items)
        {
            tempTotal += (Item.Price * Item.Quantity);
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
        Items.RemoveAt(ItemToDelete);

    }

    public static void deleteAllItems()
    {
        if (Items.Count > 0)
        {
            do
            {
                Items.Clear();
            } while (Items.Count > 0);
        }

        Total = 0.0m;
        SubTotal = 0.0m;
    }
}



