using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace Ambitionz2
{
    public partial class News : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {
            LoginDal.AuthenticateAdmin();

            if (!IsPostBack)
            {
                BindNews();
            }
        }

        private void BindNews()
        {
            dtgNews.DataSource = NewsDal.LoadNewsBySubject(Convert.ToInt32(Request.QueryString["newsid"].ToString()));
            dtgNews.DataBind();

            lblNoRecords.Text = dtgNews.Rows.Count <= 0 ? "No News." : string.Empty;
        }
    }

}