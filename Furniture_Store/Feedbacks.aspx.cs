using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Net.Mail;
using System.Text;
using System.Data.SqlClient;

namespace Furniture_Store
{
    public partial class Feedbacks : System.Web.UI.Page
    {
        ConnectionCls obc = new ConnectionCls();
        protected void Page_Load(object sender, EventArgs e)
        {
            if (!IsPostBack)
            {
                FeedGridBind();
            }
        }
        public void FeedGridBind()
        {
            string qry = "select * from Feedbacks f join User_Reg u on f.User_Id = u.User_Id where f.Feed_Status = 0";
            var dr = obc.Fun_Reader(qry);
            if (!dr.HasRows)
            {
                FeedGrid.Visible = false;
                lblNoData.Visible = true;
            }
            else
            {
                FeedGrid.DataSource = dr;
                FeedGrid.DataBind();
                lblNoData.Visible = false;
            }
        }

        protected void BtnReply_Command(object sender, CommandEventArgs e)
        {
            int uid = Convert.ToInt32(e.CommandArgument);
            string qry = "select * from User_Reg where User_Id = " + uid + "";
            SqlDataReader dr = obc.Fun_Reader(qry);
            while (dr.Read())
            {
                SendEmail("Feminas", "feminas2298@gmail.com", "ttsnyvckpavskfui", dr["User_Name"].ToString(), dr["User_Email"].ToString(), "FStore", "Dear " + dr["User_Name"].ToString() + ", <br> <p>Thanks for your valuable feedback !</p><br><br> Regards <br> Feminas C");
            }
            string qryupdate = "update Feedbacks set Feed_Status = 1 where User_Id = " + uid + "";
            obc.Fun_Nonquery(qryupdate);
            FeedGridBind();
        }
        public static void SendEmail(string yourName, string yourGmailUserName, string yourGmailPassword, string toName, string toEmail, string subject, string body)

        {
            string to = toEmail; //To address    
            string from = yourGmailUserName; //From address    
            MailMessage message = new MailMessage(from, to);

            string mailbody = body;
            message.Subject = subject;
            message.Body = mailbody;
            message.BodyEncoding = Encoding.UTF8;
            message.IsBodyHtml = true;
            SmtpClient client = new SmtpClient("smtp.gmail.com", 587); //Gmail smtp    
            System.Net.NetworkCredential basicCredential1 = new
            System.Net.NetworkCredential(yourGmailUserName, yourGmailPassword);
            client.EnableSsl = true;
            client.UseDefaultCredentials = true;
            client.Credentials = basicCredential1;
            try
            {
                client.Send(message);
            }

            catch (Exception ex)
            {
                throw ex;
            }
        }
    }
}