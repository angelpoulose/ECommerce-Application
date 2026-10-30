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
    public partial class View_Productss : System.Web.UI.Page
    {
        Class1 obj = new Class1();
        protected void Page_Load(object sender, EventArgs e)
        {
            if (!IsPostBack)
            {
                string s = "select * from ProductTable where cat_id=" + Session["cat_id"] + "";
                DataTable dt = obj.fun_DataAdapterUsingDT(s);
                DataList1.DataSource = dt;
                DataList1.DataBind();
            }
        }

        protected void ImageButton1_Command(object sender, CommandEventArgs e)
        {
            Session["product_id"] = Convert.ToInt32(e.CommandArgument);
            Response.Redirect("Product_View.aspx");
        }
    }
}