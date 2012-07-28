using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using WcfServiceReference;

public partial class Menu : System.Web.UI.Page
{
    protected void Page_Load(object sender, EventArgs e)
    {

    }
    protected void MenuSearchButton_Click(object sender, EventArgs e)
    {
        rub_bbqEntities entities = new rub_bbqEntities(new Uri("http://localhost:1045/project/WcfDataService.svc"));
        MenuItemGridView.DataSource = entities.MenuItems.Where(x => x.Name == MenuSearchTextBox.Text).ToList();
        MenuItemGridView.DataSourceID = null;
        MenuItemGridView.DataBind();
    }
    protected void MenuDropDownList_SelectedIndexChanged(object sender, EventArgs e)
    {
        MenuItemGridView.DataSource = null;
        MenuItemGridView.DataSourceID = "MenuItemSqlDataSource";
    }
    protected void MenuItemGridView_RowCommand(object sender, GridViewCommandEventArgs e)
    {
        if (e.CommandName == "AddItem")
        {
            int index = Convert.ToInt32(e.CommandArgument);
            MenuItem menuItem = (MenuItem) MenuItemGridView.Rows[index].DataItem;
            Master.AddItem(menuItem);
        }
    }
}