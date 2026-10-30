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
    public partial class UserHome : System.Web.UI.Page
    {
        Class1 objcls = new Class1();
        protected void Page_Load(object sender, EventArgs e)
        {
            if (!IsPostBack)
            {
                string s = "select * from CategoryTable where cat_status='available'";
                DataSet ds = objcls.fun_DataAdapterUsingDS(s);
                DataList1.DataSource = ds;
                DataList1.DataBind();
            }
        }

        protected void ImageButton1_Command(object sender, CommandEventArgs e)
        {
            Session["cat_id"] = Convert.ToInt32(e.CommandArgument);
            Response.Redirect("View_Products.aspx");
        }
    }
}