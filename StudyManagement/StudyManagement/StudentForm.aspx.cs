using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace StudyManagement.StudyManagement
{
    public partial class StudentForm : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {
            if (!IsPostBack)
            {
               LoginSession();
            }
        }

        private void LoginSession()
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
    }
}