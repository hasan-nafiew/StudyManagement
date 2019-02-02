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
    public partial class all_students : System.Web.UI.Page
    {
        private string connectionString = ConfigurationManager.ConnectionStrings["DbConnection"].ConnectionString;
        protected void Page_Load(object sender, EventArgs e)
        {
            if (!IsPostBack)
            {
                BindAllStudents();
            }
        }

        private void BindAllStudents()
        {
            using (SqlConnection con = new SqlConnection(connectionString))
            {
                using (SqlCommand cmd = new SqlCommand("SP_AllStudents", con))
                {
                    cmd.CommandType=CommandType.StoredProcedure;
                    using (SqlDataAdapter sda = new SqlDataAdapter(cmd))
                    {
                        DataTable dt =new DataTable();
                        sda.Fill(dt);
                        rptrStdnts.DataSource = dt;
                        rptrStdnts.DataBind();
                    }
                }
            }
        }
    }
}