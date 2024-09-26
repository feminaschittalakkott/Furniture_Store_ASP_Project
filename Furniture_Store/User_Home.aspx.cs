using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace Furniture_Store
{
    public partial class User_Home : System.Web.UI.Page
    {
        ConnectionCls obc = new ConnectionCls();
        protected void Page_Load(object sender, EventArgs e)
        {
            if (!IsPostBack)
            {
                CatListHome.DataSource = obc.Category();
                CatListHome.DataBind();
            }
        }

        protected void IBtnCats_Command(object sender, CommandEventArgs e)
        {
            int id = Convert.ToInt32(e.CommandArgument);
            Session["catid"] = id;
            Response.Redirect("Prod_View.aspx");
        }
    }
}