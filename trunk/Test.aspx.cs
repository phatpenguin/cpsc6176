using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

public partial class Test : System.Web.UI.Page
{
    protected void Page_Load(object sender, EventArgs e)
    {
        

    }
    protected void Button1_Click(object sender, EventArgs e)
    {
        
        //Control myForm = this.Master.FindControl("BodyContentPlaceHolder");
        //UserControl c1 = (UserControl)LoadControl(@"~\Controls\OrderDetails.ascx");
        //string[] item = { "Samosa", "1" };
        //classClsItemsManager.AddItem("Samosa", 1);
        //classClsItemsManager.AddItem("Pakora", 10);
        //myForm.Controls.Add(c1);
        //c1.item = item;
      //  classClsItemsManager.deleteAllItems();
        OrderDetails1.AddItem("Samosa",1,2);
        OrderDetails1.AddItem("Papri Chat",3, 2);
        OrderDetails1.AddItem("Dahi Chat",4, 2);
        
        //this.OrderDetails1.item = item;
        //classClsItemsManager.AddItem("Dahi", 2);
        //string[] item = { "Papri", "1" };
        //this.OrderDetails1.item = item;
    }
  
}