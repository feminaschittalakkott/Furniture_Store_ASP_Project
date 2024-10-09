using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace Furniture_Store
{
    public partial class SignUp : System.Web.UI.Page
    {
        ConnectionCls obc = new ConnectionCls();
        protected void Page_Load(object sender, EventArgs e)
        {

        }

        protected void BtnAdmin_Click(object sender, EventArgs e)
        {
            PanelAdmin.Visible = true;
            PanelUser.Visible = false;
            BtnAdmin.CssClass += " activemenu";
            BtnUser.CssClass = BtnUser.CssClass.Replace(" activemenu", "").Trim();
        }

        protected void BtnUser_Click(object sender, EventArgs e)
        {
            PanelUser.Visible = true;
            PanelAdmin.Visible = false;
            BtnUser.CssClass += " activemenu";
            BtnAdmin.CssClass = BtnUser.CssClass.Replace(" activemenu", "").Trim();
        }

        protected void AdminSubmit_Click(object sender, EventArgs e)
        {
            string str = "select count(Reg_Id) from Login";
            string r_id = obc.Fun_Scalar(str);
            int reg_id = 0;
            if(r_id == "")
            {
                reg_id = 1;
            }
            else
            {
                int new_rid = Convert.ToInt32(r_id);
                reg_id = new_rid + 1;
            }
            string insqry = "insert into Admin_Reg values(" + reg_id + ", '" + AdminName.Text + "', '" + AdminAdrs.Text + "', '" + AdminEmail.Text + "', '" + AdminPhone.Text + "')";
            int i = obc.Fun_Nonquery(insqry);
            if(i == 1)
            {
                string inslog = "insert into Login values("+ reg_id + ", '"+ AdminUname.Text + "', '"+ AdminCPass.Text + "', 'admin', 'active')";
                int j = obc.Fun_Nonquery(inslog);
                if(j == 1)
                {
                    Response.Redirect("Login.aspx");
                }
                else
                {
                    LblErrAdmin.Visible = true;
                }
            }
        }

        protected void UserSubmit_Click(object sender, EventArgs e)
        {
            string str = "select count(Reg_Id) from Login";
            string r_id = obc.Fun_Scalar(str);
            int reg_id = 0;
            if (r_id == "")
            {
                reg_id = 1;
            }
            else
            {
                int new_rid = Convert.ToInt32(r_id);
                reg_id = new_rid + 1;
            }
            string insqry = "insert into User_Reg values(" + reg_id + ", '" + UserName.Text + "', '" + UserAdrs.Text + "', '" + UserEmail.Text + "', '" + UserPhone.Text + "', '" + DdlDistrict.SelectedItem.Text + "', '" + DdlStates.SelectedItem.Text + "', '" + UserPin.Text + "', 'active')";
            int i = obc.Fun_Nonquery(insqry);
            if (i == 1)
            {
                string inslog = "insert into Login values(" + reg_id + ", '" + UserUname.Text + "', '" + userCPass.Text + "', 'user', 'active')";
                int j = obc.Fun_Nonquery(inslog);
                if (j == 1)
                {
                    Response.Redirect("Login.aspx");
                }
                else
                {
                    LblErrUser.Visible = true;
                }
            }
        }
    }
}