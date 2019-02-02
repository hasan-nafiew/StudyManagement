using System;
using System.Collections.Generic;
using System.Configuration;
using System.Data.SqlClient;
using System.IO;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace StudyManagement.StudyManagement
{
    public partial class StudentProfile : System.Web.UI.Page
    {
        private string connectionString = ConfigurationManager.ConnectionStrings["DbConnection"].ConnectionString;
        protected void Page_Load(object sender, EventArgs e)
        {
            if (Session["userFirstName"] != null)
            {
                login_status.Text = Session["userFirstName"].ToString();
                login_status.ForeColor = System.Drawing.Color.LimeGreen;
            }
            if (Session["userLastName"] != null)
            {
                login_status1.Text = Session["userLastName"].ToString();
                login_status1.ForeColor = System.Drawing.Color.LimeGreen;
            }
        }

        protected void btnUserPhotoUp_Click(object sender, EventArgs e)
        {
            SqlConnection con = new SqlConnection(connectionString);
            userPhotoUp.SaveAs(Server.MapPath("../images/students/") + Path.GetFileName(userPhotoUp.FileName));
            String photolink = "../images/students/" + Path.GetFileName(userPhotoUp.FileName);
            SqlCommand cmd = new SqlCommand("update STUDYADDSTUDENT set UploadPhoto='"+photolink+"' where StudentId=1",con);
            con.Open();
            cmd.ExecuteNonQuery();
            con.Close();
        }
    }
}