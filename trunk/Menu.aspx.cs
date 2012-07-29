using System;
using System.Linq;
using System.Web.UI.WebControls;
using WcfServiceReference;

public partial class Menu : System.Web.UI.Page
{
    private rub_bbqEntities entities = new rub_bbqEntities(new Uri(System.Web.Configuration.WebConfigurationManager.AppSettings["WcfServiceUri"]));

    protected void Page_Load(object sender, EventArgs e)
    {

    }
    protected void MenuSearchButton_Click(object sender, EventArgs e)
    {
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
            int menuItemId = Convert.ToInt32(MenuItemGridView.Rows[index].Cells[0].Text);

            WcfServiceReference.MenuItem menuItem = entities.MenuItems.Where(x => x.Id == menuItemId).FirstOrDefault();

            Master.AddItem(menuItem);
        }
    }
}