using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace StudyManagement.Admin
{
    public partial class ViewBookList : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {

        }
       protected void Page_PreRender(object sender, EventArgs e)
        {
            if (gvViewBook.SelectedRow==null)
            {
                dvViewBook.Visible = false;
            }
            else
            {
                dvViewBook.Visible = true;
            }
        }

        protected void dvViewBookList_ItemDeleted(object sender, DetailsViewDeletedEventArgs e)
        {
            gvViewBook.DataBind();
            gvViewBook.SelectRow(-1);
        }

        protected void dvViewBookList_ItemInserted(object sender, DetailsViewInsertedEventArgs e)
        {
            gvViewBook.DataBind();
            gvViewBook.SelectRow(-1);
        }

        protected void dvViewBookList_ItemUpdated(object sender, DetailsViewUpdatedEventArgs e)
        {
            gvViewBook.DataBind();
            gvViewBook.SelectRow(-1);
        }
    }
}