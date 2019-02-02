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
    public partial class AddTeacher : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {

        }

        protected void btnAddTeacher_Click(object sender, EventArgs e)
        {

            string conString = ConfigurationManager.ConnectionStrings["DbConnection"].ConnectionString;
            SqlConnection connection = new SqlConnection(conString);
            FileUpload1.SaveAs(Server.MapPath("../images/teachers/") + Path.GetFileName(FileUpload1.FileName));
            String link = "../images/teachers/" + Path.GetFileName(FileUpload1.FileName);
            SqlCommand command = new SqlCommand("insert into STUDYTEACHER(TEACHERNAME,TEACHERADDRESS,DEGREE,INSTITUTE,GENDER,DESIGNATION,DEPARTMENT,DATEBIRTH,SPECIALIST,WORKINGTIME,IMAGE)values('" + txtTeacherName.Text + "','" + txtTeacherAddress.Text + "','" + txtTeacherDegree.Text + "','" + txtTeacherEducationalInstitute.Text + "','" + rdlGender.Text + "','" + txtDesignation.Text + "','" + txtDepartment.Text + "','" + txtDateOfBirth.Text + "','" + txtSpeciality.Text + "','" + ddlWorkingTime.Text + "','" + link + "')", connection);
            connection.Open();
            int result = command.ExecuteNonQuery();
            if (result > 0)
            {
                Response.Write("<script LANGUAGE='JavaScript' >alert('Teacher Added Successfully!');window.location='AddTeacher.aspx';</script>");
                GetClear();
            }

            else
            {
                Response.Write("<script LANGUAGE='JavaScript' >alert('There is some error. Please enter again');window.location='AddTeacher.aspx';</script>");
            }
            connection.Close();
            connection.Dispose();
        }

        public void GetClear()
        {
            txtTeacherName.Text = "";
            txtTeacherAddress.Text = "";
            txtTeacherDegree.Text = "";
            txtTeacherEducationalInstitute.Text = "";
            rdlGender.Text = "";
            txtDateOfBirth.Text = "";
            txtDesignation.Text = "";
            txtDepartment.Text = "";
            txtSpeciality.Text = "";
            ddlWorkingTime.Text = "";
        }
    }
}