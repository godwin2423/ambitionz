using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Data;

namespace Ambitionz2
{
    public partial class NewsDetails : System.Web.UI.Page
    {
        DataTable _dtNews;

        protected void Page_Load(object sender, EventArgs e)
        {
            LoginDal.AuthenticateAdmin();
            //btnNext.Visible = true;
            //btnPrevious.Visible = true;

            if (!IsPostBack)
            {
                if (Request["newsid"] != null)
                {
                    LoadNews();
                }
                else
                    Response.Redirect("News.aspx");
            }
        }

        private void LoadNews()
        {
            _dtNews = new DataTable();
            _dtNews = NewsDal.LoadNews(int.Parse(Request["newsid"].ToString()));

            if (_dtNews.Rows.Count > 0)
            {
                DataRow dr = _dtNews.Rows[0];

                lblTitle.Text = dr["Title"].ToString();

                System.IO.StreamReader myFile = new System.IO.StreamReader(Server.MapPath("~/") + "userfiles/subjects/" + dr["NewsId"].ToString() + ".html");
                string myString = myFile.ReadToEnd();
                myFile.Close();

                litContents.Text = myString;

                //lblNewsId.Text = dr["NewsID"].ToString();
            }
        }


    }

}