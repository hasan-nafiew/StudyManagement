using System;
using System.Configuration;
using System.Data;
using System.Data.SqlClient;

namespace StudyManagement.StudyManagement
{
    public partial class all_teachers : System.Web.UI.Page
    {
        private string connectionString = ConfigurationManager.ConnectionStrings["DbConnection"].ConnectionString;
        protected void Page_Load(object sender, EventArgs e)
        {
            if (!IsPostBack)
            {
                BindAllTeachers();
            }
        }
        private void BindAllTeachers()
        {
            using (SqlConnection con = new SqlConnection(connectionString))
            {
                using (SqlCommand cmd = new SqlCommand("SP_AllTeachers", con))
                {
                    cmd.CommandType = CommandType.StoredProcedure;
                    using (SqlDataAdapter sda = new SqlDataAdapter(cmd))
                    {
                        DataTable dt = new DataTable();
                        sda.Fill(dt);
                        rptrAllteachers.DataSource = dt;
                        rptrAllteachers.DataBind();
                    }
                }
            }
        }
    }
}