using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Data;

namespace Furniture_Store
{
    public partial class Prod_Add : System.Web.UI.Page
    {
        ConnectionCls obc = new ConnectionCls();
        protected void Page_Load(object sender, EventArgs e)
        {
            if (!IsPostBack)
            {
                string str = "select * from Category";
                DataTable dt = obc.Fun_DataTable(str);
                CatList.DataSource = dt;
                CatList.DataTextField = "Cat_Name";
                CatList.DataValueField = "Cat_Id";
                CatList.DataBind();
                CatList.Items.Insert(0, new ListItem("Select", ""));
            }
        }

        protected void BtnProdAdd_Click(object sender, EventArgs e)
        {
            string img = "~/product_img/" + ProdImg.FileName;
            ProdImg.SaveAs(MapPath(img));

            string qry = "insert into Products values(" + CatList.SelectedItem.Value + ", '" + TxtProdName.Text + "', " + TxtProdPrice.Text + ", " + TxtProdStock.Text + ", '" + img + "', '" + ProdDesc.Text + "')";
            int i = obc.Fun_Nonquery(qry);
            if(i == 1)
            {
                LblMsg.Visible = true;
                LblMsg.Text = "Inserted Successfully";
                LblMsg.ForeColor = System.Drawing.Color.Green;
            }
            else
            {
                LblMsg.Visible = true;
                LblMsg.Text = "Insertion failed !";
                LblMsg.ForeColor = System.Drawing.Color.Red;
            }
        }
    }
}