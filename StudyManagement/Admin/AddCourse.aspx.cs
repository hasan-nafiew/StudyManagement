using System;
using System.Collections.Generic;
using System.Configuration;
using System.Data.SqlClient;
using System.IO;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace StudyManagement.Admin
{
    public partial class AddCourse : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {

        }

        protected void btnCourseAdd_Click(object sender, EventArgs e)
        {
            string conString = ConfigurationManager.ConnectionStrings["DbConnection"].ConnectionString;
            SqlConnection connection = new SqlConnection(conString);
            CoursePhoto.SaveAs(Server.MapPath("../images/courses/") + Path.GetFileName(CoursePhoto.FileName));
            String photolink = "../images/courses/" + Path.GetFileName(CoursePhoto.FileName);
            SqlCommand command = new SqlCommand("insert into STUDYCOURSEINFO1(COURSENAME,COURSEDURATION,COURSEQUALIFICATION,COURSEFEE,COURSEFEEMETHOD,CoursePhoto,CourseDescription)values('" + exampleInputCourse.Text + "','" + exampleInputDuration.Text + "','" + exampleInputQualification.Text + "', " + exampleInputFee.Text + ",'" + exampleInputMethod.Text + "','"+ photolink + "','" + CourseDescription.Text+"')", connection);
            connection.Open();
            int result = command.ExecuteNonQuery();
            if (result > 0)
            {
                Response.Write("<script LANGUAGE='JavaScript' >alert('Request Submitted Successfully!');window.location='AddCourse.aspx';</script>");
                GetClear();
            }

            else
            {
                Response.Write("<script LANGUAGE='JavaScript' >alert('There is some error. Please enter again');window.location='AddCourse.aspx';</script>");
            }
            command.Dispose();
            connection.Close();
           
        }
        public void GetClear()
        {
            exampleInputCourse.Text = "";
            exampleInputDuration.Text = null;
            exampleInputQualification.Text = null;
            exampleInputFee.Text = "";
            exampleInputMethod.Text = "";
            CourseDescription.Text = "";
        }
    }
}