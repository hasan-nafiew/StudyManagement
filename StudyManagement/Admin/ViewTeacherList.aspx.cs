using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace StudyManagement.Admin
{
    public partial class ViewTeacherList : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {

        }
        protected void Page_PreRender(object sender, EventArgs e)
        {
            if (gvViewTeacher.SelectedRow == null)
            {
                dvViewTeacher.Visible = false;
            }
            else
            {
                dvViewTeacher.Visible = true;
            }
        }

        protected void dvViewTeacher_ItemUpdated(object sender, DetailsViewUpdatedEventArgs e)
        {
            gvViewTeacher.DataBind();
            gvViewTeacher.SelectRow(-1);

        }

        protected void dvViewTeacher_ItemDeleted(object sender, DetailsViewDeletedEventArgs e)
        {
            gvViewTeacher.DataBind();
            gvViewTeacher.SelectRow(-1);
          
        }

        protected void dvViewTeacher_ItemInserted(object sender, DetailsViewInsertedEventArgs e)
        {
            gvViewTeacher.DataBind();
            gvViewTeacher.SelectRow(-1);
        }
    }
}