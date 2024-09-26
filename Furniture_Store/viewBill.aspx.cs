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
            PanelPmt.Visible = true;
            UpdatePanel1.Update();
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
    }
}