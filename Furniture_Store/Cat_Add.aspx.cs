using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace Furniture_Store
{
    public partial class Cat_Add : System.Web.UI.Page
    {
        ConnectionCls obc = new ConnectionCls();
        protected void Page_Load(object sender, EventArgs e)
        {

        }

        protected void BtnCatAdd_Click(object sender, EventArgs e)
        {
            string img = "~/cat_images/" + CatImg.FileName;
            CatImg.SaveAs(MapPath(img));

            string qry = "Insert into Category values('" + TxtCatname.Text + "', '" + img + "', '" + CatDescription.Text + "', 'active')";
            int i = obc.Fun_Nonquery(qry);
            if(i == 1)
            {
                LblInsertMsg.Visible = true;
                LblInsertMsg.Text = "Inserted Successfully";
                LblInsertMsg.ForeColor = System.Drawing.Color.Green;
            }
            else
            {
                LblInsertMsg.Visible = true;
                LblInsertMsg.Text = "Insertion Failed !";
                LblInsertMsg.ForeColor = System.Drawing.Color.Red;
            }
        }
    }
}