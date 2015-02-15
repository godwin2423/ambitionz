using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace Ambitionz2
{
    public partial class Login : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {
            Session["login"] = "fail";
        }

        protected void LoginBox_Authenticate(object sender, AuthenticateEventArgs e)
        {
            if (Library.IsValidString(LoginBox.UserName) && Library.IsValidString(LoginBox.Password))
            {
                if (LoginDal.IsUserExist(LoginBox.UserName, LoginBox.Password))
                {
                    Session["login"] = "success";
                    Response.Redirect("Admin/NewsList.aspx");
                }
            }
            else
                Library.MessageBox(this, "Invalid username or password characters.", "alertKey");
        }
    }

}