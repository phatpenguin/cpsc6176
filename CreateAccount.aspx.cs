using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.Security;
using System.Web.UI;
using System.Web.UI.WebControls;
using WcfServiceReference;

public partial class CreateAccount : System.Web.UI.Page
{
    private rub_bbqEntities entities = new rub_bbqEntities(new Uri(System.Web.Configuration.WebConfigurationManager.AppSettings["WcfServiceUri"]));
    protected void Page_Load(object sender, EventArgs e)
    {

    }
    protected void CreateUserWizard1_CreatedUser(object sender, EventArgs e)
    {
        TextBox firstNameTextBox =
            (TextBox) CreateUserWizard1.CreateUserStep.ContentTemplateContainer.FindControl("FirstNameTextBox");
        TextBox lastNameTextBox = (TextBox) CreateUserWizard1.CreateUserStep.ContentTemplateContainer.FindControl("LastNameTextBox");
        Calendar birthdayCalendar = (Calendar) CreateUserWizard1.CreateUserStep.ContentTemplateContainer.FindControl("BirthdayCalendar");

        MembershipUser user = Membership.GetUser(CreateUserWizard1.UserName);
        WcfServiceReference.User user2 = new WcfServiceReference.User(){FirstName = firstNameTextBox.Text, LastName = lastNameTextBox.Text, asp_user_id = Guid.Parse(user.ProviderUserKey.ToString()), Birthday = birthdayCalendar.SelectedDate};

        entities.AddToUsers(user2);
        entities.SaveChanges();
    }
}