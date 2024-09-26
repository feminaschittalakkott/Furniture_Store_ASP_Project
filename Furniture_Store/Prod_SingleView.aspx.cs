using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Data.SqlClient;

namespace Furniture_Store
{
    public partial class Prod_SingleView : System.Web.UI.Page
    {
        ConnectionCls obc = new ConnectionCls();
        protected void Page_Load(object sender, EventArgs e)
        {
            if (!IsPostBack)
            {
                string qry = "select * from Products p left join Category c on p.Cat_Id = c.Cat_Id where p.Prod_Id = " + Session["prodid"] + "";
                SqlDataReader dr = obc.Fun_Reader(qry);
                while (dr.Read())
                {
                    LblCat.Text = dr["Cat_Name"].ToString();
                    LblProd.Text = dr["Prod_Name"].ToString();
                    ProdImg.ImageUrl = dr["Prod_Img"].ToString();
                    ProdDesc.Text = dr["Prod_Description"].ToString();
                    ProdPrice.Text = "₹ " + dr["Prod_Price"].ToString();
                }
            }
        }

        protected void addCart_Click(object sender, EventArgs e)
        {
            decimal price = Convert.ToDecimal(ProdPrice.Text.Replace("₹", "").Trim());
            decimal total_price = Convert.ToInt32(QtyList.SelectedItem.Value) * price;
            string q = "insert into Cart values(" + Session["uid"] + ", " + Session["prodid"] + ", " + QtyList.SelectedItem.Value + ", " + total_price + ")";
            int i = obc.Fun_Nonquery(q);
            if(i == 1)
            {
                Response.Redirect("Cart.aspx");
            }
            else
            {
                ErrMsg.Visible = true;
            }
        }

        protected void continueBtn_Click(object sender, EventArgs e)
        {
            Response.Redirect("User_Home.aspx");
        }
    }
}