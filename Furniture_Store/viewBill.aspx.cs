using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Data;
using System.Data.SqlClient;

namespace Furniture_Store
{
    public partial class viewBill : System.Web.UI.Page
    {
        ConnectionCls obc = new ConnectionCls();
        protected void Page_Load(object sender, EventArgs e)
        {
            if (!IsPostBack)
            {
                string qry = "select * from User_Reg where User_Id = " + Session["uid"] + "";
                BillList.DataSource = obc.Fun_Reader(qry);
                BillList.DataBind();

                string qr = "select * from Bills b join Orders o on b.User_Id = o.User_Id join Products p on p.Prod_Id = o.Prod_Id where b.User_Id = " + Session["uid"] + "";
                OrderDataGrid.DataSource = obc.Fun_Reader(qr);
                OrderDataGrid.DataBind();
            }
        }

        protected void Btn_Pay_Click1(object sender, EventArgs e)
        {
            string qry = "select count(Acc_Id) from Account_Table where User_Id = " + Session["uid"] + "";
            string cid = obc.Fun_Scalar(qry);
            int count = Convert.ToInt32(cid);
            if(count == 0)
            {
                PanelPmt.Visible = true;
                UpdatePanel1.Update();
            }
            else
            {
                string q = "select * from Account_Table where User_Id = " + Session["uid"] + "";
                SqlDataReader dr = obc.Fun_Reader(q);
                while (dr.Read())
                {
                    PanelPmt.Visible = true;
                    AccAdd.Visible = false;
                    BtnEditPay.Visible = true;
                    BtnPayContinue.Visible = true;
                    TxtAccName.Text = dr["Acc_Name"].ToString();
                    TxtAccNo.Text = dr["Acc_No"].ToString();
                    TxtAccBal.Text = dr["Acc_Balance"].ToString();
                }
            }
        }

        protected void AccAdd_Click(object sender, EventArgs e)
        {
            decimal price = Convert.ToDecimal(TxtAccBal.Text);

            SqlCommand cmd = new SqlCommand();
            cmd.CommandType = CommandType.StoredProcedure;
            cmd.CommandText = "sp_AccountInsert";

            cmd.Parameters.AddWithValue("@uid", Session["uid"]);
            cmd.Parameters.AddWithValue("@accno", TxtAccNo.Text);
            cmd.Parameters.AddWithValue("@accname", TxtAccName.Text);
            cmd.Parameters.AddWithValue("@accbalance", price);
            cmd.Parameters.AddWithValue("@accstatus", "active");

            SqlParameter sp = new SqlParameter();
            sp.DbType = DbType.Int32;
            sp.ParameterName = "@status";
            sp.Direction = ParameterDirection.Output;
            cmd.Parameters.Add(sp);
            obc.Fun_NonQuery_SP(cmd);
            int status = Convert.ToInt32(sp.Value);
            if(status == 1)
            {
                Response.Redirect("Payment.aspx");
            }
            else
            {
                LblMsg.Visible = true;
                LblMsg.Text = "Account details addeding failed !";
            }

        }

        protected void BtnEditPay_Click(object sender, EventArgs e)
        {
            string qry = "update Account_Table set Acc_No = " + TxtAccNo.Text + ", Acc_Name = '" + TxtAccName.Text + "', Acc_Balance = " + TxtAccBal.Text + " where User_Id = " + Session["uid"] + "";
            int i = obc.Fun_Nonquery(qry);
            if(i == 1)
            {
                Response.Redirect("Payment.aspx");
            }
            else
            {
                LblMsg.Visible = true;
                LblMsg.Text = "Failed Editing Account Details !";
            }
        }

        protected void BtnPayContinue_Click(object sender, EventArgs e)
        {
            Response.Redirect("Payment.aspx");
        }
    }
}