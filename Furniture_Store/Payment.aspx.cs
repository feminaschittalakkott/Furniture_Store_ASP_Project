using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Data.SqlClient;
using System.Collections.Generic;

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

                string getPro = "select p.Prod_Name, p.Prod_Price, p.Prod_Img, o.Prod_Qty, o.Tot_Price from Products p join Orders o on o.Prod_Id = p.Prod_Id where o.User_Id = " + Session["uid"] + "";
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

        protected void BtnPlaceOrder_Click(object sender, EventArgs e)
        {
            BalanceCheck.ServiceClient ob = new BalanceCheck.ServiceClient();
            decimal balance = ob.Balance_Check(Convert.ToInt32(Session["uid"]));
            decimal gtotal = Convert.ToDecimal(GtotField.Text);
            if(gtotal <= balance)
            {
                decimal newbalance = balance - gtotal;
                string qry = "update Account_Table set Acc_Balance = " + newbalance + " where User_Id = " + Session["uid"] + "";
                int i = obc.Fun_Nonquery(qry);
                if(i == 1)
                {
                    string q1 = "update Bills set Bill_Status = 'Paid' where User_Id = " + Session["uid"] + " and Bill_Status = 'Initiated'";
                    int j1 = obc.Fun_Nonquery(q1);
                    string q2 = "update Orders set Order_Status = 'Paid' where User_Id = " + Session["uid"] + " and Order_Status = 'Ordered'";
                    int j2 = obc.Fun_Nonquery(q2);
                    if (j1 == 1 && j2 == 1)
                    {
                        List<int> prod_id = new List<int>();
                        List<int> prod_qty = new List<int>();
                        string q3 = "select Prod_Id, Prod_Qty from Orders where User_Id = " + Session["uid"] + " and Order_Status = 'Paid'";
                        SqlDataReader dr = obc.Fun_Reader(q3);
                        while (dr.Read())
                        {
                            prod_id.Add(Convert.ToInt32(dr["Prod_Id"]));
                            prod_qty.Add(Convert.ToInt32(dr["Prod_Qty"]));
                        }
                        for (int k = 0; k < prod_id.Count; k++)
                        {
                            string updateQry = "update Products set Prod_Stock = Prod_Stock - " + prod_qty[k] + " where Prod_Id = " + prod_id[k] + "";
                            int j3 = obc.Fun_Nonquery(updateQry);
                            if(j3 < 1)
                            {
                                ErrMsg.Visible = true;
                                ErrMsg.Text = "Failed to update product with Prod_Id: " + prod_id[k];
                            }
                        }
                        Response.Redirect("OrderPlaced.aspx");
                    }
                }
            }
            else
            {
                ErrMsg.Visible = true;
                ErrMsg.Text = "Insufficient Balance !!!";
            }
        }
    }
}