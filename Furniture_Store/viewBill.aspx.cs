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
                //string qry = "select * from User_Reg where User_Id = " + Session["uid"] + "";
                string qry = "select * from User_Reg where User_Id = 2";
                BillList.DataSource = obc.Fun_Reader(qry);
                BillList.DataBind();

                //string qr = "select * from Bills b join Orders o on b.User_Id = o.User_Id join Products p on p.Prod_Id = o.Prod_Id where b.User_Id = " + Session["uid"] + "";
                string qr = "select * from Bills b join Orders o on b.User_Id = o.User_Id join Products p on p.Prod_Id = o.Prod_Id where b.User_Id = 2";
                OrderDataGrid.DataSource = obc.Fun_Reader(qr);
                OrderDataGrid.DataBind();
            }
        }

        protected void Button1_Click(object sender, EventArgs e)
        {
            PanelPmt.Visible = true;
        }
    }
}