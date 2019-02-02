using System;
using System.Collections.Generic;
using System.Configuration;
using System.Data.SqlClient;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace StudyManagement.Admin
{
    public partial class AddExamSchedule : System.Web.UI.Page
    {
        string conString = ConfigurationManager.ConnectionStrings["DbConnection"].ConnectionString;
        protected void Page_Load(object sender, EventArgs e)
        {

        }
        protected void btnExmSchedule_Click(object sender, EventArgs e)
        {
            SqlConnection connection = new SqlConnection(conString);
            SqlCommand command = new SqlCommand("insert into STUDYEXAMINFO(ExamName,CourseName,Time,Date)values('" + exampleInputName.Text + "','" + exampleInputCourse.Text + "','" + exampleInputTime.Text + "','" + exampleInputDate.Text + "')", connection);
            connection.Open();
            int result = command.ExecuteNonQuery();
            if (result > 0)
            {
                Response.Write("<script LANGUAGE='JavaScript' >alert('Request Submitted Successfully!');window.location='AddExamSchedule.aspx';</script>");
                GetClear();
            }

            else
            {
                Response.Write("<script LANGUAGE='JavaScript' >alert('There is some error. Please enter again');window.location='AddExamSchedule.aspx';</script>");
            }
            connection.Close();
            connection.Dispose();
        }

        public void GetClear()
        {
            exampleInputName.Text = "";
            exampleInputDate.Text = "";
            exampleInputDate.Text = "";
            exampleInputCourse.Text = "";

        }

        
    }
}