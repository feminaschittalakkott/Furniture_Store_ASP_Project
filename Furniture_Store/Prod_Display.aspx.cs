using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace Furniture_Store
{
    public partial class Prod_Display : System.Web.UI.Page
    {
        ConnectionCls obc = new ConnectionCls();
        protected void Page_Load(object sender, EventArgs e)
        {
            if (!IsPostBack)
            {
                ProdList.DataSource = obc.Products();
                ProdList.DataBind();
            }
        }

        protected void ProdList_RowEditing(object sender, GridViewEditEventArgs e)
        {
            ProdList.EditIndex = e.NewEditIndex;
            ProdList.DataSource = obc.Products();
            ProdList.DataBind();
        }

        protected void ProdList_RowCancelingEdit(object sender, GridViewCancelEditEventArgs e)
        {
            ProdList.EditIndex = -1;
            ProdList.DataSource = obc.Products();
            ProdList.DataBind();
        }

        protected void ProdList_RowUpdating(object sender, GridViewUpdateEventArgs e)
        {
            int i = e.RowIndex;
            int prodid = Convert.ToInt32(ProdList.DataKeys[i].Value);
            TextBox ProdName = (TextBox)ProdList.Rows[i].Cells[0].Controls[0];
            TextBox ProdDesc = (TextBox)ProdList.Rows[i].Cells[2].Controls[0];
            TextBox ProdPrice = (TextBox)ProdList.Rows[i].Cells[3].Controls[0];
            TextBox ProdCat = (TextBox)ProdList.Rows[i].Cells[4].Controls[0];
            TextBox ProdStock = (TextBox)ProdList.Rows[i].Cells[5].Controls[0];
            string qry = "update Products set Prod_Name = '" + ProdName.Text + "', Prod_Price = "+ ProdPrice.Text + ", Prod_Stock = "+ ProdStock.Text + ", Prod_Description = '" + ProdDesc.Text + "' where Prod_Id = " + prodid + "";
            int j = obc.Fun_Nonquery(qry);

            if (j == 1)
            {
                ProdList.EditIndex = -1;
                ProdList.DataSource = obc.Products();
                ProdList.DataBind();
            }
        }

        protected void ProdList_RowDeleting(object sender, GridViewDeleteEventArgs e)
        {
            int i = e.RowIndex;
            int prodid = Convert.ToInt32(ProdList.DataKeys[i].Value);
            string qry = "delete from Products where Prod_Id = " + prodid + "";
            int j = obc.Fun_Nonquery(qry);
            if (j == 1)
            {
                ProdList.DataSource = obc.Products();
                ProdList.DataBind();
            }
        }
    }
}