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
    public partial class Send_Feedback : System.Web.UI.Page
    {
        ConnectionCls obc = new ConnectionCls();
        protected void Page_Load(object sender, EventArgs e)
        {

        }

        protected void BtnFeedSend_Click(object sender, EventArgs e)
        {
            SqlCommand cmd = new SqlCommand();
            cmd.CommandType = CommandType.StoredProcedure;
            cmd.CommandText = "sp_Feedback";

            cmd.Parameters.AddWithValue("@uid", Session["uid"]);
            cmd.Parameters.AddWithValue("@feedmsg", TxtFeed.Text);
            cmd.Parameters.AddWithValue("@replymsg", "");
            cmd.Parameters.AddWithValue("@feedstatus", 0);

            SqlParameter sp = new SqlParameter();
            sp.DbType = DbType.Int32;
            sp.ParameterName = "@status";
            sp.Direction = ParameterDirection.Output;
            cmd.Parameters.Add(sp);
            obc.Fun_NonQuery_SP(cmd);
            int status = Convert.ToInt32(sp.Value);
            if(status == 1)
            {
                LblMsg.Visible = true;
                LblMsg.Text = "Your feedback has been sent to Admin!";
                LblMsg.ForeColor = System.Drawing.Color.Green;
            }
            else
            {
                LblMsg.Visible = true;
                LblMsg.Text = "Something went wrong...";
                LblMsg.ForeColor = System.Drawing.Color.Red;
            }
        }

    }
}