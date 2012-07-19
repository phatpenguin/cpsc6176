using System;
using System.Data.Services;
using System.Data.Services.Common;
using System.Collections.Generic;
using System.Linq;
using System.ServiceModel.Web;
using rub_bbqModel;

public class WcfDataService : DataService<rub_bbqEntities>
{
    // This method is called only once to initialize service-wide policies.
    public static void InitializeService(DataServiceConfiguration config)
    {
        config.DataServiceBehavior.MaxProtocolVersion = DataServiceProtocolVersion.V2;
        config.SetEntitySetAccessRule("OrderTypes",EntitySetRights.All);
        config.SetEntitySetAccessRule("States",EntitySetRights.All);
        config.SetEntitySetAccessRule("DinerTypes",EntitySetRights.All);
        config.SetEntitySetAccessRule("PaymentTypes",EntitySetRights.All);
        config.SetEntitySetAccessRule("Payments",EntitySetRights.All);
        config.SetEntitySetAccessRule("Orders",EntitySetRights.All);
        config.SetEntitySetAccessRule("OrderItems",EntitySetRights.All);
        config.SetEntitySetAccessRule("Users",EntitySetRights.All);
        config.SetEntitySetAccessRule("Addresses",EntitySetRights.All);
        config.SetEntitySetAccessRule("Discounts",EntitySetRights.All);
        config.SetEntitySetAccessRule("OrderStates",EntitySetRights.All);
        config.SetEntitySetAccessRule("Menus",EntitySetRights.All);
        config.SetEntitySetAccessRule("MenuItems",EntitySetRights.All);
        config.SetEntitySetAccessRule("PhoneNumbers",EntitySetRights.All);
        config.SetEntitySetAccessRule("PaymentStates",EntitySetRights.All);

    }
}
