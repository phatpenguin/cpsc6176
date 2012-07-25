using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

public partial class OrderDetails : System.Web.UI.UserControl
{
    public static string[] item { get; set; }

    protected void Page_Load(object sender, EventArgs e)
    {
       
        
        //classClsItemsManager.AddItem(item[0], Int32.Parse(item[1]));
        //ListView1.DataSource = classClsItemsManager.getItems();
        //ListView1.DataBind();
        SubTotalLabel.Text = classClsItemsManager.getSubTotal();
        TaxLabel.Text = classClsItemsManager.getTax();
        TotalLabel.Text = classClsItemsManager.getTotal();
    }

    public void AddItem(string item, double price,int qty)
    {
        classClsItemsManager.AddItem(item, price, qty);
      //  ListView1.DataSource = classClsItemsManager.getItems();
        
        ListView1.DataBind();
        TaxLabel.Text = classClsItemsManager.getTax();
        SubTotalLabel.Text = classClsItemsManager.getSubTotal();
        TotalLabel.Text = classClsItemsManager.getTotal();
    }

    protected void ListView1_OnItemCommand(object sender, ListViewCommandEventArgs e)
    {
        if (String.Equals(e.CommandName, "Delete"))
        {
            ListViewDataItem dataItem = (ListViewDataItem)e.Item;
            ListView1.Items.Remove(dataItem);
        }
    }
    protected void ListView1_ItemDeleting(object sender, ListViewDeleteEventArgs e)
    {

        //ListView1.Items.RemoveAt(e.ItemIndex);
        classClsItemsManager.deleteItem(e.ItemIndex);
    }
}