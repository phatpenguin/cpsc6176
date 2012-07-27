using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

public partial class admin_Default : System.Web.UI.Page
{
    protected void Page_Load(object sender, EventArgs e)
    {
        SiteWebService webservice = new SiteWebService();

        GridView1.DataSource = webservice.GetCustomerList();
        GridView1.DataBind();
    }
}