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
    public partial class UserRegistration : System.Web.UI.Page
    {
        string connectionString = ConfigurationManager.ConnectionStrings["DbConnection"].ConnectionString;
        protected void Page_Load(object sender, EventArgs e)
        {

        }
        protected void submitSignup_Click(object sender, EventArgs e)
        {
            SqlConnection conn = new SqlConnection(connectionString);
            SqlCommand cmd;
            string fName = txtFirstName.Text;
            string lName = txtLastName.Text;
            string uName = txtUserName.Text;
            string pwd = txtPwd.Text;
            string mail = txtUserEmail.Text;
            string gndr = rdoLstGender.Text;

            cmd = new SqlCommand("select * from StudentSignup where userName='" + uName + "'", conn);
            SqlDataAdapter dataAdapter = new SqlDataAdapter(cmd);
            DataSet dataSet = new DataSet();
            dataAdapter.Fill(dataSet);
            int count = dataSet.Tables[0].Rows.Count;
            if (count > 0)
            {
                unsuccessfull_msg.Text = "Registration Fail, Username already exist!!";
                unsuccessfull_msg.ForeColor = System.Drawing.Color.Red;
            }
            else
            {
                cmd = new SqlCommand();
                cmd.CommandText = "Insert into StudentSignup(firstName,lastName,userName,pwd,email,gender) " +
                                  "values('" + fName + "','" + lName + "','" + uName + "','" + pwd + "','" + mail + "','" + gndr + "')";
                cmd.Connection = conn;
                conn.Open();
                int result = cmd.ExecuteNonQuery();
                conn.Close();
                if (result > 0)
                {
                    var responseCookie = Response.Cookies["success_msg"];
                    if (responseCookie != null)
                        responseCookie.Value = "You have successfully registered ";
                    var httpCookie = Response.Cookies["success_msg"];
                    if (httpCookie != null)
                        httpCookie.Expires = DateTime.Now.AddSeconds(30);

                    Response.Redirect("UserLogin.aspx");
                }
                else
                {
                    unsuccessfull_msg.Text = "Registration Fail, Try again!!";
                }
            }

        }

        protected void txtUserName_TextChanged(object sender, EventArgs e)
        {
            if (!string.IsNullOrEmpty(txtUserName.Text))

            {
                SqlConnection con = new SqlConnection(connectionString);
                con.Open();
                SqlCommand cmd = new SqlCommand("select userName from StudentSignup where userName='" + txtUserName.Text + "'", con);
                SqlDataReader dr = cmd.ExecuteReader();
                if (dr.HasRows)
                {
                    checkUserName.Visible = true;
                    showingIMg.ImageUrl = "~/images/Cancel.png";
                    lblusermsg.Text = "UserName Already Exist..!!";
                    lblusermsg.ForeColor = System.Drawing.Color.Red;
                }
                else
                {
                    checkUserName.Visible = true;
                    showingIMg.ImageUrl = "~/images/Accepted.png";
                    lblusermsg.Text = "Username is Available";
                    lblusermsg.ForeColor = System.Drawing.Color.LimeGreen;
                }
                dr.Close();
                cmd.Dispose();
                con.Close();
            }
            else
            {
                checkUserName.Visible = false;
            }
        }
    }
}