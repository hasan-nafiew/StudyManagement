using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace StudyManagement.Admin
{
    public partial class ViewStaffList : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {

        }
        protected void Page_PreRender(object sender, EventArgs e)
        {
            if (gvViewStaff.SelectedRow==null)
            {
                dvViewStaff.Visible = false;

            }
            else
            {
                dvViewStaff.Visible = true;
                
            }
        }

        protected void dvViewStaff_ItemInserted(object sender, DetailsViewInsertedEventArgs e)
        {
            gvViewStaff.DataBind();
            gvViewStaff.SelectRow(-1);
          
        }

        protected void dvViewStaff_ItemUpdated(object sender, DetailsViewUpdatedEventArgs e)
        {
            gvViewStaff.DataBind();
            gvViewStaff.SelectRow(-1);
        }

        protected void dvViewStaff_ItemDeleted(object sender, DetailsViewDeletedEventArgs e)
        {
            gvViewStaff.DataBind();
            gvViewStaff.SelectRow(-1);
        }
    }
}