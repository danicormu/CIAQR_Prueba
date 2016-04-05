using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Web.Security;

namespace PruebaWebCAQ
{
    public partial class Administration1 : System.Web.UI.MasterPage
    {
        protected void Page_Load(object sender, EventArgs e)
        {
            Session.Abandon();
            FormsAuthentication.SignOut();
        }

        public void logOut()
        {
            
        }
    }

    
}