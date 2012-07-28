using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Diagnostics;

public partial class MainMasterPage : System.Web.UI.MasterPage
{
    private TimeSpan elapsed;

    protected void Page_Load(object sender, EventArgs e)
    {
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

    public void AddItem(MenuItem menuItem)
    {
        OrderDetails1.AddItem(menuItem.Name, menuItem.Price, 1);
    }
}
