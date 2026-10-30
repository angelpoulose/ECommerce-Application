using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Data;
using System.Data.SqlClient;
namespace ECommerce_WebApp
{
    public partial class WebForm1 : System.Web.UI.Page
    {
        Class1 objcls = new Class1();
        protected void Page_Load(object sender, EventArgs e)
        {

        }

        protected void Button4_Click(object sender, EventArgs e)
        {
            string s = "delete from InvoiceTable where user_id=" + Session["reg_id"] + "";
            int i = objcls.fun_NonQuery(s);
            if (i > 0)
            {
                Label2.Visible = true;
                Label2.Text = "Cancelled";
                Panel2.Visible = false;
            }
            else
            {
                Label2.Visible = true;
                Label2.Text = "not Cancelled";
            }

        }
    }
}