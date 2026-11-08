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
    public partial class orders_page : System.Web.UI.Page
    {
        Class1 clsobj = new Class1();
        protected void Page_Load(object sender, EventArgs e)
        {
            if (!IsPostBack)
            {
                gridbindfororderpage();
            }
        }
        public void gridbindfororderpage()
        {
            string s = "select p.product_id,p.product_name,p.product_image,p.product_price,o.order_quantity,o.order_status from producttable as p join OrderTable as o on p.product_id=o.product_id where user_id=" + Session["reg_id"] + "";
            DataSet ds = clsobj.fun_DataAdapterUsingDS(s);
            GridView1.DataSource = ds;
            GridView1.DataBind();
        }

        protected void LinkButton1_Command(object sender, CommandEventArgs e)
        {
            Session["pro_id"] = Convert.ToInt32(e.CommandArgument);
            Response.Redirect("Review_Page.aspx");
        }

        protected void GridView1_RowDataBound(object sender, GridViewRowEventArgs e)
        {
            if (e.Row.RowType == DataControlRowType.DataRow)
            {
                
                string status = DataBinder.Eval(e.Row.DataItem, "order_status")?.ToString().Trim().ToLower();

                
                LinkButton btnReview = (LinkButton)e.Row.FindControl("LinkButton1");

                if (btnReview != null)
                {
                    
                    if (status == "delivered")
                    {
                        btnReview.Visible = true;
                    }
                    else
                    {
                        btnReview.Visible = false;
                    }
                }
            }
        }
    }
}