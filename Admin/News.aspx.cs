using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Data;

namespace Ambitionz2.Admin
{
    public partial class News : System.Web.UI.Page
    {
        NewsDal _ns;

        protected void Page_Load(object sender, EventArgs e)
        {
            LoginDal.AuthenticateAdmin();

            if (!IsPostBack)
            {
                if (Request["newsid"] != null)
                {
                    NewsDetails();//for editing
                }
            }
        }

        void NewsDetails()
        {
            DataTable dtNews = new DataTable();
            dtNews = NewsDal.LoadNews(int.Parse(Request["newsid"].ToString()));

            if (dtNews.Rows.Count > 0)
            {
                txtTitle.Text = dtNews.Rows[0]["Title"].ToString();
                ddlSubject.SelectedValue = dtNews.Rows[0]["SubjectId"].ToString();
            }
            else
                Response.Redirect("NewsList.aspx");
        }

        protected void btnSave_Click(object sender, EventArgs e)
        {
            if (txtTitle.Text.Trim() != string.Empty && ddlSubject.SelectedIndex > 0)
            {
                GetInputs();

                if (Request["newsid"] != null)
                {
                    UpdateNews();
                }
                else
                {
                    SaveNews();
                }
            }
        }

        private void SaveNews()
        {
            if (_ns.SaveNews())
            {
                Library.MessageBoxRedirect(this, "Successfully saved.", "NewsList.aspx");
            }
            else
                Library.MessageBox(this, "Error... please try again.", "alertKey");
        }

        private void UpdateNews()
        {
            if (_ns.UpdateNews())
            {
                Library.MessageBoxRedirect(this, "Successfully updated.", "NewsList.aspx");
            }
            else
                Library.MessageBox(this, "Error... please try again.", "alertKey");
        }

        private void GetInputs()
        {
            _ns = new NewsDal();

            _ns.NewsID = Request["newsid"] != null ? int.Parse(Request["newsid"].ToString()) : _ns.NextNewsId();
            _ns.Title = Library.StringValue(txtTitle.Text);
            _ns.SubjectId = Convert.ToInt16(ddlSubject.SelectedValue);

        }

        protected void btnBack_Click(object sender, EventArgs e)
        {
            Response.Redirect("NewsList.aspx");
        }
    }

}