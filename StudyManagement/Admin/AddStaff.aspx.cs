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
    public partial class AddStalff : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {
        }
  

        protected void btnStaffAdd_Click(object sender, EventArgs e)
        {

            string conString = ConfigurationManager.ConnectionStrings["DbConnection"].ConnectionString;
            SqlConnection connection = new SqlConnection(conString);
            staffPhoto.SaveAs(Server.MapPath("../images/staff/") + Path.GetFileName(staffPhoto.FileName));
            String link = "../images/staff/" + Path.GetFileName(staffPhoto.FileName);
            SqlCommand command = new SqlCommand("insert into STUDYADDSTAFF(STAFFNAME,QUALIFICATION,POST,STAFFDATEBIRTH,PHONE,STAFFADDRESS,SALARY,JOINDATE,STAFFPHOTO) values('" + txtStaffName.Text + "','" + txtStaffQualification.Text + "','" + txtStaffPost.Text + "','" + txtStaffDoB.Text + "'," + txtStaffPhone.Text + ",'" + txtStaffAddress.Text + "'," + txtStaffSalary.Text + ",'"+txtStaffJoDate.Text+"','"+link+"')", connection);
            connection.Open();
            int result = command.ExecuteNonQuery();
            if (result > 0)
            {
                Response.Write("<script LANGUAGE='JavaScript' >alert('Staff Added Successfully!');window.location='AddStaff.aspx';</script>");
                GetClear();
            }

            else
            {
                Response.Write("<script LANGUAGE='JavaScript' >alert('There is some error. Please enter again');window.location='AddStaff.aspx';</script>");
            }
            connection.Close();
            connection.Dispose();
        }

        public void GetClear()
        {
            txtStaffName.Text = "";
            txtStaffQualification.Text = "";
            txtStaffPost.Text = "";
            txtStaffDoB.Text = "";
            txtStaffPhone.Text = "";
            txtStaffAddress.Text = "";
            txtStaffSalary.Text = "";
            txtStaffJoDate.Text = "";
        }
    }
}