using System;
using System.Collections.Generic;
using System.Configuration;
using System.Data;
using System.Data.SqlClient;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace StudyManagement.StudyManagement
{
    public partial class ContactUs : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {

        }

        protected void btnRqusetInfoSubmit_Click(object sender, EventArgs e)
        {

            string connectionString = ConfigurationManager.ConnectionStrings["DbConnection"].ConnectionString;
            SqlConnection con = new SqlConnection(connectionString);
            string name = txt_usr_name.Text;
            string email = txt_usr_email.Text;
            string msg = txt_usr_msg.Text;

            SqlCommand cmd = new SqlCommand("SP_ContactUsMsg", con);
            cmd.CommandType = CommandType.StoredProcedure;
            cmd.Parameters.AddWithValue("@Name", name);
            cmd.Parameters.AddWithValue("@Email", email);
            cmd.Parameters.AddWithValue("@Message", msg);
            con.Open();
            int result = cmd.ExecuteNonQuery();
            con.Close();
            if (result == 1)
            {
                Page.ClientScript.RegisterStartupScript(this.GetType(), "Scripts", "<script>alert('Message sent successfully');</script>");
                GetClear();
            }
            else
            {
                Page.ClientScript.RegisterStartupScript(this.GetType(), "Scripts", "<script>alert('Message not sent! try again!');</script>");
                GetClear();
            }
        }

        private void GetClear()
        {
            txt_usr_name.Text = "";
            txt_usr_email.Text = "";
            txt_usr_msg.Text = "";
        }
    }
}