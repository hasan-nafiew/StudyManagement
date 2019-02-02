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
    public partial class AddNotice : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {

        }

        protected void btnNoticeAdd_Click(object sender, EventArgs e)
        {
            string conString = ConfigurationManager.ConnectionStrings["DbConnection"].ConnectionString;
            SqlConnection connection = new SqlConnection(conString);
            SqlCommand command = new SqlCommand("insert into STUDYNOTICEBOARD(NOTICEBOARD,NOTICEDATE)values('" + exampleInputNBoard.Text + "','" + exampleInputDate.Text + "')", connection);
            connection.Open();
            int result = command.ExecuteNonQuery();
            if (result > 0)
            {
                Response.Write("<script LANGUAGE='JavaScript' >alert('Request Submitted Successfully!');window.location='AddNotice.aspx';</script>");
                GetClear();
            }

            else
            {
                Response.Write("<script LANGUAGE='JavaScript' >alert('There is some error. Please enter again');window.location='AddNotice.aspx';</script>");
            }
            connection.Close();
            connection.Dispose();
        }

        public void GetClear()
        {
            exampleInputNBoard.Text = "";
            exampleInputDate.Text = "";
        }
    }
}