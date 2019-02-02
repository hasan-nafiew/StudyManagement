using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Data.SqlClient;
using System.Data;
using System.Configuration;
using System.IO;

namespace StudyManagement.Admin
{
    public partial class AddStudent : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {

        }

        protected void btnStudentAdd_Click(object sender, EventArgs e)
        {
            string conString = ConfigurationManager.ConnectionStrings["DbConnection"].ConnectionString;
            SqlConnection connection = new SqlConnection(conString);
            studentPhoto.SaveAs(Server.MapPath("../images/students/") + Path.GetFileName(studentPhoto.FileName));
            String link = "../images/students/" + Path.GetFileName(studentPhoto.FileName);
            SqlCommand command =
                new SqlCommand(
                    "insert into STUDYADDSTUDENT (FirstName,LastName,UserName,PassWord,Gender,Email,UniversityName,Program,Department,PhoneNumber,Date,MaritalStatus,BloodGroup,Religion,Nationality,PresentAddress,UploadPhoto) values('" +
                    txtStFirstName.Text + "','" + txtStLastName.Text + "','" + txtStUserName.Text + "','" +
                    txtStPwd.Text + "','" + rblGender.Text + "','" + txtStEmail.Text + "','" +
                    txtStUniversityName.Text + "','" + ddlProgramName.Text + "','" + txtDepartMent.Text + "'," +
                    txtStPhoneNo.Text + ",'" + txtStDateOfBath.Text + "','" + ddlMaritalStatus.Text + "','" +
                    ddlBloodGrp.Text + "','" + ddlReligion.Text + "','" + txtNationality.Text + "','" +
                    txtStAddress.Text + "','" + link + "')", connection);
            connection.Open();
            int result = command.ExecuteNonQuery();
            if (result > 0)
            {
                Response.Write(
                    "<script LANGUAGE='JavaScript' >alert('Student Added Successfully!');window.location='AddStudent.aspx';</script>");
                GetClear();
            }

            else
            {
                Response.Write(
                    "<script LANGUAGE='JavaScript' >alert('There is some error. Please enter again');window.location='AddStudent.aspx';</script>");
            }
            connection.Close();
            connection.Dispose();
        }
        public void GetClear()
        {
            txtStFirstName.Text = "";
            txtStUserName.Text = "";
            txtStLastName.Text = "";
            txtStEmail.Text = "";
            txtStPwd.Text = "";
            txtStPhoneNo.Text = "";
            txtDepartMent.Text = "";
            ddlBloodGrp.Text = "";
            ddlMaritalStatus.Text = "";
            ddlReligion.Text = "";
            ddlProgramName.Text = "";
            rblGender.Text = "";
            txtStDateOfBath.Text = "";
            txtStUniversityName.Text = "";
        }
    }
}