using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.Services;
using System.Data;
using System.Data.SqlClient;
using System.Configuration;

/// <summary>
/// Summary description for SiteWebService
/// </summary>
[WebService(Namespace = "http://CPSC6176GroupC.edu/")]
[WebServiceBinding(ConformsTo = WsiProfiles.BasicProfile1_1)]
// To allow this Web Service to be called from script, using ASP.NET AJAX, uncomment the following line. 
// [System.Web.Script.Services.ScriptService]
public class SiteWebService : System.Web.Services.WebService {

    public SiteWebService () {

        //Uncomment the following line if using designed components 
        //InitializeComponent(); 
    }

    [WebMethod]
    public DataSet GetCustomerList() {
        SqlConnection conn = new SqlConnection(ConfigurationManager.ConnectionStrings["LocalSqlServer"].ConnectionString);
        string cmdString = "Select * from [6176_su12_TeamC].dbo.Customers";
        SqlDataAdapter dataAdaptor = new SqlDataAdapter(cmdString,conn);
        DataSet CustomerDataSet = new DataSet();
        dataAdaptor.Fill(CustomerDataSet,"Customers");
        return CustomerDataSet;

    }
    
}
