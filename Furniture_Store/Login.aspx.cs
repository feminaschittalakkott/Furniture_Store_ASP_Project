using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Web.Security;

namespace Furniture_Store
{
    public partial class Login : System.Web.UI.Page
    {
        ConnectionCls obc = new ConnectionCls();
        protected void Page_Load(object sender, EventArgs e)
        {

        }

        protected void BtnLogin_Click(object sender, EventArgs e)
        {
            string qry = "select count(Login_Id) from Login where Username = '"+ TxtUname.Text + "' and Password = '"+ TxtPwd.Text + "'";
            string cid = obc.Fun_Scalar(qry);
            int cid1 = Convert.ToInt32(cid);
            if(cid1 == 1)
            {
                string qr1 = "select Reg_Id from Login where Username = '" + TxtUname.Text + "' and Password = '" + TxtPwd.Text + "'";
                string reg_id = obc.Fun_Scalar(qr1);
                Session["uid"] = Convert.ToInt32(reg_id);

                bool isLoggedIn = Session["uid"] != null;

                // Register a script to pass this info to the HTML page
                ClientScript.RegisterStartupScript(this.GetType(), "sessionScript",
                    $"<script type='text/javascript'>var isLoggedIn = {isLoggedIn.ToString().ToLower()};</script>");

                string qr2 = "select Log_Type from Login where Username = '" + TxtUname.Text + "' and Password = '" + TxtPwd.Text + "'";
                string log_type = obc.Fun_Scalar(qr2);

                if(log_type == "admin")
                {
                    FormsAuthentication.RedirectFromLoginPage(TxtUname.Text, true);
                    Response.Redirect("Admin_Home.aspx");
                }
                else if (log_type == "user")
                {
                    FormsAuthentication.RedirectFromLoginPage(TxtUname.Text, true);
                    Response.Redirect("User_Home.aspx");
                }
            }
            else
            {
                LblErr.Visible = true;
            }
        }
    }
}