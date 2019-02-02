using System;
using System.Collections.Generic;
using System.Configuration;
using System.Data;
using System.Data.SqlClient;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Text;

namespace StudyManagement.Admin
{
    public partial class Admin : System.Web.UI.MasterPage
    {
        protected void Page_Load(object sender, EventArgs e)
        {
            if (!IsPostBack)
            {
                if (Session["admin"] != null)
                {
                    displayUserName.Text = Session["admin"].ToString();
                }
                else
                {
                    Response.Redirect("AdminLogin.aspx");
                }
            }
        }

        protected void btnAdminLogout_Click(object sender, EventArgs e)
        {
            Session.Clear();
            Response.Redirect("AdminLogin.aspx");
        }
    }
}