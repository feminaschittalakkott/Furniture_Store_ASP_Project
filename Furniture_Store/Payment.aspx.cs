using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace Furniture_Store
{
    public partial class Payment : System.Web.UI.Page
    {
        ConnectionCls obc = new ConnectionCls();
        protected void Page_Load(object sender, EventArgs e)
        {
            if (!IsPostBack)
            {
                string qry = "select * from User_Reg where User_Id = " + Session["uid"] + "";
                AdrsList.DataSource = obc.Fun_Reader(qry);
                AdrsList.DataBind();

                string getPro = "select p.Prod_Name, p.Prod_Price, p.Prod_Img, o.Prod_Qty from Products p join Orders o on o.Prod_Id = p.Prod_Id where o.User_Id = " + Session["uid"] + "";
                ProdOrdList.DataSource = obc.Fun_Reader(getPro);
                ProdOrdList.DataBind();

                string qry1 = "select count (*) from Orders where User_Id = " + Session["uid"] + "";
                string ct = obc.Fun_Scalar(qry1);
                LblItemCount.Text = ct;

                string qry2 = "select G_Total from Bills where User_Id = " + Session["uid"] + "";
                string g_total = obc.Fun_Scalar(qry2);
                ItemField.Text = g_total;

                decimal itemTotal = Convert.ToDecimal(ItemField.Text);
                decimal shippingTotal = Convert.ToDecimal(ShipField.Text);

                decimal TotalPmt = itemTotal + shippingTotal;
                GtotField.Text = TotalPmt.ToString();
            }
        }
    }
}