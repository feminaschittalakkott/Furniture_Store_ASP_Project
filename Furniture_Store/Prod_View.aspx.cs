using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Data.SqlClient;
using System.Data;

namespace Furniture_Store
{
    public partial class Prod_View : System.Web.UI.Page
    {
        ConnectionCls obc = new ConnectionCls();
        protected void Page_Load(object sender, EventArgs e)
        {
            if (!IsPostBack)
            {
                string q = "select Cat_Name from Category where Cat_Id = " + Session["catid"] + "";
                SqlDataReader dr = obc.Fun_Reader(q);
                while (dr.Read())
                {
                    CatLabel.Text = dr["Cat_Name"].ToString();
                }
                string qry = "select * from Products where Cat_Id = "+ Session["catid"] + "";
                DataSet ds = obc.Fun_DataSet(qry);
                ProdList.DataSource = ds;
                ProdList.DataBind();
            }
        }

        protected void ProdImagBtn_Command(object sender, CommandEventArgs e)
        {
            int pid = Convert.ToInt32(e.CommandArgument);
            Session["prodid"] = pid;
            Response.Redirect("Prod_SingleView.aspx");
        }
    }
}