using System;
using System.Collections.Generic;
using System.Data;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace ECommerce_WebApp
{
    public partial class view_user_feedback : System.Web.UI.Page
    {
        Class1 clsobj = new Class1();
        protected void Page_Load(object sender, EventArgs e)
        {
            if (!IsPostBack)
            {
                gridbindforfeedbackreply();
            }
        }
        public void gridbindforfeedbackreply()
        {
            string s = "select u.user_name,u.user_photo,u.user_email,f.feedback_message,p.product_name,p.product_image from UserTable as u join FeedbackTable as f on u.user_id=f.user_id join ProductTable as p on p.product_id=f.product_id";
            DataSet ds = clsobj.fun_DataAdapterUsingDS(s);
            GridView1.DataSource = ds;
            GridView1.DataBind();
        }

        

        protected void Button1_Command1(object sender, CommandEventArgs e)
        {
            Session["user_email"] = e.CommandArgument;
            Response.Redirect("reply_email.aspx");
        }
    }
}