using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace Ambitionz2.Admin
{
    public partial class NewsList : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {
            LoginDal.AuthenticateAdmin();

            if (!IsPostBack)
            {
                BindNews();
            }
        }

        protected void dtgNews_RowCommand(object sender, GridViewCommandEventArgs e)
        {
            int newsId = int.Parse(e.CommandArgument.ToString());

            if (e.CommandName == "newsedit")
            {
                Response.Redirect("News.aspx?newsid=" + newsId);
            }
            else if (e.CommandName == "newsdelete")
            {
                if (NewsDal.DeleteNews(newsId))
                {
                    BindNews();

                    Library.MessageBox(this, "Successfully deleted.", "alertKey");
                }
                else
                    Library.MessageBox(this, "Error deleting", "alertKey");
            }
        }

        protected void dtgNews_PageIndexChanging(object sender, GridViewPageEventArgs e)
        {
            dtgNews.PageIndex = e.NewPageIndex;
            BindNews();
        }

        private void BindNews()
        {
            dtgNews.DataSource = NewsDal.LoadNewsBySubject(Convert.ToInt32(ddlSubject.SelectedValue));
            dtgNews.DataBind();

            lblNoRecords.Text = dtgNews.Rows.Count <= 0 ? "No News." : string.Empty;
        }

        protected void btnAddNew_Click(object sender, EventArgs e)
        {
            Response.Redirect("News.aspx");
        }

        protected void ddlSubject_SelectedIndexChanged(object sender, EventArgs e)
        {
            BindNews();
        }
    }

}