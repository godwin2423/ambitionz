using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace Ambitionz2.Admin
{
    public partial class MasterPage : System.Web.UI.MasterPage
    {
        protected void Page_Load(object sender, EventArgs e)
        {
            if (Request.UserAgent.IndexOf("AppleWebKit") > 0)//chrome browser compatibility
                Request.Browser.Adapters.Clear();
        }

        protected void lbLogout_Click1(object sender, EventArgs e)
        {
            Session.Abandon();
            Response.Redirect("../Login.aspx");
        }
    }
}