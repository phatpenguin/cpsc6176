using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Diagnostics;
using WcfServiceReference;

public partial class MainMasterPage : System.Web.UI.MasterPage
{
    private TimeSpan elapsed;

    protected void Page_Load(object sender, EventArgs e)
    {
        if (!Page.IsPostBack)
        {
            if (Page.User.Identity.IsAuthenticated)
            {
                Image1.ImageUrl = Profile.URL;
            }
        }
    }
    protected void LoginLinkButton_Click(object sender, EventArgs e)
    {
        //TODO IF LOGGED IN text = Log Out, and welcome message is visible
    }

    protected void LoginTimer_Tick(object sender, EventArgs e)
    {
        if (BeginTime.Text.Equals(""))
        {
            elapsed = new TimeSpan();
            BeginTime.Text = DateTime.Now.ToString();
        }
        elapsed = DateTime.Now - DateTime.Parse(BeginTime.Text);
        LoginTimeLabel.Text = string.Format("{0}:{1:00}", elapsed.Minutes, elapsed.Seconds);
        
    }

    protected void DropDownList1_SelectedIndexChanged(object sender, EventArgs e)
    {
        Image1.ImageUrl = @"~\images\MyPlayers\" + (sender as DropDownList).SelectedValue + ".jpg";
        Image1.AlternateText = (sender as DropDownList).SelectedValue;
    }
   
    protected void Button1_Click(object sender, EventArgs e)
    {
        Profile.URL = Image1.ImageUrl;
    }


    public void AddItem(WcfServiceReference.MenuItem menuItem)
    {
        //OrderDetails1.AddItem(menuItem.Name, menuItem.Price, 1);
        OrderDetails1.AddItem(menuItem);
    }

}
