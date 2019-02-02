using System;
using System.Configuration;
using System.Data;
using System.Data.SqlClient;

namespace StudyManagement.StudyManagement
{
    public partial class Home : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {

        }

        protected void btnRqusetInfoSubmit_Click(object sender, EventArgs e)
        {
            string connectionString = ConfigurationManager.ConnectionStrings["DbConnection"].ConnectionString;
            SqlConnection con = new SqlConnection(connectionString);
            string name = txt_ri_name.Text;
            string email = txt_ri_email.Text;
            string subject = slc_ri_subjectList.Text;
            string msg = txt_ri_msg.Text;

            SqlCommand cmd = new SqlCommand("SP_StudyUserReq",con);
            cmd.CommandType = CommandType.StoredProcedure;
            cmd.Parameters.AddWithValue("@Name", name);
            cmd.Parameters.AddWithValue("@Email", email);
            cmd.Parameters.AddWithValue("@SubjectName", subject);
            cmd.Parameters.AddWithValue("@Massage", msg);
            con.Open();
            int result = cmd.ExecuteNonQuery();
            con.Close();
            if (result == 1)
            {
                Page.ClientScript.RegisterStartupScript(this.GetType(),"Scripts","<script>alert('Massage sent successfully');</script>");
                GetClear();
            }
            else
            {
                Page.ClientScript.RegisterStartupScript(this.GetType(), "Scripts", "<script>alert('Massage not sent! try again!');</script>");
                GetClear();
            }
        }

        private void GetClear()
        {
            txt_ri_name.Text = "";
            txt_ri_email.Text = "";
            slc_ri_subjectList.Text = "";
            txt_ri_msg.Text = "";
        }
    }
}