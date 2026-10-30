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
    public partial class LoginPage : System.Web.UI.Page
    {
        Class1 clsobj2 = new Class1();
        protected void Page_Load(object sender, EventArgs e)
        {

        }

        protected void Button1_Click(object sender, EventArgs e)
        {
            string s = "select count(reg_id) from LoginTable where user_name='" + User_NameTB.Text + "' and password='" + UserPasswordTB.Text + "'";
            string count = clsobj2.fun_scalar(s).ToString();
            if (count == "1")
            {
                string s1 = "select reg_id from LoginTable where user_name='" + User_NameTB.Text + "' and password='" + UserPasswordTB.Text + "'";
                string regid = clsobj2.fun_scalar(s1).ToString();
                Session["reg_id"] = regid;

                string log_type = "select log_type from LoginTable where reg_id='" + Session["reg_id"] + "'";
                string logtype = clsobj2.fun_scalar(log_type).ToString();
                if(logtype=="user") Response.Redirect("UserHome.aspx");
                else Response.Redirect("AdminHome.aspx");
            }
            else
            {
                Label3.Text = "Invalid User";
            }
        }
    }
}