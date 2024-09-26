using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace Furniture_Store
{
    public partial class Cat_Display : System.Web.UI.Page
    {
        ConnectionCls obc = new ConnectionCls();
        protected void Page_Load(object sender, EventArgs e)
        {
            if (!IsPostBack)
            {
                CatGrid.DataSource = obc.Category();
                CatGrid.DataBind();
            }
        }

        protected void CatGrid_RowEditing(object sender, GridViewEditEventArgs e)
        {
            CatGrid.EditIndex = e.NewEditIndex;
            CatGrid.DataSource = obc.Category();
            CatGrid.DataBind();
        }

        protected void CatGrid_RowCancelingEdit(object sender, GridViewCancelEditEventArgs e)
        {
            CatGrid.EditIndex = -1;
            CatGrid.DataSource = obc.Category();
            CatGrid.DataBind();
        }

        protected void CatGrid_RowUpdating(object sender, GridViewUpdateEventArgs e)
        {
            int i = e.RowIndex;
            int catid = Convert.ToInt32(CatGrid.DataKeys[i].Value);
            TextBox CatName = (TextBox)CatGrid.Rows[i].Cells[0].Controls[0];
            TextBox CatDesc = (TextBox)CatGrid.Rows[i].Cells[2].Controls[0];
            string qry = "update Category set Cat_Name = '" + CatName.Text + "', Cat_Description = '" + CatDesc.Text + "' where Cat_Id = " + catid + "";
            int j = obc.Fun_Nonquery(qry);

            if(j == 1) { 
                CatGrid.EditIndex = -1;
                CatGrid.DataSource = obc.Category();
                CatGrid.DataBind();
            }
        }

        protected void CatGrid_RowDeleting(object sender, GridViewDeleteEventArgs e)
        {
            int i = e.RowIndex;
            int catid = Convert.ToInt32(CatGrid.DataKeys[i].Value);
            string qry = "delete from Category where Cat_Id = " + catid + "";
            int j = obc.Fun_Nonquery(qry);
            if(j == 1)
            {
                CatGrid.DataSource = obc.Category();
                CatGrid.DataBind();
            }
        }
    }
}