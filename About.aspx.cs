using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Globalization;

public partial class About : System.Web.UI.Page
{
    
    protected void Page_Load(object sender, EventArgs e)
    {

    }
    protected void Button1_Click(object sender, EventArgs e)
    {
        
        Label1.Text = GetLocalResourceObject("Label1Text").ToString();
        Button1.Text = GetLocalResourceObject("Button1Text").ToString();
        Label2.Text = GetLocalResourceObject("Label2Text").ToString();
        Label3.Text = GetLocalResourceObject("Label3Text").ToString();
        
    }
}