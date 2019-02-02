using System;
using System.Configuration;
using System.Data.SqlClient;

namespace StudyManagement.StudyManagement
{
    public partial class studyManagement : System.Web.UI.MasterPage
    {
        protected void Page_Load(object sender, EventArgs e)
        {
            after_login_status.Attributes["class"] = "d_none";

            if (Session["userFirstName"] !=null)
            {
                login_status.Text ="<p>Welcome</p> "+ Session["userFirstName"].ToString();
                login_status.ForeColor = System.Drawing.Color.White;
            }
            if (Session["userLastName"] !=null)
            {
                login_status1.Text = Session["userLastName"].ToString();
                login_status1.ForeColor = System.Drawing.Color.White;
                after_login_status.Attributes["class"]="d_block";
                login_register_link.Attributes["class"] = "d_none";
            }
        }

        protected void btnLogOut_Click(object sender, EventArgs e)
        {
            Session.Clear();
            Response.Redirect("Home.aspx");
            after_login_status.Attributes["class"] = "d_none";
            login_register_link.Attributes["class"] = "d_block";
        }
    }
}




