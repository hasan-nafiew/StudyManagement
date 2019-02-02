using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using WebApplication2.Admin;

namespace StudyManagement.Admin
{
    public partial class ViewCourseList : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {
            
        }

        protected void Page_PreRender(object sender, EventArgs e)
        {

            if (gvViewCourse.SelectedRow==null)
            {
                dvViewCourse.Visible = false;
            }
            else
            {
                dvViewCourse.Visible = true;
            }
        }

        protected void dvViewCourse_ItemUpdated(object sender, DetailsViewUpdatedEventArgs e)
        {
            gvViewCourse.DataBind();
           gvViewCourse.SelectRow(-1);
        }

        protected void dvViewCourse_ItemInserted(object sender, DetailsViewInsertedEventArgs e)
        {
            gvViewCourse.DataBind();
            gvViewCourse.SelectRow(-1);
        }

        protected void dvViewCourse_ItemDeleted(object sender, DetailsViewDeletedEventArgs e)
        {
            gvViewCourse.DataBind();
            gvViewCourse.SelectRow(-1);
        }
    }
}