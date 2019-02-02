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
    public partial class UserLogin : System.Web.UI.Page
    {
        string connectionString = ConfigurationManager.ConnectionStrings["DbConnection"].ConnectionString;
        protected void Page_Load(object sender, EventArgs e)
        {
            if (!IsPostBack)
            {
                var requestCookie = Request.Cookies["success_msg"];
                if (requestCookie != null)
                    successfull_msg.Text = requestCookie.Value.ToString();
            }
        }

        protected void btnUserLogin_Click(object sender, EventArgs e)
        {
            
            SqlConnection con = new SqlConnection(connectionString);
            SqlCommand cmd;
            string userName= txtLoginUserName.Text;
            string pass= txtLoginPwd.Text;
            if (userName == "" || pass == "")
            {
                unsuccessfull_msg.Text="Provide username and password";
                unsuccessfull_msg.ForeColor = System.Drawing.Color.Red;
                Clear();
            }
            else
            {
                cmd = new SqlCommand("select firstName,lastName from StudentSignup where userName='" + userName + "' and pwd='" + pass + "'", con);
                con.Open();
                SqlDataReader rdr = cmd.ExecuteReader();
                if (rdr.HasRows)
                {
                    if (rdr.Read())
                    {
                        Session["userFirstName"] = rdr[0].ToString();
                        Session["userLastName"] = rdr[1].ToString();
                        Response.Redirect("JoiningType.aspx");
                        Clear();
                    }
                }
                else
                {
                    unsuccessfull_msg.Text="Wrong username or password";
                    unsuccessfull_msg.ForeColor = System.Drawing.Color.Red;
                    Clear();
                }
                rdr.Close();
                cmd.Dispose();
                con.Close();

            }

        }

        private void Clear()
        {
            txtLoginUserName.Text = "";
            txtLoginPwd.Text = "";
        }
    }
}