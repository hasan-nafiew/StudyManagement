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
    public partial class IssueBook : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {

        }

        protected void btnIssueBook_Click(object sender, EventArgs e)
        {
            string conString = ConfigurationManager.ConnectionStrings["DbConnection"].ConnectionString;
            SqlConnection connection = new SqlConnection(conString);
            SqlCommand command = new SqlCommand("insert into STUDYISSUEBOOK(StudentName,StudentId,PhoneNumber,BookName,AuthorName,DataIssue,IssueDate,ReturnDate,BookCost)values('" + exampleInputStudentName.Text + "'," + exampleInputID.Text + "," + exampleInputNumber.Text + ",'" + exampleInputBookName.Text + "','" + exampleInputAuthorNm.Text + "','" + rdoIssueOrNot.Text + "','" + exampleInputIssueDate.Text + "','" + exampleInputRDate.Text + "','" + exampleInputBookCost.Text + "' )", connection);
            connection.Open();
            int result = command.ExecuteNonQuery();
            if (result > 0)
            {
                Response.Write("<script LANGUAGE='JavaScript' >alert('Book Issue Success!');window.location='IssueBook.aspx';</script>");
                GetClear();
            }

            else
            {
                Response.Write("<script LANGUAGE='JavaScript' >alert('There is some error. Please enter again');window.location='IssueBook.aspx';</script>");
            }
            connection.Close();
            connection.Dispose();
        }

        public void GetClear()
        {
            exampleInputStudentName.Text = "";
            exampleInputID.Text = "";
            exampleInputNumber.Text = "";
            exampleInputBookName.Text = "";
            exampleInputAuthorNm.Text = "";
            rdoIssueOrNot.Text = "";
            exampleInputIssueDate.Text = "";
            exampleInputRDate.Text = "";
            exampleInputBookCost.Text = "";
        }
    }
}