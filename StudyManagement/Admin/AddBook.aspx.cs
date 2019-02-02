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
    public partial class AddBook : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {

        }

        protected void btnBookAdd_Click(object sender, EventArgs e)
        {
            string conString = ConfigurationManager.ConnectionStrings["DbConnection"].ConnectionString;
            SqlConnection connection = new SqlConnection(conString);
            bookPhoto.SaveAs(Server.MapPath("../images/books/") + Path.GetFileName(bookPhoto.FileName));
            String link = "../images/books/" + Path.GetFileName(bookPhoto.FileName);
            SqlCommand command = new SqlCommand("insert into STUDYADDBOOK(BOOKNAME,BOOKAUTHOR,BOOKCOST,BOOKPHOTO)values('" + txtBookName.Text + "','" + txtBookAuthor.Text + "'," + txtBookCost.Text + ",'"+link+"' )", connection);
            connection.Open();
            int result = command.ExecuteNonQuery();
            if (result > 0)
            {
                Response.Write("<script LANGUAGE='JavaScript' >alert('Book Added Successfully!');window.location='AddBook.aspx';</script>");
                GetClear();
            }

            else
            {
                Response.Write("<script LANGUAGE='JavaScript' >alert('There is some error. Please enter again');window.location='AddBook.aspx';</script>");
            }
            connection.Close();
            connection.Dispose();
        }
        public void GetClear()
        {
            txtBookName.Text = "";
            txtBookAuthor.Text = "";
            txtBookCost.Text = null;

        }
    }
}