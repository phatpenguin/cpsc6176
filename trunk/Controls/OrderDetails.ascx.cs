using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using WcfServiceReference;

public partial class OrderDetails : System.Web.UI.UserControl
{
    public static string[] item { get; set; }
    private rub_bbqEntities entities = new rub_bbqEntities(new Uri(System.Web.Configuration.WebConfigurationManager.AppSettings["WcfServiceUri"]));

    protected void Page_Load(object sender, EventArgs e)
    {

        // SubTotalLabel.Text = classClsItemsManager.getSubTotal();
        updateTextFields();

    }

    public void AddItem(WcfServiceReference.MenuItem menuItem)
    {
        classClsItemsManager.AddItem(menuItem);
        updateTextFields();
        ListView1.DataBind();
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

        ListView1.Items.RemoveAt(e.ItemIndex);
        classClsItemsManager.ItemToDelete = e.ItemIndex;

    }

    protected void ListView1_ItemDeleted(object sender, ListViewDeletedEventArgs e)
    {
        updateTextFields();
    }

    protected void updateTextFields()
    {
        SubTotalLabel.Text = classClsItemsManager.getSubTotal();
        TaxLabel.Text = classClsItemsManager.getTax();
        TotalLabel.Text = classClsItemsManager.getTotal();
    }
    protected void PlaceOrderButton_Click(object sender, EventArgs e)
    {
        if (Request.IsAuthenticated)
        {

            entities.AddToOrders(classClsItemsManager.CurrentOrder);
            entities.SaveChanges();
            foreach (var orderItem in classClsItemsManager.CurrentOrder.OrderItems)
            {
                orderItem.OrderId = classClsItemsManager.CurrentOrder.Id;
                entities.AddToOrderItems(orderItem);
            }
            entities.SaveChanges();
            classClsItemsManager.createNewOrder();
            updateTextFields();
            ListView1.DataBind();
            Response.Redirect("~/OrderComplete.aspx");
        } else
        {
            Response.Redirect("~/Login.aspx");
        }
    }
}