﻿using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Data.SqlClient;
using System.Data;

namespace Furniture_Store
{
    public partial class Cart : System.Web.UI.Page
    {
        ConnectionCls obc = new ConnectionCls();
        protected void Page_Load(object sender, EventArgs e)
        {
            if (!IsPostBack)
            {
                DataListBinding();
                string sumQry = "select sum(Tot_Price) AS TotalSum from Cart WHERE User_Id = " + Session["uid"] + "";
                string s = obc.Fun_Scalar(sumQry);
                GTotPrice.Text = s;
            }
        }
        protected void DataListBinding()
        {
            string qry = "select * from Cart c left join Products p on c.Prod_Id = p.Prod_Id where c.User_Id = " + Session["uid"] + "";
            DataTable dt = obc.Fun_DataTable(qry);
            if (dt.Rows.Count == 0)
            {
                LblEmptyCart.Visible = true;
                CartPanel.Visible = false;
            }
            else
            {
                LblEmptyCart.Visible = false;
                cartList.DataSource = dt;
                cartList.DataBind();
                CartPanel.Visible = true;
            }
        }

        protected void LinkDelete_Command(object sender, CommandEventArgs e)
        {
            int id = Convert.ToInt32(e.CommandArgument);
            string delqry = "delete from Cart where Cart_id = " + id + "";
            string i = obc.Fun_Scalar(delqry);
            int j = Convert.ToInt32(i);
            if(j == 1)
            {
                string msg = "1 Item Removed";
            }
        }

        protected void cartList_ItemCommand(object source, DataListCommandEventArgs e)
        {
            if (e.CommandName == "Edit")
            {
                cartList.EditItemIndex = e.Item.ItemIndex;
                DataListBinding();
            }
            else if (e.CommandName == "Update")
            {
                int cartId = Convert.ToInt32(e.CommandArgument);
                TextBox txtQty = (TextBox)e.Item.FindControl("TxtQty");
                int qty = Convert.ToInt32(txtQty.Text);
                Label price = (Label)e.Item.FindControl("Price");
                int g_price = Convert.ToInt32(price.Text.Replace("₹", "").Trim());
                decimal totprice = Convert.ToDecimal(g_price) * qty;

                string editqry = "update Cart set Prod_Qty = " + qty + ", Tot_Price = "+ totprice + " where Cart_id = " + cartId + "";
                int i = obc.Fun_Nonquery(editqry);
                if(i == 1)
                {
                    string sumQry = "select sum(Tot_Price) AS TotalSum from Cart WHERE User_Id = " + Session["uid"] + "";
                    string s = obc.Fun_Scalar(sumQry);
                    GTotPrice.Text = s;
                    cartList.EditItemIndex = -1;
                    DataListBinding();
                }
            }
            else if (e.CommandName == "Cancel")
            {
                cartList.EditItemIndex = -1;
                DataListBinding();
            }
        }

        protected void Btn_Proceed_Click(object sender, EventArgs e)
        {
            string totalQry = "select sum(Tot_Price) from Cart where User_Id = " + Session["uid"];
            string grandTotal = obc.Fun_Scalar(totalQry);

            string insertBillQry = "insert into Bills values (" + Session["uid"] + ", " + grandTotal + ", '" + DateTime.Now.ToString("yyyy-MM-dd") + "', 'Initiated')";
            int b = obc.Fun_Nonquery(insertBillQry);

            if (b > 0)
            {
                string insOrderQry = "insert into Orders (User_Id, Prod_Id, Prod_Qty, Tot_Price, Order_Status) " +
                  "select c.User_Id, c.Prod_Id, c.Prod_Qty, c.Tot_Price, 'Ordered' " +
                  "from Cart c where c.User_Id = " + Session["uid"] + "";
                int i = obc.Fun_Nonquery(insOrderQry);

                if (i > 0)
                {
                    string delQry = "delete from Cart where User_Id = " + Session["uid"] + "";
                    int j = obc.Fun_Nonquery(delQry);
                    if (j > 0)
                    {
                        Response.Redirect("viewBill.aspx");
                    }
                    else
                    {
                        ErrMsg.Visible = true;
                        ErrMsg.Text = "Something went wrong !";
                    }
                }
                else
                {
                    ErrMsg.Visible = true;
                    ErrMsg.Text = "Something went wrong !";
                }
            }
            else
            {
                ErrMsg.Visible = true;
                ErrMsg.Text = "Error Occurred !";
            }
        }

        protected void BtnContinue_Click(object sender, EventArgs e)
        {
            Response.Redirect("User_Home.aspx");
        }
    }
}