using System;
using System.Collections.Generic;
using System.Data;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace ECommerce_WebApp
{
    public partial class change_order_status : System.Web.UI.Page
    {
        Class1 clsobj = new Class1();
        protected void Page_Load(object sender, EventArgs e)
        {
            if (!IsPostBack) gridbind();
        }
        public void gridbind()
        {
            string s = "select o.*,p.product_name,p.product_image,u.user_name from ordertable as o join producttable as p on o.product_id=p.product_id join usertable as u on u.user_id=o.user_id where o.order_status='paid'";
            DataSet ds=clsobj.fun_DataAdapterUsingDS(s);
            GridView1.DataSource = ds;
            GridView1.DataBind();
        }

        protected void Button1_Command(object sender, CommandEventArgs e)
        {
            int orderid = Convert.ToInt32(e.CommandArgument);
            string s = "update ordertable set order_status='delivered' where order_id=" + orderid + "";
            int i = clsobj.fun_NonQuery(s);
            if (i == 1)
            {
                ClientScript.RegisterStartupScript(this.GetType(), "alert", "alert('updated!')", true);
                gridbind();
            }
            else
            {
                ClientScript.RegisterStartupScript(this.GetType(), "alert", "alert('error in updating!')", true);
                gridbind();
            }
        }
    }
}