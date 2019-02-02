using System;
using System.Collections.Generic;
using System.Configuration;
using System.Data;
using System.Data.SqlClient;
using System.Linq;
using System.Web;
using System.Web.Security;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace StudyManagement.Admin.pages
{
    public partial class AdminLogin : System.Web.UI.Page
    {
        string connectionString = ConfigurationManager.ConnectionStrings["DbConnection"].ConnectionString;
        protected void Page_Load(object sender, EventArgs e)
        {
           
        }

        protected void btnAdminLogin_Click(object sender, EventArgs e)
        {
            SqlConnection con = new SqlConnection(connectionString);
            string Username = txtAdminUName.Text;
            string password = txtAdminPwd.Text;

            if (Username == ""|| password =="")
            {
                lblunSuccessMsg.Text = "Provide username and password";
                lblunSuccessMsg.ForeColor = System.Drawing.Color.Red;
                Clear();
            }
            else
            {
                SqlCommand cmd = new SqlCommand("[sp_adminlogin]", con);
                cmd.CommandType = CommandType.StoredProcedure;
                cmd.Parameters.AddWithValue("@userName", Username);
                cmd.Parameters.AddWithValue("@password", password);
                con.Open();
                SqlDataReader rdr = cmd.ExecuteReader();
                if (rdr.HasRows)
                {
                    if (rdr.Read())
                    {
                        Session["admin"] = "Welcome Admin"/* + rdr[0].ToString()*/;
                        Response.Redirect("index.aspx");
                    }
                }
                else
                {
                    lblunSuccessMsg.Text = "Invalid Username or password";
                    lblunSuccessMsg.ForeColor = System.Drawing.Color.Red;
                    Clear();
                }
                rdr.Close();
                cmd.Dispose();
                con.Close();
            }
        }

        private void Clear()
        {
            txtAdminUName.Text = "";
            txtAdminPwd.Text = "";
        }
    }
}