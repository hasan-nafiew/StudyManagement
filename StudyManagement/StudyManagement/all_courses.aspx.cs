using System;
using System.Collections.Generic;
using System.Configuration;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Data;
using System.Data.SqlClient;

namespace StudyManagement.StudyManagement
{
    
    public partial class AllCourses : System.Web.UI.Page
    {
        string connectionString = ConfigurationManager.ConnectionStrings["DbConnection"].ConnectionString;
        protected void Page_Load(object sender, EventArgs e)
        {
            if (!IsPostBack)
            {
                BindAllCourses();
            }
        }
        private void BindAllCourses()
        {
            using (SqlConnection con = new SqlConnection(connectionString))
            {
                using (SqlCommand cmd = new SqlCommand("SP_AllCourses", con))
                {
                    cmd.CommandType = CommandType.StoredProcedure;
                    using (SqlDataAdapter sda = new SqlDataAdapter(cmd))
                    {
                        DataTable dt = new DataTable();
                        sda.Fill(dt);
                        rptrAllCourses.DataSource = dt;
                        rptrAllCourses.DataBind();
                        rptrAllCoursesPic.DataSource = dt;
                        rptrAllCoursesPic.DataBind();
                    }
                }
            }
        }
    }
}